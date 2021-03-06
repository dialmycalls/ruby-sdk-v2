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

require 'date'

module DialMyCalls

  class Callservice
    # Unique identifier for this service.
    attr_accessor :id

    # Unique identifier for the access account which initiated this if available.
    attr_accessor :accessaccount_id

    # The name of the service.
    attr_accessor :name

    # Unique identifier for the recording.
    attr_accessor :recording_id

    # Whether the service has been flagged to be cancelled.
    attr_accessor :pending_cancel

    # The amount of credits required to schedule this service.
    attr_accessor :credit_cost

    # The amount of recipients for this service.
    attr_accessor :total_recipients

    # When the service will be sent.
    attr_accessor :send_at

    # When the service was created.
    attr_accessor :created_at

    # When the service was last updated.
    attr_accessor :updated_at


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'accessaccount_id' => :'accessaccount_id',
        :'name' => :'name',
        :'recording_id' => :'recording_id',
        :'pending_cancel' => :'pending_cancel',
        :'credit_cost' => :'credit_cost',
        :'total_recipients' => :'total_recipients',
        :'send_at' => :'send_at',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'accessaccount_id' => :'String',
        :'name' => :'String',
        :'recording_id' => :'String',
        :'pending_cancel' => :'BOOLEAN',
        :'credit_cost' => :'Float',
        :'total_recipients' => :'Float',
        :'send_at' => :'String',
        :'created_at' => :'String',
        :'updated_at' => :'String'
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

      if attributes.has_key?(:'accessaccount_id')
        self.accessaccount_id = attributes[:'accessaccount_id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'recording_id')
        self.recording_id = attributes[:'recording_id']
      end

      if attributes.has_key?(:'pending_cancel')
        self.pending_cancel = attributes[:'pending_cancel']
      end

      if attributes.has_key?(:'credit_cost')
        self.credit_cost = attributes[:'credit_cost']
      end

      if attributes.has_key?(:'total_recipients')
        self.total_recipients = attributes[:'total_recipients']
      end

      if attributes.has_key?(:'send_at')
        self.send_at = attributes[:'send_at']
      end

      if attributes.has_key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.has_key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
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
          accessaccount_id == o.accessaccount_id &&
          name == o.name &&
          recording_id == o.recording_id &&
          pending_cancel == o.pending_cancel &&
          credit_cost == o.credit_cost &&
          total_recipients == o.total_recipients &&
          send_at == o.send_at &&
          created_at == o.created_at &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, accessaccount_id, name, recording_id, pending_cancel, credit_cost, total_recipients, send_at, created_at, updated_at].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
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
        if value.to_s =~ /^(true|t|yes|y|1)$/i
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
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = DialMyCalls.const_get(type).new
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
