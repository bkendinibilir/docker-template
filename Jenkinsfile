properties([
    pipelineTriggers([
        cron('H H(3-6) * * *'), 
        pollSCM('* * * * *')
    ])
])

node('docker') {
        stage('Build') {
            checkout scm
            sh 'make build'
        }
        stage('Push') {
            sh 'make push'
        }
}