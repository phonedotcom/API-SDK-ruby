=begin
#Phone.com API

#This is a Phone.com api Swagger definition

OpenAPI spec version: 1.0.0
Contact: apisupport@phone.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require "uri"

module SwaggerClient
  class CallsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Make a phone call
    # Make a phone call. See Calls for more details and how to setup caller id's. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Calls API with the following definition: POST https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/calls
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [CreateCallParams] :data Call data
    # @return [CallFull]
    def create_account_call(account_id, opts = {})
      data, _status_code, _headers = create_account_call_with_http_info(account_id, opts)
      return data
    end

    # Make a phone call
    # Make a phone call. See Calls for more details and how to setup caller id&#39;s. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Calls API with the following definition: POST https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/calls
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [CreateCallParams] :data Call data
    # @return [Array<(CallFull, Fixnum, Hash)>] CallFull data, response status code and response headers
    def create_account_call_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CallsApi.create_account_call ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling CallsApi.create_account_call"
      end
      # resource path
      local_var_path = "/accounts/{account_id}/calls".sub('{' + 'account_id' + '}', account_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'data'])
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CallFull')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallsApi#create_account_call\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
