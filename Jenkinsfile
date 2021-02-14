node {
    def app

    stage('Clone repository') {
      

        checkout scm
    }

    stage('Build image') {
  
       app = docker.build("paykita.jfrog.io/jenkins-repo/test-vue","--target builder")
    }

    stage('Push image') {
        
        docker.withRegistry('https://paykita.jfrog.io', 'jfrog') {
            app.push("${env.BUILD_NUMBER}")
            
        }
    }
}
