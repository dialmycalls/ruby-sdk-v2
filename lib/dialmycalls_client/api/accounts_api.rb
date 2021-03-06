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

require "uri"

module DialMyCalls
  class AccountsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add Access Account
    # Add a access account. <br><br> Returns a access account object on success, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X POST -d \"{\\\"email\\\": \\\"test@test.com\\\", \\\"password\\\": \\\"1234A5678\\\", \\\"name\\\": \\\"John Doe\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/accessaccount ```
    # @param create_access_account_parameters Request body
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def create_access_account(create_access_account_parameters, opts = {})
      data, _status_code, _headers = create_access_account_with_http_info(create_access_account_parameters, opts)
      return data
    end

    # Add Access Account
    # Add a access account. &lt;br&gt;&lt;br&gt; Returns a access account object on success, and returns an error otherwise. &lt;br&gt;&lt;br&gt; &#x60;&#x60;&#x60; curl -i -H \&quot;Content-Type: application/json\&quot; -X POST -d \&quot;{\\\&quot;email\\\&quot;: \\\&quot;test@test.com\\\&quot;, \\\&quot;password\\\&quot;: \\\&quot;1234A5678\\\&quot;, \\\&quot;name\\\&quot;: \\\&quot;John Doe\\\&quot;}\&quot; https://$API_KEY@api.dialmycalls.com/2.0/accessaccount &#x60;&#x60;&#x60;
    # @param create_access_account_parameters Request body
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def create_access_account_with_http_info(create_access_account_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AccountsApi.create_access_account ..."
      end
      # verify the required parameter 'create_access_account_parameters' is set
      fail ArgumentError, "Missing the required parameter 'create_access_account_parameters' when calling AccountsApi.create_access_account" if create_access_account_parameters.nil?
      # resource path
      local_var_path = "/accessaccount".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'application/xml']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json', 'application/xml']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(create_access_account_parameters)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#create_access_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Access Account
    # Delete a access account. <br><br> Returns the following if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X DELETE https://$API_KEY@api.dialmycalls.com/2.0/accessaccount/$ACCESSACCOUNT_ID ```
    # @param access_account_id AccessAccountId
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_access_account_by_id(access_account_id, opts = {})
      data, _status_code, _headers = delete_access_account_by_id_with_http_info(access_account_id, opts)
      return data
    end

    # Delete Access Account
    # Delete a access account. &lt;br&gt;&lt;br&gt; Returns the following if a valid identifier was provided, and returns an error otherwise. &lt;br&gt;&lt;br&gt; &#x60;&#x60;&#x60; curl -i -H \&quot;Content-Type: application/json\&quot; -X DELETE https://$API_KEY@api.dialmycalls.com/2.0/accessaccount/$ACCESSACCOUNT_ID &#x60;&#x60;&#x60;
    # @param access_account_id AccessAccountId
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def delete_access_account_by_id_with_http_info(access_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AccountsApi.delete_access_account_by_id ..."
      end
      # verify the required parameter 'access_account_id' is set
      fail ArgumentError, "Missing the required parameter 'access_account_id' when calling AccountsApi.delete_access_account_by_id" if access_account_id.nil?
      # resource path
      local_var_path = "/accessaccount/{AccessAccountId}".sub('{format}','json').sub('{' + 'AccessAccountId' + '}', access_account_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'application/xml']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json', 'application/xml']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#delete_access_account_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Access Account
    # Retrieve an access account. <br><br> Returns a access account object if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/accessaccount/$ACCESSACCOUNT_ID ```
    # @param access_account_id AccessAccountId
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def get_access_account_by_id(access_account_id, opts = {})
      data, _status_code, _headers = get_access_account_by_id_with_http_info(access_account_id, opts)
      return data
    end

    # Get Access Account
    # Retrieve an access account. &lt;br&gt;&lt;br&gt; Returns a access account object if a valid identifier was provided, and returns an error otherwise. &lt;br&gt;&lt;br&gt; &#x60;&#x60;&#x60; curl -i -H \&quot;Content-Type: application/json\&quot; -X GET https://$API_KEY@api.dialmycalls.com/2.0/accessaccount/$ACCESSACCOUNT_ID &#x60;&#x60;&#x60;
    # @param access_account_id AccessAccountId
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def get_access_account_by_id_with_http_info(access_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AccountsApi.get_access_account_by_id ..."
      end
      # verify the required parameter 'access_account_id' is set
      fail ArgumentError, "Missing the required parameter 'access_account_id' when calling AccountsApi.get_access_account_by_id" if access_account_id.nil?
      # resource path
      local_var_path = "/accessaccount/{AccessAccountId}".sub('{format}','json').sub('{' + 'AccessAccountId' + '}', access_account_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'application/xml']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json', 'application/xml']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#get_access_account_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Access Accounts
    # Retrieve a list of access accounts. <br><br> Returns a list of access account objects. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/accessaccounts ```
    # @param [Hash] opts the optional parameters
    # @option opts [String] :range Range (ie \&quot;records&#x3D;201-300\&quot;) of accessaccounts requested
    # @return [Object]
    def get_access_accounts(opts = {})
      data, _status_code, _headers = get_access_accounts_with_http_info(opts)
      return data
    end

    # List Access Accounts
    # Retrieve a list of access accounts. &lt;br&gt;&lt;br&gt; Returns a list of access account objects. &lt;br&gt;&lt;br&gt; &#x60;&#x60;&#x60; curl -i -H \&quot;Content-Type: application/json\&quot; -X GET https://$API_KEY@api.dialmycalls.com/2.0/accessaccounts &#x60;&#x60;&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :range Range (ie \&quot;records&#x3D;201-300\&quot;) of accessaccounts requested
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def get_access_accounts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AccountsApi.get_access_accounts ..."
      end
      # resource path
      local_var_path = "/accessaccounts".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'application/xml']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json', 'application/xml']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'Range'] = opts[:'range'] if !opts[:'range'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#get_access_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Account
    # Retrieve account details. <br><br> Returns a account object if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/account ```
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def get_account(opts = {})
      data, _status_code, _headers = get_account_with_http_info(opts)
      return data
    end

    # Get Account
    # Retrieve account details. &lt;br&gt;&lt;br&gt; Returns a account object if a valid identifier was provided, and returns an error otherwise. &lt;br&gt;&lt;br&gt; &#x60;&#x60;&#x60; curl -i -H \&quot;Content-Type: application/json\&quot; -X GET https://$API_KEY@api.dialmycalls.com/2.0/account &#x60;&#x60;&#x60;
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def get_account_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AccountsApi.get_account ..."
      end
      # resource path
      local_var_path = "/account".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'application/xml']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json', 'application/xml']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#get_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Access Account
    # Update an existing access account. <br><br> Returns a access account object if a valid identifier was provided and input validation passed, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X PUT -d \"{\\\"name\\\": \\\"New Name\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/accessaccount/$ACCESSACCOUNT_ID ```
    # @param update_access_account_by_id_parameters Request body
    # @param access_account_id AccessAccountId
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def update_access_account_by_id(update_access_account_by_id_parameters, access_account_id, opts = {})
      data, _status_code, _headers = update_access_account_by_id_with_http_info(update_access_account_by_id_parameters, access_account_id, opts)
      return data
    end

    # Update Access Account
    # Update an existing access account. &lt;br&gt;&lt;br&gt; Returns a access account object if a valid identifier was provided and input validation passed, and returns an error otherwise. &lt;br&gt;&lt;br&gt; &#x60;&#x60;&#x60; curl -i -H \&quot;Content-Type: application/json\&quot; -X PUT -d \&quot;{\\\&quot;name\\\&quot;: \\\&quot;New Name\\\&quot;}\&quot; https://$API_KEY@api.dialmycalls.com/2.0/accessaccount/$ACCESSACCOUNT_ID &#x60;&#x60;&#x60;
    # @param update_access_account_by_id_parameters Request body
    # @param access_account_id AccessAccountId
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def update_access_account_by_id_with_http_info(update_access_account_by_id_parameters, access_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AccountsApi.update_access_account_by_id ..."
      end
      # verify the required parameter 'update_access_account_by_id_parameters' is set
      fail ArgumentError, "Missing the required parameter 'update_access_account_by_id_parameters' when calling AccountsApi.update_access_account_by_id" if update_access_account_by_id_parameters.nil?
      # verify the required parameter 'access_account_id' is set
      fail ArgumentError, "Missing the required parameter 'access_account_id' when calling AccountsApi.update_access_account_by_id" if access_account_id.nil?
      # resource path
      local_var_path = "/accessaccount/{AccessAccountId}".sub('{format}','json').sub('{' + 'AccessAccountId' + '}', access_account_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'application/xml']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json', 'application/xml']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(update_access_account_by_id_parameters)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#update_access_account_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
