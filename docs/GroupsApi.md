# DialMyCalls::GroupsApi

All URIs are relative to *https://api.dialmycalls.com/2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_group**](GroupsApi.md#create_group) | **POST** /group | Add Group
[**delete_group_by_id**](GroupsApi.md#delete_group_by_id) | **DELETE** /group/{GroupId} | Delete Group
[**get_group_by_id**](GroupsApi.md#get_group_by_id) | **GET** /group/{GroupId} | Get Group
[**get_groups**](GroupsApi.md#get_groups) | **GET** /groups | List Groups
[**update_group_by_id**](GroupsApi.md#update_group_by_id) | **PUT** /group/{GroupId} | Update Group


# **create_group**
> Object create_group(create_group_parameters)

Add Group

Add a contact group. <br><br> Returns a group object on success, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X POST -d \"{\\\"name\\\": \\\"Test Group\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/group ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::GroupsApi.new

create_group_parameters = DialMyCalls::CreateGroupParameters.new # CreateGroupParameters | Request body


begin
  #Add Group
  result = api_instance.create_group(create_group_parameters)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling GroupsApi->create_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_group_parameters** | [**CreateGroupParameters**](CreateGroupParameters.md)| Request body | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **delete_group_by_id**
> Object delete_group_by_id(group_id)

Delete Group

Delete a contact group. <br><br> Returns the following if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X DELETE https://$API_KEY@api.dialmycalls.com/2.0/group/$GROUP_ID ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::GroupsApi.new

group_id = "group_id_example" # String | GroupId


begin
  #Delete Group
  result = api_instance.delete_group_by_id(group_id)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling GroupsApi->delete_group_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| GroupId | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **get_group_by_id**
> Object get_group_by_id(group_id)

Get Group

Retrieve a contact group. <br><br> Returns a group object if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/group/$GROUP_ID ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::GroupsApi.new

group_id = "group_id_example" # String | GroupId


begin
  #Get Group
  result = api_instance.get_group_by_id(group_id)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling GroupsApi->get_group_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| GroupId | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **get_groups**
> Object get_groups(opts)

List Groups

Retrieve a list of contact groups. <br><br> Returns a list of group objects. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/groups ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::GroupsApi.new

opts = { 
  range: "range_example" # String | Range (ie \"records=201-300\") of groups requested
}

begin
  #List Groups
  result = api_instance.get_groups(opts)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling GroupsApi->get_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **range** | **String**| Range (ie \&quot;records&#x3D;201-300\&quot;) of groups requested | [optional] 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **update_group_by_id**
> Object update_group_by_id(update_group_by_id_parameters, group_id)

Update Group

Update an existing contact group. <br><br> Returns a group object if a valid identifier was provided and input validation passed, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X PUT -d \"{\\\"name\\\": \\\"Test Group Updated\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/group/$GROUP_ID ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::GroupsApi.new

update_group_by_id_parameters = DialMyCalls::UpdateGroupByIdParameters.new # UpdateGroupByIdParameters | Request body

group_id = "group_id_example" # String | GroupId


begin
  #Update Group
  result = api_instance.update_group_by_id(update_group_by_id_parameters, group_id)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling GroupsApi->update_group_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_group_by_id_parameters** | [**UpdateGroupByIdParameters**](UpdateGroupByIdParameters.md)| Request body | 
 **group_id** | **String**| GroupId | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



