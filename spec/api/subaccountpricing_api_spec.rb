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

# Unit tests for SwaggerClient::SubaccountpricingApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SubaccountpricingApi' do
  before do
    # run before each test
    @instance = SwaggerClient::SubaccountpricingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SubaccountpricingApi' do
    it 'should create an instance of SubaccountpricingApi' do
      expect(@instance).to be_instance_of(SwaggerClient::SubaccountpricingApi)
    end
  end

  # unit tests for create_account_subaccount_pricing
  # Add a pricing plan to a subaccount.
  # Add a pricing plan to a subaccount. See Account Subaccount Pricing for more info on the properties.
  # @param account_id Account ID
  # @param subaccount_id Subaccount ID
  # @param data Subaccount pricing data
  # @param [Hash] opts the optional parameters
  # @return [PricingFull]
  describe 'create_account_subaccount_pricing test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_account_subaccount_pricing
  # Delete a pricing plan from a subaccount.
  # Delete a pricing plan from a subaccount. See Account Subaccount Pricing for more info on the properties.
  # @param account_id Account ID
  # @param subaccount_id Subaccount ID
  # @param pricing_id Pricing Object ID
  # @param [Hash] opts the optional parameters
  # @return [DeleteEntry]
  describe 'delete_account_subaccount_pricing test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_account_subaccount_pricing
  # Get the details of a pricing plan for a subaccount.
  # Get the details of a pricing plan for a subaccount. See Account Subaccount Pricing for more info on the properties.
  # @param account_id Account ID
  # @param subaccount_id Subaccount ID
  # @param pricing_id Pricing Object ID
  # @param [Hash] opts the optional parameters
  # @return [PricingFull]
  describe 'get_account_subaccount_pricing test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_account_subaccount_pricing
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
  describe 'list_account_subaccount_pricing test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end