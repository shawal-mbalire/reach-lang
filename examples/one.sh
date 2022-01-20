#!/bin/sh
#set -e
set -x

MODE="$1"
e="$2"

has_target() {
  set +e
  grep -E "^include ../MAKEFILE_RPC$" Makefile >/dev/null 2>&1 \
    || grep -E "^$MODE:" Makefile 2>/dev/null
  RESULT_T=$?
  set -e
  [ $RESULT_T -eq 0 ]
}

echo "$MODE $e"
echo
(
  cd "$e" || (echo "ERROR 1"; exit 1)
  if [ -f Makefile ] && has_target ; then
    make REACH=../../reach "$MODE"
  else
    case "$MODE" in
      build)
        echo "ITS BUILDING!!!"
        ../../reach compile
        ;;
      run)
        echo "ITS RUNNING!!!"
        ../../reach run
        ;;
      down)
        ../../reach down
        ;;
      clean)
        ../../reach clean
        ;;
      *)
        echo "No such mode: $MODE."
        exit 1
        ;;
    esac
  fi
) || (echo "ERROR 2"; exit 1)
