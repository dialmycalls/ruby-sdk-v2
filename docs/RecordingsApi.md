# DialMyCalls::RecordingsApi

All URIs are relative to *https://api.dialmycalls.com/2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_recording**](RecordingsApi.md#create_recording) | **POST** /recording/tts | Create Recording (Text-to-Speech)
[**create_recording_by_phone**](RecordingsApi.md#create_recording_by_phone) | **POST** /recording/phone | Create Recording (Phone)
[**create_recording_by_url**](RecordingsApi.md#create_recording_by_url) | **POST** /recording/url | Create Recording (URL)
[**delete_recording_by_id**](RecordingsApi.md#delete_recording_by_id) | **DELETE** /recording/{RecordingId} | Delete Recording
[**get_recording_by_id**](RecordingsApi.md#get_recording_by_id) | **GET** /recording/{RecordingId} | Get Recording
[**get_recordings**](RecordingsApi.md#get_recordings) | **GET** /recordings | List Recordings
[**update_recording_by_id**](RecordingsApi.md#update_recording_by_id) | **PUT** /recording/{RecordingId} | Update Recording


# **create_recording**
> Object create_recording(create_recording_parameters)

Create Recording (Text-to-Speech)

Create a new recording using text-to-speech. <br><br> Returns a recording object on success, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X POST -d \"{\\\"name\\\": \\\"Test Recording\\\", \\\"gender\\\": \\\"M\\\", \\\"language\\\": \\\"en\\\", \\\"text\\\": \\\"This is just a test.\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/recording/tts ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::RecordingsApi.new

create_recording_parameters = DialMyCalls::CreateRecordingParameters.new # CreateRecordingParameters | Request body


begin
  #Create Recording (Text-to-Speech)
  result = api_instance.create_recording(create_recording_parameters)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling RecordingsApi->create_recording: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_recording_parameters** | [**CreateRecordingParameters**](CreateRecordingParameters.md)| Request body | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **create_recording_by_phone**
> Object create_recording_by_phone(create_recording_by_phone_parameters)

Create Recording (Phone)

Create a new recording by phone. <br><br> Returns a recording object on success, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X POST -d \"{\\\"name\\\": \\\"Test Recording\\\", \\\"phone\\\": \\\"5551234567\\\", \\\"callerid_id\\\": \\\"$CALLERID_ID\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/recording/phone ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::RecordingsApi.new

create_recording_by_phone_parameters = DialMyCalls::CreateRecordingByPhoneParameters.new # CreateRecordingByPhoneParameters | Request body


begin
  #Create Recording (Phone)
  result = api_instance.create_recording_by_phone(create_recording_by_phone_parameters)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling RecordingsApi->create_recording_by_phone: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_recording_by_phone_parameters** | [**CreateRecordingByPhoneParameters**](CreateRecordingByPhoneParameters.md)| Request body | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **create_recording_by_url**
> Object create_recording_by_url(create_recording_by_url_parameters)

Create Recording (URL)

Create a new recording from a URL. <br><br> Returns a recording object on success, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X POST -d \"{\\\"name\\\": \\\"Test Recording\\\", \\\"url\\\": \\\"https://ia700200.us.archive.org/1/items/testmp3testfile/mpthreetest.mp3\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/recording/url ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::RecordingsApi.new

create_recording_by_url_parameters = DialMyCalls::CreateRecordingByUrlParameters.new # CreateRecordingByUrlParameters | Request body


begin
  #Create Recording (URL)
  result = api_instance.create_recording_by_url(create_recording_by_url_parameters)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling RecordingsApi->create_recording_by_url: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_recording_by_url_parameters** | [**CreateRecordingByUrlParameters**](CreateRecordingByUrlParameters.md)| Request body | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **delete_recording_by_id**
> Object delete_recording_by_id(recording_id)

Delete Recording

Delete a recording. <br><br> Returns the following if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X DELETE https://$API_KEY@api.dialmycalls.com/2.0/recording/$RECORDING_ID ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::RecordingsApi.new

recording_id = "recording_id_example" # String | RecordingId


begin
  #Delete Recording
  result = api_instance.delete_recording_by_id(recording_id)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling RecordingsApi->delete_recording_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recording_id** | **String**| RecordingId | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **get_recording_by_id**
> Object get_recording_by_id(recording_id)

Get Recording

Retrieve a recording. <br><br> Returns a recording object if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/recording/$RECORDING_ID ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::RecordingsApi.new

recording_id = "recording_id_example" # String | RecordingId


begin
  #Get Recording
  result = api_instance.get_recording_by_id(recording_id)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling RecordingsApi->get_recording_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recording_id** | **String**| RecordingId | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **get_recordings**
> Object get_recordings(opts)

List Recordings

Retrieve a list of recordings. <br><br> Returns a list of recording objects. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/recordings ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::RecordingsApi.new

opts = { 
  range: "range_example" # String | Range (ie \"records=201-300\") of recordings requested
}

begin
  #List Recordings
  result = api_instance.get_recordings(opts)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling RecordingsApi->get_recordings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **range** | **String**| Range (ie \&quot;records&#x3D;201-300\&quot;) of recordings requested | [optional] 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **update_recording_by_id**
> Object update_recording_by_id(update_recording_by_id_parameters, recording_id)

Update Recording

Update an existing recording. <br><br> Returns a recording object if a valid identifier was provided and input validation passed, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X PUT -d \"{\\\"name\\\": \\\"Test Recording Updated\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/recording/$RECORDING_ID ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::RecordingsApi.new

update_recording_by_id_parameters = DialMyCalls::UpdateRecordingByIdParameters.new # UpdateRecordingByIdParameters | Request body

recording_id = "recording_id_example" # String | RecordingId


begin
  #Update Recording
  result = api_instance.update_recording_by_id(update_recording_by_id_parameters, recording_id)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling RecordingsApi->update_recording_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_recording_by_id_parameters** | [**UpdateRecordingByIdParameters**](UpdateRecordingByIdParameters.md)| Request body | 
 **recording_id** | **String**| RecordingId | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



