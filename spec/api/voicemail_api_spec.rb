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

# Unit tests for SwaggerClient::VoicemailApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'VoicemailApi' do
  before do
    # run before each test
    @instance = SwaggerClient::VoicemailApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VoicemailApi' do
    it 'should create an instance of VoicemailApi' do
      expect(@instance).to be_instance_of(SwaggerClient::VoicemailApi)
    end
  end

  # unit tests for get_account_voicemail
  # This service shows the details of an individual voicemail.
  # This service shows the details of an individual voicemail. See Intro to Voicemail for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Get Voicemail API with the following definition: GET https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/voicemail/:voicemail_id
  # @param account_id Account ID
  # @param voicemail_id Voicemail ID
  # @param [Hash] opts the optional parameters
  # @return [VoicemailFull]
  describe 'get_account_voicemail test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_account_voicemail
  # Get a list of voicemail messages for an account.
  # Get a list of voicemail messages for an account. See Intro to Voicemail for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the List Voicemail API with the following definition: GET https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/voicemail
  # @param account_id Account ID
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :filters_id ID filter
  # @option opts [String] :filters_from Caller ID filter
  # @option opts [String] :filters_to Callee ID filter, the E.164 phone number to send the SMS TO. Note you must encode the + as %2B
  # @option opts [BOOLEAN] :filters_is_new 
  # @option opts [String] :filters_created_at Date string representing the UTC time that sms was created
  # @option opts [Array<String>] :filters_extension Extension filter
  # @option opts [String] :sort_id ID sorting
  # @option opts [String] :sort_created_at Sort by the UTC time that voicemail was created
  # @option opts [Integer] :limit Max results
  # @option opts [Integer] :offset Results to skip
  # @option opts [String] :fields Field set
  # @return [ListVoicemail]
  describe 'list_account_voicemail test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_account_voicemail
  # Update the is_new parameter in a voicemail record.
  # Update the is_new parameter in a voicemail record. See Account Voicemail for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Patch Voicemail API with the following definition: PATCH https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/voicemail/:voicemail_id
  # @param account_id Account ID
  # @param voicemail_id Voicemail ID
  # @param [Hash] opts the optional parameters
  # @option opts [PatchVoicemailParams] :data Payment data
  # @return [VoicemailFull]
  describe 'patch_account_voicemail test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
