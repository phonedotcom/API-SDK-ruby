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
  class SubaccountpricingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add a pricing plan to a subaccount.
    # Add a pricing plan to a subaccount. See Account Subaccount Pricing for more info on the properties.
    # @param account_id Account ID
    # @param subaccount_id Subaccount ID
    # @param data Subaccount pricing data
    # @param [Hash] opts the optional parameters
    # @return [PricingFull]
    def create_account_subaccount_pricing(account_id, subaccount_id, data, opts = {})
      data, _status_code, _headers = create_account_subaccount_pricing_with_http_info(account_id, subaccount_id, data, opts)
      return data
    end

    # Add a pricing plan to a subaccount.
    # Add a pricing plan to a subaccount. See Account Subaccount Pricing for more info on the properties.
    # @param account_id Account ID
    # @param subaccount_id Subaccount ID
    # @param data Subaccount pricing data
    # @param [Hash] opts the optional parameters
    # @return [Array<(PricingFull, Fixnum, Hash)>] PricingFull data, response status code and response headers
    def create_account_subaccount_pricing_with_http_info(account_id, subaccount_id, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubaccountpricingApi.create_account_subaccount_pricing ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling SubaccountpricingApi.create_account_subaccount_pricing"
      end
      # verify the required parameter 'subaccount_id' is set
      if @api_client.config.client_side_validation && subaccount_id.nil?
        fail ArgumentError, "Missing the required parameter 'subaccount_id' when calling SubaccountpricingApi.create_account_subaccount_pricing"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling SubaccountpricingApi.create_account_subaccount_pricing"
      end
      # resource path
      local_var_path = "/accounts/{account_id}/subaccounts/{subaccount_id}/pricing".sub('{' + 'account_id' + '}', account_id.to_s).sub('{' + 'subaccount_id' + '}', subaccount_id.to_s)

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
        :return_type => 'PricingFull')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubaccountpricingApi#create_account_subaccount_pricing\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a pricing plan from a subaccount.
    # Delete a pricing plan from a subaccount. See Account Subaccount Pricing for more info on the properties.
    # @param account_id Account ID
    # @param subaccount_id Subaccount ID
    # @param pricing_id Pricing Object ID
    # @param [Hash] opts the optional parameters
    # @return [DeleteEntry]
    def delete_account_subaccount_pricing(account_id, subaccount_id, pricing_id, opts = {})
      data, _status_code, _headers = delete_account_subaccount_pricing_with_http_info(account_id, subaccount_id, pricing_id, opts)
      return data
    end

    # Delete a pricing plan from a subaccount.
    # Delete a pricing plan from a subaccount. See Account Subaccount Pricing for more info on the properties.
    # @param account_id Account ID
    # @param subaccount_id Subaccount ID
    # @param pricing_id Pricing Object ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteEntry, Fixnum, Hash)>] DeleteEntry data, response status code and response headers
    def delete_account_subaccount_pricing_with_http_info(account_id, subaccount_id, pricing_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubaccountpricingApi.delete_account_subaccount_pricing ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling SubaccountpricingApi.delete_account_subaccount_pricing"
      end
      # verify the required parameter 'subaccount_id' is set
      if @api_client.config.client_side_validation && subaccount_id.nil?
        fail ArgumentError, "Missing the required parameter 'subaccount_id' when calling SubaccountpricingApi.delete_account_subaccount_pricing"
      end
      # verify the required parameter 'pricing_id' is set
      if @api_client.config.client_side_validation && pricing_id.nil?
        fail ArgumentError, "Missing the required parameter 'pricing_id' when calling SubaccountpricingApi.delete_account_subaccount_pricing"
      end
      # resource path
      local_var_path = "/accounts/{account_id}/subaccounts/{subaccount_id}/pricing/{pricing_id}".sub('{' + 'account_id' + '}', account_id.to_s).sub('{' + 'subaccount_id' + '}', subaccount_id.to_s).sub('{' + 'pricing_id' + '}', pricing_id.to_s)

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
        @api_client.config.logger.debug "API called: SubaccountpricingApi#delete_account_subaccount_pricing\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the details of a pricing plan for a subaccount.
    # Get the details of a pricing plan for a subaccount. See Account Subaccount Pricing for more info on the properties.
    # @param account_id Account ID
    # @param subaccount_id Subaccount ID
    # @param pricing_id Pricing Object ID
    # @param [Hash] opts the optional parameters
    # @return [PricingFull]
    def get_account_subaccount_pricing(account_id, subaccount_id, pricing_id, opts = {})
      data, _status_code, _headers = get_account_subaccount_pricing_with_http_info(account_id, subaccount_id, pricing_id, opts)
      return data
    end

    # Get the details of a pricing plan for a subaccount.
    # Get the details of a pricing plan for a subaccount. See Account Subaccount Pricing for more info on the properties.
    # @param account_id Account ID
    # @param subaccount_id Subaccount ID
    # @param pricing_id Pricing Object ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(PricingFull, Fixnum, Hash)>] PricingFull data, response status code and response headers
    def get_account_subaccount_pricing_with_http_info(account_id, subaccount_id, pricing_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubaccountpricingApi.get_account_subaccount_pricing ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling SubaccountpricingApi.get_account_subaccount_pricing"
      end
      # verify the required parameter 'subaccount_id' is set
      if @api_client.config.client_side_validation && subaccount_id.nil?
        fail ArgumentError, "Missing the required parameter 'subaccount_id' when calling SubaccountpricingApi.get_account_subaccount_pricing"
      end
      # verify the required parameter 'pricing_id' is set
      if @api_client.config.client_side_validation && pricing_id.nil?
        fail ArgumentError, "Missing the required parameter 'pricing_id' when calling SubaccountpricingApi.get_account_subaccount_pricing"
      end
      # resource path
      local_var_path = "/accounts/{account_id}/subaccounts/{subaccount_id}/pricing/{pricing_id}".sub('{' + 'account_id' + '}', account_id.to_s).sub('{' + 'subaccount_id' + '}', subaccount_id.to_s).sub('{' + 'pricing_id' + '}', pricing_id.to_s)

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
        :return_type => 'PricingFull')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubaccountpricingApi#get_account_subaccount_pricing\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of pricing plans for a subaccount.
    # Get a list of pricing plans for a subaccount. See Account Subaccount Pricing for more info on the properties.
    # @param account_id Account ID
    # @param subaccount_id Subaccount ID
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filters_id ID filter
    # @option opts [String] :sort_id ID sorting
    # @option opts [Integer] :limit Max results
    # @option opts [Integer] :offset Results to skip
    # @option opts [String] :fields Field set
    # @return [ListPricings]
    def list_account_subaccount_pricing(account_id, subaccount_id, opts = {})
      data, _status_code, _headers = list_account_subaccount_pricing_with_http_info(account_id, subaccount_id, opts)
      return data
    end

    # Get a list of pricing plans for a subaccount.
    # Get a list of pricing plans for a subaccount. See Account Subaccount Pricing for more info on the properties.
    # @param account_id Account ID
    # @param subaccount_id Subaccount ID
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filters_id ID filter
    # @option opts [String] :sort_id ID sorting
    # @option opts [Integer] :limit Max results
    # @option opts [Integer] :offset Results to skip
    # @option opts [String] :fields Field set
    # @return [Array<(ListPricings, Fixnum, Hash)>] ListPricings data, response status code and response headers
    def list_account_subaccount_pricing_with_http_info(account_id, subaccount_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubaccountpricingApi.list_account_subaccount_pricing ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling SubaccountpricingApi.list_account_subaccount_pricing"
      end
      # verify the required parameter 'subaccount_id' is set
      if @api_client.config.client_side_validation && subaccount_id.nil?
        fail ArgumentError, "Missing the required parameter 'subaccount_id' when calling SubaccountpricingApi.list_account_subaccount_pricing"
      end
      if @api_client.config.client_side_validation && !opts[:'sort_id'].nil? && opts[:'sort_id'] !~ Regexp.new(/asc|desc/)
        fail ArgumentError, "invalid value for 'opts[:\"sort_id\"]' when calling SubaccountpricingApi.list_account_subaccount_pricing, must conform to the pattern /asc|desc/."
      end

      # resource path
      local_var_path = "/accounts/{account_id}/subaccounts/{subaccount_id}/pricing".sub('{' + 'account_id' + '}', account_id.to_s).sub('{' + 'subaccount_id' + '}', subaccount_id.to_s)

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
        :return_type => 'ListPricings')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubaccountpricingApi#list_account_subaccount_pricing\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end