# DialMyCalls::CreateTextParameters

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | (Required)  Name the broadcast. | [optional] 
**keyword_id** | **String** | (Required)  The keyword id that should be associated with this broadcast. | [optional] 
**messages** | **Array&lt;String&gt;** | (Required)  List of messages to send (up to 10). | [optional] 
**send_at** | **String** | When the broadcast should be sent. (Ex: 2016-07-25T12:00:00+0000) | [optional] 
**send_immediately** | **BOOLEAN** | Should the broadcast go out immediately? | [optional] 
**send_email** | **BOOLEAN** | Also send an email to the contacts? | [optional] 
**accessaccount_id** | **String** | Schedule this broadcast as an access account. | [optional] 
**shortcode_id** | **String** | The shortcode id that the broadcast will be sent from. | [optional] 
**concatenate_sms** | **BOOLEAN** | Combine all SMS messages into 1 message on the end users device. | [optional] 
**contacts** | [**Array&lt;ContactAttributes&gt;**](ContactAttributes.md) | (Required)  List of contact information that should be sent the broadcast. | [optional] 


