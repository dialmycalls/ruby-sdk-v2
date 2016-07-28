# DialMyCalls::KeywordsApi

All URIs are relative to *https://api.dialmycalls.com/2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_keyword_by_id**](KeywordsApi.md#delete_keyword_by_id) | **DELETE** /keyword/{KeywordId} | Delete Keyword
[**get_keyword_by_id**](KeywordsApi.md#get_keyword_by_id) | **GET** /keyword/{KeywordId} | Get Keyword
[**get_keywords**](KeywordsApi.md#get_keywords) | **GET** /keywords | List Keywords


# **delete_keyword_by_id**
> Object delete_keyword_by_id(keyword_id)

Delete Keyword

Delete a keyword. <br><br> Returns the following if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X DELETE https://$API_KEY@api.dialmycalls.com/2.0/keyword/$KEYWORD_ID ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::KeywordsApi.new

keyword_id = "keyword_id_example" # String | KeywordId


begin
  #Delete Keyword
  result = api_instance.delete_keyword_by_id(keyword_id)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling KeywordsApi->delete_keyword_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyword_id** | **String**| KeywordId | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **get_keyword_by_id**
> Object get_keyword_by_id(keyword_id)

Get Keyword

Retrieve a keyword. <br><br> Returns a keyword object if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/keyword/$KEYWORD_ID ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::KeywordsApi.new

keyword_id = "keyword_id_example" # String | KeywordId


begin
  #Get Keyword
  result = api_instance.get_keyword_by_id(keyword_id)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling KeywordsApi->get_keyword_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyword_id** | **String**| KeywordId | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **get_keywords**
> Object get_keywords(opts)

List Keywords

Retrieve a list of keywords. <br><br> Returns a list of keyword objects. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/keywords ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::KeywordsApi.new

opts = { 
  range: "range_example" # String | Range (ie \"records=201-300\") of keywords requested
}

begin
  #List Keywords
  result = api_instance.get_keywords(opts)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling KeywordsApi->get_keywords: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **range** | **String**| Range (ie \&quot;records&#x3D;201-300\&quot;) of keywords requested | [optional] 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



