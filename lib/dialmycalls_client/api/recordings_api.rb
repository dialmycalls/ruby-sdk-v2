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
  class RecordingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create Recording (Text-to-Speech)
    # Create a new recording using text-to-speech. <br><br> Returns a recording object on success, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X POST -d \"{\\\"name\\\": \\\"Test Recording\\\", \\\"gender\\\": \\\"M\\\", \\\"language\\\": \\\"en\\\", \\\"text\\\": \\\"This is just a test.\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/recording/tts ```
    # @param create_recording_parameters Request body
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def create_recording(create_recording_parameters, opts = {})
      data, _status_code, _headers = create_recording_with_http_info(create_recording_parameters, opts)
      return data
    end

    # Create Recording (Text-to-Speech)
    # Create a new recording using text-to-speech. &lt;br&gt;&lt;br&gt; Returns a recording object on success, and returns an error otherwise. &lt;br&gt;&lt;br&gt; &#x60;&#x60;&#x60; curl -i -H \&quot;Content-Type: application/json\&quot; -X POST -d \&quot;{\\\&quot;name\\\&quot;: \\\&quot;Test Recording\\\&quot;, \\\&quot;gender\\\&quot;: \\\&quot;M\\\&quot;, \\\&quot;language\\\&quot;: \\\&quot;en\\\&quot;, \\\&quot;text\\\&quot;: \\\&quot;This is just a test.\\\&quot;}\&quot; https://$API_KEY@api.dialmycalls.com/2.0/recording/tts &#x60;&#x60;&#x60;
    # @param create_recording_parameters Request body
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def create_recording_with_http_info(create_recording_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RecordingsApi.create_recording ..."
      end
      # verify the required parameter 'create_recording_parameters' is set
      fail ArgumentError, "Missing the required parameter 'create_recording_parameters' when calling RecordingsApi.create_recording" if create_recording_parameters.nil?
      # resource path
      local_var_path = "/recording/tts".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(create_recording_parameters)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecordingsApi#create_recording\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Recording (Phone)
    # Create a new recording by phone. <br><br> Returns a recording object on success, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X POST -d \"{\\\"name\\\": \\\"Test Recording\\\", \\\"phone\\\": \\\"5551234567\\\", \\\"callerid_id\\\": \\\"$CALLERID_ID\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/recording/phone ```
    # @param create_recording_by_phone_parameters Request body
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def create_recording_by_phone(create_recording_by_phone_parameters, opts = {})
      data, _status_code, _headers = create_recording_by_phone_with_http_info(create_recording_by_phone_parameters, opts)
      return data
    end

    # Create Recording (Phone)
    # Create a new recording by phone. &lt;br&gt;&lt;br&gt; Returns a recording object on success, and returns an error otherwise. &lt;br&gt;&lt;br&gt; &#x60;&#x60;&#x60; curl -i -H \&quot;Content-Type: application/json\&quot; -X POST -d \&quot;{\\\&quot;name\\\&quot;: \\\&quot;Test Recording\\\&quot;, \\\&quot;phone\\\&quot;: \\\&quot;5551234567\\\&quot;, \\\&quot;callerid_id\\\&quot;: \\\&quot;$CALLERID_ID\\\&quot;}\&quot; https://$API_KEY@api.dialmycalls.com/2.0/recording/phone &#x60;&#x60;&#x60;
    # @param create_recording_by_phone_parameters Request body
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def create_recording_by_phone_with_http_info(create_recording_by_phone_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RecordingsApi.create_recording_by_phone ..."
      end
      # verify the required parameter 'create_recording_by_phone_parameters' is set
      fail ArgumentError, "Missing the required parameter 'create_recording_by_phone_parameters' when calling RecordingsApi.create_recording_by_phone" if create_recording_by_phone_parameters.nil?
      # resource path
      local_var_path = "/recording/phone".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(create_recording_by_phone_parameters)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecordingsApi#create_recording_by_phone\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Recording (URL)
    # Create a new recording from a URL. <br><br> Returns a recording object on success, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X POST -d \"{\\\"name\\\": \\\"Test Recording\\\", \\\"url\\\": \\\"https://ia700200.us.archive.org/1/items/testmp3testfile/mpthreetest.mp3\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/recording/url ```
    # @param create_recording_by_url_parameters Request body
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def create_recording_by_url(create_recording_by_url_parameters, opts = {})
      data, _status_code, _headers = create_recording_by_url_with_http_info(create_recording_by_url_parameters, opts)
      return data
    end

    # Create Recording (URL)
    # Create a new recording from a URL. &lt;br&gt;&lt;br&gt; Returns a recording object on success, and returns an error otherwise. &lt;br&gt;&lt;br&gt; &#x60;&#x60;&#x60; curl -i -H \&quot;Content-Type: application/json\&quot; -X POST -d \&quot;{\\\&quot;name\\\&quot;: \\\&quot;Test Recording\\\&quot;, \\\&quot;url\\\&quot;: \\\&quot;https://ia700200.us.archive.org/1/items/testmp3testfile/mpthreetest.mp3\\\&quot;}\&quot; https://$API_KEY@api.dialmycalls.com/2.0/recording/url &#x60;&#x60;&#x60;
    # @param create_recording_by_url_parameters Request body
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def create_recording_by_url_with_http_info(create_recording_by_url_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RecordingsApi.create_recording_by_url ..."
      end
      # verify the required parameter 'create_recording_by_url_parameters' is set
      fail ArgumentError, "Missing the required parameter 'create_recording_by_url_parameters' when calling RecordingsApi.create_recording_by_url" if create_recording_by_url_parameters.nil?
      # resource path
      local_var_path = "/recording/url".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(create_recording_by_url_parameters)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecordingsApi#create_recording_by_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Recording
    # Delete a recording. <br><br> Returns the following if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X DELETE https://$API_KEY@api.dialmycalls.com/2.0/recording/$RECORDING_ID ```
    # @param recording_id RecordingId
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_recording_by_id(recording_id, opts = {})
      data, _status_code, _headers = delete_recording_by_id_with_http_info(recording_id, opts)
      return data
    end

    # Delete Recording
    # Delete a recording. &lt;br&gt;&lt;br&gt; Returns the following if a valid identifier was provided, and returns an error otherwise. &lt;br&gt;&lt;br&gt; &#x60;&#x60;&#x60; curl -i -H \&quot;Content-Type: application/json\&quot; -X DELETE https://$API_KEY@api.dialmycalls.com/2.0/recording/$RECORDING_ID &#x60;&#x60;&#x60;
    # @param recording_id RecordingId
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def delete_recording_by_id_with_http_info(recording_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RecordingsApi.delete_recording_by_id ..."
      end
      # verify the required parameter 'recording_id' is set
      fail ArgumentError, "Missing the required parameter 'recording_id' when calling RecordingsApi.delete_recording_by_id" if recording_id.nil?
      # resource path
      local_var_path = "/recording/{RecordingId}".sub('{format}','json').sub('{' + 'RecordingId' + '}', recording_id.to_s)

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
        @api_client.config.logger.debug "API called: RecordingsApi#delete_recording_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Recording
    # Retrieve a recording. <br><br> Returns a recording object if a valid identifier was provided, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/recording/$RECORDING_ID ```
    # @param recording_id RecordingId
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def get_recording_by_id(recording_id, opts = {})
      data, _status_code, _headers = get_recording_by_id_with_http_info(recording_id, opts)
      return data
    end

    # Get Recording
    # Retrieve a recording. &lt;br&gt;&lt;br&gt; Returns a recording object if a valid identifier was provided, and returns an error otherwise. &lt;br&gt;&lt;br&gt; &#x60;&#x60;&#x60; curl -i -H \&quot;Content-Type: application/json\&quot; -X GET https://$API_KEY@api.dialmycalls.com/2.0/recording/$RECORDING_ID &#x60;&#x60;&#x60;
    # @param recording_id RecordingId
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def get_recording_by_id_with_http_info(recording_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RecordingsApi.get_recording_by_id ..."
      end
      # verify the required parameter 'recording_id' is set
      fail ArgumentError, "Missing the required parameter 'recording_id' when calling RecordingsApi.get_recording_by_id" if recording_id.nil?
      # resource path
      local_var_path = "/recording/{RecordingId}".sub('{format}','json').sub('{' + 'RecordingId' + '}', recording_id.to_s)

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
        @api_client.config.logger.debug "API called: RecordingsApi#get_recording_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Recordings
    # Retrieve a list of recordings. <br><br> Returns a list of recording objects. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X GET https://$API_KEY@api.dialmycalls.com/2.0/recordings ```
    # @param [Hash] opts the optional parameters
    # @option opts [String] :range Range (ie \&quot;records&#x3D;201-300\&quot;) of recordings requested
    # @return [Object]
    def get_recordings(opts = {})
      data, _status_code, _headers = get_recordings_with_http_info(opts)
      return data
    end

    # List Recordings
    # Retrieve a list of recordings. &lt;br&gt;&lt;br&gt; Returns a list of recording objects. &lt;br&gt;&lt;br&gt; &#x60;&#x60;&#x60; curl -i -H \&quot;Content-Type: application/json\&quot; -X GET https://$API_KEY@api.dialmycalls.com/2.0/recordings &#x60;&#x60;&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :range Range (ie \&quot;records&#x3D;201-300\&quot;) of recordings requested
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def get_recordings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RecordingsApi.get_recordings ..."
      end
      # resource path
      local_var_path = "/recordings".sub('{format}','json')

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
        @api_client.config.logger.debug "API called: RecordingsApi#get_recordings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Recording
    # Update an existing recording. <br><br> Returns a recording object if a valid identifier was provided and input validation passed, and returns an error otherwise. <br><br> ``` curl -i -H \"Content-Type: application/json\" -X PUT -d \"{\\\"name\\\": \\\"Test Recording Updated\\\"}\" https://$API_KEY@api.dialmycalls.com/2.0/recording/$RECORDING_ID ```
    # @param update_recording_by_id_parameters Request body
    # @param recording_id RecordingId
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def update_recording_by_id(update_recording_by_id_parameters, recording_id, opts = {})
      data, _status_code, _headers = update_recording_by_id_with_http_info(update_recording_by_id_parameters, recording_id, opts)
      return data
    end

    # Update Recording
    # Update an existing recording. &lt;br&gt;&lt;br&gt; Returns a recording object if a valid identifier was provided and input validation passed, and returns an error otherwise. &lt;br&gt;&lt;br&gt; &#x60;&#x60;&#x60; curl -i -H \&quot;Content-Type: application/json\&quot; -X PUT -d \&quot;{\\\&quot;name\\\&quot;: \\\&quot;Test Recording Updated\\\&quot;}\&quot; https://$API_KEY@api.dialmycalls.com/2.0/recording/$RECORDING_ID &#x60;&#x60;&#x60;
    # @param update_recording_by_id_parameters Request body
    # @param recording_id RecordingId
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def update_recording_by_id_with_http_info(update_recording_by_id_parameters, recording_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RecordingsApi.update_recording_by_id ..."
      end
      # verify the required parameter 'update_recording_by_id_parameters' is set
      fail ArgumentError, "Missing the required parameter 'update_recording_by_id_parameters' when calling RecordingsApi.update_recording_by_id" if update_recording_by_id_parameters.nil?
      # verify the required parameter 'recording_id' is set
      fail ArgumentError, "Missing the required parameter 'recording_id' when calling RecordingsApi.update_recording_by_id" if recording_id.nil?
      # resource path
      local_var_path = "/recording/{RecordingId}".sub('{format}','json').sub('{' + 'RecordingId' + '}', recording_id.to_s)

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
      post_body = @api_client.object_to_http_body(update_recording_by_id_parameters)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecordingsApi#update_recording_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end