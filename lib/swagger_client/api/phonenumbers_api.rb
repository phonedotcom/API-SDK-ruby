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
  class PhonenumbersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add a phone number to an account.
    # Add a phone number to an account. See Account Phone Numbers for more info on the properties.
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [CreatePhoneNumberParams] :data Phone Number data
    # @return [PhoneNumberFull]
    def create_account_phone_number(account_id, opts = {})
      data, _status_code, _headers = create_account_phone_number_with_http_info(account_id, opts)
      return data
    end

    # Add a phone number to an account.
    # Add a phone number to an account. See Account Phone Numbers for more info on the properties.
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [CreatePhoneNumberParams] :data Phone Number data
    # @return [Array<(PhoneNumberFull, Fixnum, Hash)>] PhoneNumberFull data, response status code and response headers
    def create_account_phone_number_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PhonenumbersApi.create_account_phone_number ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling PhonenumbersApi.create_account_phone_number"
      end
      # resource path
      local_var_path = "/accounts/{account_id}/phone-numbers".sub('{' + 'account_id' + '}', account_id.to_s)

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
        :return_type => 'PhoneNumberFull')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PhonenumbersApi#create_account_phone_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show details of an individual phone number.
    # Show details of an individual phone number. See Account Phone Numbers for more info on the properties.
    # @param account_id Account ID
    # @param number_id Number ID
    # @param [Hash] opts the optional parameters
    # @return [PhoneNumberFull]
    def get_account_phone_number(account_id, number_id, opts = {})
      data, _status_code, _headers = get_account_phone_number_with_http_info(account_id, number_id, opts)
      return data
    end

    # Show details of an individual phone number.
    # Show details of an individual phone number. See Account Phone Numbers for more info on the properties.
    # @param account_id Account ID
    # @param number_id Number ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(PhoneNumberFull, Fixnum, Hash)>] PhoneNumberFull data, response status code and response headers
    def get_account_phone_number_with_http_info(account_id, number_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PhonenumbersApi.get_account_phone_number ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling PhonenumbersApi.get_account_phone_number"
      end
      # verify the required parameter 'number_id' is set
      if @api_client.config.client_side_validation && number_id.nil?
        fail ArgumentError, "Missing the required parameter 'number_id' when calling PhonenumbersApi.get_account_phone_number"
      end
      # resource path
      local_var_path = "/accounts/{account_id}/phone-numbers/{number_id}".sub('{' + 'account_id' + '}', account_id.to_s).sub('{' + 'number_id' + '}', number_id.to_s)

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
      post_body = nil
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PhoneNumberFull')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PhonenumbersApi#get_account_phone_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of phone numbers registered to an account.
    # Get a list of phone numbers registered to an account. See Account Phone Numbers for more info on the properties.
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filters_id ID filter
    # @option opts [Array<String>] :filters_name Name filter
    # @option opts [Array<String>] :filters_phone_number Phone number filter
    # @option opts [String] :sort_id ID sorting
    # @option opts [String] :sort_name Name sorting
    # @option opts [String] :sort_phone_number Phone number sorting
    # @option opts [Integer] :limit Max results
    # @option opts [Integer] :offset Results to skip
    # @option opts [String] :fields Field set
    # @return [ListPhoneNumbers]
    def list_account_phone_numbers(account_id, opts = {})
      data, _status_code, _headers = list_account_phone_numbers_with_http_info(account_id, opts)
      return data
    end

    # Get a list of phone numbers registered to an account.
    # Get a list of phone numbers registered to an account. See Account Phone Numbers for more info on the properties.
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filters_id ID filter
    # @option opts [Array<String>] :filters_name Name filter
    # @option opts [Array<String>] :filters_phone_number Phone number filter
    # @option opts [String] :sort_id ID sorting
    # @option opts [String] :sort_name Name sorting
    # @option opts [String] :sort_phone_number Phone number sorting
    # @option opts [Integer] :limit Max results
    # @option opts [Integer] :offset Results to skip
    # @option opts [String] :fields Field set
    # @return [Array<(ListPhoneNumbers, Fixnum, Hash)>] ListPhoneNumbers data, response status code and response headers
    def list_account_phone_numbers_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PhonenumbersApi.list_account_phone_numbers ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling PhonenumbersApi.list_account_phone_numbers"
      end
      if @api_client.config.client_side_validation && !opts[:'sort_id'].nil? && opts[:'sort_id'] !~ Regexp.new(/asc|desc/)
        fail ArgumentError, "invalid value for 'opts[:\"sort_id\"]' when calling PhonenumbersApi.list_account_phone_numbers, must conform to the pattern /asc|desc/."
      end

      if @api_client.config.client_side_validation && !opts[:'sort_name'].nil? && opts[:'sort_name'] !~ Regexp.new(/asc|desc/)
        fail ArgumentError, "invalid value for 'opts[:\"sort_name\"]' when calling PhonenumbersApi.list_account_phone_numbers, must conform to the pattern /asc|desc/."
      end

      if @api_client.config.client_side_validation && !opts[:'sort_phone_number'].nil? && opts[:'sort_phone_number'] !~ Regexp.new(/asc|desc/)
        fail ArgumentError, "invalid value for 'opts[:\"sort_phone_number\"]' when calling PhonenumbersApi.list_account_phone_numbers, must conform to the pattern /asc|desc/."
      end

      # resource path
      local_var_path = "/accounts/{account_id}/phone-numbers".sub('{' + 'account_id' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'filters[id]'] = @api_client.build_collection_param(opts[:'filters_id'], :multi) if !opts[:'filters_id'].nil?
      query_params[:'filters[name]'] = @api_client.build_collection_param(opts[:'filters_name'], :multi) if !opts[:'filters_name'].nil?
      query_params[:'filters[phone_number]'] = @api_client.build_collection_param(opts[:'filters_phone_number'], :multi) if !opts[:'filters_phone_number'].nil?
      query_params[:'sort[id]'] = opts[:'sort_id'] if !opts[:'sort_id'].nil?
      query_params[:'sort[name]'] = opts[:'sort_name'] if !opts[:'sort_name'].nil?
      query_params[:'sort[phone_number]'] = opts[:'sort_phone_number'] if !opts[:'sort_phone_number'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListPhoneNumbers')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PhonenumbersApi#list_account_phone_numbers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the settings for an existing phone number on your account.
    # Update the settings for an existing phone number on your account. See Account Phone Numbers for more info on the properties.
    # @param account_id Account ID
    # @param number_id Number ID
    # @param [Hash] opts the optional parameters
    # @option opts [ReplacePhoneNumberParams] :data Phone Number data
    # @return [PhoneNumberFull]
    def replace_account_phone_number(account_id, number_id, opts = {})
      data, _status_code, _headers = replace_account_phone_number_with_http_info(account_id, number_id, opts)
      return data
    end

    # Update the settings for an existing phone number on your account.
    # Update the settings for an existing phone number on your account. See Account Phone Numbers for more info on the properties.
    # @param account_id Account ID
    # @param number_id Number ID
    # @param [Hash] opts the optional parameters
    # @option opts [ReplacePhoneNumberParams] :data Phone Number data
    # @return [Array<(PhoneNumberFull, Fixnum, Hash)>] PhoneNumberFull data, response status code and response headers
    def replace_account_phone_number_with_http_info(account_id, number_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PhonenumbersApi.replace_account_phone_number ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling PhonenumbersApi.replace_account_phone_number"
      end
      # verify the required parameter 'number_id' is set
      if @api_client.config.client_side_validation && number_id.nil?
        fail ArgumentError, "Missing the required parameter 'number_id' when calling PhonenumbersApi.replace_account_phone_number"
      end
      # resource path
      local_var_path = "/accounts/{account_id}/phone-numbers/{number_id}".sub('{' + 'account_id' + '}', account_id.to_s).sub('{' + 'number_id' + '}', number_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PhoneNumberFull')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PhonenumbersApi#replace_account_phone_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
