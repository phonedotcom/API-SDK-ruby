=begin
#Phone.com API

#This is a Phone.com api Swagger definition

OpenAPI spec version: 1.0.0
Contact: apisupport@phone.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module SwaggerClient
  # The Full Extension Object has the same properties as the Extension Summary Object, along with the following:
  class ExtensionFull
    # ID of the extension. This is the internal Phone.com ID, not the extension number callers may dial.
    attr_accessor :id

    # User-supplied name for the extension. On POST, leaving this empty will result in an auto-generated value. On PUT, this field is required.
    attr_accessor :name

    # Extension number that callers may dial. On POST, leaving this empty will result in an auto-generated value. On PUT, this field is required.
    attr_accessor :extension

    # API Account ID. Optional, object may return the voip_id.
    attr_accessor :voip_id

    # Full name of the individual or department to which this extension is assigned
    attr_accessor :full_name

    # Can be \"limited\" or \"unlimited\". In most cases, changing this will affect your monthly bill. Please see our Control Panel or contact Customer Service for pricing.
    attr_accessor :usage_type

    attr_accessor :device_membership

    # Time zone. Can be in any commonly recognized format, such as \"America/Los_Angeles\".
    attr_accessor :timezone

    # Greeting that communicates the extension's name. Output is a Greeting Summary Object. Input must be a Greeting Lookup Object.
    attr_accessor :name_greeting

    # Whether this extension should be included in the dial-by-name directory for this account. Boolean.
    attr_accessor :include_in_directory

    # Phone number to use as Caller ID for outgoing calls. Must be a phone number belonging to this account, or one of any additional authorized phone numbers. You can use our List Caller Ids service to see a current list. To unassign, you may set this to \"private\", NULL, or an empty string.
    attr_accessor :caller_id

    # For outbound calls, this is the North American area code that this extension is calling from.
    attr_accessor :local_area_code

    # Whether Call Waiting is enabled. Boolean. Default is TRUE.
    attr_accessor :enable_call_waiting

    # Whether outgoing calls are enabled. Boolean. Default is TRUE.
    attr_accessor :enable_outbound_calls

    attr_accessor :voicemail

    attr_accessor :call_notifications

    # Route which will handle incoming voice and fax calls. Only valid on PUT requests, not POST. Output is a Route Summary Object if the route is named, otherwise the Full Route Object will be shown. Input must be a Route Lookup Object pointing to a named route. Route must belong to this extension already.
    attr_accessor :route


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'extension' => :'extension',
        :'voip_id' => :'voip_id',
        :'full_name' => :'full_name',
        :'usage_type' => :'usage_type',
        :'device_membership' => :'device_membership',
        :'timezone' => :'timezone',
        :'name_greeting' => :'name_greeting',
        :'include_in_directory' => :'include_in_directory',
        :'caller_id' => :'caller_id',
        :'local_area_code' => :'local_area_code',
        :'enable_call_waiting' => :'enable_call_waiting',
        :'enable_outbound_calls' => :'enable_outbound_calls',
        :'voicemail' => :'voicemail',
        :'call_notifications' => :'call_notifications',
        :'route' => :'route'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'extension' => :'Integer',
        :'voip_id' => :'Integer',
        :'full_name' => :'String',
        :'usage_type' => :'String',
        :'device_membership' => :'DeviceMembership',
        :'timezone' => :'String',
        :'name_greeting' => :'MediaSummary',
        :'include_in_directory' => :'BOOLEAN',
        :'caller_id' => :'String',
        :'local_area_code' => :'String',
        :'enable_call_waiting' => :'BOOLEAN',
        :'enable_outbound_calls' => :'BOOLEAN',
        :'voicemail' => :'Voicemail',
        :'call_notifications' => :'Notification',
        :'route' => :'RouteSummary'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'extension')
        self.extension = attributes[:'extension']
      end

      if attributes.has_key?(:'voip_id')
        self.voip_id = attributes[:'voip_id']
      end

      if attributes.has_key?(:'full_name')
        self.full_name = attributes[:'full_name']
      end

      if attributes.has_key?(:'usage_type')
        self.usage_type = attributes[:'usage_type']
      end

      if attributes.has_key?(:'device_membership')
        self.device_membership = attributes[:'device_membership']
      end

      if attributes.has_key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end

      if attributes.has_key?(:'name_greeting')
        self.name_greeting = attributes[:'name_greeting']
      end

      if attributes.has_key?(:'include_in_directory')
        self.include_in_directory = attributes[:'include_in_directory']
      end

      if attributes.has_key?(:'caller_id')
        self.caller_id = attributes[:'caller_id']
      end

      if attributes.has_key?(:'local_area_code')
        self.local_area_code = attributes[:'local_area_code']
      end

      if attributes.has_key?(:'enable_call_waiting')
        self.enable_call_waiting = attributes[:'enable_call_waiting']
      end

      if attributes.has_key?(:'enable_outbound_calls')
        self.enable_outbound_calls = attributes[:'enable_outbound_calls']
      end

      if attributes.has_key?(:'voicemail')
        self.voicemail = attributes[:'voicemail']
      end

      if attributes.has_key?(:'call_notifications')
        self.call_notifications = attributes[:'call_notifications']
      end

      if attributes.has_key?(:'route')
        self.route = attributes[:'route']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          extension == o.extension &&
          voip_id == o.voip_id &&
          full_name == o.full_name &&
          usage_type == o.usage_type &&
          device_membership == o.device_membership &&
          timezone == o.timezone &&
          name_greeting == o.name_greeting &&
          include_in_directory == o.include_in_directory &&
          caller_id == o.caller_id &&
          local_area_code == o.local_area_code &&
          enable_call_waiting == o.enable_call_waiting &&
          enable_outbound_calls == o.enable_outbound_calls &&
          voicemail == o.voicemail &&
          call_notifications == o.call_notifications &&
          route == o.route
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, extension, voip_id, full_name, usage_type, device_membership, timezone, name_greeting, include_in_directory, caller_id, local_area_code, enable_call_waiting, enable_outbound_calls, voicemail, call_notifications, route].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
