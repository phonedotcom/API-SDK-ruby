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
  class RoutesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add a new route to the account.
    # Add a new route to the account. See Intro to Routes for more info on the properties.
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [CreateRouteParams] :data Route data
    # @return [RouteFull]
    def create_route(account_id, opts = {})
      data, _status_code, _headers = create_route_with_http_info(account_id, opts)
      return data
    end

    # Add a new route to the account.
    # Add a new route to the account. See Intro to Routes for more info on the properties.
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [CreateRouteParams] :data Route data
    # @return [Array<(RouteFull, Fixnum, Hash)>] RouteFull data, response status code and response headers
    def create_route_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RoutesApi.create_route ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling RoutesApi.create_route"
      end
      # resource path
      local_var_path = "/accounts/{account_id}/routes".sub('{' + 'account_id' + '}', account_id.to_s)

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
        :return_type => 'RouteFull')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RoutesApi#create_route\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a route from the account.
    # Delete a route from the account. See Intro to Routes for more info on the properties.
    # @param account_id Account ID
    # @param route_id Route ID
    # @param [Hash] opts the optional parameters
    # @return [DeleteEntry]
    def delete_account_route(account_id, route_id, opts = {})
      data, _status_code, _headers = delete_account_route_with_http_info(account_id, route_id, opts)
      return data
    end

    # Delete a route from the account.
    # Delete a route from the account. See Intro to Routes for more info on the properties.
    # @param account_id Account ID
    # @param route_id Route ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteEntry, Fixnum, Hash)>] DeleteEntry data, response status code and response headers
    def delete_account_route_with_http_info(account_id, route_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RoutesApi.delete_account_route ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling RoutesApi.delete_account_route"
      end
      # verify the required parameter 'route_id' is set
      if @api_client.config.client_side_validation && route_id.nil?
        fail ArgumentError, "Missing the required parameter 'route_id' when calling RoutesApi.delete_account_route"
      end
      # resource path
      local_var_path = "/accounts/{account_id}/routes/{route_id}".sub('{' + 'account_id' + '}', account_id.to_s).sub('{' + 'route_id' + '}', route_id.to_s)

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
        @api_client.config.logger.debug "API called: RoutesApi#delete_account_route\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show details of an individual route.
    # Show details of an individual route. See Intro to Routes for more info on the properties.
    # @param account_id Account ID
    # @param route_id Route ID
    # @param [Hash] opts the optional parameters
    # @return [RouteFull]
    def get_account_route(account_id, route_id, opts = {})
      data, _status_code, _headers = get_account_route_with_http_info(account_id, route_id, opts)
      return data
    end

    # Show details of an individual route.
    # Show details of an individual route. See Intro to Routes for more info on the properties.
    # @param account_id Account ID
    # @param route_id Route ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(RouteFull, Fixnum, Hash)>] RouteFull data, response status code and response headers
    def get_account_route_with_http_info(account_id, route_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RoutesApi.get_account_route ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling RoutesApi.get_account_route"
      end
      # verify the required parameter 'route_id' is set
      if @api_client.config.client_side_validation && route_id.nil?
        fail ArgumentError, "Missing the required parameter 'route_id' when calling RoutesApi.get_account_route"
      end
      # resource path
      local_var_path = "/accounts/{account_id}/routes/{route_id}".sub('{' + 'account_id' + '}', account_id.to_s).sub('{' + 'route_id' + '}', route_id.to_s)

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
        :return_type => 'RouteFull')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RoutesApi#get_account_route\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of routes for an account.
    # Get a list of routes for an account. See Intro to Routes for more info on the properties.
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filters_id ID filter
    # @option opts [Array<String>] :filters_name Name filter
    # @option opts [String] :sort_id ID sorting
    # @option opts [String] :sort_name Name sorting
    # @option opts [Integer] :limit Max results
    # @option opts [Integer] :offset Results to skip
    # @option opts [String] :fields Field set
    # @return [ListRoutes]
    def list_account_routes(account_id, opts = {})
      data, _status_code, _headers = list_account_routes_with_http_info(account_id, opts)
      return data
    end

    # Get a list of routes for an account.
    # Get a list of routes for an account. See Intro to Routes for more info on the properties.
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filters_id ID filter
    # @option opts [Array<String>] :filters_name Name filter
    # @option opts [String] :sort_id ID sorting
    # @option opts [String] :sort_name Name sorting
    # @option opts [Integer] :limit Max results
    # @option opts [Integer] :offset Results to skip
    # @option opts [String] :fields Field set
    # @return [Array<(ListRoutes, Fixnum, Hash)>] ListRoutes data, response status code and response headers
    def list_account_routes_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RoutesApi.list_account_routes ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling RoutesApi.list_account_routes"
      end
      if @api_client.config.client_side_validation && !opts[:'sort_id'].nil? && opts[:'sort_id'] !~ Regexp.new(/asc|desc/)
        fail ArgumentError, "invalid value for 'opts[:\"sort_id\"]' when calling RoutesApi.list_account_routes, must conform to the pattern /asc|desc/."
      end

      if @api_client.config.client_side_validation && !opts[:'sort_name'].nil? && opts[:'sort_name'] !~ Regexp.new(/asc|desc/)
        fail ArgumentError, "invalid value for 'opts[:\"sort_name\"]' when calling RoutesApi.list_account_routes, must conform to the pattern /asc|desc/."
      end

      # resource path
      local_var_path = "/accounts/{account_id}/routes".sub('{' + 'account_id' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'filters[id]'] = @api_client.build_collection_param(opts[:'filters_id'], :multi) if !opts[:'filters_id'].nil?
      query_params[:'filters[name]'] = @api_client.build_collection_param(opts[:'filters_name'], :multi) if !opts[:'filters_name'].nil?
      query_params[:'sort[id]'] = opts[:'sort_id'] if !opts[:'sort_id'].nil?
      query_params[:'sort[name]'] = opts[:'sort_name'] if !opts[:'sort_name'].nil?
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
        :return_type => 'ListRoutes')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RoutesApi#list_account_routes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the information of a route.
    # Update the information of a route. See Intro to Routes for more info on the properties.
    # @param account_id Account ID
    # @param route_id Route ID
    # @param [Hash] opts the optional parameters
    # @option opts [CreateRouteParams] :data Route data
    # @return [RouteFull]
    def replace_account_route(account_id, route_id, opts = {})
      data, _status_code, _headers = replace_account_route_with_http_info(account_id, route_id, opts)
      return data
    end

    # Update the information of a route.
    # Update the information of a route. See Intro to Routes for more info on the properties.
    # @param account_id Account ID
    # @param route_id Route ID
    # @param [Hash] opts the optional parameters
    # @option opts [CreateRouteParams] :data Route data
    # @return [Array<(RouteFull, Fixnum, Hash)>] RouteFull data, response status code and response headers
    def replace_account_route_with_http_info(account_id, route_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RoutesApi.replace_account_route ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling RoutesApi.replace_account_route"
      end
      # verify the required parameter 'route_id' is set
      if @api_client.config.client_side_validation && route_id.nil?
        fail ArgumentError, "Missing the required parameter 'route_id' when calling RoutesApi.replace_account_route"
      end
      # resource path
      local_var_path = "/accounts/{account_id}/routes/{route_id}".sub('{' + 'account_id' + '}', account_id.to_s).sub('{' + 'route_id' + '}', route_id.to_s)

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
        :return_type => 'RouteFull')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RoutesApi#replace_account_route\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
