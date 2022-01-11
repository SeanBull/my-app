# my-app
### A simple react application deployed using a Circle CICD pipeline that creates a docker image of my Nginx hosted React app and deploys this using AWS EKS. 

### Steps included in the pipeline 
1. Install npm package and run code tests
2. Run Linting on JS code and Docker image 
3. Build and push docker image 
4. Deploy docker image using AWS EKS 
5. Smoke test this deployment 
6. Destroy old outdated deployment on success

Passed Udacity Cloud DevOps Engineer nanodegree 🎊
![image](https://user-images.githubusercontent.com/60857854/148941886-7c0d4ae2-ee36-4a81-b37f-11caaac3bd2f.png)
