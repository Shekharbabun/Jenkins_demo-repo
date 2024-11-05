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
               sh "sudo rsync -av -delete /home/ubuntu/jenkins/Agents/workspace/Depoly_t_tomcat_3rd_question/target /home/ubuntu/tomcat10/webapps/"
                sh "sudo /home/ubuntu/tomcat10/bin/shutdown.sh"
                sh "sudo /home/ubuntu/tomcat10/bin/startup.sh"
             }catch (Exception e) {
               error "Deployment failed: $(e.massage)"
                }
            }
        }
