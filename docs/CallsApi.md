# DialMyCalls::CallsApi

All URIs are relative to *https://api.dialmycalls.com/2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_call_by_id**](CallsApi.md#cancel_call_by_id) | **DELETE** /service/call/{CallId} | Cancel Call
[**create_call**](CallsApi.md#create_call) | **POST** /service/call | Create Call
[**get_call_by_id**](CallsApi.md#get_call_by_id) | **GET** /service/call/{CallId} | Get Call
[**get_call_recipients_by_call_id**](CallsApi.md#get_call_recipients_by_call_id) | **GET** /service/call/{CallId}/recipients | Get Call Recipients
[**get_calls**](CallsApi.md#get_calls) | **GET** /service/calls | List Calls


# **cancel_call_by_id**
> Object cancel_call_by_id(call_id)

Cancel Call

Cancel an outgoing call. <br><br> Returns the following if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X DELETE https://$API_KEY@api.dialmycalls.com/2.0/service/call/$CALL_ID ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::CallsApi.new

call_id = "call_id_example" # String | CallId


begin
  #Cancel Call
  result = api_instance.cancel_call_by_id(call_id)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling CallsApi->cancel_call_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_id** | **String**| CallId | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **create_call**
> Object create_call(create_call_parameters)

Create Call

Create an outgoing call broadcast. <br><br> Returns a call service object on success, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X POST -d \"{\\\"name\\\": \\\"Test\\\", \\\"callerid_id\\\": \\\"8bc6748e-d8a0-11e4-8b2d-00163e603cea\\\", \\\"recording_id\\\": \\\"079ff28a-1b75-11e5-88eb-00163e603cea\\\", \\\"send_immediately\\\": true, \\\"use_amd\\\": true, \\\"contacts\\\": [{\\\"phone\\\":\\\"1116551235\\\"},{\\\"phone\\\":\\\"1116551234\\\"}]}\" https://$API_KEY@api.dialmycalls.com/2.0/service/call ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::CallsApi.new

create_call_parameters = DialMyCalls::CreateCallParameters.new # CreateCallParameters | Request body


begin
  #Create Call
  result = api_instance.create_call(create_call_parameters)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling CallsApi->create_call: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_call_parameters** | [**CreateCallParameters**](CreateCallParameters.md)| Request body | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **get_call_by_id**
> Object get_call_by_id(call_id)

Get Call

Retrieve a call. <br><br> Returns a call service object if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/service/call/$CALL_ID ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::CallsApi.new

call_id = "call_id_example" # String | CallId


begin
  #Get Call
  result = api_instance.get_call_by_id(call_id)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling CallsApi->get_call_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_id** | **String**| CallId | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **get_call_recipients_by_call_id**
> Object get_call_recipients_by_call_id(call_id, opts)

Get Call Recipients

Retrieve a list of a call's recipients. <br><br> Returns a list of call recipient objects if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/service/call/$CALL_ID/recipients ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::CallsApi.new

call_id = "call_id_example" # String | CallId

opts = { 
  range: "range_example" # String | Range (ie \"records=201-300\") of recipients requested
}

begin
  #Get Call Recipients
  result = api_instance.get_call_recipients_by_call_id(call_id, opts)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling CallsApi->get_call_recipients_by_call_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_id** | **String**| CallId | 
 **range** | **String**| Range (ie \&quot;records&#x3D;201-300\&quot;) of recipients requested | [optional] 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **get_calls**
> Object get_calls(opts)

List Calls

Retrieve a list of calls. <br><br> Returns a list of call service objects. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/service/calls ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::CallsApi.new

opts = { 
  range: "range_example" # String | Range (ie \"records=201-300\") of calls requested
}

begin
  #List Calls
  result = api_instance.get_calls(opts)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling CallsApi->get_calls: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **range** | **String**| Range (ie \&quot;records&#x3D;201-300\&quot;) of calls requested | [optional] 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



