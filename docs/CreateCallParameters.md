# DialMyCalls::CreateCallParameters

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | (Required)  Name the broadcast. | [optional] 
**callerid_id** | **String** | (Required)  The caller id that the message should be sent from. | [optional] 
**recording_id** | **String** | (Required)  The recording id of the message that should be played. | [optional] 
**machine_recording_id** | **String** | The recording id of the message that should be played on answering machines.  If not supplied the recording_id will be used.  use_amd must be true in order for this feature to work. | [optional] 
**send_at** | **String** | When the broadcast should be sent. (Ex: 2016-07-25T12:00:00+0000) | [optional] 
**send_immediately** | **BOOLEAN** | Should the broadcast go out immediately? | [optional] 
**use_amd** | **BOOLEAN** | Using answering machine detection? | [optional] 
**send_email** | **BOOLEAN** | Also send an email to the contacts? | [optional] 
**accessaccount_id** | **String** | Schedule this broadcast as an access account. | [optional] 
**contacts** | [**Array&lt;ContactAttributes&gt;**](ContactAttributes.md) | (Required)  List of contact information that should be sent the broadcast. | [optional] 
**add_ons** | [**Array&lt;PushToListenAgain&gt;**](PushToListenAgain.md) | A list of feature add-ons for the calls. | [optional] 


