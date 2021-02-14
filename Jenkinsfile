node {
    def app

    stage('Clone repository') {
      

        checkout scm
    }

    stage('Build image') {
  
       app = docker.build("paykita.jfrog.io/jenkins-repo/test-vue")
    }

    stage('Push image') {
        
        docker.withRegistry('https://paykita.jfrog.io', 'git') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}
