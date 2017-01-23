# AWS-COST

API service for AWS Cloud cost data
The raw data is based on AWS price API.
¡¦

## (initialization), Need to load data from AWS price API
```
rake raw_data:load_ec2
```

## API List
```
GET    /instances/machine_types
GET    /instances/locations
GET    /instances   (TBD)
```

