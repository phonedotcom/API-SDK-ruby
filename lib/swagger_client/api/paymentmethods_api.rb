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
  class PaymentmethodsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create an individual payment method.
    # Create an individual payment method. See Account Payment Methods for more info on the properties.
    # @param account_id Account ID
    # @param data Payment data
    # @param [Hash] opts the optional parameters
    # @return [PaymentFull]
    def create_account_payment_method(account_id, data, opts = {})
      data, _status_code, _headers = create_account_payment_method_with_http_info(account_id, data, opts)
      return data
    end

    # Create an individual payment method.
    # Create an individual payment method. See Account Payment Methods for more info on the properties.
    # @param account_id Account ID
    # @param data Payment data
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentFull, Fixnum, Hash)>] PaymentFull data, response status code and response headers
    def create_account_payment_method_with_http_info(account_id, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentmethodsApi.create_account_payment_method ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling PaymentmethodsApi.create_account_payment_method"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling PaymentmethodsApi.create_account_payment_method"
      end
      # resource path
      local_var_path = "/accounts/{account_id}/payment-methods".sub('{' + 'account_id' + '}', account_id.to_s)

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
      post_body = @api_client.object_to_http_body(data)
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PaymentFull')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentmethodsApi#create_account_payment_method\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an individual payment method.
    # Delete an individual payment method. See Account Payment Methods for more info on the properties.
    # @param account_id Account ID
    # @param pm_id Payment Method ID
    # @param [Hash] opts the optional parameters
    # @return [DeleteEntry]
    def delete_account_payment_method(account_id, pm_id, opts = {})
      data, _status_code, _headers = delete_account_payment_method_with_http_info(account_id, pm_id, opts)
      return data
    end

    # Delete an individual payment method.
    # Delete an individual payment method. See Account Payment Methods for more info on the properties.
    # @param account_id Account ID
    # @param pm_id Payment Method ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteEntry, Fixnum, Hash)>] DeleteEntry data, response status code and response headers
    def delete_account_payment_method_with_http_info(account_id, pm_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentmethodsApi.delete_account_payment_method ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling PaymentmethodsApi.delete_account_payment_method"
      end
      # verify the required parameter 'pm_id' is set
      if @api_client.config.client_side_validation && pm_id.nil?
        fail ArgumentError, "Missing the required parameter 'pm_id' when calling PaymentmethodsApi.delete_account_payment_method"
      end
      # resource path
      local_var_path = "/accounts/{account_id}/payment-methods/{pm_id}".sub('{' + 'account_id' + '}', account_id.to_s).sub('{' + 'pm_id' + '}', pm_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DeleteEntry')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentmethodsApi#delete_account_payment_method\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show details of an individual payment method.
    # Show details of an individual payment method. See Account Payment Methods for more info on the properties.
    # @param account_id Account ID
    # @param pm_id Payment Method ID
    # @param [Hash] opts the optional parameters
    # @return [PaymentFull]
    def get_account_payment_method(account_id, pm_id, opts = {})
      data, _status_code, _headers = get_account_payment_method_with_http_info(account_id, pm_id, opts)
      return data
    end

    # Show details of an individual payment method.
    # Show details of an individual payment method. See Account Payment Methods for more info on the properties.
    # @param account_id Account ID
    # @param pm_id Payment Method ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentFull, Fixnum, Hash)>] PaymentFull data, response status code and response headers
    def get_account_payment_method_with_http_info(account_id, pm_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentmethodsApi.get_account_payment_method ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling PaymentmethodsApi.get_account_payment_method"
      end
      # verify the required parameter 'pm_id' is set
      if @api_client.config.client_side_validation && pm_id.nil?
        fail ArgumentError, "Missing the required parameter 'pm_id' when calling PaymentmethodsApi.get_account_payment_method"
      end
      # resource path
      local_var_path = "/accounts/{account_id}/payment-methods/{pm_id}".sub('{' + 'account_id' + '}', account_id.to_s).sub('{' + 'pm_id' + '}', pm_id.to_s)

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
        :return_type => 'PaymentFull')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentmethodsApi#get_account_payment_method\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of payment methods for an account.
    # Get a list of payment methods for an account. See Account Payment Methods for more info on the properties.
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filters_id ID filter
    # @option opts [String] :sort_id ID sorting
    # @option opts [Integer] :limit Max results
    # @option opts [Integer] :offset Results to skip
    # @option opts [String] :fields Field set
    # @return [ListPaymentMethods]
    def list_account_payment_methods(account_id, opts = {})
      data, _status_code, _headers = list_account_payment_methods_with_http_info(account_id, opts)
      return data
    end

    # Get a list of payment methods for an account.
    # Get a list of payment methods for an account. See Account Payment Methods for more info on the properties.
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filters_id ID filter
    # @option opts [String] :sort_id ID sorting
    # @option opts [Integer] :limit Max results
    # @option opts [Integer] :offset Results to skip
    # @option opts [String] :fields Field set
    # @return [Array<(ListPaymentMethods, Fixnum, Hash)>] ListPaymentMethods data, response status code and response headers
    def list_account_payment_methods_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentmethodsApi.list_account_payment_methods ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling PaymentmethodsApi.list_account_payment_methods"
      end
      if @api_client.config.client_side_validation && !opts[:'sort_id'].nil? && opts[:'sort_id'] !~ Regexp.new(/asc|desc/)
        fail ArgumentError, "invalid value for 'opts[:\"sort_id\"]' when calling PaymentmethodsApi.list_account_payment_methods, must conform to the pattern /asc|desc/."
      end

      # resource path
      local_var_path = "/accounts/{account_id}/payment-methods".sub('{' + 'account_id' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'filters[id]'] = @api_client.build_collection_param(opts[:'filters_id'], :multi) if !opts[:'filters_id'].nil?
      query_params[:'sort[id]'] = opts[:'sort_id'] if !opts[:'sort_id'].nil?
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
        :return_type => 'ListPaymentMethods')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentmethodsApi#list_account_payment_methods\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Replace the status of an individual payment method.
    # Replace the status of an individual payment method. See Account Payment Methods for more info on the properties.
    # @param account_id Account ID
    # @param pm_id Payment Method ID
    # @param [Hash] opts the optional parameters
    # @option opts [PatchPaymentParams] :data Payment data
    # @return [PaymentFull]
    def patch_account_payment_method(account_id, pm_id, opts = {})
      data, _status_code, _headers = patch_account_payment_method_with_http_info(account_id, pm_id, opts)
      return data
    end

    # Replace the status of an individual payment method.
    # Replace the status of an individual payment method. See Account Payment Methods for more info on the properties.
    # @param account_id Account ID
    # @param pm_id Payment Method ID
    # @param [Hash] opts the optional parameters
    # @option opts [PatchPaymentParams] :data Payment data
    # @return [Array<(PaymentFull, Fixnum, Hash)>] PaymentFull data, response status code and response headers
    def patch_account_payment_method_with_http_info(account_id, pm_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentmethodsApi.patch_account_payment_method ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling PaymentmethodsApi.patch_account_payment_method"
      end
      # verify the required parameter 'pm_id' is set
      if @api_client.config.client_side_validation && pm_id.nil?
        fail ArgumentError, "Missing the required parameter 'pm_id' when calling PaymentmethodsApi.patch_account_payment_method"
      end
      # resource path
      local_var_path = "/accounts/{account_id}/payment-methods/{pm_id}".sub('{' + 'account_id' + '}', account_id.to_s).sub('{' + 'pm_id' + '}', pm_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PaymentFull')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentmethodsApi#patch_account_payment_method\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
