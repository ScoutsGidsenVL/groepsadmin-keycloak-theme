pipeline {
  agent any

  options {
    buildDiscarder(logRotator(artifactNumToKeepStr: '10'))
  }

  stages {
    stage('build') {
      steps {
        sh "rm -rf theme.zip"
        sh "npm --production prune"
        sh "npm --production install"
        sh "node_modules/bower/bin/bower prune --production"
        sh "node_modules/bower/bin/bower install --production"
        sh "cp bower_components/cleave.js/dist/cleave.min.js bower_components/cleave.js/dist/addons/cleave-phone.be.js Scouts-en-Gidsen-Vlaanderen/login/resources/js"
        sh "zip -r theme.zip Scouts-en-Gidsen-Vlaanderen"
      }
    }

    stage('archive') {
      steps {
        archive 'theme.zip'

        script{
            def artifactory = Artifactory.server 'artifactory'

            def uploadSpec = '''{
              "files": [
                {
                  "pattern": "theme.zip",
                  "target": "groepsadmin-keycloak-theme/${BRANCH_NAME}/${BUILD_ID}/"
                }
             ]
            }'''

            def buildInfo = artifactory.upload spec: uploadSpec

            artifactory.publishBuildInfo buildInfo
        }
      }
    }

    stage('deploy') {
      steps {
        sh 'ssh az-deb-mgmt sudo -u ansible /opt/deploy-keycloak.sh ${BRANCH_NAME}'
      }
    }
  }

  post {
    failure {
      emailen()
    }
    unstable {
      emailen()
    }
    changed {
      emailen()
    }
  }
}

def emailen() {
  mail(
    to: "tvl@scoutsengidsenvlaanderen.be,${env.CHANGE_AUTHOR_EMAIL}",
    subject: "[Jenkins] ${currentBuild.fullDisplayName} ${currentBuild.currentResult}",
    body: """${currentBuild.fullDisplayName} ${currentBuild.currentResult}

${currentBuild.absoluteUrl}"""
  )
}
