# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Route53Domains
  module Types

    # The AcceptDomainTransferFromAnotherAwsAccount request includes the
    # following elements.
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that was specified when another Amazon Web
    #   Services account submitted a [TransferDomainToAnotherAwsAccount][1]
    #   request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password that was returned by the
    #   [TransferDomainToAnotherAwsAccount][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/AcceptDomainTransferFromAnotherAwsAccountRequest AWS API Documentation
    #
    class AcceptDomainTransferFromAnotherAwsAccountRequest < Struct.new(
      :domain_name,
      :password)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # The AcceptDomainTransferFromAnotherAwsAccount response includes the
    # following element.
    #
    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To query the
    #   operation status, use [GetOperationDetail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/AcceptDomainTransferFromAnotherAwsAccountResponse AWS API Documentation
    #
    class AcceptDomainTransferFromAnotherAwsAccountResponse < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] signing_attributes
    #   The information about a key, including the algorithm, public
    #   key-value, and flags.
    #   @return [Types::DnssecSigningAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/AssociateDelegationSignerToDomainRequest AWS API Documentation
    #
    class AssociateDelegationSignerToDomainRequest < Struct.new(
      :domain_name,
      :signing_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   The identifier for tracking the progress of the request. To query
    #   the operation status, use [GetOperationDetail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/AssociateDelegationSignerToDomainResponse AWS API Documentation
    #
    class AssociateDelegationSignerToDomainResponse < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information for one billing record.
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that the billing record applies to. If the
    #   domain name contains characters other than a-z, 0-9, and - (hyphen),
    #   such as an internationalized domain name, then this value is in
    #   Punycode. For more information, see [DNS Domain Name Format][1] in
    #   the *Amazon Route 53 Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The operation that you were charged for.
    #   @return [String]
    #
    # @!attribute [rw] invoice_id
    #   Deprecated property. This field is retained in report structure for
    #   backwards compatibility, but will appear blank.
    #   @return [String]
    #
    # @!attribute [rw] bill_date
    #   The date that the operation was billed, in Unix format.
    #   @return [Time]
    #
    # @!attribute [rw] price
    #   The price that you were charged for the operation, in US dollars.
    #
    #   Example value: 12.0
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/BillingRecord AWS API Documentation
    #
    class BillingRecord < Struct.new(
      :domain_name,
      :operation,
      :invoice_id,
      :bill_date,
      :price)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CancelDomainTransferToAnotherAwsAccount request includes the
    # following element.
    #
    # @!attribute [rw] domain_name
    #   The name of the domain for which you want to cancel the transfer to
    #   another Amazon Web Services account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/CancelDomainTransferToAnotherAwsAccountRequest AWS API Documentation
    #
    class CancelDomainTransferToAnotherAwsAccountRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `CancelDomainTransferToAnotherAwsAccount` response includes the
    # following element.
    #
    # @!attribute [rw] operation_id
    #   The identifier that `TransferDomainToAnotherAwsAccount` returned to
    #   track the progress of the request. Because the transfer request was
    #   canceled, the value is no longer valid, and you can't use
    #   `GetOperationDetail` to query the operation status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/CancelDomainTransferToAnotherAwsAccountResponse AWS API Documentation
    #
    class CancelDomainTransferToAnotherAwsAccountResponse < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CheckDomainAvailability request contains the following elements.
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that you want to get availability for. The
    #   top-level domain (TLD), such as .com, must be a TLD that Route 53
    #   supports. For a list of supported TLDs, see [Domains that You Can
    #   Register with Amazon Route 53][1] in the *Amazon Route 53 Developer
    #   Guide*.
    #
    #   The domain name can contain only the following characters:
    #
    #   * Letters a through z. Domain names are not case sensitive.
    #
    #   * Numbers 0 through 9.
    #
    #   * Hyphen (-). You can't specify a hyphen at the beginning or end of
    #     a label.
    #
    #   * Period (.) to separate the labels in the name, such as the `.` in
    #     `example.com`.
    #
    #   Internationalized domain names are not supported for some top-level
    #   domains. To determine whether the TLD that you want to use supports
    #   internationalized domain names, see [Domains that You Can Register
    #   with Amazon Route 53][1]. For more information, see [Formatting
    #   Internationalized Domain Names][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html
    #   [2]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html#domain-name-format-idns
    #   @return [String]
    #
    # @!attribute [rw] idn_lang_code
    #   Reserved for future use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/CheckDomainAvailabilityRequest AWS API Documentation
    #
    class CheckDomainAvailabilityRequest < Struct.new(
      :domain_name,
      :idn_lang_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CheckDomainAvailability response includes the following elements.
    #
    # @!attribute [rw] availability
    #   Whether the domain name is available for registering.
    #
    #   <note markdown="1"> You can register only domains designated as `AVAILABLE`.
    #
    #    </note>
    #
    #   Valid values:
    #
    #   AVAILABLE
    #
    #   : The domain name is available.
    #
    #   AVAILABLE\_RESERVED
    #
    #   : The domain name is reserved under specific conditions.
    #
    #   AVAILABLE\_PREORDER
    #
    #   : The domain name is available and can be preordered.
    #
    #   DONT\_KNOW
    #
    #   : The TLD registry didn't reply with a definitive answer about
    #     whether the domain name is available. Route 53 can return this
    #     response for a variety of reasons, for example, the registry is
    #     performing maintenance. Try again later.
    #
    #   INVALID\_NAME\_FOR\_TLD
    #
    #   : The TLD isn't valid. For example, it can contain characters that
    #     aren't allowed.
    #
    #   PENDING
    #
    #   : The TLD registry didn't return a response in the expected amount
    #     of time. When the response is delayed, it usually takes just a few
    #     extra seconds. You can resubmit the request immediately.
    #
    #   RESERVED
    #
    #   : The domain name has been reserved for another person or
    #     organization.
    #
    #   UNAVAILABLE
    #
    #   : The domain name is not available.
    #
    #   UNAVAILABLE\_PREMIUM
    #
    #   : The domain name is not available.
    #
    #   UNAVAILABLE\_RESTRICTED
    #
    #   : The domain name is forbidden.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/CheckDomainAvailabilityResponse AWS API Documentation
    #
    class CheckDomainAvailabilityResponse < Struct.new(
      :availability)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CheckDomainTransferability request contains the following
    # elements.
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that you want to transfer to Route 53. The
    #   top-level domain (TLD), such as .com, must be a TLD that Route 53
    #   supports. For a list of supported TLDs, see [Domains that You Can
    #   Register with Amazon Route 53][1] in the *Amazon Route 53 Developer
    #   Guide*.
    #
    #   The domain name can contain only the following characters:
    #
    #   * Letters a through z. Domain names are not case sensitive.
    #
    #   * Numbers 0 through 9.
    #
    #   * Hyphen (-). You can't specify a hyphen at the beginning or end of
    #     a label.
    #
    #   * Period (.) to separate the labels in the name, such as the `.` in
    #     `example.com`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html
    #   @return [String]
    #
    # @!attribute [rw] auth_code
    #   If the registrar for the top-level domain (TLD) requires an
    #   authorization code to transfer the domain, the code that you got
    #   from the current registrar for the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/CheckDomainTransferabilityRequest AWS API Documentation
    #
    class CheckDomainTransferabilityRequest < Struct.new(
      :domain_name,
      :auth_code)
      SENSITIVE = [:auth_code]
      include Aws::Structure
    end

    # The CheckDomainTransferability response includes the following
    # elements.
    #
    # @!attribute [rw] transferability
    #   A complex type that contains information about whether the specified
    #   domain can be transferred to Route 53.
    #   @return [Types::DomainTransferability]
    #
    # @!attribute [rw] message
    #   Provides an explanation for when a domain can't be transferred.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/CheckDomainTransferabilityResponse AWS API Documentation
    #
    class CheckDomainTransferabilityResponse < Struct.new(
      :transferability,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Customer's consent for the owner change request.
    #
    # @!attribute [rw] max_price
    #   Maximum amount the customer agreed to accept.
    #   @return [Float]
    #
    # @!attribute [rw] currency
    #   Currency for the `MaxPrice`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/Consent AWS API Documentation
    #
    class Consent < Struct.new(
      :max_price,
      :currency)
      SENSITIVE = []
      include Aws::Structure
    end

    # ContactDetail includes the following elements.
    #
    # @!attribute [rw] first_name
    #   First name of contact.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   Last name of contact.
    #   @return [String]
    #
    # @!attribute [rw] contact_type
    #   Indicates whether the contact is a person, company, association, or
    #   public organization. Note the following:
    #
    #   * If you specify a value other than `PERSON`, you must also specify
    #     a value for `OrganizationName`.
    #
    #   * For some TLDs, the privacy protection available depends on the
    #     value that you specify for `Contact Type`. For the privacy
    #     protection settings for your TLD, see [Domains that You Can
    #     Register with Amazon Route 53][1] in the *Amazon Route 53
    #     Developer Guide*
    #
    #   * For .es domains, the value of `ContactType` must be `PERSON` for
    #     all three contacts.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html
    #   @return [String]
    #
    # @!attribute [rw] organization_name
    #   Name of the organization for contact types other than `PERSON`.
    #   @return [String]
    #
    # @!attribute [rw] address_line_1
    #   First line of the contact's address.
    #   @return [String]
    #
    # @!attribute [rw] address_line_2
    #   Second line of contact's address, if any.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   The city of the contact's address.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state or province of the contact's city.
    #   @return [String]
    #
    # @!attribute [rw] country_code
    #   Code for the country of the contact's address.
    #   @return [String]
    #
    # @!attribute [rw] zip_code
    #   The zip or postal code of the contact's address.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The phone number of the contact.
    #
    #   Constraints: Phone number must be specified in the format
    #   "+\[country dialing code\].\[number including any area
    #   code&gt;\]". For example, a US phone number might appear as
    #   `"+1.1234567890"`.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   Email address of the contact.
    #   @return [String]
    #
    # @!attribute [rw] fax
    #   Fax number of the contact.
    #
    #   Constraints: Phone number must be specified in the format
    #   "+\[country dialing code\].\[number including any area code\]".
    #   For example, a US phone number might appear as `"+1.1234567890"`.
    #   @return [String]
    #
    # @!attribute [rw] extra_params
    #   A list of name-value pairs for parameters required by certain
    #   top-level domains.
    #   @return [Array<Types::ExtraParam>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ContactDetail AWS API Documentation
    #
    class ContactDetail < Struct.new(
      :first_name,
      :last_name,
      :contact_type,
      :organization_name,
      :address_line_1,
      :address_line_2,
      :city,
      :state,
      :country_code,
      :zip_code,
      :phone_number,
      :email,
      :fax,
      :extra_params)
      SENSITIVE = [:first_name, :last_name, :organization_name, :address_line_1, :address_line_2, :city, :state, :country_code, :zip_code, :phone_number, :email, :fax]
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   Name of the domain to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DeleteDomainRequest AWS API Documentation
    #
    class DeleteDomainRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To query the
    #   operation status, use [GetOperationDetail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DeleteDomainResponse AWS API Documentation
    #
    class DeleteDomainResponse < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The DeleteTagsForDomainRequest includes the following elements.
    #
    # @!attribute [rw] domain_name
    #   The domain for which you want to delete one or more tags.
    #   @return [String]
    #
    # @!attribute [rw] tags_to_delete
    #   A list of tag keys to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DeleteTagsForDomainRequest AWS API Documentation
    #
    class DeleteTagsForDomainRequest < Struct.new(
      :domain_name,
      :tags_to_delete)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DeleteTagsForDomainResponse AWS API Documentation
    #
    class DeleteTagsForDomainResponse < Aws::EmptyStructure; end

    # @!attribute [rw] domain_name
    #   The name of the domain that you want to disable automatic renewal
    #   for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DisableDomainAutoRenewRequest AWS API Documentation
    #
    class DisableDomainAutoRenewRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DisableDomainAutoRenewResponse AWS API Documentation
    #
    class DisableDomainAutoRenewResponse < Aws::EmptyStructure; end

    # The DisableDomainTransferLock request includes the following element.
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that you want to remove the transfer lock
    #   for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DisableDomainTransferLockRequest AWS API Documentation
    #
    class DisableDomainTransferLockRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The DisableDomainTransferLock response includes the following element.
    #
    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To query the
    #   operation status, use [GetOperationDetail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DisableDomainTransferLockResponse AWS API Documentation
    #
    class DisableDomainTransferLockResponse < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   Name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   An internal identification number assigned to each DS record after
    #   it’s created. You can retrieve it as part of DNSSEC information
    #   returned by [GetDomainDetail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetDomainDetail.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DisassociateDelegationSignerFromDomainRequest AWS API Documentation
    #
    class DisassociateDelegationSignerFromDomainRequest < Struct.new(
      :domain_name,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To query the
    #   operation status, use [GetOperationDetail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DisassociateDelegationSignerFromDomainResponse AWS API Documentation
    #
    class DisassociateDelegationSignerFromDomainResponse < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the DNSSEC key.
    #
    # You get this from your DNS provider and then give it to Route 53 (by
    # using [AssociateDelegationSignerToDomain][1]) to pass it to the
    # registry to establish the chain of trust.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_AssociateDelegationSignerToDomain.html
    #
    # @!attribute [rw] algorithm
    #   The number of the public key’s cryptographic algorithm according to
    #   an [IANA][1] assignment.
    #
    #   If Route 53 is your DNS service, set this to 13.
    #
    #   For more information about enabling DNSSEC signing, see [Enabling
    #   DNSSEC signing and establishing a chain of trust][2].
    #
    #
    #
    #   [1]: https://www.iana.org/assignments/dns-sec-alg-numbers/dns-sec-alg-numbers.xml
    #   [2]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-configuring-dnssec-enable-signing.html
    #   @return [Integer]
    #
    # @!attribute [rw] flags
    #   Defines the type of key. It can be either a KSK (key-signing-key,
    #   value 257) or ZSK (zone-signing-key, value 256). Using KSK is always
    #   encouraged. Only use ZSK if your DNS provider isn't Route 53 and
    #   you don’t have KSK available.
    #
    #   If you have KSK and ZSK keys, always use KSK to create a delegations
    #   signer (DS) record. If you have ZSK keys only – use ZSK to create a
    #   DS record.
    #   @return [Integer]
    #
    # @!attribute [rw] public_key
    #   The base64-encoded public key part of the key pair that is passed to
    #   the registry .
    #   @return [String]
    #
    # @!attribute [rw] digest_type
    #   The number of the DS digest algorithm according to an IANA
    #   assignment.
    #
    #   For more information, see [IANA][1] for DNSSEC Delegation Signer
    #   (DS) Resource Record (RR) Type Digest Algorithms.
    #
    #
    #
    #   [1]: https://www.iana.org/assignments/ds-rr-types/ds-rr-types.xhtml
    #   @return [Integer]
    #
    # @!attribute [rw] digest
    #   The delegation signer digest.
    #
    #   Digest is calculated from the public key provided using specified
    #   digest algorithm and this digest is the actual value returned from
    #   the registry nameservers as the value of DS records.
    #   @return [String]
    #
    # @!attribute [rw] key_tag
    #   A numeric identification of the DNSKEY record referred to by this DS
    #   record.
    #   @return [Integer]
    #
    # @!attribute [rw] id
    #   An ID assigned to each DS record created by
    #   [AssociateDelegationSignerToDomain][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_AssociateDelegationSignerToDomain.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DnssecKey AWS API Documentation
    #
    class DnssecKey < Struct.new(
      :algorithm,
      :flags,
      :public_key,
      :digest_type,
      :digest,
      :key_tag,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # This error is returned if you call `AssociateDelegationSignerToDomain`
    # when the specified domain has reached the maximum number of DS
    # records. You can't add any additional DS records unless you delete an
    # existing one first.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DnssecLimitExceeded AWS API Documentation
    #
    class DnssecLimitExceeded < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a delegation signer (DS) record that was created in
    # the registry by [AssociateDelegationSignerToDomain][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_AssociateDelegationSignerToDomain.html
    #
    # @!attribute [rw] algorithm
    #   Algorithm which was used to generate the digest from the public key.
    #   @return [Integer]
    #
    # @!attribute [rw] flags
    #   Defines the type of key. It can be either a KSK (key-signing-key,
    #   value 257) or ZSK (zone-signing-key, value 256). Using KSK is always
    #   encouraged. Only use ZSK if your DNS provider isn't Route 53 and
    #   you don’t have KSK available.
    #
    #   If you have KSK and ZSK keys, always use KSK to create a delegations
    #   signer (DS) record. If you have ZSK keys only – use ZSK to create a
    #   DS record.
    #   @return [Integer]
    #
    # @!attribute [rw] public_key
    #   The base64-encoded public key part of the key pair that is passed to
    #   the registry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DnssecSigningAttributes AWS API Documentation
    #
    class DnssecSigningAttributes < Struct.new(
      :algorithm,
      :flags,
      :public_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of domains has exceeded the allowed threshold for the
    # account.
    #
    # @!attribute [rw] message
    #   The number of domains has exceeded the allowed threshold for the
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DomainLimitExceeded AWS API Documentation
    #
    class DomainLimitExceeded < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the domain price associated with a TLD.
    #
    # @!attribute [rw] name
    #   The name of the TLD for which the prices apply.
    #   @return [String]
    #
    # @!attribute [rw] registration_price
    #   The price for domain registration with Route 53.
    #   @return [Types::PriceWithCurrency]
    #
    # @!attribute [rw] transfer_price
    #   The price for transferring the domain registration to Route 53.
    #   @return [Types::PriceWithCurrency]
    #
    # @!attribute [rw] renewal_price
    #   The price for renewing domain registration with Route 53.
    #   @return [Types::PriceWithCurrency]
    #
    # @!attribute [rw] change_ownership_price
    #   The price for changing domain ownership.
    #   @return [Types::PriceWithCurrency]
    #
    # @!attribute [rw] restoration_price
    #   The price for restoring the domain with Route 53.
    #   @return [Types::PriceWithCurrency]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DomainPrice AWS API Documentation
    #
    class DomainPrice < Struct.new(
      :name,
      :registration_price,
      :transfer_price,
      :renewal_price,
      :change_ownership_price,
      :restoration_price)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about one suggested domain name.
    #
    # @!attribute [rw] domain_name
    #   A suggested domain name.
    #   @return [String]
    #
    # @!attribute [rw] availability
    #   Whether the domain name is available for registering.
    #
    #   <note markdown="1"> You can register only the domains that are designated as
    #   `AVAILABLE`.
    #
    #    </note>
    #
    #   Valid values:
    #
    #   AVAILABLE
    #
    #   : The domain name is available.
    #
    #   AVAILABLE\_RESERVED
    #
    #   : The domain name is reserved under specific conditions.
    #
    #   AVAILABLE\_PREORDER
    #
    #   : The domain name is available and can be preordered.
    #
    #   DONT\_KNOW
    #
    #   : The TLD registry didn't reply with a definitive answer about
    #     whether the domain name is available. Route 53 can return this
    #     response for a variety of reasons, for example, the registry is
    #     performing maintenance. Try again later.
    #
    #   PENDING
    #
    #   : The TLD registry didn't return a response in the expected amount
    #     of time. When the response is delayed, it usually takes just a few
    #     extra seconds. You can resubmit the request immediately.
    #
    #   RESERVED
    #
    #   : The domain name has been reserved for another person or
    #     organization.
    #
    #   UNAVAILABLE
    #
    #   : The domain name is not available.
    #
    #   UNAVAILABLE\_PREMIUM
    #
    #   : The domain name is not available.
    #
    #   UNAVAILABLE\_RESTRICTED
    #
    #   : The domain name is forbidden.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DomainSuggestion AWS API Documentation
    #
    class DomainSuggestion < Struct.new(
      :domain_name,
      :availability)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about one domain.
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that the summary information applies to.
    #   @return [String]
    #
    # @!attribute [rw] auto_renew
    #   Indicates whether the domain is automatically renewed upon
    #   expiration.
    #   @return [Boolean]
    #
    # @!attribute [rw] transfer_lock
    #   Indicates whether a domain is locked from unauthorized transfer to
    #   another party.
    #   @return [Boolean]
    #
    # @!attribute [rw] expiry
    #   Expiration date of the domain in Unix time format and Coordinated
    #   Universal Time (UTC).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DomainSummary AWS API Documentation
    #
    class DomainSummary < Struct.new(
      :domain_name,
      :auto_renew,
      :transfer_lock,
      :expiry)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that contains information about whether the specified
    # domain can be transferred to Route 53.
    #
    # @!attribute [rw] transferable
    #   Whether the domain name can be transferred to Route 53.
    #
    #   <note markdown="1"> You can transfer only domains that have a value of `TRANSFERABLE` or
    #   `Transferable`.
    #
    #    </note>
    #
    #   Valid values:
    #
    #   TRANSFERABLE
    #
    #   : The domain name can be transferred to Route 53.
    #
    #   UNTRANSFERRABLE
    #
    #   : The domain name can't be transferred to Route 53.
    #
    #   DONT\_KNOW
    #
    #   : Reserved for future use.
    #
    #   DOMAIN\_IN\_OWN\_ACCOUNT
    #
    #   : The domain already exists in the current Amazon Web Services
    #     account.
    #
    #   DOMAIN\_IN\_ANOTHER\_ACCOUNT
    #
    #   : The domain exists in another Amazon Web Services account.
    #
    #   PREMIUM\_DOMAIN
    #
    #   : Premium domain transfer is not supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DomainTransferability AWS API Documentation
    #
    class DomainTransferability < Struct.new(
      :transferable)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is already in progress for the domain.
    #
    # @!attribute [rw] request_id
    #   ID of the request operation.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The request is already in progress for the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DuplicateRequest AWS API Documentation
    #
    class DuplicateRequest < Struct.new(
      :request_id,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The name of the domain that you want to enable automatic renewal
    #   for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/EnableDomainAutoRenewRequest AWS API Documentation
    #
    class EnableDomainAutoRenewRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/EnableDomainAutoRenewResponse AWS API Documentation
    #
    class EnableDomainAutoRenewResponse < Aws::EmptyStructure; end

    # A request to set the transfer lock for the specified domain.
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that you want to set the transfer lock for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/EnableDomainTransferLockRequest AWS API Documentation
    #
    class EnableDomainTransferLockRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The EnableDomainTransferLock response includes the following elements.
    #
    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To use this ID
    #   to query the operation status, use GetOperationDetail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/EnableDomainTransferLockResponse AWS API Documentation
    #
    class EnableDomainTransferLockResponse < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # ExtraParam includes the following elements.
    #
    # @!attribute [rw] name
    #   The name of an additional parameter that is required by a top-level
    #   domain. Here are the top-level domains that require additional
    #   parameters and the names of the parameters that they require:
    #
    #   .com.au and .net.au
    #   : * `AU_ID_NUMBER`
    #
    #     * `AU_ID_TYPE`
    #
    #       Valid values include the following:
    #
    #       * `ABN` (Australian business number)
    #
    #       * `ACN` (Australian company number)
    #
    #       * `TM` (Trademark number)
    #
    #   .ca
    #   : * `BRAND_NUMBER`
    #
    #     * `CA_BUSINESS_ENTITY_TYPE`
    #
    #       Valid values include the following:
    #
    #       * `BANK` (Bank)
    #
    #       * `COMMERCIAL_COMPANY` (Commercial company)
    #
    #       * `COMPANY` (Company)
    #
    #       * `COOPERATION` (Cooperation)
    #
    #       * `COOPERATIVE` (Cooperative)
    #
    #       * `COOPRIX` (Cooprix)
    #
    #       * `CORP` (Corporation)
    #
    #       * `CREDIT_UNION` (Credit union)
    #
    #       * `FOMIA` (Federation of mutual insurance associations)
    #
    #       * `INC` (Incorporated)
    #
    #       * `LTD` (Limited)
    #
    #       * `LTEE` (Limitée)
    #
    #       * `LLC` (Limited liability corporation)
    #
    #       * `LLP` (Limited liability partnership)
    #
    #       * `LTE` (Lte.)
    #
    #       * `MBA` (Mutual benefit association)
    #
    #       * `MIC` (Mutual insurance company)
    #
    #       * `NFP` (Not-for-profit corporation)
    #
    #       * `SA` (S.A.)
    #
    #       * `SAVINGS_COMPANY` (Savings company)
    #
    #       * `SAVINGS_UNION` (Savings union)
    #
    #       * `SARL` (Société à responsabilité limitée)
    #
    #       * `TRUST` (Trust)
    #
    #       * `ULC` (Unlimited liability corporation)
    #     * `CA_LEGAL_TYPE`
    #
    #       When `ContactType` is `PERSON`, valid values include the
    #       following:
    #
    #       * `ABO` (Aboriginal Peoples indigenous to Canada)
    #
    #       * `CCT` (Canadian citizen)
    #
    #       * `LGR` (Legal Representative of a Canadian Citizen or Permanent
    #         Resident)
    #
    #       * `RES` (Permanent resident of Canada)
    #       When `ContactType` is a value other than `PERSON`, valid values
    #       include the following:
    #
    #       * `ASS` (Canadian unincorporated association)
    #
    #       * `CCO` (Canadian corporation)
    #
    #       * `EDU` (Canadian educational institution)
    #
    #       * `GOV` (Government or government entity in Canada)
    #
    #       * `HOP` (Canadian Hospital)
    #
    #       * `INB` (Indian Band recognized by the Indian Act of Canada)
    #
    #       * `LAM` (Canadian Library, Archive, or Museum)
    #
    #       * `MAJ` (Her/His Majesty the Queen/King)
    #
    #       * `OMK` (Official mark registered in Canada)
    #
    #       * `PLT` (Canadian Political Party)
    #
    #       * `PRT` (Partnership Registered in Canada)
    #
    #       * `TDM` (Trademark registered in Canada)
    #
    #       * `TRD` (Canadian Trade Union)
    #
    #       * `TRS` (Trust established in Canada)
    #
    #   .es
    #   : * `ES_IDENTIFICATION`
    #
    #       The value of `ES_IDENTIFICATION` depends on the following
    #       values:
    #
    #       * The value of `ES_LEGAL_FORM`
    #
    #       * The value of `ES_IDENTIFICATION_TYPE`
    #       **If `ES_LEGAL_FORM` is any value other than `INDIVIDUAL`:**
    #
    #       * Specify 1 letter + 8 numbers (CIF \[Certificado de
    #         Identificación Fiscal\])
    #
    #       * Example: B12345678
    #       **If `ES_LEGAL_FORM` is `INDIVIDUAL`, the value that you specify
    #       for `ES_IDENTIFICATION` depends on the value of
    #       `ES_IDENTIFICATION_TYPE`:**
    #
    #       * If `ES_IDENTIFICATION_TYPE` is `DNI_AND_NIF` (for Spanish
    #         contacts):
    #
    #         * Specify 8 numbers + 1 letter (DNI \[Documento Nacional de
    #           Identidad\], NIF \[Número de Identificación Fiscal\])
    #
    #         * Example: 12345678M
    #       * If `ES_IDENTIFICATION_TYPE` is `NIE` (for foreigners with
    #         legal residence):
    #
    #         * Specify 1 letter + 7 numbers + 1 letter ( NIE \[Número de
    #           Identidad de Extranjero\])
    #
    #         * Example: Y1234567X
    #       * If `ES_IDENTIFICATION_TYPE` is `OTHER` (for contacts outside
    #         of Spain):
    #
    #         * Specify a passport number, drivers license number, or
    #           national identity card number
    #
    #         ^
    #     * `ES_IDENTIFICATION_TYPE`
    #
    #       Valid values include the following:
    #
    #       * `DNI_AND_NIF` (For Spanish contacts)
    #
    #       * `NIE` (For foreigners with legal residence)
    #
    #       * `OTHER` (For contacts outside of Spain)
    #     * `ES_LEGAL_FORM`
    #
    #       Valid values include the following:
    #
    #       * `ASSOCIATION`
    #
    #       * `CENTRAL_GOVERNMENT_BODY`
    #
    #       * `CIVIL_SOCIETY`
    #
    #       * `COMMUNITY_OF_OWNERS`
    #
    #       * `COMMUNITY_PROPERTY`
    #
    #       * `CONSULATE`
    #
    #       * `COOPERATIVE`
    #
    #       * `DESIGNATION_OF_ORIGIN_SUPERVISORY_COUNCIL`
    #
    #       * `ECONOMIC_INTEREST_GROUP`
    #
    #       * `EMBASSY`
    #
    #       * `ENTITY_MANAGING_NATURAL_AREAS`
    #
    #       * `FARM_PARTNERSHIP`
    #
    #       * `FOUNDATION`
    #
    #       * `GENERAL_AND_LIMITED_PARTNERSHIP`
    #
    #       * `GENERAL_PARTNERSHIP`
    #
    #       * `INDIVIDUAL`
    #
    #       * `LIMITED_COMPANY`
    #
    #       * `LOCAL_AUTHORITY`
    #
    #       * `LOCAL_PUBLIC_ENTITY`
    #
    #       * `MUTUAL_INSURANCE_COMPANY`
    #
    #       * `NATIONAL_PUBLIC_ENTITY`
    #
    #       * `ORDER_OR_RELIGIOUS_INSTITUTION`
    #
    #       * `OTHERS (Only for contacts outside of Spain)`
    #
    #       * `POLITICAL_PARTY`
    #
    #       * `PROFESSIONAL_ASSOCIATION`
    #
    #       * `PUBLIC_LAW_ASSOCIATION`
    #
    #       * `PUBLIC_LIMITED_COMPANY`
    #
    #       * `REGIONAL_GOVERNMENT_BODY`
    #
    #       * `REGIONAL_PUBLIC_ENTITY`
    #
    #       * `SAVINGS_BANK`
    #
    #       * `SPANISH_OFFICE`
    #
    #       * `SPORTS_ASSOCIATION`
    #
    #       * `SPORTS_FEDERATION`
    #
    #       * `SPORTS_LIMITED_COMPANY`
    #
    #       * `TEMPORARY_ALLIANCE_OF_ENTERPRISES`
    #
    #       * `TRADE_UNION`
    #
    #       * `WORKER_OWNED_COMPANY`
    #
    #       * `WORKER_OWNED_LIMITED_COMPANY`
    #
    #   .eu
    #   : * ` EU_COUNTRY_OF_CITIZENSHIP`
    #
    #     ^
    #
    #   .fi
    #   : * `BIRTH_DATE_IN_YYYY_MM_DD`
    #
    #     * `FI_BUSINESS_NUMBER`
    #
    #     * `FI_ID_NUMBER`
    #
    #     * `FI_NATIONALITY`
    #
    #       Valid values include the following:
    #
    #       * `FINNISH`
    #
    #       * `NOT_FINNISH`
    #     * `FI_ORGANIZATION_TYPE`
    #
    #       Valid values include the following:
    #
    #       * `COMPANY`
    #
    #       * `CORPORATION`
    #
    #       * `GOVERNMENT`
    #
    #       * `INSTITUTION`
    #
    #       * `POLITICAL_PARTY`
    #
    #       * `PUBLIC_COMMUNITY`
    #
    #       * `TOWNSHIP`
    #
    #   .it
    #   : * `IT_NATIONALITY`
    #
    #     * `IT_PIN`
    #
    #     * `IT_REGISTRANT_ENTITY_TYPE`
    #
    #       Valid values include the following:
    #
    #       * `FOREIGNERS`
    #
    #       * `FREELANCE_WORKERS` (Freelance workers and professionals)
    #
    #       * `ITALIAN_COMPANIES` (Italian companies and one-person
    #         companies)
    #
    #       * `NON_PROFIT_ORGANIZATIONS`
    #
    #       * `OTHER_SUBJECTS`
    #
    #       * `PUBLIC_ORGANIZATIONS`
    #
    #   .ru
    #   : * `BIRTH_DATE_IN_YYYY_MM_DD`
    #
    #     * `RU_PASSPORT_DATA`
    #
    #   .se
    #   : * `BIRTH_COUNTRY`
    #
    #     * `SE_ID_NUMBER`
    #
    #   .sg
    #   : * `SG_ID_NUMBER`
    #
    #     ^
    #
    #   .uk, .co.uk, .me.uk, and .org.uk
    #   : * `UK_CONTACT_TYPE`
    #
    #       Valid values include the following:
    #
    #       * `CRC` (UK Corporation by Royal Charter)
    #
    #       * `FCORP` (Non-UK Corporation)
    #
    #       * `FIND` (Non-UK Individual, representing self)
    #
    #       * `FOTHER` (Non-UK Entity that does not fit into any other
    #         category)
    #
    #       * `GOV` (UK Government Body)
    #
    #       * `IND` (UK Individual (representing self))
    #
    #       * `IP` (UK Industrial/Provident Registered Company)
    #
    #       * `LLP` (UK Limited Liability Partnership)
    #
    #       * `LTD` (UK Limited Company)
    #
    #       * `OTHER` (UK Entity that does not fit into any other category)
    #
    #       * `PLC` (UK Public Limited Company)
    #
    #       * `PTNR` (UK Partnership)
    #
    #       * `RCHAR` (UK Registered Charity)
    #
    #       * `SCH` (UK School)
    #
    #       * `STAT` (UK Statutory Body)
    #
    #       * `STRA` (UK Sole Trader)
    #     * `UK_COMPANY_NUMBER`
    #
    #   In addition, many TLDs require a `VAT_NUMBER`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value that corresponds with the name of an extra parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ExtraParam AWS API Documentation
    #
    class ExtraParam < Struct.new(
      :name,
      :value)
      SENSITIVE = [:value]
      include Aws::Structure
    end

    # Information for the filtering of a list of domains returned by
    # [ListDomains][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains__ListDomains.html
    #
    # @!attribute [rw] name
    #   Name of the field which should be used for filtering the list of
    #   domains.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   The operator values for filtering domain names. The values can be:
    #
    #   * `LE`: Less than, or equal to
    #
    #   * `GE`: Greater than, or equal to
    #
    #   * `BEGINS_WITH`: Begins with
    #   @return [String]
    #
    # @!attribute [rw] values
    #   An array of strings presenting values to compare. Only 1 item in the
    #   list is currently supported.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/FilterCondition AWS API Documentation
    #
    class FilterCondition < Struct.new(
      :name,
      :operator,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The name of the domain for which you want to know whether the
    #   registrant contact has confirmed that the email address is valid.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/GetContactReachabilityStatusRequest AWS API Documentation
    #
    class GetContactReachabilityStatusRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The domain name for which you requested the reachability status.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Whether the registrant contact has responded. Values include the
    #   following:
    #
    #   PENDING
    #
    #   : We sent the confirmation email and haven't received a response
    #     yet.
    #
    #   DONE
    #
    #   : We sent the email and got confirmation from the registrant
    #     contact.
    #
    #   EXPIRED
    #
    #   : The time limit expired before the registrant contact responded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/GetContactReachabilityStatusResponse AWS API Documentation
    #
    class GetContactReachabilityStatusResponse < Struct.new(
      :domain_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The GetDomainDetail request includes the following element.
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that you want to get detailed information
    #   about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/GetDomainDetailRequest AWS API Documentation
    #
    class GetDomainDetailRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The GetDomainDetail response includes the following elements.
    #
    # @!attribute [rw] domain_name
    #   The name of a domain.
    #   @return [String]
    #
    # @!attribute [rw] nameservers
    #   The name servers of the domain.
    #   @return [Array<Types::Nameserver>]
    #
    # @!attribute [rw] auto_renew
    #   Specifies whether the domain registration is set to renew
    #   automatically.
    #   @return [Boolean]
    #
    # @!attribute [rw] admin_contact
    #   Provides details about the domain administrative contact.
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] registrant_contact
    #   Provides details about the domain registrant.
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] tech_contact
    #   Provides details about the domain technical contact.
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] admin_privacy
    #   Specifies whether contact information is concealed from WHOIS
    #   queries. If the value is `true`, WHOIS ("who is") queries return
    #   contact information either for Amazon Registrar or for our registrar
    #   associate, Gandi. If the value is `false`, WHOIS queries return the
    #   information that you entered for the admin contact.
    #   @return [Boolean]
    #
    # @!attribute [rw] registrant_privacy
    #   Specifies whether contact information is concealed from WHOIS
    #   queries. If the value is `true`, WHOIS ("who is") queries return
    #   contact information either for Amazon Registrar or for our registrar
    #   associate, Gandi. If the value is `false`, WHOIS queries return the
    #   information that you entered for the registrant contact (domain
    #   owner).
    #   @return [Boolean]
    #
    # @!attribute [rw] tech_privacy
    #   Specifies whether contact information is concealed from WHOIS
    #   queries. If the value is `true`, WHOIS ("who is") queries return
    #   contact information either for Amazon Registrar or for our registrar
    #   associate, Gandi. If the value is `false`, WHOIS queries return the
    #   information that you entered for the technical contact.
    #   @return [Boolean]
    #
    # @!attribute [rw] registrar_name
    #   Name of the registrar of the domain as identified in the registry.
    #   @return [String]
    #
    # @!attribute [rw] who_is_server
    #   The fully qualified name of the WHOIS server that can answer the
    #   WHOIS query for the domain.
    #   @return [String]
    #
    # @!attribute [rw] registrar_url
    #   Web address of the registrar.
    #   @return [String]
    #
    # @!attribute [rw] abuse_contact_email
    #   Email address to contact to report incorrect contact information for
    #   a domain, to report that the domain is being used to send spam, to
    #   report that someone is cybersquatting on a domain name, or report
    #   some other type of abuse.
    #   @return [String]
    #
    # @!attribute [rw] abuse_contact_phone
    #   Phone number for reporting abuse.
    #   @return [String]
    #
    # @!attribute [rw] registry_domain_id
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date when the domain was created as found in the response to a
    #   WHOIS query. The date and time is in Unix time format and
    #   Coordinated Universal time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] updated_date
    #   The last updated date of the domain as found in the response to a
    #   WHOIS query. The date and time is in Unix time format and
    #   Coordinated Universal time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] expiration_date
    #   The date when the registration for the domain is set to expire. The
    #   date and time is in Unix time format and Coordinated Universal time
    #   (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] reseller
    #   Reseller of the domain. Domains registered or transferred using
    #   Route 53 domains will have `"Amazon"` as the reseller.
    #   @return [String]
    #
    # @!attribute [rw] dns_sec
    #   Deprecated.
    #   @return [String]
    #
    # @!attribute [rw] status_list
    #   An array of domain name status codes, also known as Extensible
    #   Provisioning Protocol (EPP) status codes.
    #
    #   ICANN, the organization that maintains a central database of domain
    #   names, has developed a set of domain name status codes that tell you
    #   the status of a variety of operations on a domain name, for example,
    #   registering a domain name, transferring a domain name to another
    #   registrar, renewing the registration for a domain name, and so on.
    #   All registrars use this same set of status codes.
    #
    #   For a current list of domain name status codes and an explanation of
    #   what each code means, go to the [ICANN website][1] and search for
    #   `epp status codes`. (Search on the ICANN website; web searches
    #   sometimes return an old version of the document.)
    #
    #
    #
    #   [1]: https://www.icann.org/
    #   @return [Array<String>]
    #
    # @!attribute [rw] dnssec_keys
    #   A complex type that contains information about the DNSSEC
    #   configuration.
    #   @return [Array<Types::DnssecKey>]
    #
    # @!attribute [rw] billing_contact
    #   Provides details about the domain billing contact.
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] billing_privacy
    #   Specifies whether contact information is concealed from WHOIS
    #   queries. If the value is `true`, WHOIS ("who is") queries return
    #   contact information either for Amazon Registrar or for our registrar
    #   associate, Gandi. If the value is `false`, WHOIS queries return the
    #   information that you entered for the billing contact.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/GetDomainDetailResponse AWS API Documentation
    #
    class GetDomainDetailResponse < Struct.new(
      :domain_name,
      :nameservers,
      :auto_renew,
      :admin_contact,
      :registrant_contact,
      :tech_contact,
      :admin_privacy,
      :registrant_privacy,
      :tech_privacy,
      :registrar_name,
      :who_is_server,
      :registrar_url,
      :abuse_contact_email,
      :abuse_contact_phone,
      :registry_domain_id,
      :creation_date,
      :updated_date,
      :expiration_date,
      :reseller,
      :dns_sec,
      :status_list,
      :dnssec_keys,
      :billing_contact,
      :billing_privacy)
      SENSITIVE = [:admin_contact, :registrant_contact, :tech_contact, :abuse_contact_email, :abuse_contact_phone, :billing_contact]
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   A domain name that you want to use as the basis for a list of
    #   possible domain names. The top-level domain (TLD), such as .com,
    #   must be a TLD that Route 53 supports. For a list of supported TLDs,
    #   see [Domains that You Can Register with Amazon Route 53][1] in the
    #   *Amazon Route 53 Developer Guide*.
    #
    #   The domain name can contain only the following characters:
    #
    #   * Letters a through z. Domain names are not case sensitive.
    #
    #   * Numbers 0 through 9.
    #
    #   * Hyphen (-). You can't specify a hyphen at the beginning or end of
    #     a label.
    #
    #   * Period (.) to separate the labels in the name, such as the `.` in
    #     `example.com`.
    #
    #   Internationalized domain names are not supported for some top-level
    #   domains. To determine whether the TLD that you want to use supports
    #   internationalized domain names, see [Domains that You Can Register
    #   with Amazon Route 53][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html
    #   @return [String]
    #
    # @!attribute [rw] suggestion_count
    #   The number of suggested domain names that you want Route 53 to
    #   return. Specify a value between 1 and 50.
    #   @return [Integer]
    #
    # @!attribute [rw] only_available
    #   If `OnlyAvailable` is `true`, Route 53 returns only domain names
    #   that are available. If `OnlyAvailable` is `false`, Route 53 returns
    #   domain names without checking whether they're available to be
    #   registered. To determine whether the domain is available, you can
    #   call `checkDomainAvailability` for each suggestion.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/GetDomainSuggestionsRequest AWS API Documentation
    #
    class GetDomainSuggestionsRequest < Struct.new(
      :domain_name,
      :suggestion_count,
      :only_available)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] suggestions_list
    #   A list of possible domain names. If you specified `true` for
    #   `OnlyAvailable` in the request, the list contains only domains that
    #   are available for registration.
    #   @return [Array<Types::DomainSuggestion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/GetDomainSuggestionsResponse AWS API Documentation
    #
    class GetDomainSuggestionsResponse < Struct.new(
      :suggestions_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The [GetOperationDetail][1] request includes the following element.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
    #
    # @!attribute [rw] operation_id
    #   The identifier for the operation for which you want to get the
    #   status. Route 53 returned the identifier in the response to the
    #   original request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/GetOperationDetailRequest AWS API Documentation
    #
    class GetOperationDetailRequest < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The GetOperationDetail response includes the following elements.
    #
    # @!attribute [rw] operation_id
    #   The identifier for the operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the requested operation in the system.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Detailed information on the status including possible errors.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of a domain.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of operation that was requested.
    #   @return [String]
    #
    # @!attribute [rw] submitted_date
    #   The date when the request was submitted.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date
    #   The date when the operation was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status_flag
    #   Lists any outstanding operations that require customer action. Valid
    #   values are:
    #
    #   * `PENDING_ACCEPTANCE`: The operation is waiting for acceptance from
    #     the account that is receiving the domain.
    #
    #   * `PENDING_CUSTOMER_ACTION`: The operation is waiting for customer
    #     action, for example, returning an email.
    #
    #   * `PENDING_AUTHORIZATION`: The operation is waiting for the form of
    #     authorization. For more information, see
    #     [ResendOperationAuthorization][1].
    #
    #   * `PENDING_PAYMENT_VERIFICATION`: The operation is waiting for the
    #     payment method to validate.
    #
    #   * `PENDING_SUPPORT_CASE`: The operation includes a support case and
    #     is waiting for its resolution.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ResendOperationAuthorization.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/GetOperationDetailResponse AWS API Documentation
    #
    class GetOperationDetailResponse < Struct.new(
      :operation_id,
      :status,
      :message,
      :domain_name,
      :type,
      :submitted_date,
      :last_updated_date,
      :status_flag)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested item is not acceptable. For example, for APIs that
    # accept a domain name, the request might specify a domain name that
    # doesn't belong to the account that submitted the request. For
    # `AcceptDomainTransferFromAnotherAwsAccount`, the password might be
    # invalid.
    #
    # @!attribute [rw] message
    #   The requested item is not acceptable. For example, for an
    #   OperationId it might refer to the ID of an operation that is already
    #   completed. For a domain name, it might not be a valid domain name or
    #   belong to the requester account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/InvalidInput AWS API Documentation
    #
    class InvalidInput < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ListDomains request includes the following elements.
    #
    # @!attribute [rw] filter_conditions
    #   A complex type that contains information about the filters applied
    #   during the `ListDomains` request. The filter conditions can include
    #   domain name and domain expiration.
    #   @return [Array<Types::FilterCondition>]
    #
    # @!attribute [rw] sort_condition
    #   A complex type that contains information about the requested
    #   ordering of domains in the returned list.
    #   @return [Types::SortCondition]
    #
    # @!attribute [rw] marker
    #   For an initial request for a list of domains, omit this element. If
    #   the number of domains that are associated with the current Amazon
    #   Web Services account is greater than the value that you specified
    #   for `MaxItems`, you can use `Marker` to return additional domains.
    #   Get the value of `NextPageMarker` from the previous response, and
    #   submit another request that includes the value of `NextPageMarker`
    #   in the `Marker` element.
    #
    #   Constraints: The marker must match the value specified in the
    #   previous request.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Number of domains to be returned.
    #
    #   Default: 20
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ListDomainsRequest AWS API Documentation
    #
    class ListDomainsRequest < Struct.new(
      :filter_conditions,
      :sort_condition,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ListDomains response includes the following elements.
    #
    # @!attribute [rw] domains
    #   A list of domains.
    #   @return [Array<Types::DomainSummary>]
    #
    # @!attribute [rw] next_page_marker
    #   If there are more domains than you specified for `MaxItems` in the
    #   request, submit another request and include the value of
    #   `NextPageMarker` in the value of `Marker`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ListDomainsResponse AWS API Documentation
    #
    class ListDomainsResponse < Struct.new(
      :domains,
      :next_page_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ListOperations request includes the following elements.
    #
    # @!attribute [rw] submitted_since
    #   An optional parameter that lets you get information about all the
    #   operations that you submitted after a specified date and time.
    #   Specify the date and time in Unix time format and Coordinated
    #   Universal time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] marker
    #   For an initial request for a list of operations, omit this element.
    #   If the number of operations that are not yet complete is greater
    #   than the value that you specified for `MaxItems`, you can use
    #   `Marker` to return additional operations. Get the value of
    #   `NextPageMarker` from the previous response, and submit another
    #   request that includes the value of `NextPageMarker` in the `Marker`
    #   element.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Number of domains to be returned.
    #
    #   Default: 20
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the operations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   An arrays of the domains operation types.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sort_by
    #   The sort type for returned values.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order for returned values, either ascending or descending.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ListOperationsRequest AWS API Documentation
    #
    class ListOperationsRequest < Struct.new(
      :submitted_since,
      :marker,
      :max_items,
      :status,
      :type,
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ListOperations response includes the following elements.
    #
    # @!attribute [rw] operations
    #   Lists summaries of the operations.
    #   @return [Array<Types::OperationSummary>]
    #
    # @!attribute [rw] next_page_marker
    #   If there are more operations than you specified for `MaxItems` in
    #   the request, submit another request and include the value of
    #   `NextPageMarker` in the value of `Marker`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ListOperationsResponse AWS API Documentation
    #
    class ListOperationsResponse < Struct.new(
      :operations,
      :next_page_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tld
    #   The TLD for which you want to receive the pricing information. For
    #   example. `.net`.
    #
    #   If a `Tld` value is not provided, a list of prices for all TLDs
    #   supported by Route 53 is returned.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   For an initial request for a list of prices, omit this element. If
    #   the number of prices that are not yet complete is greater than the
    #   value that you specified for `MaxItems`, you can use `Marker` to
    #   return additional prices. Get the value of `NextPageMarker` from the
    #   previous response, and submit another request that includes the
    #   value of `NextPageMarker` in the `Marker` element.
    #
    #   Used only for all TLDs. If you specify a TLD, don't specify a
    #   `Marker`.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Number of `Prices` to be returned.
    #
    #   Used only for all TLDs. If you specify a TLD, don't specify a
    #   `MaxItems`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ListPricesRequest AWS API Documentation
    #
    class ListPricesRequest < Struct.new(
      :tld,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] prices
    #   A complex type that includes all the pricing information. If you
    #   specify a TLD, this array contains only the pricing for that TLD.
    #   @return [Array<Types::DomainPrice>]
    #
    # @!attribute [rw] next_page_marker
    #   If there are more prices than you specified for `MaxItems` in the
    #   request, submit another request and include the value of
    #   `NextPageMarker` in the value of `Marker`.
    #
    #   Used only for all TLDs. If you specify a TLD, don't specify a
    #   `NextPageMarker`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ListPricesResponse AWS API Documentation
    #
    class ListPricesResponse < Struct.new(
      :prices,
      :next_page_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ListTagsForDomainRequest includes the following elements.
    #
    # @!attribute [rw] domain_name
    #   The domain for which you want to get a list of tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ListTagsForDomainRequest AWS API Documentation
    #
    class ListTagsForDomainRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ListTagsForDomain response includes the following elements.
    #
    # @!attribute [rw] tag_list
    #   A list of the tags that are associated with the specified domain.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ListTagsForDomainResponse AWS API Documentation
    #
    class ListTagsForDomainResponse < Struct.new(
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Name server includes the following elements.
    #
    # @!attribute [rw] name
    #   The fully qualified host name of the name server.
    #
    #   Constraint: Maximum 255 characters
    #   @return [String]
    #
    # @!attribute [rw] glue_ips
    #   Glue IP address of a name server entry. Glue IP addresses are
    #   required only when the name of the name server is a subdomain of the
    #   domain. For example, if your domain is example.com and the name
    #   server for the domain is ns.example.com, you need to specify the IP
    #   address for ns.example.com.
    #
    #   Constraints: The list can contain only one IPv4 and one IPv6
    #   address.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/Nameserver AWS API Documentation
    #
    class Nameserver < Struct.new(
      :name,
      :glue_ips)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of operations or jobs running exceeded the allowed
    # threshold for the account.
    #
    # @!attribute [rw] message
    #   The number of operations or jobs running exceeded the allowed
    #   threshold for the account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/OperationLimitExceeded AWS API Documentation
    #
    class OperationLimitExceeded < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # OperationSummary includes the following elements.
    #
    # @!attribute [rw] operation_id
    #   Identifier returned to track the requested action.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the requested operation in the system.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Type of the action requested.
    #   @return [String]
    #
    # @!attribute [rw] submitted_date
    #   The date when the request was submitted.
    #   @return [Time]
    #
    # @!attribute [rw] domain_name
    #   Name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Message about the operation.
    #   @return [String]
    #
    # @!attribute [rw] status_flag
    #   Automatically checks whether there are no outstanding operations on
    #   domains that need customer attention.
    #
    #   Valid values are:
    #
    #   * `PENDING_ACCEPTANCE`: The operation is waiting for acceptance from
    #     the account that is receiving the domain.
    #
    #   * `PENDING_CUSTOMER_ACTION`: The operation is waiting for customer
    #     action, for example, returning an email.
    #
    #   * `PENDING_AUTHORIZATION`: The operation is waiting for the form of
    #     authorization. For more information, see
    #     [ResendOperationAuthorization][1].
    #
    #   * `PENDING_PAYMENT_VERIFICATION`: The operation is waiting for the
    #     payment method to validate.
    #
    #   * `PENDING_SUPPORT_CASE`: The operation includes a support case and
    #     is waiting for its resolution.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ResendOperationAuthorization.html
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   The date when the last change was made in Unix time format and
    #   Coordinated Universal Time (UTC).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/OperationSummary AWS API Documentation
    #
    class OperationSummary < Struct.new(
      :operation_id,
      :status,
      :type,
      :submitted_date,
      :domain_name,
      :message,
      :status_flag,
      :last_updated_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Currency-specific price information.
    #
    # @!attribute [rw] price
    #   The price of a domain, in a specific currency.
    #   @return [Float]
    #
    # @!attribute [rw] currency
    #   The currency specifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/PriceWithCurrency AWS API Documentation
    #
    class PriceWithCurrency < Struct.new(
      :price,
      :currency)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   Name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   New IPS tag for the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/PushDomainRequest AWS API Documentation
    #
    class PushDomainRequest < Struct.new(
      :domain_name,
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # The RegisterDomain request includes the following elements.
    #
    # @!attribute [rw] domain_name
    #   The domain name that you want to register. The top-level domain
    #   (TLD), such as .com, must be a TLD that Route 53 supports. For a
    #   list of supported TLDs, see [Domains that You Can Register with
    #   Amazon Route 53][1] in the *Amazon Route 53 Developer Guide*.
    #
    #   The domain name can contain only the following characters:
    #
    #   * Letters a through z. Domain names are not case sensitive.
    #
    #   * Numbers 0 through 9.
    #
    #   * Hyphen (-). You can't specify a hyphen at the beginning or end of
    #     a label.
    #
    #   * Period (.) to separate the labels in the name, such as the `.` in
    #     `example.com`.
    #
    #   Internationalized domain names are not supported for some top-level
    #   domains. To determine whether the TLD that you want to use supports
    #   internationalized domain names, see [Domains that You Can Register
    #   with Amazon Route 53][1]. For more information, see [Formatting
    #   Internationalized Domain Names][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html
    #   [2]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html#domain-name-format-idns
    #   @return [String]
    #
    # @!attribute [rw] idn_lang_code
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] duration_in_years
    #   The number of years that you want to register the domain for.
    #   Domains are registered for a minimum of one year. The maximum period
    #   depends on the top-level domain. For the range of valid values for
    #   your domain, see [Domains that You Can Register with Amazon Route
    #   53][1] in the *Amazon Route 53 Developer Guide*.
    #
    #   Default: 1
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html
    #   @return [Integer]
    #
    # @!attribute [rw] auto_renew
    #   Indicates whether the domain will be automatically renewed (`true`)
    #   or not (`false`). Auto renewal only takes effect after the account
    #   is charged.
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] admin_contact
    #   Provides detailed contact information. For information about the
    #   values that you specify for each element, see [ContactDetail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] registrant_contact
    #   Provides detailed contact information. For information about the
    #   values that you specify for each element, see [ContactDetail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] tech_contact
    #   Provides detailed contact information. For information about the
    #   values that you specify for each element, see [ContactDetail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] privacy_protect_admin_contact
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar or for our registrar
    #   associate, Gandi. If you specify `false`, WHOIS queries return the
    #   information that you entered for the admin contact.
    #
    #   <note markdown="1"> You must specify the same privacy setting for the administrative,
    #   billing, registrant, and technical contacts.
    #
    #    </note>
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] privacy_protect_registrant_contact
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar or for our registrar
    #   associate, Gandi. If you specify `false`, WHOIS queries return the
    #   information that you entered for the registrant contact (the domain
    #   owner).
    #
    #   <note markdown="1"> You must specify the same privacy setting for the administrative,
    #   billing, registrant, and technical contacts.
    #
    #    </note>
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] privacy_protect_tech_contact
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar or for our registrar
    #   associate, Gandi. If you specify `false`, WHOIS queries return the
    #   information that you entered for the technical contact.
    #
    #   <note markdown="1"> You must specify the same privacy setting for the administrative,
    #   billing, registrant, and technical contacts.
    #
    #    </note>
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] billing_contact
    #   Provides detailed contact information. For information about the
    #   values that you specify for each element, see [ContactDetail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] privacy_protect_billing_contact
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar or for our registrar
    #   associate, Gandi. If you specify `false`, WHOIS queries return the
    #   information that you entered for the billing contact.
    #
    #   <note markdown="1"> You must specify the same privacy setting for the administrative,
    #   billing, registrant, and technical contacts.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/RegisterDomainRequest AWS API Documentation
    #
    class RegisterDomainRequest < Struct.new(
      :domain_name,
      :idn_lang_code,
      :duration_in_years,
      :auto_renew,
      :admin_contact,
      :registrant_contact,
      :tech_contact,
      :privacy_protect_admin_contact,
      :privacy_protect_registrant_contact,
      :privacy_protect_tech_contact,
      :billing_contact,
      :privacy_protect_billing_contact)
      SENSITIVE = [:admin_contact, :registrant_contact, :tech_contact, :billing_contact]
      include Aws::Structure
    end

    # The RegisterDomain response includes the following element.
    #
    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To query the
    #   operation status, use [GetOperationDetail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/RegisterDomainResponse AWS API Documentation
    #
    class RegisterDomainResponse < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The RejectDomainTransferFromAnotherAwsAccount request includes the
    # following element.
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that was specified when another Amazon Web
    #   Services account submitted a [TransferDomainToAnotherAwsAccount][1]
    #   request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/RejectDomainTransferFromAnotherAwsAccountRequest AWS API Documentation
    #
    class RejectDomainTransferFromAnotherAwsAccountRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The RejectDomainTransferFromAnotherAwsAccount response includes the
    # following element.
    #
    # @!attribute [rw] operation_id
    #   The identifier that `TransferDomainToAnotherAwsAccount` returned to
    #   track the progress of the request. Because the transfer request was
    #   rejected, the value is no longer valid, and you can't use
    #   `GetOperationDetail` to query the operation status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/RejectDomainTransferFromAnotherAwsAccountResponse AWS API Documentation
    #
    class RejectDomainTransferFromAnotherAwsAccountResponse < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `RenewDomain` request includes the number of years that you want to
    # renew for and the current expiration year.
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that you want to renew.
    #   @return [String]
    #
    # @!attribute [rw] duration_in_years
    #   The number of years that you want to renew the domain for. The
    #   maximum number of years depends on the top-level domain. For the
    #   range of valid values for your domain, see [Domains that You Can
    #   Register with Amazon Route 53][1] in the *Amazon Route 53 Developer
    #   Guide*.
    #
    #   Default: 1
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html
    #   @return [Integer]
    #
    # @!attribute [rw] current_expiry_year
    #   The year when the registration for the domain is set to expire. This
    #   value must match the current expiration date for the domain.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/RenewDomainRequest AWS API Documentation
    #
    class RenewDomainRequest < Struct.new(
      :domain_name,
      :duration_in_years,
      :current_expiry_year)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To query the
    #   operation status, use [GetOperationDetail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/RenewDomainResponse AWS API Documentation
    #
    class RenewDomainResponse < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The name of the domain for which you want Route 53 to resend a
    #   confirmation email to the registrant contact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ResendContactReachabilityEmailRequest AWS API Documentation
    #
    class ResendContactReachabilityEmailRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The domain name for which you requested a confirmation email.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The email address for the registrant contact at the time that we
    #   sent the verification email.
    #   @return [String]
    #
    # @!attribute [rw] is_already_verified
    #   `True` if the email address for the registrant contact has already
    #   been verified, and `false` otherwise. If the email address has
    #   already been verified, we don't send another confirmation email.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ResendContactReachabilityEmailResponse AWS API Documentation
    #
    class ResendContactReachabilityEmailResponse < Struct.new(
      :domain_name,
      :email_address,
      :is_already_verified)
      SENSITIVE = [:email_address]
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   Operation ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ResendOperationAuthorizationRequest AWS API Documentation
    #
    class ResendOperationAuthorizationRequest < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request for the authorization code for the specified domain. To
    # transfer a domain to another registrar, you provide this value to the
    # new registrar.
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that you want to get an authorization code
    #   for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/RetrieveDomainAuthCodeRequest AWS API Documentation
    #
    class RetrieveDomainAuthCodeRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The RetrieveDomainAuthCode response includes the following element.
    #
    # @!attribute [rw] auth_code
    #   The authorization code for the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/RetrieveDomainAuthCodeResponse AWS API Documentation
    #
    class RetrieveDomainAuthCodeResponse < Struct.new(
      :auth_code)
      SENSITIVE = [:auth_code]
      include Aws::Structure
    end

    # Information for sorting a list of domains.
    #
    # @!attribute [rw] name
    #   Field to be used for sorting the list of domains. It can be either
    #   the name or the expiration for a domain. Note that if
    #   `filterCondition` is used in the same [ListDomains][1] call, the
    #   field used for sorting has to be the same as the field used for
    #   filtering.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains__ListDomains.html
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order for a list of domains. Either ascending (ASC) or
    #   descending (DES).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/SortCondition AWS API Documentation
    #
    class SortCondition < Struct.new(
      :name,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # The top-level domain does not support this operation.
    #
    # @!attribute [rw] message
    #   The top-level domain does not support this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/TLDRulesViolation AWS API Documentation
    #
    class TLDRulesViolation < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Each tag includes the following elements.
    #
    # @!attribute [rw] key
    #   The key (name) of a tag.
    #
    #   Valid values: A-Z, a-z, 0-9, space, ".:/=+\\-@"
    #
    #   Constraints: Each key can be 1-128 characters long.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of a tag.
    #
    #   Valid values: A-Z, a-z, 0-9, space, ".:/=+\\-@"
    #
    #   Constraints: Each value can be 0-256 characters long.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The TransferDomain request includes the following elements.
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that you want to transfer to Route 53. The
    #   top-level domain (TLD), such as .com, must be a TLD that Route 53
    #   supports. For a list of supported TLDs, see [Domains that You Can
    #   Register with Amazon Route 53][1] in the *Amazon Route 53 Developer
    #   Guide*.
    #
    #   The domain name can contain only the following characters:
    #
    #   * Letters a through z. Domain names are not case sensitive.
    #
    #   * Numbers 0 through 9.
    #
    #   * Hyphen (-). You can't specify a hyphen at the beginning or end of
    #     a label.
    #
    #   * Period (.) to separate the labels in the name, such as the `.` in
    #     `example.com`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html
    #   @return [String]
    #
    # @!attribute [rw] idn_lang_code
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] duration_in_years
    #   The number of years that you want to register the domain for.
    #   Domains are registered for a minimum of one year. The maximum period
    #   depends on the top-level domain.
    #
    #   Default: 1
    #   @return [Integer]
    #
    # @!attribute [rw] nameservers
    #   Contains details for the host and glue IP addresses.
    #   @return [Array<Types::Nameserver>]
    #
    # @!attribute [rw] auth_code
    #   The authorization code for the domain. You get this value from the
    #   current registrar.
    #   @return [String]
    #
    # @!attribute [rw] auto_renew
    #   Indicates whether the domain will be automatically renewed (true) or
    #   not (false). Auto renewal only takes effect after the account is
    #   charged.
    #
    #   Default: true
    #   @return [Boolean]
    #
    # @!attribute [rw] admin_contact
    #   Provides detailed contact information.
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] registrant_contact
    #   Provides detailed contact information.
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] tech_contact
    #   Provides detailed contact information.
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] privacy_protect_admin_contact
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify `true`, WHOIS ("who is") queries return contact
    #   information for the registrar, the phrase "REDACTED FOR PRIVACY",
    #   or "On behalf of &lt;domain name&gt; owner.".
    #
    #   <note markdown="1"> While some domains may allow different privacy settings per contact,
    #   we recommend specifying the same privacy setting for all contacts.
    #
    #    </note>
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] privacy_protect_registrant_contact
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar or for our registrar
    #   associate, Gandi. If you specify `false`, WHOIS queries return the
    #   information that you entered for the registrant contact (domain
    #   owner).
    #
    #   <note markdown="1"> You must specify the same privacy setting for the administrative,
    #   billing, registrant, and technical contacts.
    #
    #    </note>
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] privacy_protect_tech_contact
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar or for our registrar
    #   associate, Gandi. If you specify `false`, WHOIS queries return the
    #   information that you entered for the technical contact.
    #
    #   <note markdown="1"> You must specify the same privacy setting for the administrative,
    #   billing, registrant, and technical contacts.
    #
    #    </note>
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] billing_contact
    #   Provides detailed contact information.
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] privacy_protect_billing_contact
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar or for our registrar
    #   associate, Gandi. If you specify `false`, WHOIS queries return the
    #   information that you entered for the billing contact.
    #
    #   <note markdown="1"> You must specify the same privacy setting for the administrative,
    #   billing, registrant, and technical contacts.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/TransferDomainRequest AWS API Documentation
    #
    class TransferDomainRequest < Struct.new(
      :domain_name,
      :idn_lang_code,
      :duration_in_years,
      :nameservers,
      :auth_code,
      :auto_renew,
      :admin_contact,
      :registrant_contact,
      :tech_contact,
      :privacy_protect_admin_contact,
      :privacy_protect_registrant_contact,
      :privacy_protect_tech_contact,
      :billing_contact,
      :privacy_protect_billing_contact)
      SENSITIVE = [:auth_code, :admin_contact, :registrant_contact, :tech_contact, :billing_contact]
      include Aws::Structure
    end

    # The TransferDomain response includes the following element.
    #
    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To query the
    #   operation status, use [GetOperationDetail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/TransferDomainResponse AWS API Documentation
    #
    class TransferDomainResponse < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The TransferDomainToAnotherAwsAccount request includes the following
    # elements.
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that you want to transfer from the current
    #   Amazon Web Services account to another account.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The account ID of the Amazon Web Services account that you want to
    #   transfer the domain to, for example, `111122223333`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/TransferDomainToAnotherAwsAccountRequest AWS API Documentation
    #
    class TransferDomainToAnotherAwsAccountRequest < Struct.new(
      :domain_name,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `TransferDomainToAnotherAwsAccount` response includes the
    # following elements.
    #
    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To query the
    #   operation status, use [GetOperationDetail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
    #   @return [String]
    #
    # @!attribute [rw] password
    #   To finish transferring a domain to another Amazon Web Services
    #   account, the account that the domain is being transferred to must
    #   submit an [AcceptDomainTransferFromAnotherAwsAccount][1] request.
    #   The request must include the value of the `Password` element that
    #   was returned in the `TransferDomainToAnotherAwsAccount` response.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_AcceptDomainTransferFromAnotherAwsAccount.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/TransferDomainToAnotherAwsAccountResponse AWS API Documentation
    #
    class TransferDomainToAnotherAwsAccountResponse < Struct.new(
      :operation_id,
      :password)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # Amazon Route 53 does not support this top-level domain (TLD).
    #
    # @!attribute [rw] message
    #   Amazon Route 53 does not support this top-level domain (TLD).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/UnsupportedTLD AWS API Documentation
    #
    class UnsupportedTLD < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The UpdateDomainContactPrivacy request includes the following
    # elements.
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that you want to update the privacy setting
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] admin_privacy
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar or for our registrar
    #   associate, Gandi. If you specify `false`, WHOIS queries return the
    #   information that you entered for the admin contact.
    #
    #   <note markdown="1"> You must specify the same privacy setting for the administrative,
    #   billing, registrant, and technical contacts.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] registrant_privacy
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar or for our registrar
    #   associate, Gandi. If you specify `false`, WHOIS queries return the
    #   information that you entered for the registrant contact (domain
    #   owner).
    #
    #   <note markdown="1"> You must specify the same privacy setting for the administrative,
    #   billing, registrant, and technical contacts.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] tech_privacy
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar or for our registrar
    #   associate, Gandi. If you specify `false`, WHOIS queries return the
    #   information that you entered for the technical contact.
    #
    #   <note markdown="1"> You must specify the same privacy setting for the administrative,
    #   billing, registrant, and technical contacts.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] billing_privacy
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar or for our registrar
    #   associate, Gandi. If you specify `false`, WHOIS queries return the
    #   information that you entered for the billing contact.
    #
    #   <note markdown="1"> You must specify the same privacy setting for the administrative,
    #   billing, registrant, and technical contacts.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/UpdateDomainContactPrivacyRequest AWS API Documentation
    #
    class UpdateDomainContactPrivacyRequest < Struct.new(
      :domain_name,
      :admin_privacy,
      :registrant_privacy,
      :tech_privacy,
      :billing_privacy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The UpdateDomainContactPrivacy response includes the following
    # element.
    #
    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To use this ID
    #   to query the operation status, use GetOperationDetail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/UpdateDomainContactPrivacyResponse AWS API Documentation
    #
    class UpdateDomainContactPrivacyResponse < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The UpdateDomainContact request includes the following elements.
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that you want to update contact information
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] admin_contact
    #   Provides detailed contact information.
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] registrant_contact
    #   Provides detailed contact information.
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] tech_contact
    #   Provides detailed contact information.
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] consent
    #   Customer's consent for the owner change request. Required if the
    #   domain is not free (consent price is more than $0.00).
    #   @return [Types::Consent]
    #
    # @!attribute [rw] billing_contact
    #   Provides detailed contact information.
    #   @return [Types::ContactDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/UpdateDomainContactRequest AWS API Documentation
    #
    class UpdateDomainContactRequest < Struct.new(
      :domain_name,
      :admin_contact,
      :registrant_contact,
      :tech_contact,
      :consent,
      :billing_contact)
      SENSITIVE = [:admin_contact, :registrant_contact, :tech_contact, :billing_contact]
      include Aws::Structure
    end

    # The UpdateDomainContact response includes the following element.
    #
    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To query the
    #   operation status, use [GetOperationDetail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/UpdateDomainContactResponse AWS API Documentation
    #
    class UpdateDomainContactResponse < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Replaces the current set of name servers for the domain with the
    # specified set of name servers. If you use Amazon Route 53 as your DNS
    # service, specify the four name servers in the delegation set for the
    # hosted zone for the domain.
    #
    # If successful, this operation returns an operation ID that you can use
    # to track the progress and completion of the action. If the request is
    # not completed successfully, the domain registrant will be notified by
    # email.
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that you want to change name servers for.
    #   @return [String]
    #
    # @!attribute [rw] fi_auth_key
    #   The authorization key for .fi domains
    #   @return [String]
    #
    # @!attribute [rw] nameservers
    #   A list of new name servers for the domain.
    #   @return [Array<Types::Nameserver>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/UpdateDomainNameserversRequest AWS API Documentation
    #
    class UpdateDomainNameserversRequest < Struct.new(
      :domain_name,
      :fi_auth_key,
      :nameservers)
      SENSITIVE = [:fi_auth_key]
      include Aws::Structure
    end

    # The UpdateDomainNameservers response includes the following element.
    #
    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To query the
    #   operation status, use [GetOperationDetail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/UpdateDomainNameserversResponse AWS API Documentation
    #
    class UpdateDomainNameserversResponse < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The UpdateTagsForDomainRequest includes the following elements.
    #
    # @!attribute [rw] domain_name
    #   The domain for which you want to add or update tags.
    #   @return [String]
    #
    # @!attribute [rw] tags_to_update
    #   A list of the tag keys and values that you want to add or update. If
    #   you specify a key that already exists, the corresponding value will
    #   be replaced.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/UpdateTagsForDomainRequest AWS API Documentation
    #
    class UpdateTagsForDomainRequest < Struct.new(
      :domain_name,
      :tags_to_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/UpdateTagsForDomainResponse AWS API Documentation
    #
    class UpdateTagsForDomainResponse < Aws::EmptyStructure; end

    # The ViewBilling request includes the following elements.
    #
    # @!attribute [rw] start
    #   The beginning date and time for the time period for which you want a
    #   list of billing records. Specify the date and time in Unix time
    #   format and Coordinated Universal time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] end
    #   The end date and time for the time period for which you want a list
    #   of billing records. Specify the date and time in Unix time format
    #   and Coordinated Universal time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] marker
    #   For an initial request for a list of billing records, omit this
    #   element. If the number of billing records that are associated with
    #   the current Amazon Web Services account during the specified period
    #   is greater than the value that you specified for `MaxItems`, you can
    #   use `Marker` to return additional billing records. Get the value of
    #   `NextPageMarker` from the previous response, and submit another
    #   request that includes the value of `NextPageMarker` in the `Marker`
    #   element.
    #
    #   Constraints: The marker must match the value of `NextPageMarker`
    #   that was returned in the previous response.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The number of billing records to be returned.
    #
    #   Default: 20
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ViewBillingRequest AWS API Documentation
    #
    class ViewBillingRequest < Struct.new(
      :start,
      :end,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ViewBilling response includes the following elements.
    #
    # @!attribute [rw] next_page_marker
    #   If there are more billing records than you specified for `MaxItems`
    #   in the request, submit another request and include the value of
    #   `NextPageMarker` in the value of `Marker`.
    #   @return [String]
    #
    # @!attribute [rw] billing_records
    #   A summary of billing records.
    #   @return [Array<Types::BillingRecord>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ViewBillingResponse AWS API Documentation
    #
    class ViewBillingResponse < Struct.new(
      :next_page_marker,
      :billing_records)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

