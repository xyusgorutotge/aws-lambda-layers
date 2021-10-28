# codemask-lamda-layers

# Problem:
Bundling python packages (requests, redis, ...) together with lambda functions:
- Take much longer time to upload to aws everytime deploying --> slow down development

# Solutions:
- Separate those packages in different layers
- Lambda functions require any of those packages, just point to those layers

# How to use:

#### **1) Configuration**
Update config.dev.json & config.pro.json
<br/><br/>

#### **2) Deploy the lambda layers to aws**

```
Developement
./deploy.sh
```

```
Production
./deploy.sh pro
```

#### **3) Undeploy**

```
./undeploy.sh
./undeploy.sh pro 
```