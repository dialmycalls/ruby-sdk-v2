# DialMyCalls::TextsApi

All URIs are relative to *https://api.dialmycalls.com/2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_text_by_id**](TextsApi.md#cancel_text_by_id) | **DELETE** /service/text/{TextId} | Cancel Text
[**create_text**](TextsApi.md#create_text) | **POST** /service/text | Create Text
[**delete_incoming_text_by_id**](TextsApi.md#delete_incoming_text_by_id) | **DELETE** /incoming/text/{TextId} | Delete Incoming Text
[**get_incoming_text_by_id**](TextsApi.md#get_incoming_text_by_id) | **GET** /incoming/text/{TextId} | Get Incoming Text
[**get_incoming_texts**](TextsApi.md#get_incoming_texts) | **GET** /incoming/texts | List Incoming Texts
[**get_short_codes**](TextsApi.md#get_short_codes) | **GET** /shortcodes | List Shortcodes
[**get_text_by_id**](TextsApi.md#get_text_by_id) | **GET** /service/text/{TextId} | Get Text
[**get_text_recipients_by_text_id**](TextsApi.md#get_text_recipients_by_text_id) | **GET** /service/text/{TextId}/recipients | Get Text Recipients
[**get_texts**](TextsApi.md#get_texts) | **GET** /service/texts | List Texts


# **cancel_text_by_id**
> Object cancel_text_by_id(text_id)

Cancel Text

Cancel an outgoing text. <br><br> Returns the following if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X DELETE https://$API_KEY@api.dialmycalls.com/2.0/service/text/$TEXT_ID ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::TextsApi.new

text_id = "text_id_example" # String | TextId


begin
  #Cancel Text
  result = api_instance.cancel_text_by_id(text_id)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling TextsApi->cancel_text_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text_id** | **String**| TextId | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **create_text**
> Object create_text(create_text_parameters)

Create Text

Create an outgoing text broadcast. <br><br> Returns a service object on success, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X POST -d \"{\\\"keyword_id\\\": \\\"dfe49537-a0a8-4f4a-98a1-e03df388af11\\\", \\\"send_immediately\\\": true,\\\"messages\\\": [\\\"Testing testing\\\"], \\\"contacts\\\": [{\\\"phone\\\":\\\"1116551235\\\"},{\\\"phone\\\":\\\"1116551234\\\"}]}\" https://$API_KEY@api.dialmycalls.com/2.0/service/text ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::TextsApi.new

create_text_parameters = DialMyCalls::CreateTextParameters.new # CreateTextParameters | Request body


begin
  #Create Text
  result = api_instance.create_text(create_text_parameters)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling TextsApi->create_text: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_text_parameters** | [**CreateTextParameters**](CreateTextParameters.md)| Request body | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **delete_incoming_text_by_id**
> Object delete_incoming_text_by_id(text_id)

Delete Incoming Text

Delete a incoming text. <br><br> Returns the following if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X DELETE https://$API_KEY@api.dialmycalls.com/2.0/incoming/text/$TEXT_ID ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::TextsApi.new

text_id = "text_id_example" # String | TextId


begin
  #Delete Incoming Text
  result = api_instance.delete_incoming_text_by_id(text_id)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling TextsApi->delete_incoming_text_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text_id** | **String**| TextId | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **get_incoming_text_by_id**
> Object get_incoming_text_by_id(text_id)

Get Incoming Text

Retrieve a text. <br><br> Returns a Incoming Text object if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/incoming/text/$TEXT_ID ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::TextsApi.new

text_id = "text_id_example" # String | TextId


begin
  #Get Incoming Text
  result = api_instance.get_incoming_text_by_id(text_id)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling TextsApi->get_incoming_text_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text_id** | **String**| TextId | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **get_incoming_texts**
> Object get_incoming_texts(opts)

List Incoming Texts

Retrieve a list of texts. <br><br> Returns a list of Incoming Text objects. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/incoming/texts ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::TextsApi.new

opts = { 
  range: "range_example" # String | Range (ie \"records=201-300\") of texts requested
}

begin
  #List Incoming Texts
  result = api_instance.get_incoming_texts(opts)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling TextsApi->get_incoming_texts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **range** | **String**| Range (ie \&quot;records&#x3D;201-300\&quot;) of texts requested | [optional] 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **get_short_codes**
> Object get_short_codes(opts)

List Shortcodes

Retrieve a list of shortcodes. <br><br> Returns a list of shortcode objects. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/shortcodes ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::TextsApi.new

opts = { 
  range: "range_example" # String | Range (ie \"records=201-300\") of shortcodes requested
}

begin
  #List Shortcodes
  result = api_instance.get_short_codes(opts)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling TextsApi->get_short_codes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **range** | **String**| Range (ie \&quot;records&#x3D;201-300\&quot;) of shortcodes requested | [optional] 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **get_text_by_id**
> Object get_text_by_id(text_id)

Get Text

Retrieve a text. <br><br> Returns a service object if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/service/text/$TEXT_ID ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::TextsApi.new

text_id = "text_id_example" # String | TextId


begin
  #Get Text
  result = api_instance.get_text_by_id(text_id)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling TextsApi->get_text_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text_id** | **String**| TextId | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **get_text_recipients_by_text_id**
> Object get_text_recipients_by_text_id(text_id, opts)

Get Text Recipients

Retrieve a list of a text's recipients. <br><br> Returns a list of text recipient objects if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/service/text/$TEXT_ID/recipients ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::TextsApi.new

text_id = "text_id_example" # String | TextId

opts = { 
  range: "range_example" # String | Range (ie \"records=201-300\") of recipients requested
}

begin
  #Get Text Recipients
  result = api_instance.get_text_recipients_by_text_id(text_id, opts)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling TextsApi->get_text_recipients_by_text_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text_id** | **String**| TextId | 
 **range** | **String**| Range (ie \&quot;records&#x3D;201-300\&quot;) of recipients requested | [optional] 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **get_texts**
> Object get_texts(opts)

List Texts

Retrieve a list of texts. <br><br> Returns a list of service objects. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/service/texts ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::TextsApi.new

opts = { 
  range: "range_example" # String | Range (ie \"records=201-300\") of texts requested
}

begin
  #List Texts
  result = api_instance.get_texts(opts)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling TextsApi->get_texts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **range** | **String**| Range (ie \&quot;records&#x3D;201-300\&quot;) of texts requested | [optional] 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



