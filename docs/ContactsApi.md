# DialMyCalls::ContactsApi

All URIs are relative to *https://api.dialmycalls.com/2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_contact**](ContactsApi.md#create_contact) | **POST** /contact | Add Contact
[**delete_contact_by_id**](ContactsApi.md#delete_contact_by_id) | **DELETE** /contact/{ContactId} | Delete Contact
[**get_contact_by_id**](ContactsApi.md#get_contact_by_id) | **GET** /contact/{ContactId} | Get Contact
[**get_contacts**](ContactsApi.md#get_contacts) | **GET** /contacts | List Contacts
[**get_contacts_by_group_id**](ContactsApi.md#get_contacts_by_group_id) | **GET** /contacts/{GroupId} | List Contacts in Group
[**update_contact_by_id**](ContactsApi.md#update_contact_by_id) | **PUT** /contact/{ContactId} | Update Contact


# **create_contact**
> Object create_contact(create_contact_parameters)

Add Contact

Add a contact to your contact list. <br><br> Returns a contact object on success, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X POST -d \"{\\\"phone\\\": \\\"5555555555\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/contact ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::ContactsApi.new

create_contact_parameters = DialMyCalls::CreateContactParameters.new # CreateContactParameters | Request body


begin
  #Add Contact
  result = api_instance.create_contact(create_contact_parameters)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling ContactsApi->create_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_contact_parameters** | [**CreateContactParameters**](CreateContactParameters.md)| Request body | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **delete_contact_by_id**
> Object delete_contact_by_id(contact_id)

Delete Contact

Delete a contact from your contact list. <br><br> Returns the following if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X DELETE https://$API_KEY@api.dialmycalls.com/2.0/contact/$CONTACT_ID ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::ContactsApi.new

contact_id = "contact_id_example" # String | ContactId


begin
  #Delete Contact
  result = api_instance.delete_contact_by_id(contact_id)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling ContactsApi->delete_contact_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_id** | **String**| ContactId | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **get_contact_by_id**
> Object get_contact_by_id(contact_id)

Get Contact

Retrieve a contact to your contact list. <br><br> Returns a contact object if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/contact/$CONTACT_ID ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::ContactsApi.new

contact_id = "contact_id_example" # String | ContactId


begin
  #Get Contact
  result = api_instance.get_contact_by_id(contact_id)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling ContactsApi->get_contact_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_id** | **String**| ContactId | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **get_contacts**
> Object get_contacts(opts)

List Contacts

Retrieve a list of contacts. <br><br> Returns a list of contact objects. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/contacts ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::ContactsApi.new

opts = { 
  range: "range_example" # String | Range (ie \"records=201-300\") of contacts requested
}

begin
  #List Contacts
  result = api_instance.get_contacts(opts)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling ContactsApi->get_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **range** | **String**| Range (ie \&quot;records&#x3D;201-300\&quot;) of contacts requested | [optional] 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **get_contacts_by_group_id**
> Object get_contacts_by_group_id(group_id)

List Contacts in Group

Retrieve a list of contacts in a contact group. <br><br> Returns a list of contact objects. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/contacts/$GROUP_ID ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::ContactsApi.new

group_id = "group_id_example" # String | GroupId


begin
  #List Contacts in Group
  result = api_instance.get_contacts_by_group_id(group_id)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling ContactsApi->get_contacts_by_group_id: #{e}"
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



# **update_contact_by_id**
> Object update_contact_by_id(update_contact_by_id_parameters, contact_id)

Update Contact

Update an existing contact in your contact list. <br><br> Returns a contact object if a valid identifier was provided and input validation passed, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X PUT -d \"{\\\"phone\\\": \\\"5555555555\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/contact/$CONTACT_ID ```

### Example
```ruby
# load the gem
require 'dialmycalls_client'
# setup authorization
DialMyCalls.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-Auth-ApiKey'] = 'YOUR API KEY'
end

api_instance = DialMyCalls::ContactsApi.new

update_contact_by_id_parameters = DialMyCalls::UpdateContactByIdParameters.new # UpdateContactByIdParameters | Request body

contact_id = "contact_id_example" # String | ContactId


begin
  #Update Contact
  result = api_instance.update_contact_by_id(update_contact_by_id_parameters, contact_id)
  p result
rescue DialMyCalls::ApiError => e
  puts "Exception when calling ContactsApi->update_contact_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_contact_by_id_parameters** | [**UpdateContactByIdParameters**](UpdateContactByIdParameters.md)| Request body | 
 **contact_id** | **String**| ContactId | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



