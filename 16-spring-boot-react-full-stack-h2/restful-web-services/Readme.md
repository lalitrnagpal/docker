
## Setup the GCP VM with the script

### Run the REST Service 

#### Following are the curl commands to authenticate and then to invoke with the token

curl -i -X POST    -H "Content-Type:application/json"    -d '{
>   "username": "lalit",
>   "password": "dummy"
> }'  'http://localhost:9000/authenticate'

curl -i -X GET    -H "Authorization:Bearer <token here>"  'http://localhost:9000/jpa/users/lalit/todos'

#### To get the curl commands use the Talend API extension

![alt Talend REST API extension for Chrome](Talend.png)

#### React Frontend

$ npm install

$ npm start

##### Production Build 

$ npm run build

