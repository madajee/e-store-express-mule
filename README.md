# e-store-express-mule

### Overview
Features: [register, login]

### view
![alt text](https://github.com/madajee/e-store-express-mule/blob/main/exchange-docs/e-store-express-mule-1.png?raw=true)

### Test
curl --location 'http://localhost:8081/api/register' \
--header 'Content-Type: application/json' \
--data '{"username":"test1","password":"test","name":"testname"}'
Accepted Response: 
{"username":"test1","message":"success","name":"testname"}

curl --location 'http://localhost:8081/api/login' \
--header 'Content-Type: application/json' \
--data '{"username":"test1","password":"test"}'
Accepted Response: 
{"username":"test1","message":"success","name":"testname"}
Accepted Response: 
{"username":"test1","password":"test","oauth2token":{"access_token":"MpSXI2oX5eamog_YETjL99g3v52Fle-ODgMp5aQUDpI1RZAxzhenv3KiRatDRHG_JYxkHLFN6cUKMmzMhwZ5Jw","token_type":"Bearer","expires_in":86400}}

curl --location 'http://localhost:8081/api/getuser' \
--header 'Authorization: Bearer MpSXI2oX5eamog_YETjL99g3v52Fle-ODgMp5aQUDpI1RZAxzhenv3KiRatDRHG_JYxkHLFN6cUKMmzMhwZ5Jw'
Accepted Response: 
{"message":"success","loggedin":"test1"}

curl --location 'http://localhost:8081/api/deleteuser' \
--header 'Authorization: Bearer MpSXI2oX5eamog_YETjL99g3v52Fle-ODgMp5aQUDpI1RZAxzhenv3KiRatDRHG_JYxkHLFN6cUKMmzMhwZ5Jw' \
--header 'Content-Type: application/json' \
--data '{"username":"test1","name":"testname"}'
Accepted Response: 
{"message":"success","username":"test1","name":"testname"}