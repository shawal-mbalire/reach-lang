 @Library('reachLibrary') _

pipeline {
  agent {
    node {
      label 'reach'
    }
  }
  stages {
    stage('Build Haskell and Devnet Docker Images') {
      parallel {
        stage('Build Haskell') {
          steps {
            script {
              imageBuild {
                scriptDir = './scripts'
                imageName = 'haskell-build-artifacts'
              }
            }
          }
        }
        stage('Build Devnet-cfx') {
          steps {
            script {
              imageBuild {
                scriptDir = './scripts'
                imageName = 'devnet-cfx'
              }
            }
          }
        }
        stage('Build Devnet-eth') {
          steps {
            script {
              imageBuild {
                scriptDir = './scripts'
                imageName = 'devnet-eth'
              }
            }
          }
        }
        stage('Build Devnet-algo') {
          steps {
            script {
              imageBuild {
                scriptDir = './scripts'
                imageName = 'devnet-algo'
              }
            }
          }
        }
      }
    }
    stage('Build reach, reach-cli, js-deps Docker Images') {
      parallel {
        stage('Build Reach') {
          steps {
            script {
              imageBuild {
                scriptDir = './scripts'
                imageName = 'reach'
              }
            }
          }
        }
        stage('Build reach-cli') {
          steps {
            script {
              imageBuild {
                scriptDir = './scripts'
                imageName = 'reach-cli'
              }
            }
          }
        }
        stage('Build js-deps') {
          steps {
            script {
              imageBuild {
                scriptDir = './scripts'
                imageName = 'js-deps'
              }
            }
          }
        }
      }
    }
    stage('Build stdlib') {
      steps {
        script {
          imageBuild {
            scriptDir = './scripts'
            imageName = 'stdlib'
          }
        }
      }
    }
    stage('Build Runner, React Runner, RPC Server Docker Images') {
      parallel {
        stage('Build Runner') {
          steps {
            script {
              imageBuild {
                scriptDir = './scripts'
                imageName = 'runner'
              }
            }
          }
        }
        stage('Build React Runner') {
          steps {
            script {
              imageBuild {
                scriptDir = './scripts'
                imageName = 'react-runner'
              }
            }
          }
        }
      }
    }
    stage('Build RPC-Server') {
      steps {
        script {
          imageBuild {
            scriptDir = './scripts'
            imageName = 'rpc-server'
          }
        }
      }
    }
    stage('Examples') {
      steps {
        script {
          examples {
            scriptDir = './scripts'
            examplesDir = "./examples"
          }
        }
      }
    }
  }
}