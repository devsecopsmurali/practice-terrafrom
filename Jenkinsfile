pipeline {
    agent any

    parameters {
        string(name: 'ACCOUNTNAME', defaultValue: '', description: 'Enter the account name')
        string(name: 'ACCOUNTEMAIL', defaultValue: '', description: 'Enter the account email')
    }

    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS')
        AWS_SECRET_ACCESS_KEY = credentials('AWS')
    } 

    stages {
        stage('Checkout') {
            steps {
                git credentialsId: 'Githubcreds', branch: 'aws-org-account', url: 'https://github.com/devsecopsmurali/practice-terrafrom.git'
            }
        }
         stage('Terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform apply') {
            steps {
                sh 'terraform apply  -var aws_account_name='${params.ACCOUNTNAME}' -var aws_account_email='${params.ACCOUNTNAME}' --auto-approve'
            }
        }
    }

}