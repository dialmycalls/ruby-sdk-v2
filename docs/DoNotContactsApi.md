# DialMyCalls::DoNotContactsApi

All URIs are relative to *https://api.dialmycalls.com/2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_do_not_contacts**](DoNotContactsApi.md#get_do_not_contacts) | **GET** /donotcontacts | List DoNotContacts


# **get_do_not_contacts**
> Object get_do_not_contacts(opts)

List DoNotContacts

Retrieve a list of donotcontacts. <br><br> Returns a list of donotcontact objects. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/donotcontacts ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::DoNotContactsApi.new

opts = { 
  range: "range_example" # String | Range (ie \"records=201-300\") of donotcontacts requested
}

begin
  #List DoNotContacts
  result = api_instance.get_do_not_contacts(opts)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling DoNotContactsApi->get_do_not_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **range** | **String**| Range (ie \&quot;records&#x3D;201-300\&quot;) of donotcontacts requested | [optional] 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



