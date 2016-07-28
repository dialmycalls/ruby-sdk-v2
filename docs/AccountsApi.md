# DialMyCalls::AccountsApi

All URIs are relative to *https://api.dialmycalls.com/2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_access_account**](AccountsApi.md#create_access_account) | **POST** /accessaccount | Add Access Account
[**delete_access_account_by_id**](AccountsApi.md#delete_access_account_by_id) | **DELETE** /accessaccount/{AccessAccountId} | Delete Access Account
[**get_access_account_by_id**](AccountsApi.md#get_access_account_by_id) | **GET** /accessaccount/{AccessAccountId} | Get Access Account
[**get_access_accounts**](AccountsApi.md#get_access_accounts) | **GET** /accessaccounts | List Access Accounts
[**get_account**](AccountsApi.md#get_account) | **GET** /account | Get Account
[**update_access_account_by_id**](AccountsApi.md#update_access_account_by_id) | **PUT** /accessaccount/{AccessAccountId} | Update Access Account


# **create_access_account**
> Object create_access_account(create_access_account_parameters)

Add Access Account

Add a access account. <br><br> Returns a access account object on success, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X POST -d \"{\\\"email\\\": \\\"test@test.com\\\", \\\"password\\\": \\\"1234A5678\\\", \\\"name\\\": \\\"John Doe\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/accessaccount ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::AccountsApi.new

create_access_account_parameters = DialMyCalls::CreateAccessAccountParameters.new # CreateAccessAccountParameters | Request body


begin
  #Add Access Account
  result = api_instance.create_access_account(create_access_account_parameters)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling AccountsApi->create_access_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_access_account_parameters** | [**CreateAccessAccountParameters**](CreateAccessAccountParameters.md)| Request body | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **delete_access_account_by_id**
> Object delete_access_account_by_id(access_account_id)

Delete Access Account

Delete a access account. <br><br> Returns the following if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X DELETE https://$API_KEY@api.dialmycalls.com/2.0/accessaccount/$ACCESSACCOUNT_ID ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::AccountsApi.new

access_account_id = "access_account_id_example" # String | AccessAccountId


begin
  #Delete Access Account
  result = api_instance.delete_access_account_by_id(access_account_id)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling AccountsApi->delete_access_account_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_account_id** | **String**| AccessAccountId | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **get_access_account_by_id**
> Object get_access_account_by_id(access_account_id)

Get Access Account

Retrieve an access account. <br><br> Returns a access account object if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/accessaccount/$ACCESSACCOUNT_ID ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::AccountsApi.new

access_account_id = "access_account_id_example" # String | AccessAccountId


begin
  #Get Access Account
  result = api_instance.get_access_account_by_id(access_account_id)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling AccountsApi->get_access_account_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_account_id** | **String**| AccessAccountId | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **get_access_accounts**
> Object get_access_accounts(opts)

List Access Accounts

Retrieve a list of access accounts. <br><br> Returns a list of access account objects. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/accessaccounts ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::AccountsApi.new

opts = { 
  range: "range_example" # String | Range (ie \"records=201-300\") of accessaccounts requested
}

begin
  #List Access Accounts
  result = api_instance.get_access_accounts(opts)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling AccountsApi->get_access_accounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **range** | **String**| Range (ie \&quot;records&#x3D;201-300\&quot;) of accessaccounts requested | [optional] 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **get_account**
> Object get_account

Get Account

Retrieve account details. <br><br> Returns a account object if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/account ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::AccountsApi.new

begin
  #Get Account
  result = api_instance.get_account
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling AccountsApi->get_account: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **update_access_account_by_id**
> Object update_access_account_by_id(update_access_account_by_id_parameters, access_account_id)

Update Access Account

Update an existing access account. <br><br> Returns a access account object if a valid identifier was provided and input validation passed, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X PUT -d \"{\\\"name\\\": \\\"New Name\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/accessaccount/$ACCESSACCOUNT_ID ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::AccountsApi.new

update_access_account_by_id_parameters = DialMyCalls::UpdateAccessAccountByIdParameters.new # UpdateAccessAccountByIdParameters | Request body

access_account_id = "access_account_id_example" # String | AccessAccountId


begin
  #Update Access Account
  result = api_instance.update_access_account_by_id(update_access_account_by_id_parameters, access_account_id)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling AccountsApi->update_access_account_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_access_account_by_id_parameters** | [**UpdateAccessAccountByIdParameters**](UpdateAccessAccountByIdParameters.md)| Request body | 
 **access_account_id** | **String**| AccessAccountId | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



