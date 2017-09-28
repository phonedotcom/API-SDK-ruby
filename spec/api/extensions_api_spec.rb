=begin
#Phone.com API

#This is a Phone.com api Swagger definition

OpenAPI spec version: 1.0.0
Contact: apisupport@phone.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::ExtensionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ExtensionsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::ExtensionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ExtensionsApi' do
    it 'should create an instance of ExtensionsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::ExtensionsApi)
    end
  end

  # unit tests for create_account_extension
  # Create an individual extension.
  # Create an individual extension. See extension for more details.
  # @param account_id Account ID
  # @param [Hash] opts the optional parameters
  # @option opts [CreateExtensionParams] :data Account Extensions Data
  # @return [ExtensionFull]
  describe 'create_account_extension test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_account_extension
  # Show details of an individual extension.
  # Show details of an individual extension. See extension for more details.
  # @param account_id Account ID
  # @param extension_id Extension ID
  # @param [Hash] opts the optional parameters
  # @return [ExtensionFull]
  describe 'get_account_extension test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_account_extensions
  # Get a list of extensions visible to the authenticated user or client.
  # Get a list of extensions visible to the authenticated user or client. See extension for more details.
  # @param account_id Account ID
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :filters_id ID filter
  # @option opts [Array<String>] :filters_extension Extension filter
  # @option opts [Array<String>] :filters_name Name filter
  # @option opts [String] :sort_id ID sorting
  # @option opts [String] :sort_extension Extension sorting
  # @option opts [String] :sort_name Name sorting
  # @option opts [Integer] :limit Max results
  # @option opts [Integer] :offset Results to skip
  # @option opts [String] :fields Field set
  # @return [ListExtensions]
  describe 'list_account_extensions test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for replace_account_extension
  # Replace an individual extension.
  # Replace an individual extension. See extension for more details.
  # @param account_id Account ID
  # @param extension_id Extension ID
  # @param [Hash] opts the optional parameters
  # @option opts [ReplaceExtensionParams] :data Account Extensions Data
  # @return [ExtensionFull]
  describe 'replace_account_extension test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
