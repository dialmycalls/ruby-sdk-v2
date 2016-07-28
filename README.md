# dialmycalls_client

DialMyCalls - the Ruby gem for the DialMyCalls API

The DialMyCalls API

For more information, please visit [https://www.dialmycalls.com](https://www.dialmycalls.com)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build dialmycalls_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./dialmycalls_client-1.0.0.gem
```
(for development, run `gem install --dev ./dialmycalls_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'dialmycalls_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/dialmycalls/ruby-sdk-v2, then add the following in the Gemfile:

    gem 'dialmycalls_client', :git => 'https://github.com/dialmycalls/ruby-sdk-v2.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'dialmycalls_client'

# Setup authorization
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

## Documentation for API Endpoints

All URIs are relative to *https://api.dialmycalls.com/2.0*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DialMyCalls::AccountsApi* | [**create_access_account**](docs/AccountsApi.md#create_access_account) | **POST** /accessaccount | Add Access Account
*DialMyCalls::AccountsApi* | [**delete_access_account_by_id**](docs/AccountsApi.md#delete_access_account_by_id) | **DELETE** /accessaccount/{AccessAccountId} | Delete Access Account
*DialMyCalls::AccountsApi* | [**get_access_account_by_id**](docs/AccountsApi.md#get_access_account_by_id) | **GET** /accessaccount/{AccessAccountId} | Get Access Account
*DialMyCalls::AccountsApi* | [**get_access_accounts**](docs/AccountsApi.md#get_access_accounts) | **GET** /accessaccounts | List Access Accounts
*DialMyCalls::AccountsApi* | [**get_account**](docs/AccountsApi.md#get_account) | **GET** /account | Get Account
*DialMyCalls::AccountsApi* | [**update_access_account_by_id**](docs/AccountsApi.md#update_access_account_by_id) | **PUT** /accessaccount/{AccessAccountId} | Update Access Account
*DialMyCalls::CallerIdsApi* | [**create_caller_id**](docs/CallerIdsApi.md#create_caller_id) | **POST** /callerid | Add Caller ID
*DialMyCalls::CallerIdsApi* | [**create_unverified_caller_id**](docs/CallerIdsApi.md#create_unverified_caller_id) | **POST** /verify/callerid | Add Caller ID (Unverified)
*DialMyCalls::CallerIdsApi* | [**delete_caller_id_by_id**](docs/CallerIdsApi.md#delete_caller_id_by_id) | **DELETE** /callerid/{CalleridId} | Delete Caller ID
*DialMyCalls::CallerIdsApi* | [**get_caller_id_by_id**](docs/CallerIdsApi.md#get_caller_id_by_id) | **GET** /callerid/{CalleridId} | Get Caller ID
*DialMyCalls::CallerIdsApi* | [**get_caller_ids**](docs/CallerIdsApi.md#get_caller_ids) | **GET** /callerids | List Caller IDs
*DialMyCalls::CallerIdsApi* | [**update_caller_id_by_id**](docs/CallerIdsApi.md#update_caller_id_by_id) | **PUT** /callerid/{CalleridId} | Update Caller ID
*DialMyCalls::CallerIdsApi* | [**verify_caller_id_by_id**](docs/CallerIdsApi.md#verify_caller_id_by_id) | **PUT** /verify/callerid/{CalleridId} | Verify Caller ID
*DialMyCalls::CallsApi* | [**cancel_call_by_id**](docs/CallsApi.md#cancel_call_by_id) | **DELETE** /service/call/{CallId} | Cancel Call
*DialMyCalls::CallsApi* | [**create_call**](docs/CallsApi.md#create_call) | **POST** /service/call | Create Call
*DialMyCalls::CallsApi* | [**get_call_by_id**](docs/CallsApi.md#get_call_by_id) | **GET** /service/call/{CallId} | Get Call
*DialMyCalls::CallsApi* | [**get_call_recipients_by_call_id**](docs/CallsApi.md#get_call_recipients_by_call_id) | **GET** /service/call/{CallId}/recipients | Get Call Recipients
*DialMyCalls::CallsApi* | [**get_calls**](docs/CallsApi.md#get_calls) | **GET** /service/calls | List Calls
*DialMyCalls::ContactsApi* | [**create_contact**](docs/ContactsApi.md#create_contact) | **POST** /contact | Add Contact
*DialMyCalls::ContactsApi* | [**delete_contact_by_id**](docs/ContactsApi.md#delete_contact_by_id) | **DELETE** /contact/{ContactId} | Delete Contact
*DialMyCalls::ContactsApi* | [**get_contact_by_id**](docs/ContactsApi.md#get_contact_by_id) | **GET** /contact/{ContactId} | Get Contact
*DialMyCalls::ContactsApi* | [**get_contacts**](docs/ContactsApi.md#get_contacts) | **GET** /contacts | List Contacts
*DialMyCalls::ContactsApi* | [**get_contacts_by_group_id**](docs/ContactsApi.md#get_contacts_by_group_id) | **GET** /contacts/{GroupId} | List Contacts in Group
*DialMyCalls::ContactsApi* | [**update_contact_by_id**](docs/ContactsApi.md#update_contact_by_id) | **PUT** /contact/{ContactId} | Update Contact
*DialMyCalls::DoNotContactsApi* | [**get_do_not_contacts**](docs/DoNotContactsApi.md#get_do_not_contacts) | **GET** /donotcontacts | List DoNotContacts
*DialMyCalls::GroupsApi* | [**create_group**](docs/GroupsApi.md#create_group) | **POST** /group | Add Group
*DialMyCalls::GroupsApi* | [**delete_group_by_id**](docs/GroupsApi.md#delete_group_by_id) | **DELETE** /group/{GroupId} | Delete Group
*DialMyCalls::GroupsApi* | [**get_group_by_id**](docs/GroupsApi.md#get_group_by_id) | **GET** /group/{GroupId} | Get Group
*DialMyCalls::GroupsApi* | [**get_groups**](docs/GroupsApi.md#get_groups) | **GET** /groups | List Groups
*DialMyCalls::GroupsApi* | [**update_group_by_id**](docs/GroupsApi.md#update_group_by_id) | **PUT** /group/{GroupId} | Update Group
*DialMyCalls::KeywordsApi* | [**delete_keyword_by_id**](docs/KeywordsApi.md#delete_keyword_by_id) | **DELETE** /keyword/{KeywordId} | Delete Keyword
*DialMyCalls::KeywordsApi* | [**get_keyword_by_id**](docs/KeywordsApi.md#get_keyword_by_id) | **GET** /keyword/{KeywordId} | Get Keyword
*DialMyCalls::KeywordsApi* | [**get_keywords**](docs/KeywordsApi.md#get_keywords) | **GET** /keywords | List Keywords
*DialMyCalls::RecordingsApi* | [**create_recording**](docs/RecordingsApi.md#create_recording) | **POST** /recording/tts | Create Recording (Text-to-Speech)
*DialMyCalls::RecordingsApi* | [**create_recording_by_phone**](docs/RecordingsApi.md#create_recording_by_phone) | **POST** /recording/phone | Create Recording (Phone)
*DialMyCalls::RecordingsApi* | [**create_recording_by_url**](docs/RecordingsApi.md#create_recording_by_url) | **POST** /recording/url | Create Recording (URL)
*DialMyCalls::RecordingsApi* | [**delete_recording_by_id**](docs/RecordingsApi.md#delete_recording_by_id) | **DELETE** /recording/{RecordingId} | Delete Recording
*DialMyCalls::RecordingsApi* | [**get_recording_by_id**](docs/RecordingsApi.md#get_recording_by_id) | **GET** /recording/{RecordingId} | Get Recording
*DialMyCalls::RecordingsApi* | [**get_recordings**](docs/RecordingsApi.md#get_recordings) | **GET** /recordings | List Recordings
*DialMyCalls::RecordingsApi* | [**update_recording_by_id**](docs/RecordingsApi.md#update_recording_by_id) | **PUT** /recording/{RecordingId} | Update Recording
*DialMyCalls::TextsApi* | [**cancel_text_by_id**](docs/TextsApi.md#cancel_text_by_id) | **DELETE** /service/text/{TextId} | Cancel Text
*DialMyCalls::TextsApi* | [**create_text**](docs/TextsApi.md#create_text) | **POST** /service/text | Create Text
*DialMyCalls::TextsApi* | [**delete_incoming_text_by_id**](docs/TextsApi.md#delete_incoming_text_by_id) | **DELETE** /incoming/text/{TextId} | Delete Incoming Text
*DialMyCalls::TextsApi* | [**get_incoming_text_by_id**](docs/TextsApi.md#get_incoming_text_by_id) | **GET** /incoming/text/{TextId} | Get Incoming Text
*DialMyCalls::TextsApi* | [**get_incoming_texts**](docs/TextsApi.md#get_incoming_texts) | **GET** /incoming/texts | List Incoming Texts
*DialMyCalls::TextsApi* | [**get_short_codes**](docs/TextsApi.md#get_short_codes) | **GET** /shortcodes | List Shortcodes
*DialMyCalls::TextsApi* | [**get_text_by_id**](docs/TextsApi.md#get_text_by_id) | **GET** /service/text/{TextId} | Get Text
*DialMyCalls::TextsApi* | [**get_text_recipients_by_text_id**](docs/TextsApi.md#get_text_recipients_by_text_id) | **GET** /service/text/{TextId}/recipients | Get Text Recipients
*DialMyCalls::TextsApi* | [**get_texts**](docs/TextsApi.md#get_texts) | **GET** /service/texts | List Texts
*DialMyCalls::VanityNumbersApi* | [**delete_vanity_number_by_id**](docs/VanityNumbersApi.md#delete_vanity_number_by_id) | **DELETE** /vanitynumber/{VanityNumberId} | Delete Vanity Number
*DialMyCalls::VanityNumbersApi* | [**get_vanity_number_by_id**](docs/VanityNumbersApi.md#get_vanity_number_by_id) | **GET** /vanitynumber/{VanityNumberId} | Get Vanity Number
*DialMyCalls::VanityNumbersApi* | [**get_vanity_numbers**](docs/VanityNumbersApi.md#get_vanity_numbers) | **GET** /vanitynumbers | List Vanity Numbers
*DialMyCalls::VanityNumbersApi* | [**update_vanity_number_by_id**](docs/VanityNumbersApi.md#update_vanity_number_by_id) | **PUT** /vanitynumber/{VanityNumberId} | Update Vanity Number


## Documentation for Models

 - [DialMyCalls::Accessaccount](docs/Accessaccount.md)
 - [DialMyCalls::Account](docs/Account.md)
 - [DialMyCalls::CallRecipient](docs/CallRecipient.md)
 - [DialMyCalls::Callerid](docs/Callerid.md)
 - [DialMyCalls::Callservice](docs/Callservice.md)
 - [DialMyCalls::Contact](docs/Contact.md)
 - [DialMyCalls::ContactAttributes](docs/ContactAttributes.md)
 - [DialMyCalls::CreateAccessAccountParameters](docs/CreateAccessAccountParameters.md)
 - [DialMyCalls::CreateCallParameters](docs/CreateCallParameters.md)
 - [DialMyCalls::CreateCallerIdParameters](docs/CreateCallerIdParameters.md)
 - [DialMyCalls::CreateContactParameters](docs/CreateContactParameters.md)
 - [DialMyCalls::CreateGroupParameters](docs/CreateGroupParameters.md)
 - [DialMyCalls::CreateRecordingByPhoneParameters](docs/CreateRecordingByPhoneParameters.md)
 - [DialMyCalls::CreateRecordingByUrlParameters](docs/CreateRecordingByUrlParameters.md)
 - [DialMyCalls::CreateRecordingParameters](docs/CreateRecordingParameters.md)
 - [DialMyCalls::CreateTextParameters](docs/CreateTextParameters.md)
 - [DialMyCalls::CreateUnverifiedCallerIdParameters](docs/CreateUnverifiedCallerIdParameters.md)
 - [DialMyCalls::Donotcontact](docs/Donotcontact.md)
 - [DialMyCalls::Group](docs/Group.md)
 - [DialMyCalls::Identifier](docs/Identifier.md)
 - [DialMyCalls::Incomingtext](docs/Incomingtext.md)
 - [DialMyCalls::Keyword](docs/Keyword.md)
 - [DialMyCalls::Polling](docs/Polling.md)
 - [DialMyCalls::PushToListenAgain](docs/PushToListenAgain.md)
 - [DialMyCalls::PushToOptOut](docs/PushToOptOut.md)
 - [DialMyCalls::PushToRecord](docs/PushToRecord.md)
 - [DialMyCalls::PushToTalk](docs/PushToTalk.md)
 - [DialMyCalls::Recording](docs/Recording.md)
 - [DialMyCalls::Service](docs/Service.md)
 - [DialMyCalls::Shortcode](docs/Shortcode.md)
 - [DialMyCalls::TextRecipient](docs/TextRecipient.md)
 - [DialMyCalls::UpdateAccessAccountByIdParameters](docs/UpdateAccessAccountByIdParameters.md)
 - [DialMyCalls::UpdateCallerIdByIdParameters](docs/UpdateCallerIdByIdParameters.md)
 - [DialMyCalls::UpdateContactByIdParameters](docs/UpdateContactByIdParameters.md)
 - [DialMyCalls::UpdateGroupByIdParameters](docs/UpdateGroupByIdParameters.md)
 - [DialMyCalls::UpdateRecordingByIdParameters](docs/UpdateRecordingByIdParameters.md)
 - [DialMyCalls::UpdateVanityNumberByIdParameters](docs/UpdateVanityNumberByIdParameters.md)
 - [DialMyCalls::Vanitynumber](docs/Vanitynumber.md)
 - [DialMyCalls::VerifyCallerIdByIdParameters](docs/VerifyCallerIdByIdParameters.md)


## Documentation for Authorization


### api_key

- **Type**: API key
- **API key parameter name**: X-Auth-ApiKey
- **Location**: HTTP header

