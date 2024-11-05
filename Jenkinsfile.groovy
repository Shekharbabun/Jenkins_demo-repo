node("java"){
        stage('checkout'){
                git branch: 'main', url: 'https://github.com/saikiran-private/java-example.git'
            }
          
        stage('test') {
                echo 'testing the unit test case'
                }

        stage('build') {
                sh 'mvn clean package'
                }
        
        stage('deploy'){
             try {
                sh "sudo rsync -av /home/ubuntu/jenkins/Agents/workspace/'assign-2-depolytomcat'/target/surya-chandu-1.0.war/home/ubuntu/tomcat10/webapps/"
                sh "/home/ubuntu/tomcat10/bin/shutdown.sh"
                sh "/home/ubuntu/tomcat10/bin/startup.sh"
             }catch (Exception e) {
               error "Deployment failed: $(e.massage)"
                }
            }
        }
