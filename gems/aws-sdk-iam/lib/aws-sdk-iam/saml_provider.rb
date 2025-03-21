# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IAM

  class SamlProvider

    extend Aws::Deprecations

    # @overload def initialize(arn, options = {})
    #   @param [String] arn
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :arn
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @arn = extract_arn(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
      @waiter_block_warned = false
    end

    # @!group Read-Only Attributes

    # @return [String]
    def arn
      @arn
    end

    # The unique identifier assigned to the SAML provider.
    # @return [String]
    def saml_provider_uuid
      data[:saml_provider_uuid]
    end

    # The XML metadata document that includes information about an identity
    # provider.
    # @return [String]
    def saml_metadata_document
      data[:saml_metadata_document]
    end

    # The date and time when the SAML provider was created.
    # @return [Time]
    def create_date
      data[:create_date]
    end

    # The expiration date and time for the SAML provider.
    # @return [Time]
    def valid_until
      data[:valid_until]
    end

    # A list of tags that are attached to the specified IAM SAML provider.
    # The returned list of tags is sorted by tag key. For more information
    # about tagging, see [Tagging IAM resources][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html
    # @return [Array<Types::Tag>]
    def tags
      data[:tags]
    end

    # Specifies the encryption setting for the SAML provider.
    # @return [String]
    def assertion_encryption_mode
      data[:assertion_encryption_mode]
    end

    # The private key metadata for the SAML provider.
    # @return [Array<Types::SAMLPrivateKey>]
    def private_key_list
      data[:private_key_list]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {SamlProvider}.
    # Returns `self` making it possible to chain methods.
    #
    #     saml_provider.reload.data
    #
    # @return [self]
    def load
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.get_saml_provider(saml_provider_arn: @arn)
      end
      @data = resp.data
      self
    end
    alias :reload :load

    # @return [Types::GetSAMLProviderResponse]
    #   Returns the data for this {SamlProvider}. Calls
    #   {Client#get_saml_provider} if {#data_loaded?} is `false`.
    def data
      load unless @data
      @data
    end

    # @return [Boolean]
    #   Returns `true` if this resource is loaded.  Accessing attributes or
    #   {#data} on an unloaded resource will trigger a call to {#load}.
    def data_loaded?
      !!@data
    end

    # @deprecated Use [Aws::IAM::Client] #wait_until instead
    #
    # Waiter polls an API operation until a resource enters a desired
    # state.
    #
    # @note The waiting operation is performed on a copy. The original resource
    #   remains unchanged.
    #
    # ## Basic Usage
    #
    # Waiter will polls until it is successful, it fails by
    # entering a terminal state, or until a maximum number of attempts
    # are made.
    #
    #     # polls in a loop until condition is true
    #     resource.wait_until(options) {|resource| condition}
    #
    # ## Example
    #
    #     instance.wait_until(max_attempts:10, delay:5) do |instance|
    #       instance.state.name == 'running'
    #     end
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. The waiting condition is
    # set by passing a block to {#wait_until}:
    #
    #     # poll for ~25 seconds
    #     resource.wait_until(max_attempts:5,delay:5) {|resource|...}
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     # poll for 1 hour, instead of a number of attempts
    #     proc = Proc.new do |attempts, response|
    #       throw :failure if Time.now - started_at > 3600
    #     end
    #
    #       # disable max attempts
    #     instance.wait_until(before_wait:proc, max_attempts:nil) {...}
    #
    # ## Handling Errors
    #
    # When a waiter is successful, it returns the Resource. When a waiter
    # fails, it raises an error.
    #
    #     begin
    #       resource.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @yieldparam [Resource] resource to be used in the waiting condition.
    #
    # @raise [Aws::Waiters::Errors::FailureStateError] Raised when the waiter
    #   terminates because the waiter has entered a state that it will not
    #   transition out of, preventing success.
    #
    #   yet successful.
    #
    # @raise [Aws::Waiters::Errors::UnexpectedError] Raised when an error is
    #   encountered while polling for a resource that is not expected.
    #
    # @raise [NotImplementedError] Raised when the resource does not
    #
    # @option options [Integer] :max_attempts (10) Maximum number of
    # attempts
    # @option options [Integer] :delay (10) Delay between each
    # attempt in seconds
    # @option options [Proc] :before_attempt (nil) Callback
    # invoked before each attempt
    # @option options [Proc] :before_wait (nil) Callback
    # invoked before each wait
    # @return [Resource] if the waiter was successful
    def wait_until(options = {}, &block)
      self_copy = self.dup
      attempts = 0
      options[:max_attempts] = 10 unless options.key?(:max_attempts)
      options[:delay] ||= 10
      options[:poller] = Proc.new do
        attempts += 1
        if block.call(self_copy)
          [:success, self_copy]
        else
          self_copy.reload unless attempts == options[:max_attempts]
          :retry
        end
      end
      Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        Aws::Waiters::Waiter.new(options).wait({})
      end
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   saml_provider.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(saml_provider_arn: @arn)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.delete_saml_provider(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   saml_provider.update({
    #     saml_metadata_document: "SAMLMetadataDocumentType",
    #     assertion_encryption_mode: "Required", # accepts Required, Allowed
    #     add_private_key: "privateKeyType",
    #     remove_private_key: "privateKeyIdType",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :saml_metadata_document
    #   An XML document generated by an identity provider (IdP) that supports
    #   SAML 2.0. The document includes the issuer's name, expiration
    #   information, and keys that can be used to validate the SAML
    #   authentication response (assertions) that are received from the IdP.
    #   You must generate the metadata document using the identity management
    #   software that is used as your IdP.
    # @option options [String] :assertion_encryption_mode
    #   Specifies the encryption setting for the SAML provider.
    # @option options [String] :add_private_key
    #   Specifies the new private key from your external identity provider.
    #   The private key must be a .pem file that uses AES-GCM or AES-CBC
    #   encryption algorithm to decrypt SAML assertions.
    # @option options [String] :remove_private_key
    #   The Key ID of the private key to remove.
    # @return [Types::UpdateSAMLProviderResponse]
    def update(options = {})
      options = options.merge(saml_provider_arn: @arn)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.update_saml_provider(options)
      end
      resp.data
    end

    # @deprecated
    # @api private
    def identifiers
      { arn: @arn }
    end
    deprecated(:identifiers)

    private

    def extract_arn(args, options)
      value = args[0] || options.delete(:arn)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :arn"
      else
        msg = "expected :arn to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
