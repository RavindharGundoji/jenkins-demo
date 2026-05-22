pipeline {
    agent any

    stages {

        stage('Checkout Info') {
            steps {
                echo 'Pipeline Started 🚀'

                sh '''
                echo "Current Workspace:"
                pwd

                echo "Workspace Files:"
                ls -la
                '''
            }
        }

        stage('Build') {
            steps {
                echo 'Running Build Script 🔨'

                sh '''
                chmod +x build.sh
                ./build.sh
                '''
            }
        }

        stage('Archive') {
            steps {
                echo 'Archiving Artifacts 📦'

                archiveArtifacts artifacts: 'output/*', fingerprint: true
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully ✅'
        }

        failure {
            echo 'Pipeline failed ❌'
        }
    }
}
