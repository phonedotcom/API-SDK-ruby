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
  class CalllogsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Show details of an individual Call Log entry
    # Show details of an individual Call Log entry. See Call Logs for more detail.
    # @param account_id Account ID
    # @param call_id Call ID
    # @param [Hash] opts the optional parameters
    # @return [CallLogFull]
    def get_account_call_logs(account_id, call_id, opts = {})
      data, _status_code, _headers = get_account_call_logs_with_http_info(account_id, call_id, opts)
      return data
    end

    # Show details of an individual Call Log entry
    # Show details of an individual Call Log entry. See Call Logs for more detail.
    # @param account_id Account ID
    # @param call_id Call ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(CallLogFull, Fixnum, Hash)>] CallLogFull data, response status code and response headers
    def get_account_call_logs_with_http_info(account_id, call_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CalllogsApi.get_account_call_logs ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling CalllogsApi.get_account_call_logs"
      end
      # verify the required parameter 'call_id' is set
      if @api_client.config.client_side_validation && call_id.nil?
        fail ArgumentError, "Missing the required parameter 'call_id' when calling CalllogsApi.get_account_call_logs"
      end
      # resource path
      local_var_path = "/accounts/{account_id}/call-logs/{call_id}".sub('{' + 'account_id' + '}', account_id.to_s).sub('{' + 'call_id' + '}', call_id.to_s)

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
        :return_type => 'CallLogFull')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CalllogsApi#get_account_call_logs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of call details associated with your account
    # Get a list of call details associated with your account. See Call Logs for more detail.
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filters_id ID filter
    # @option opts [Array<String>] :filters_start_time Call start time filter
    # @option opts [String] :filters_created_at Call log creation time filter
    # @option opts [String] :filters_direction Call direction filter: in or out
    # @option opts [String] :filters_called_number Called number
    # @option opts [String] :filters_type Call type, such as &#39;call&#39;, &#39;fax&#39;, &#39;audiogram&#39;
    # @option opts [Array<String>] :filters_extension Extension filter
    # @option opts [String] :sort_id ID sorting
    # @option opts [String] :sort_start_time Sorting by call start time: asc or desc
    # @option opts [String] :sort_created_at Sorting by call log creation time: asc or desc
    # @option opts [Integer] :limit Max results
    # @option opts [Integer] :offset Results to skip
    # @option opts [String] :fields Field set
    # @return [ListCallLogs]
    def list_account_call_logs(account_id, opts = {})
      data, _status_code, _headers = list_account_call_logs_with_http_info(account_id, opts)
      return data
    end

    # Get a list of call details associated with your account
    # Get a list of call details associated with your account. See Call Logs for more detail.
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filters_id ID filter
    # @option opts [Array<String>] :filters_start_time Call start time filter
    # @option opts [String] :filters_created_at Call log creation time filter
    # @option opts [String] :filters_direction Call direction filter: in or out
    # @option opts [String] :filters_called_number Called number
    # @option opts [String] :filters_type Call type, such as &#39;call&#39;, &#39;fax&#39;, &#39;audiogram&#39;
    # @option opts [Array<String>] :filters_extension Extension filter
    # @option opts [String] :sort_id ID sorting
    # @option opts [String] :sort_start_time Sorting by call start time: asc or desc
    # @option opts [String] :sort_created_at Sorting by call log creation time: asc or desc
    # @option opts [Integer] :limit Max results
    # @option opts [Integer] :offset Results to skip
    # @option opts [String] :fields Field set
    # @return [Array<(ListCallLogs, Fixnum, Hash)>] ListCallLogs data, response status code and response headers
    def list_account_call_logs_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CalllogsApi.list_account_call_logs ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling CalllogsApi.list_account_call_logs"
      end
      if @api_client.config.client_side_validation && !opts[:'filters_created_at'].nil? && opts[:'filters_created_at'] !~ Regexp.new(/^eq:.*|^ne:.*|^lt:.*|^gt:.*|^lte:.*|^gte:.*|^starts-with:.*|^ends-with:.*|^contains:.*|^not-starts-with:.*|^not-ends-with:.*|^not-contains:.*|^between:.*,.*|^not-between:.*,.*/)
        fail ArgumentError, "invalid value for 'opts[:\"filters_created_at\"]' when calling CalllogsApi.list_account_call_logs, must conform to the pattern /^eq:.*|^ne:.*|^lt:.*|^gt:.*|^lte:.*|^gte:.*|^starts-with:.*|^ends-with:.*|^contains:.*|^not-starts-with:.*|^not-ends-with:.*|^not-contains:.*|^between:.*,.*|^not-between:.*,.*/."
      end

      if @api_client.config.client_side_validation && !opts[:'filters_direction'].nil? && opts[:'filters_direction'] !~ Regexp.new(/^eq:.*|^ne:.*|^lt:.*|^gt:.*|^lte:.*|^gte:.*|^starts-with:.*|^ends-with:.*|^contains:.*|^not-starts-with:.*|^not-ends-with:.*|^not-contains:.*|^between:.*,.*|^not-between:.*,.*/)
        fail ArgumentError, "invalid value for 'opts[:\"filters_direction\"]' when calling CalllogsApi.list_account_call_logs, must conform to the pattern /^eq:.*|^ne:.*|^lt:.*|^gt:.*|^lte:.*|^gte:.*|^starts-with:.*|^ends-with:.*|^contains:.*|^not-starts-with:.*|^not-ends-with:.*|^not-contains:.*|^between:.*,.*|^not-between:.*,.*/."
      end

      if @api_client.config.client_side_validation && !opts[:'filters_called_number'].nil? && opts[:'filters_called_number'] !~ Regexp.new(/^eq:.*|^ne:.*|^lt:.*|^gt:.*|^lte:.*|^gte:.*|^starts-with:.*|^ends-with:.*|^contains:.*|^not-starts-with:.*|^not-ends-with:.*|^not-contains:.*|^between:.*,.*|^not-between:.*,.*/)
        fail ArgumentError, "invalid value for 'opts[:\"filters_called_number\"]' when calling CalllogsApi.list_account_call_logs, must conform to the pattern /^eq:.*|^ne:.*|^lt:.*|^gt:.*|^lte:.*|^gte:.*|^starts-with:.*|^ends-with:.*|^contains:.*|^not-starts-with:.*|^not-ends-with:.*|^not-contains:.*|^between:.*,.*|^not-between:.*,.*/."
      end

      if @api_client.config.client_side_validation && !opts[:'filters_type'].nil? && opts[:'filters_type'] !~ Regexp.new(/^eq:.*|^ne:.*|^lt:.*|^gt:.*|^lte:.*|^gte:.*|^starts-with:.*|^ends-with:.*|^contains:.*|^not-starts-with:.*|^not-ends-with:.*|^not-contains:.*|^between:.*,.*|^not-between:.*,.*/)
        fail ArgumentError, "invalid value for 'opts[:\"filters_type\"]' when calling CalllogsApi.list_account_call_logs, must conform to the pattern /^eq:.*|^ne:.*|^lt:.*|^gt:.*|^lte:.*|^gte:.*|^starts-with:.*|^ends-with:.*|^contains:.*|^not-starts-with:.*|^not-ends-with:.*|^not-contains:.*|^between:.*,.*|^not-between:.*,.*/."
      end

      if @api_client.config.client_side_validation && !opts[:'sort_id'].nil? && opts[:'sort_id'] !~ Regexp.new(/asc|desc/)
        fail ArgumentError, "invalid value for 'opts[:\"sort_id\"]' when calling CalllogsApi.list_account_call_logs, must conform to the pattern /asc|desc/."
      end

      if @api_client.config.client_side_validation && !opts[:'sort_start_time'].nil? && opts[:'sort_start_time'] !~ Regexp.new(/asc|desc/)
        fail ArgumentError, "invalid value for 'opts[:\"sort_start_time\"]' when calling CalllogsApi.list_account_call_logs, must conform to the pattern /asc|desc/."
      end

      if @api_client.config.client_side_validation && !opts[:'sort_created_at'].nil? && opts[:'sort_created_at'] !~ Regexp.new(/asc|desc/)
        fail ArgumentError, "invalid value for 'opts[:\"sort_created_at\"]' when calling CalllogsApi.list_account_call_logs, must conform to the pattern /asc|desc/."
      end

      # resource path
      local_var_path = "/accounts/{account_id}/call-logs".sub('{' + 'account_id' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'filters[id]'] = @api_client.build_collection_param(opts[:'filters_id'], :multi) if !opts[:'filters_id'].nil?
      query_params[:'filters[start_time]'] = @api_client.build_collection_param(opts[:'filters_start_time'], :multi) if !opts[:'filters_start_time'].nil?
      query_params[:'filters[created_at]'] = opts[:'filters_created_at'] if !opts[:'filters_created_at'].nil?
      query_params[:'filters[direction]'] = opts[:'filters_direction'] if !opts[:'filters_direction'].nil?
      query_params[:'filters[called_number]'] = opts[:'filters_called_number'] if !opts[:'filters_called_number'].nil?
      query_params[:'filters[type]'] = opts[:'filters_type'] if !opts[:'filters_type'].nil?
      query_params[:'filters[extension]'] = @api_client.build_collection_param(opts[:'filters_extension'], :multi) if !opts[:'filters_extension'].nil?
      query_params[:'sort[id]'] = opts[:'sort_id'] if !opts[:'sort_id'].nil?
      query_params[:'sort[start_time]'] = opts[:'sort_start_time'] if !opts[:'sort_start_time'].nil?
      query_params[:'sort[created_at]'] = opts[:'sort_created_at'] if !opts[:'sort_created_at'].nil?
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
        :return_type => 'ListCallLogs')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CalllogsApi#list_account_call_logs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
