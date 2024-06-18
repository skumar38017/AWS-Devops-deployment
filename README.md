# AWS-DevOps-Demo-project-Deployment
# Deploying applications on AWS using DevOps practices involves leveraging several key services: CodeCommit, CodeBuild, CodeDeploy, CodePipeline, and EC2 instances running Ubuntu. Here’s how each service contributes to the deployment process:

1. Create EC2 instance (ubuntu)
2. create user
   
          Generate HTTPS Git credentials for AWS CodeCommit
          Generate Access key

4. Create IAM Role

![image](https://github.com/sumitkumar74604/AWS-Devops-deployment/assets/152770548/3dd3dd39-bb04-4a40-b08d-95952b81ee49)

        * codebuild-AWS-DevOps-Demo-Build-service-role (with policy).
            Codebuild
            CodeCommit
            s3
            cloudwatchLogs
        
        * codeDeploy-AWS-DevOps-Demo-Deploy-service-role (with policy).
            AmazonEC2FullAccess
            AmazonEC2RoleforAWSCodeDeploy
            mazonEC2RoleforAWSCodeDeployLimited
            AmazonS3FullAccess
            AWSCodeDeployFullAccess
            AWSCodeDeployRole
        
        * EC2-AWS-DevOps-Demo-Deploy-service-role 
            AmazonEC2FullAccess
            AmazonS3FullAccess
            AWSCodeDeployFullAccess


5. Create Repo in codeCommit
   
          clone url for local

7. Create Project in CodeBuild  (edit)
   
          Project configuration
          Source
          Environment
          Buildspec
          Artifacts
          Service role permissions

9. Create Application in CodeDeploy
   
          Application configuration
          Create deployment configuration

11. Create a Pipline In CodePipeline

            Create pipeline
    
    ![image](https://github.com/sumitkumar74604/AWS-Devops-deployment/assets/152770548/a568c8d4-2778-4bec-9169-92c7be606361
