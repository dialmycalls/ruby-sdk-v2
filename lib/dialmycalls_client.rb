=begin
#DialMyCalls API

#The DialMyCalls API

OpenAPI spec version: 2.0.1
Contact: support@dialmycalls.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

# Common files
require 'dialmycalls_client/api_client'
require 'dialmycalls_client/api_error'
require 'dialmycalls_client/version'
require 'dialmycalls_client/configuration'

# Models
require 'dialmycalls_client/models/accessaccount'
require 'dialmycalls_client/models/account'
require 'dialmycalls_client/models/call_recipient'
require 'dialmycalls_client/models/callerid'
require 'dialmycalls_client/models/callservice'
require 'dialmycalls_client/models/contact'
require 'dialmycalls_client/models/contact_attributes'
require 'dialmycalls_client/models/create_access_account_parameters'
require 'dialmycalls_client/models/create_call_parameters'
require 'dialmycalls_client/models/create_caller_id_parameters'
require 'dialmycalls_client/models/create_contact_parameters'
require 'dialmycalls_client/models/create_group_parameters'
require 'dialmycalls_client/models/create_recording_by_phone_parameters'
require 'dialmycalls_client/models/create_recording_by_url_parameters'
require 'dialmycalls_client/models/create_recording_parameters'
require 'dialmycalls_client/models/create_text_parameters'
require 'dialmycalls_client/models/create_unverified_caller_id_parameters'
require 'dialmycalls_client/models/donotcontact'
require 'dialmycalls_client/models/group'
require 'dialmycalls_client/models/identifier'
require 'dialmycalls_client/models/incomingtext'
require 'dialmycalls_client/models/keyword'
require 'dialmycalls_client/models/polling'
require 'dialmycalls_client/models/push_to_listen_again'
require 'dialmycalls_client/models/push_to_opt_out'
require 'dialmycalls_client/models/push_to_record'
require 'dialmycalls_client/models/push_to_talk'
require 'dialmycalls_client/models/recording'
require 'dialmycalls_client/models/service'
require 'dialmycalls_client/models/shortcode'
require 'dialmycalls_client/models/text_recipient'
require 'dialmycalls_client/models/update_access_account_by_id_parameters'
require 'dialmycalls_client/models/update_caller_id_by_id_parameters'
require 'dialmycalls_client/models/update_contact_by_id_parameters'
require 'dialmycalls_client/models/update_group_by_id_parameters'
require 'dialmycalls_client/models/update_recording_by_id_parameters'
require 'dialmycalls_client/models/update_vanity_number_by_id_parameters'
require 'dialmycalls_client/models/vanitynumber'
require 'dialmycalls_client/models/verify_caller_id_by_id_parameters'

# APIs
require 'dialmycalls_client/api/accounts_api'
require 'dialmycalls_client/api/caller_ids_api'
require 'dialmycalls_client/api/calls_api'
require 'dialmycalls_client/api/contacts_api'
require 'dialmycalls_client/api/do_not_contacts_api'
require 'dialmycalls_client/api/groups_api'
require 'dialmycalls_client/api/keywords_api'
require 'dialmycalls_client/api/recordings_api'
require 'dialmycalls_client/api/texts_api'
require 'dialmycalls_client/api/vanity_numbers_api'

module DialMyCalls
  class << self
    # Customize default settings for the SDK using block.
    #   DialMyCalls.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
