# DialMyCalls::VanityNumbersApi

All URIs are relative to *https://api.dialmycalls.com/2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_vanity_number_by_id**](VanityNumbersApi.md#delete_vanity_number_by_id) | **DELETE** /vanitynumber/{VanityNumberId} | Delete Vanity Number
[**get_vanity_number_by_id**](VanityNumbersApi.md#get_vanity_number_by_id) | **GET** /vanitynumber/{VanityNumberId} | Get Vanity Number
[**get_vanity_numbers**](VanityNumbersApi.md#get_vanity_numbers) | **GET** /vanitynumbers | List Vanity Numbers
[**update_vanity_number_by_id**](VanityNumbersApi.md#update_vanity_number_by_id) | **PUT** /vanitynumber/{VanityNumberId} | Update Vanity Number


# **delete_vanity_number_by_id**
> Object delete_vanity_number_by_id(vanity_number_id)

Delete Vanity Number

Delete a vanity number. <br><br> Returns the following if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X DELETE https://$API_KEY@api.dialmycalls.com/2.0/keyword/$VANITYNUMBER_ID ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::VanityNumbersApi.new

vanity_number_id = "vanity_number_id_example" # String | VanityNumberId


begin
  #Delete Vanity Number
  result = api_instance.delete_vanity_number_by_id(vanity_number_id)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling VanityNumbersApi->delete_vanity_number_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vanity_number_id** | **String**| VanityNumberId | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **get_vanity_number_by_id**
> Object get_vanity_number_by_id(vanity_number_id)

Get Vanity Number

Retrieve a vanity number. <br><br> Returns a vanitynumber object if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/vanitynumber/$VANITYNUMBER_ID ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::VanityNumbersApi.new

vanity_number_id = "vanity_number_id_example" # String | VanityNumberId


begin
  #Get Vanity Number
  result = api_instance.get_vanity_number_by_id(vanity_number_id)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling VanityNumbersApi->get_vanity_number_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vanity_number_id** | **String**| VanityNumberId | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **get_vanity_numbers**
> Object get_vanity_numbers(opts)

List Vanity Numbers

Retrieve a list of vanity numbers. <br><br> Returns a list of vanitynumber objects. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/vanitynumbers ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::VanityNumbersApi.new

opts = { 
  range: "range_example" # String | Range (ie \"records=201-300\") of vanitynumbers requested
}

begin
  #List Vanity Numbers
  result = api_instance.get_vanity_numbers(opts)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling VanityNumbersApi->get_vanity_numbers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **range** | **String**| Range (ie \&quot;records&#x3D;201-300\&quot;) of vanitynumbers requested | [optional] 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **update_vanity_number_by_id**
> Object update_vanity_number_by_id(update_vanity_number_by_id_parameters, vanity_number_id)

Update Vanity Number

Update a vanity number. <br><br> Returns a vanitynumber object if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X PUT -d \"{\\\"ptt_number_id\\\":\\\"aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeee\\\",\\\"call_options\\\":{\\\"voicemail\\\":true}}\" https://$API_KEY@api.dialmycalls.com/2.0/vanitynumber/$VANITYNUMBER_ID ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::VanityNumbersApi.new

update_vanity_number_by_id_parameters = DialMyCalls::UpdateVanityNumberByIdParameters.new # UpdateVanityNumberByIdParameters | Request body

vanity_number_id = "vanity_number_id_example" # String | VanityNumberId


begin
  #Update Vanity Number
  result = api_instance.update_vanity_number_by_id(update_vanity_number_by_id_parameters, vanity_number_id)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling VanityNumbersApi->update_vanity_number_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_vanity_number_by_id_parameters** | [**UpdateVanityNumberByIdParameters**](UpdateVanityNumberByIdParameters.md)| Request body | 
 **vanity_number_id** | **String**| VanityNumberId | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



