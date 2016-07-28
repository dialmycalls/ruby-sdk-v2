# DialMyCalls::CallerIdsApi

All URIs are relative to *https://api.dialmycalls.com/2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_caller_id**](CallerIdsApi.md#create_caller_id) | **POST** /callerid | Add Caller ID
[**create_unverified_caller_id**](CallerIdsApi.md#create_unverified_caller_id) | **POST** /verify/callerid | Add Caller ID (Unverified)
[**delete_caller_id_by_id**](CallerIdsApi.md#delete_caller_id_by_id) | **DELETE** /callerid/{CalleridId} | Delete Caller ID
[**get_caller_id_by_id**](CallerIdsApi.md#get_caller_id_by_id) | **GET** /callerid/{CalleridId} | Get Caller ID
[**get_caller_ids**](CallerIdsApi.md#get_caller_ids) | **GET** /callerids | List Caller IDs
[**update_caller_id_by_id**](CallerIdsApi.md#update_caller_id_by_id) | **PUT** /callerid/{CalleridId} | Update Caller ID
[**verify_caller_id_by_id**](CallerIdsApi.md#verify_caller_id_by_id) | **PUT** /verify/callerid/{CalleridId} | Verify Caller ID


# **create_caller_id**
> Object create_caller_id(create_caller_id_parameters)

Add Caller ID

Add a caller ID. <br><br> Returns a caller ID object on success, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X POST -d \"{\\\"phone\\\": \\\"5555555555\\\", \\\"name\\\": \\\"New Number\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/callerid ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::CallerIdsApi.new

create_caller_id_parameters = DialMyCalls::CreateCallerIdParameters.new # CreateCallerIdParameters | Request body


begin
  #Add Caller ID
  result = api_instance.create_caller_id(create_caller_id_parameters)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling CallerIdsApi->create_caller_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_caller_id_parameters** | [**CreateCallerIdParameters**](CreateCallerIdParameters.md)| Request body | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **create_unverified_caller_id**
> Object create_unverified_caller_id(create_unverified_caller_id_parameters)

Add Caller ID (Unverified)

Initiate adding a new caller ID when you need to go through the verification process. You will receive a phone call at the phone number provided and will need to make a subsequent API call with the PIN code that you are provided. <br><br> Returns a caller ID object on success, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X POST -d \"{\\\"phone\\\": \\\"5555555555\\\", \\\"name\\\": \\\"New Number\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/verify/callerid ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::CallerIdsApi.new

create_unverified_caller_id_parameters = DialMyCalls::CreateUnverifiedCallerIdParameters.new # CreateUnverifiedCallerIdParameters | Request body


begin
  #Add Caller ID (Unverified)
  result = api_instance.create_unverified_caller_id(create_unverified_caller_id_parameters)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling CallerIdsApi->create_unverified_caller_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_unverified_caller_id_parameters** | [**CreateUnverifiedCallerIdParameters**](CreateUnverifiedCallerIdParameters.md)| Request body | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **delete_caller_id_by_id**
> Object delete_caller_id_by_id(callerid_id)

Delete Caller ID

Delete a caller ID. <br><br> Returns the following if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X DELETE https://$API_KEY@api.dialmycalls.com/2.0/callerid/$CALLERID_ID ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::CallerIdsApi.new

callerid_id = "callerid_id_example" # String | CalleridId


begin
  #Delete Caller ID
  result = api_instance.delete_caller_id_by_id(callerid_id)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling CallerIdsApi->delete_caller_id_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **callerid_id** | **String**| CalleridId | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **get_caller_id_by_id**
> Object get_caller_id_by_id(callerid_id)

Get Caller ID

Retrieve a caller ID. <br><br> Returns a caller ID object if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/callerid/$CALLERID_ID ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::CallerIdsApi.new

callerid_id = "callerid_id_example" # String | CalleridId


begin
  #Get Caller ID
  result = api_instance.get_caller_id_by_id(callerid_id)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling CallerIdsApi->get_caller_id_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **callerid_id** | **String**| CalleridId | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **get_caller_ids**
> Object get_caller_ids(opts)

List Caller IDs

Retrieve a list of caller IDs. <br><br> Returns a list of caller ID objects. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/callerids ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::CallerIdsApi.new

opts = { 
  range: "range_example" # String | Range (ie \"records=201-300\") of callerids requested
}

begin
  #List Caller IDs
  result = api_instance.get_caller_ids(opts)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling CallerIdsApi->get_caller_ids: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **range** | **String**| Range (ie \&quot;records&#x3D;201-300\&quot;) of callerids requested | [optional] 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **update_caller_id_by_id**
> Object update_caller_id_by_id(update_caller_id_by_id_parameters, callerid_id)

Update Caller ID

Update an existing caller ID. <br><br> Returns a caller ID object if a valid identifier was provided and input validation passed, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X PUT -d \"{\\\"name\\\": \\\"New Number Updated\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/callerid/$CALLERID_ID ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::CallerIdsApi.new

update_caller_id_by_id_parameters = DialMyCalls::UpdateCallerIdByIdParameters.new # UpdateCallerIdByIdParameters | Request body

callerid_id = "callerid_id_example" # String | CalleridId


begin
  #Update Caller ID
  result = api_instance.update_caller_id_by_id(update_caller_id_by_id_parameters, callerid_id)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling CallerIdsApi->update_caller_id_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_caller_id_by_id_parameters** | [**UpdateCallerIdByIdParameters**](UpdateCallerIdByIdParameters.md)| Request body | 
 **callerid_id** | **String**| CalleridId | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **verify_caller_id_by_id**
> Object verify_caller_id_by_id(verify_caller_id_by_id_parameters, callerid_id)

Verify Caller ID

Verify a new caller ID. <br><br> Returns a caller ID object if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X POST -d \"{\\\"phone\\\": \\\"5555555555\\\", \\\"name\\\": \\\"New Number\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/verify/callerid/$CALLERID_ID ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::CallerIdsApi.new

verify_caller_id_by_id_parameters = DialMyCalls::VerifyCallerIdByIdParameters.new # VerifyCallerIdByIdParameters | Request body

callerid_id = "callerid_id_example" # String | CalleridId


begin
  #Verify Caller ID
  result = api_instance.verify_caller_id_by_id(verify_caller_id_by_id_parameters, callerid_id)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling CallerIdsApi->verify_caller_id_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verify_caller_id_by_id_parameters** | [**VerifyCallerIdByIdParameters**](VerifyCallerIdByIdParameters.md)| Request body | 
 **callerid_id** | **String**| CalleridId | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



