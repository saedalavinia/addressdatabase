# Address API 
Address API provides programmatic acces to read and write the Address data. If you wish to setup this project, please refer to SETUP.MD as this guide is intended for users of the API

###API Objects
There are two objects in this API: 
- PERSON
- ADDRESS

A PERSON object represents a member for whom an address history can be added. A JSON representation of a PERSON object looks like the following: 
```json
  {
    "sin": 999999999,
    "firstName": "John",
    "lastName": "Doe"
  },
```
An ADDRESS object represents an address record for a member. A JSON representation of a PERSON object looks like the following: 
```json
{
    "id": 1,
    "streetNumber": 123,
    "streetAddress": "Example Street",
    "city": "Ottawa",
    "province": "ON",
    "postalCode": "L1L1L1",
    "country": "Canada",
    "person": {
      "sin": 999999999,
      "firstName": "John",
      "lastName": "Doe"
    },
    "dateFrom": "01/01/2014",
    "dateTo": "01/01/2015
  },
 ``` 

### REST API

Notes:
- No security feature is implemented. All requests are authorized. 
- Once a member is added, it cannot be deleted, but can be updated. 
- Once an address is added, it cannot be deleted, bt can be updated. 
- It is up to the client to ensure correct format for address fields, e.g fromDate is earlier than toDate

### Returns a list of all members
> URL : /persons
Method : GET 
URL Params :  none
Data Params : none
Response Codes: Success (200 OK), Bad Request (400)


#### Adds a new member 
> URL : /persons
Method : POST 
URL Params :  none
Data Params : 
```json
 {  
    "sin": [9-digit integer],
    "firstName": [String], 
    "lastName": [String] 
} 
```
> Response Codes: Success (200 OK), Bad Request (400)


### Returns a signle member
> URL : /persons/{sin}
Method : GET 
URL Params :  sin: [9-digit integer]
Data Params : none
Response Codes: Success (200 OK), Bad Request (400)


### Returns a list of addresses for a particular member
> URL : /persons/{sin}/addresses
Method : GET 
URL Params :  sin: [9-digit integer]
Data Params : none
Response Codes: Success (200 OK), Bad Request (400)


### adds a new address for a particular member
> URL : /persons/{sin}/addresses
Method : GET 
URL Params :  sin: [9-digit integer]
Data Params : 
```json
{
    "streetNumber": [Integer],
    "streetAddress": [String],
    "city": [String],
    "province": [2-char String],
    "postalCode": [6-char String],
    "country": [String],
    "dateFrom": [SQL Date Object],
    "dateTo": [SQL Date Object]
  },
 ``` 
Response Codes: Success (200 OK), Bad Request (400)



