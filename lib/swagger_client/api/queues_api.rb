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
  class QueuesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a queue.
    # Create a queue. See Account Queues for more info on the properties.
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [CreateQueueParams] :data Queue data
    # @return [QueueFull]
    def create_account_queue(account_id, opts = {})
      data, _status_code, _headers = create_account_queue_with_http_info(account_id, opts)
      return data
    end

    # Create a queue.
    # Create a queue. See Account Queues for more info on the properties.
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [CreateQueueParams] :data Queue data
    # @return [Array<(QueueFull, Fixnum, Hash)>] QueueFull data, response status code and response headers
    def create_account_queue_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: QueuesApi.create_account_queue ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling QueuesApi.create_account_queue"
      end
      # resource path
      local_var_path = "/accounts/{account_id}/queues".sub('{' + 'account_id' + '}', account_id.to_s)

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
        :return_type => 'QueueFull')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: QueuesApi#create_account_queue\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a queue.
    # Delete a queue. See Account Queues for more info on the properties.
    # @param account_id Account ID
    # @param queue_id Queue ID
    # @param [Hash] opts the optional parameters
    # @return [DeleteEntry]
    def delete_account_queue(account_id, queue_id, opts = {})
      data, _status_code, _headers = delete_account_queue_with_http_info(account_id, queue_id, opts)
      return data
    end

    # Delete a queue.
    # Delete a queue. See Account Queues for more info on the properties.
    # @param account_id Account ID
    # @param queue_id Queue ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteEntry, Fixnum, Hash)>] DeleteEntry data, response status code and response headers
    def delete_account_queue_with_http_info(account_id, queue_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: QueuesApi.delete_account_queue ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling QueuesApi.delete_account_queue"
      end
      # verify the required parameter 'queue_id' is set
      if @api_client.config.client_side_validation && queue_id.nil?
        fail ArgumentError, "Missing the required parameter 'queue_id' when calling QueuesApi.delete_account_queue"
      end
      # resource path
      local_var_path = "/accounts/{account_id}/queues/{queue_id}".sub('{' + 'account_id' + '}', account_id.to_s).sub('{' + 'queue_id' + '}', queue_id.to_s)

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
        @api_client.config.logger.debug "API called: QueuesApi#delete_account_queue\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show details of an individual queue.
    # Show details of an individual queue. See Account Queues for more info on the properties.
    # @param account_id Account ID
    # @param queue_id Queue ID
    # @param [Hash] opts the optional parameters
    # @return [QueueFull]
    def get_account_queue(account_id, queue_id, opts = {})
      data, _status_code, _headers = get_account_queue_with_http_info(account_id, queue_id, opts)
      return data
    end

    # Show details of an individual queue.
    # Show details of an individual queue. See Account Queues for more info on the properties.
    # @param account_id Account ID
    # @param queue_id Queue ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(QueueFull, Fixnum, Hash)>] QueueFull data, response status code and response headers
    def get_account_queue_with_http_info(account_id, queue_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: QueuesApi.get_account_queue ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling QueuesApi.get_account_queue"
      end
      # verify the required parameter 'queue_id' is set
      if @api_client.config.client_side_validation && queue_id.nil?
        fail ArgumentError, "Missing the required parameter 'queue_id' when calling QueuesApi.get_account_queue"
      end
      # resource path
      local_var_path = "/accounts/{account_id}/queues/{queue_id}".sub('{' + 'account_id' + '}', account_id.to_s).sub('{' + 'queue_id' + '}', queue_id.to_s)

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
        :return_type => 'QueueFull')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: QueuesApi#get_account_queue\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of queues for an account.
    # Get a list of queues for an account. See Account Queues for more info on the properties.
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filters_id ID filter
    # @option opts [Array<String>] :filters_name Name filter
    # @option opts [String] :sort_id ID sorting
    # @option opts [String] :sort_name Name sorting
    # @option opts [Integer] :limit Max results
    # @option opts [Integer] :offset Results to skip
    # @option opts [String] :fields Field set
    # @return [ListQueues]
    def list_account_queues(account_id, opts = {})
      data, _status_code, _headers = list_account_queues_with_http_info(account_id, opts)
      return data
    end

    # Get a list of queues for an account.
    # Get a list of queues for an account. See Account Queues for more info on the properties.
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filters_id ID filter
    # @option opts [Array<String>] :filters_name Name filter
    # @option opts [String] :sort_id ID sorting
    # @option opts [String] :sort_name Name sorting
    # @option opts [Integer] :limit Max results
    # @option opts [Integer] :offset Results to skip
    # @option opts [String] :fields Field set
    # @return [Array<(ListQueues, Fixnum, Hash)>] ListQueues data, response status code and response headers
    def list_account_queues_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: QueuesApi.list_account_queues ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling QueuesApi.list_account_queues"
      end
      if @api_client.config.client_side_validation && !opts[:'sort_id'].nil? && opts[:'sort_id'] !~ Regexp.new(/asc|desc/)
        fail ArgumentError, "invalid value for 'opts[:\"sort_id\"]' when calling QueuesApi.list_account_queues, must conform to the pattern /asc|desc/."
      end

      if @api_client.config.client_side_validation && !opts[:'sort_name'].nil? && opts[:'sort_name'] !~ Regexp.new(/asc|desc/)
        fail ArgumentError, "invalid value for 'opts[:\"sort_name\"]' when calling QueuesApi.list_account_queues, must conform to the pattern /asc|desc/."
      end

      # resource path
      local_var_path = "/accounts/{account_id}/queues".sub('{' + 'account_id' + '}', account_id.to_s)

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
        :return_type => 'ListQueues')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: QueuesApi#list_account_queues\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Replace a queue.
    # Replace a queue. See Account Queues for more info on the properties.
    # @param account_id Account ID
    # @param queue_id Queue ID
    # @param [Hash] opts the optional parameters
    # @option opts [CreateQueueParams] :data Queue data
    # @return [QueueFull]
    def replace_account_queue(account_id, queue_id, opts = {})
      data, _status_code, _headers = replace_account_queue_with_http_info(account_id, queue_id, opts)
      return data
    end

    # Replace a queue.
    # Replace a queue. See Account Queues for more info on the properties.
    # @param account_id Account ID
    # @param queue_id Queue ID
    # @param [Hash] opts the optional parameters
    # @option opts [CreateQueueParams] :data Queue data
    # @return [Array<(QueueFull, Fixnum, Hash)>] QueueFull data, response status code and response headers
    def replace_account_queue_with_http_info(account_id, queue_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: QueuesApi.replace_account_queue ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling QueuesApi.replace_account_queue"
      end
      # verify the required parameter 'queue_id' is set
      if @api_client.config.client_side_validation && queue_id.nil?
        fail ArgumentError, "Missing the required parameter 'queue_id' when calling QueuesApi.replace_account_queue"
      end
      # resource path
      local_var_path = "/accounts/{account_id}/queues/{queue_id}".sub('{' + 'account_id' + '}', account_id.to_s).sub('{' + 'queue_id' + '}', queue_id.to_s)

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
        :return_type => 'QueueFull')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: QueuesApi#replace_account_queue\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
