[{"bookPath":"guide","title":"How does Reach work?","titleId":"guide-reach","hasOtp":true,"hasPageHeader":true},"<p>\n  <i id=\"p_0\" class=\"pid\"></i>It is not necessary to understand how Reach works to use it effectively, but many users are curious about how it works.\n  The Reach compiler uses the following strategy for analysis and compiling programs:<a href=\"#p_0\" class=\"pid\">0</a>\n</p>\n<ol>\n  <li><i id=\"p_1\" class=\"pid\"></i>A partial evaluation of the source program that removes all function calls &amp; compile-time values.<a href=\"#p_1\" class=\"pid\">1</a></li>\n  <li><i id=\"p_2\" class=\"pid\"></i>A linearization of the residual program that removes the need for a runtime stack to track any consensus state.<a href=\"#p_2\" class=\"pid\">2</a></li>\n  <li><i id=\"p_3\" class=\"pid\"></i>A conservative (sound) analysis of the knowledge of each participant.<a href=\"#p_3\" class=\"pid\">3</a></li>\n  <li><i id=\"p_4\" class=\"pid\"></i>A reduction of the program to an instance of an SMT (<a href=\"http://en.wikipedia.org/wiki/Satisfiability_Modulo_Theories\">satisfiability modulo theories</a>) theory of decentralized applications.<a href=\"#p_4\" class=\"pid\">4</a></li>\n  <li><i id=\"p_5\" class=\"pid\"></i>An end-point projection of the linearization to produce a perspective for each participant, as well as the consensus.<a href=\"#p_5\" class=\"pid\">5</a></li>\n  <li><i id=\"p_6\" class=\"pid\"></i>A single-pass top-down construction of backend and consensus programs.<a href=\"#p_6\" class=\"pid\">6</a></li>\n</ol>\n<p><i id=\"p_7\" class=\"pid\"></i>Reach is proud to: be implemented in <a href=\"https://en.wikipedia.org/wiki/Haskell_(programming_language)\">Haskell</a> using the <a href=\"https://en.wikipedia.org/wiki/Glasgow_Haskell_Compiler\">Glorious Haskell Compiler</a>; use the <a href=\"https://en.wikipedia.org/wiki/Z3_Theorem_Prover\">Z3 theorem prover</a> for verification; use <a href=\"https://www.racket-lang.org/\">Racket</a>'s <a href=\"https://docs.racket-lang.org/scribble/\">Scribble</a> tool for documentation; and use <a href=\"https://www.docker.com/\">Docker</a> for containerization.<a href=\"#p_7\" class=\"pid\">7</a></p>","<ul><li class=\"dynamic\"><a href=\"#guide-reach\">How does Reach work?</a></li></ul>"]