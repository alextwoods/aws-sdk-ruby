# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Lightsail
  module Types

    # Lightsail throws this exception when the user cannot be authenticated
    # or uses invalid credentials to access a resource.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] docs
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] tip
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :code,
      :docs,
      :message,
      :tip)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an access key for an Amazon Lightsail bucket.
    #
    # Access keys grant full programmatic access to the specified bucket and
    # its objects. You can have a maximum of two access keys per bucket. Use
    # the [CreateBucketAccessKey][1] action to create an access key for a
    # specific bucket. For more information about access keys, see [Creating
    # access keys for a bucket in Amazon Lightsail][2] in the *Amazon
    # Lightsail Developer Guide*.
    #
    # The `secretAccessKey` value is returned only in response to the
    # `CreateBucketAccessKey` action. You can get a secret access key only
    # when you first create an access key; you cannot get the secret access
    # key later. If you lose the secret access key, you must create a new
    # access key.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_CreateBucketAccessKey.html
    # [2]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-creating-bucket-access-keys
    #
    # @!attribute [rw] access_key_id
    #   The ID of the access key.
    #   @return [String]
    #
    # @!attribute [rw] secret_access_key
    #   The secret access key used to sign requests.
    #
    #   You should store the secret access key in a safe location. We
    #   recommend that you delete the access key if the secret access key is
    #   compromised.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the access key.
    #
    #   A status of `Active` means that the key is valid, while `Inactive`
    #   means it is not.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the access key was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_used
    #   An object that describes the last time the access key was used.
    #
    #   <note markdown="1"> This object does not include data in the response of a
    #   [CreateBucketAccessKey][1] action. If the access key has not been
    #   used, the `region` and `serviceName` values are `N/A`, and the
    #   `lastUsedDate` value is null.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_CreateBucketAccessKey.html
    #   @return [Types::AccessKeyLastUsed]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AccessKey AWS API Documentation
    #
    class AccessKey < Struct.new(
      :access_key_id,
      :secret_access_key,
      :status,
      :created_at,
      :last_used)
      SENSITIVE = [:access_key_id]
      include Aws::Structure
    end

    # Describes the last time an access key was used.
    #
    # <note markdown="1"> This object does not include data in the response of a
    # [CreateBucketAccessKey][1] action.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_CreateBucketAccessKey.html
    #
    # @!attribute [rw] last_used_date
    #   The date and time when the access key was most recently used.
    #
    #   This value is null if the access key has not been used.
    #   @return [Time]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region where this access key was most
    #   recently used.
    #
    #   This value is `N/A` if the access key has not been used.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the Amazon Web Services service with which this access
    #   key was most recently used.
    #
    #   This value is `N/A` if the access key has not been used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AccessKeyLastUsed AWS API Documentation
    #
    class AccessKeyLastUsed < Struct.new(
      :last_used_date,
      :region,
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the anonymous access permissions for an Amazon Lightsail
    # bucket and its objects.
    #
    # For more information about bucket access permissions, see
    # [Understanding bucket permissions in Amazon Lightsail][1] in the
    #
    # *Amazon Lightsail Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-understanding-bucket-permissions
    #
    # @!attribute [rw] get_object
    #   Specifies the anonymous access to all objects in a bucket.
    #
    #   The following options can be specified:
    #
    #   * `public` - Sets all objects in the bucket to public (read-only),
    #     making them readable by anyone in the world.
    #
    #     If the `getObject` value is set to `public`, then all objects in
    #     the bucket default to public regardless of the
    #     `allowPublicOverrides` value.
    #
    #   * `private` - Sets all objects in the bucket to private, making them
    #     readable only by you or anyone you give access to.
    #
    #     If the `getObject` value is set to `private`, and the
    #     `allowPublicOverrides` value is set to `true`, then all objects in
    #     the bucket default to private unless they are configured with a
    #     `public-read` ACL. Individual objects with a `public-read` ACL are
    #     readable by anyone in the world.
    #   @return [String]
    #
    # @!attribute [rw] allow_public_overrides
    #   A Boolean value that indicates whether the access control list (ACL)
    #   permissions that are applied to individual objects override the
    #   `getObject` option that is currently specified.
    #
    #   When this is true, you can use the [PutObjectAcl][1] Amazon S3 API
    #   action to set individual objects to public (read-only) using the
    #   `public-read` ACL, or to private using the `private` ACL.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObjectAcl.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AccessRules AWS API Documentation
    #
    class AccessRules < Struct.new(
      :get_object,
      :allow_public_overrides)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the synchronization status of the Amazon Simple Storage
    # Service (Amazon S3) account-level block public access (BPA) feature
    # for your Lightsail buckets.
    #
    # The account-level BPA feature of Amazon S3 provides centralized
    # controls to limit public access to all Amazon S3 buckets in an
    # account. BPA can make all Amazon S3 buckets in an Amazon Web Services
    # account private regardless of the individual bucket and object
    # permissions that are configured. Lightsail buckets take into account
    # the Amazon S3 account-level BPA configuration when allowing or denying
    # public access. To do this, Lightsail periodically fetches the
    # account-level BPA configuration from Amazon S3. When the account-level
    # BPA status is `InSync`, the Amazon S3 account-level BPA configuration
    # is synchronized and it applies to your Lightsail buckets. For more
    # information about Amazon Simple Storage Service account-level BPA and
    # how it affects Lightsail buckets, see [Block public access for buckets
    # in Amazon Lightsail][1] in the *Amazon Lightsail Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-block-public-access-for-buckets
    #
    # @!attribute [rw] status
    #   The status of the account-level BPA synchronization.
    #
    #   The following statuses are possible:
    #
    #   * `InSync` - Account-level BPA is synchronized. The Amazon S3
    #     account-level BPA configuration applies to your Lightsail buckets.
    #
    #   * `NeverSynced` - Synchronization has not yet happened. The Amazon
    #     S3 account-level BPA configuration does not apply to your
    #     Lightsail buckets.
    #
    #   * `Failed` - Synchronization failed. The Amazon S3 account-level BPA
    #     configuration does not apply to your Lightsail buckets.
    #
    #   * `Defaulted` - Synchronization failed and account-level BPA for
    #     your Lightsail buckets is defaulted to *active*.
    #
    #   <note markdown="1"> You might need to complete further actions if the status is `Failed`
    #   or `Defaulted`. The `message` parameter provides more information
    #   for those statuses.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] last_synced_at
    #   The timestamp of when the account-level BPA configuration was last
    #   synchronized. This value is null when the account-level BPA
    #   configuration has not been synchronized.
    #   @return [Time]
    #
    # @!attribute [rw] message
    #   A message that provides a reason for a `Failed` or `Defaulted`
    #   synchronization status.
    #
    #   The following messages are possible:
    #
    #   * `SYNC_ON_HOLD` - The synchronization has not yet happened. This
    #     status message occurs immediately after you create your first
    #     Lightsail bucket. This status message should change after the
    #     first synchronization happens, approximately 1 hour after the
    #     first bucket is created.
    #
    #   * `DEFAULTED_FOR_SLR_MISSING` - The synchronization failed because
    #     the required service-linked role is missing from your Amazon Web
    #     Services account. The account-level BPA configuration for your
    #     Lightsail buckets is defaulted to *active* until the
    #     synchronization can occur. This means that all your buckets are
    #     private and not publicly accessible. For more information about
    #     how to create the required service-linked role to allow
    #     synchronization, see [Using Service-Linked Roles for Amazon
    #     Lightsail][1] in the *Amazon Lightsail Developer Guide*.
    #
    #   * `DEFAULTED_FOR_SLR_MISSING_ON_HOLD` - The synchronization failed
    #     because the required service-linked role is missing from your
    #     Amazon Web Services account. Account-level BPA is not yet
    #     configured for your Lightsail buckets. Therefore, only the bucket
    #     access permissions and individual object access permissions apply
    #     to your Lightsail buckets. For more information about how to
    #     create the required service-linked role to allow synchronization,
    #     see [Using Service-Linked Roles for Amazon Lightsail][1] in the
    #     *Amazon Lightsail Developer Guide*.
    #
    #   * `Unknown` - The reason that synchronization failed is unknown.
    #     Contact Amazon Web ServicesSupport for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-using-service-linked-roles
    #   @return [String]
    #
    # @!attribute [rw] bpa_impacts_lightsail
    #   A Boolean value that indicates whether account-level block public
    #   access is affecting your Lightsail buckets.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AccountLevelBpaSync AWS API Documentation
    #
    class AccountLevelBpaSync < Struct.new(
      :status,
      :last_synced_at,
      :message,
      :bpa_impacts_lightsail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lightsail throws this exception when an account is still in the setup
    # in progress state.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] docs
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] tip
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AccountSetupInProgressException AWS API Documentation
    #
    class AccountSetupInProgressException < Struct.new(
      :code,
      :docs,
      :message,
      :tip)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an add-on that is enabled for an Amazon Lightsail resource.
    #
    # @!attribute [rw] name
    #   The name of the add-on.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the add-on.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_time_of_day
    #   The daily time when an automatic snapshot is created.
    #
    #   The time shown is in `HH:00` format, and in Coordinated Universal
    #   Time (UTC).
    #
    #   The snapshot is automatically created between the time shown and up
    #   to 45 minutes after.
    #   @return [String]
    #
    # @!attribute [rw] next_snapshot_time_of_day
    #   The next daily time an automatic snapshot will be created.
    #
    #   The time shown is in `HH:00` format, and in Coordinated Universal
    #   Time (UTC).
    #
    #   The snapshot is automatically created between the time shown and up
    #   to 45 minutes after.
    #   @return [String]
    #
    # @!attribute [rw] threshold
    #   The trigger threshold of the action.
    #
    #   This add-on only applies to Lightsail for Research resources.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The amount of idle time in minutes after which your virtual computer
    #   will automatically stop.
    #
    #   This add-on only applies to Lightsail for Research resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AddOn AWS API Documentation
    #
    class AddOn < Struct.new(
      :name,
      :status,
      :snapshot_time_of_day,
      :next_snapshot_time_of_day,
      :threshold,
      :duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a request to enable, modify, or disable an add-on for an
    # Amazon Lightsail resource.
    #
    # <note markdown="1"> An additional cost may be associated with enabling add-ons. For more
    # information, see the [Lightsail pricing page][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://aws.amazon.com/lightsail/pricing/
    #
    # @!attribute [rw] add_on_type
    #   The add-on type.
    #   @return [String]
    #
    # @!attribute [rw] auto_snapshot_add_on_request
    #   An object that represents additional parameters when enabling or
    #   modifying the automatic snapshot add-on.
    #   @return [Types::AutoSnapshotAddOnRequest]
    #
    # @!attribute [rw] stop_instance_on_idle_request
    #   An object that represents additional parameters when enabling or
    #   modifying the `StopInstanceOnIdle` add-on.
    #
    #   This object only applies to Lightsail for Research resources.
    #   @return [Types::StopInstanceOnIdleRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AddOnRequest AWS API Documentation
    #
    class AddOnRequest < Struct.new(
      :add_on_type,
      :auto_snapshot_add_on_request,
      :stop_instance_on_idle_request)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an alarm.
    #
    # An alarm is a way to monitor your Lightsail resource metrics. For more
    # information, see [Alarms in Amazon Lightsail][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-alarms
    #
    # @!attribute [rw] name
    #   The name of the alarm.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the alarm.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the alarm was created.
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   An object that lists information about the location of the alarm.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The Lightsail resource type of the alarm.
    #   @return [String]
    #
    # @!attribute [rw] support_code
    #   The support code. Include this code in your email to support when
    #   you have questions about your Lightsail alarm. This code enables our
    #   support team to look up your Lightsail information more easily.
    #   @return [String]
    #
    # @!attribute [rw] monitored_resource_info
    #   An object that lists information about the resource monitored by the
    #   alarm.
    #   @return [Types::MonitoredResourceInfo]
    #
    # @!attribute [rw] comparison_operator
    #   The arithmetic operation used when comparing the specified statistic
    #   and threshold.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_periods
    #   The number of periods over which data is compared to the specified
    #   threshold.
    #   @return [Integer]
    #
    # @!attribute [rw] period
    #   The period, in seconds, over which the statistic is applied.
    #   @return [Integer]
    #
    # @!attribute [rw] threshold
    #   The value against which the specified statistic is compared.
    #   @return [Float]
    #
    # @!attribute [rw] datapoints_to_alarm
    #   The number of data points that must not within the specified
    #   threshold to trigger the alarm.
    #   @return [Integer]
    #
    # @!attribute [rw] treat_missing_data
    #   Specifies how the alarm handles missing data points.
    #
    #   An alarm can treat missing data in the following ways:
    #
    #   * `breaching` - Assume the missing data is not within the threshold.
    #     Missing data counts towards the number of times the metric is not
    #     within the threshold.
    #
    #   * `notBreaching` - Assume the missing data is within the threshold.
    #     Missing data does not count towards the number of times the metric
    #     is not within the threshold.
    #
    #   * `ignore` - Ignore the missing data. Maintains the current alarm
    #     state.
    #
    #   * `missing` - Missing data is treated as missing.
    #   @return [String]
    #
    # @!attribute [rw] statistic
    #   The statistic for the metric associated with the alarm.
    #
    #   The following statistics are available:
    #
    #   * `Minimum` - The lowest value observed during the specified period.
    #     Use this value to determine low volumes of activity for your
    #     application.
    #
    #   * `Maximum` - The highest value observed during the specified
    #     period. Use this value to determine high volumes of activity for
    #     your application.
    #
    #   * `Sum` - All values submitted for the matching metric added
    #     together. You can use this statistic to determine the total volume
    #     of a metric.
    #
    #   * `Average` - The value of Sum / SampleCount during the specified
    #     period. By comparing this statistic with the Minimum and Maximum
    #     values, you can determine the full scope of a metric and how close
    #     the average use is to the Minimum and Maximum values. This
    #     comparison helps you to know when to increase or decrease your
    #     resources.
    #
    #   * `SampleCount` - The count, or number, of data points used for the
    #     statistical calculation.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The name of the metric associated with the alarm.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the alarm.
    #
    #   An alarm has the following possible states:
    #
    #   * `ALARM` - The metric is outside of the defined threshold.
    #
    #   * `INSUFFICIENT_DATA` - The alarm has just started, the metric is
    #     not available, or not enough data is available for the metric to
    #     determine the alarm state.
    #
    #   * `OK` - The metric is within the defined threshold.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit of the metric associated with the alarm.
    #   @return [String]
    #
    # @!attribute [rw] contact_protocols
    #   The contact protocols for the alarm, such as `Email`, `SMS` (text
    #   messaging), or both.
    #   @return [Array<String>]
    #
    # @!attribute [rw] notification_triggers
    #   The alarm states that trigger a notification.
    #   @return [Array<String>]
    #
    # @!attribute [rw] notification_enabled
    #   Indicates whether the alarm is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Alarm AWS API Documentation
    #
    class Alarm < Struct.new(
      :name,
      :arn,
      :created_at,
      :location,
      :resource_type,
      :support_code,
      :monitored_resource_info,
      :comparison_operator,
      :evaluation_periods,
      :period,
      :threshold,
      :datapoints_to_alarm,
      :treat_missing_data,
      :statistic,
      :metric_name,
      :state,
      :unit,
      :contact_protocols,
      :notification_triggers,
      :notification_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] static_ip_name
    #   The name of the static IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AllocateStaticIpRequest AWS API Documentation
    #
    class AllocateStaticIpRequest < Struct.new(
      :static_ip_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AllocateStaticIpResult AWS API Documentation
    #
    class AllocateStaticIpResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] distribution_name
    #   The name of the distribution that the certificate will be attached
    #   to.
    #
    #   Use the `GetDistributions` action to get a list of distribution
    #   names that you can specify.
    #   @return [String]
    #
    # @!attribute [rw] certificate_name
    #   The name of the certificate to attach to a distribution.
    #
    #   Only certificates with a status of `ISSUED` can be attached to a
    #   distribution.
    #
    #   Use the `GetCertificates` action to get a list of certificate names
    #   that you can specify.
    #
    #   <note markdown="1"> This is the name of the certificate resource type and is used only
    #   to reference the certificate in other API actions. It can be
    #   different than the domain name of the certificate. For example, your
    #   certificate name might be `WordPress-Blog-Certificate` and the
    #   domain name of the certificate might be `example.com`.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AttachCertificateToDistributionRequest AWS API Documentation
    #
    class AttachCertificateToDistributionRequest < Struct.new(
      :distribution_name,
      :certificate_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An object that describes the result of the action, such as the
    #   status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AttachCertificateToDistributionResult AWS API Documentation
    #
    class AttachCertificateToDistributionResult < Struct.new(
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] disk_name
    #   The unique Lightsail disk name (`my-disk`).
    #   @return [String]
    #
    # @!attribute [rw] instance_name
    #   The name of the Lightsail instance where you want to utilize the
    #   storage disk.
    #   @return [String]
    #
    # @!attribute [rw] disk_path
    #   The disk path to expose to the instance (`/dev/xvdf`).
    #   @return [String]
    #
    # @!attribute [rw] auto_mounting
    #   A Boolean value used to determine the automatic mounting of a
    #   storage volume to a virtual computer. The default value is `False`.
    #
    #   This value only applies to Lightsail for Research resources.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AttachDiskRequest AWS API Documentation
    #
    class AttachDiskRequest < Struct.new(
      :disk_name,
      :instance_name,
      :disk_path,
      :auto_mounting)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AttachDiskResult AWS API Documentation
    #
    class AttachDiskResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] load_balancer_name
    #   The name of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] instance_names
    #   An array of strings representing the instance name(s) you want to
    #   attach to your load balancer.
    #
    #   An instance must be `running` before you can attach it to your load
    #   balancer.
    #
    #   There are no additional limits on the number of instances you can
    #   attach to your load balancer, aside from the limit of Lightsail
    #   instances you can create in your account (20).
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AttachInstancesToLoadBalancerRequest AWS API Documentation
    #
    class AttachInstancesToLoadBalancerRequest < Struct.new(
      :load_balancer_name,
      :instance_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AttachInstancesToLoadBalancerResult AWS API Documentation
    #
    class AttachInstancesToLoadBalancerResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] load_balancer_name
    #   The name of the load balancer to which you want to associate the
    #   SSL/TLS certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_name
    #   The name of your SSL/TLS certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AttachLoadBalancerTlsCertificateRequest AWS API Documentation
    #
    class AttachLoadBalancerTlsCertificateRequest < Struct.new(
      :load_balancer_name,
      :certificate_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #
    #   These SSL/TLS certificates are only usable by Lightsail load
    #   balancers. You can't get the certificate and use it for another
    #   purpose.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AttachLoadBalancerTlsCertificateResult AWS API Documentation
    #
    class AttachLoadBalancerTlsCertificateResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] static_ip_name
    #   The name of the static IP.
    #   @return [String]
    #
    # @!attribute [rw] instance_name
    #   The instance name to which you want to attach the static IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AttachStaticIpRequest AWS API Documentation
    #
    class AttachStaticIpRequest < Struct.new(
      :static_ip_name,
      :instance_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AttachStaticIpResult AWS API Documentation
    #
    class AttachStaticIpResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a block storage disk that is attached to an instance, and is
    # included in an automatic snapshot.
    #
    # @!attribute [rw] path
    #   The path of the disk (`/dev/xvdf`).
    #   @return [String]
    #
    # @!attribute [rw] size_in_gb
    #   The size of the disk in GB.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AttachedDisk AWS API Documentation
    #
    class AttachedDisk < Struct.new(
      :path,
      :size_in_gb)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a request to enable or modify the automatic snapshot add-on
    # for an Amazon Lightsail instance or disk.
    #
    # When you modify the automatic snapshot time for a resource, it is
    # typically effective immediately except under the following conditions:
    #
    # * If an automatic snapshot has been created for the current day, and
    #   you change the snapshot time to a later time of day, then the new
    #   snapshot time will be effective the following day. This ensures that
    #   two snapshots are not created for the current day.
    #
    # * If an automatic snapshot has not yet been created for the current
    #   day, and you change the snapshot time to an earlier time of day,
    #   then the new snapshot time will be effective the following day and a
    #   snapshot is automatically created at the previously set time for the
    #   current day. This ensures that a snapshot is created for the current
    #   day.
    #
    # * If an automatic snapshot has not yet been created for the current
    #   day, and you change the snapshot time to a time that is within 30
    #   minutes from your current time, then the new snapshot time will be
    #   effective the following day and a snapshot is automatically created
    #   at the previously set time for the current day. This ensures that a
    #   snapshot is created for the current day, because 30 minutes is
    #   required between your current time and the new snapshot time that
    #   you specify.
    #
    # * If an automatic snapshot is scheduled to be created within 30
    #   minutes from your current time and you change the snapshot time,
    #   then the new snapshot time will be effective the following day and a
    #   snapshot is automatically created at the previously set time for the
    #   current day. This ensures that a snapshot is created for the current
    #   day, because 30 minutes is required between your current time and
    #   the new snapshot time that you specify.
    #
    # @!attribute [rw] snapshot_time_of_day
    #   The daily time when an automatic snapshot will be created.
    #
    #   Constraints:
    #
    #   * Must be in `HH:00` format, and in an hourly increment.
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * The snapshot will be automatically created between the time
    #     specified and up to 45 minutes after.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AutoSnapshotAddOnRequest AWS API Documentation
    #
    class AutoSnapshotAddOnRequest < Struct.new(
      :snapshot_time_of_day)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an automatic snapshot.
    #
    # @!attribute [rw] date
    #   The date of the automatic snapshot in `YYYY-MM-DD` format.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the automatic snapshot was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the automatic snapshot.
    #   @return [String]
    #
    # @!attribute [rw] from_attached_disks
    #   An array of objects that describe the block storage disks attached
    #   to the instance when the automatic snapshot was created.
    #   @return [Array<Types::AttachedDisk>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AutoSnapshotDetails AWS API Documentation
    #
    class AutoSnapshotDetails < Struct.new(
      :date,
      :created_at,
      :status,
      :from_attached_disks)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Availability Zone. This is returned only as part of a
    # `GetRegions` request.
    #
    # @!attribute [rw] zone_name
    #   The name of the Availability Zone. The format is `us-east-2a`
    #   (case-sensitive).
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the Availability Zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AvailabilityZone AWS API Documentation
    #
    class AvailabilityZone < Struct.new(
      :zone_name,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a blueprint (a virtual private server image).
    #
    # @!attribute [rw] blueprint_id
    #   The ID for the virtual private server image (`app_wordpress_x_x` or
    #   `app_lamp_x_x`).
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name of the blueprint (`Amazon Linux`).
    #   @return [String]
    #
    # @!attribute [rw] group
    #   The group name of the blueprint (`amazon-linux`).
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the blueprint (`os` or `app`).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] is_active
    #   A Boolean value indicating whether the blueprint is active. Inactive
    #   blueprints are listed to support customers with existing instances
    #   but are not necessarily available for launch of new instances.
    #   Blueprints are marked inactive when they become outdated due to
    #   operating system updates or new application releases.
    #   @return [Boolean]
    #
    # @!attribute [rw] min_power
    #   The minimum bundle power required to run this blueprint. For
    #   example, you need a bundle with a power value of 500 or more to
    #   create an instance that uses a blueprint with a minimum power value
    #   of 500. `0` indicates that the blueprint runs on all instance sizes.
    #   @return [Integer]
    #
    # @!attribute [rw] version
    #   The version number of the operating system, application, or stack (
    #   `2016.03.0`).
    #   @return [String]
    #
    # @!attribute [rw] version_code
    #   The version code.
    #   @return [String]
    #
    # @!attribute [rw] product_url
    #   The product URL to learn more about the image or blueprint.
    #   @return [String]
    #
    # @!attribute [rw] license_url
    #   The end-user license agreement URL for the image or blueprint.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The operating system platform (either Linux/Unix-based or Windows
    #   Server-based) of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] app_category
    #   Virtual computer blueprints that are supported by Lightsail for
    #   Research.
    #
    #   This parameter only applies to Lightsail for Research resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Blueprint AWS API Documentation
    #
    class Blueprint < Struct.new(
      :blueprint_id,
      :name,
      :group,
      :type,
      :description,
      :is_active,
      :min_power,
      :version,
      :version_code,
      :product_url,
      :license_url,
      :platform,
      :app_category)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Amazon Lightsail bucket.
    #
    # @!attribute [rw] resource_type
    #   The Lightsail resource type of the bucket.
    #   @return [String]
    #
    # @!attribute [rw] access_rules
    #   An object that describes the access rules of the bucket.
    #   @return [Types::AccessRules]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the bucket.
    #   @return [String]
    #
    # @!attribute [rw] bundle_id
    #   The ID of the bundle currently applied to the bucket.
    #
    #   A bucket bundle specifies the monthly cost, storage space, and data
    #   transfer quota for a bucket.
    #
    #   Use the [UpdateBucketBundle][1] action to change the bundle of a
    #   bucket.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_UpdateBucketBundle.html
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the distribution was created.
    #   @return [Time]
    #
    # @!attribute [rw] url
    #   The URL of the bucket.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   An object that describes the location of the bucket, such as the
    #   Amazon Web Services Region and Availability Zone.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] name
    #   The name of the bucket.
    #   @return [String]
    #
    # @!attribute [rw] support_code
    #   The support code for a bucket. Include this code in your email to
    #   support when you have questions about a Lightsail bucket. This code
    #   enables our support team to look up your Lightsail information more
    #   easily.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values for the bucket. For more
    #   information, see [Tags in Amazon Lightsail][1] in the *Amazon
    #   Lightsail Developer Guide*.
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] object_versioning
    #   Indicates whether object versioning is enabled for the bucket.
    #
    #   The following options can be configured:
    #
    #   * `Enabled` - Object versioning is enabled.
    #
    #   * `Suspended` - Object versioning was previously enabled but is
    #     currently suspended. Existing object versions are retained.
    #
    #   * `NeverEnabled` - Object versioning has never been enabled.
    #   @return [String]
    #
    # @!attribute [rw] able_to_update_bundle
    #   Indicates whether the bundle that is currently applied to a bucket
    #   can be changed to another bundle.
    #
    #   You can update a bucket's bundle only one time within a monthly
    #   Amazon Web Services billing cycle.
    #
    #   Use the [UpdateBucketBundle][1] action to change a bucket's bundle.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_UpdateBucketBundle.html
    #   @return [Boolean]
    #
    # @!attribute [rw] readonly_access_accounts
    #   An array of strings that specify the Amazon Web Services account IDs
    #   that have read-only access to the bucket.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resources_receiving_access
    #   An array of objects that describe Lightsail instances that have
    #   access to the bucket.
    #
    #   Use the [SetResourceAccessForBucket][1] action to update the
    #   instances that have access to a bucket.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_SetResourceAccessForBucket.html
    #   @return [Array<Types::ResourceReceivingAccess>]
    #
    # @!attribute [rw] state
    #   An object that describes the state of the bucket.
    #   @return [Types::BucketState]
    #
    # @!attribute [rw] access_log_config
    #   An object that describes the access log configuration for the
    #   bucket.
    #   @return [Types::BucketAccessLogConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Bucket AWS API Documentation
    #
    class Bucket < Struct.new(
      :resource_type,
      :access_rules,
      :arn,
      :bundle_id,
      :created_at,
      :url,
      :location,
      :name,
      :support_code,
      :tags,
      :object_versioning,
      :able_to_update_bundle,
      :readonly_access_accounts,
      :resources_receiving_access,
      :state,
      :access_log_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the access log configuration for a bucket in the Amazon
    # Lightsail object storage service.
    #
    # For more information about bucket access logs, see [Logging bucket
    # requests using access logging in Amazon Lightsail][1] in the *Amazon
    # Lightsail Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-bucket-access-logs
    #
    # @!attribute [rw] enabled
    #   A Boolean value that indicates whether bucket access logging is
    #   enabled for the bucket.
    #   @return [Boolean]
    #
    # @!attribute [rw] destination
    #   The name of the bucket where the access logs are saved. The
    #   destination can be a Lightsail bucket in the same account, and in
    #   the same Amazon Web Services Region as the source bucket.
    #
    #   <note markdown="1"> This parameter is required when enabling the access log for a
    #   bucket, and should be omitted when disabling the access log.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The optional object prefix for the bucket access log.
    #
    #   The prefix is an optional addition to the object key that organizes
    #   your access log files in the destination bucket. For example, if you
    #   specify a `logs/` prefix, then each log object will begin with the
    #   `logs/` prefix in its key (for example,
    #   `logs/2021-11-01-21-32-16-E568B2907131C0C0`).
    #
    #   <note markdown="1"> This parameter can be optionally specified when enabling the access
    #   log for a bucket, and should be omitted when disabling the access
    #   log.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/BucketAccessLogConfig AWS API Documentation
    #
    class BucketAccessLogConfig < Struct.new(
      :enabled,
      :destination,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the specifications of a bundle that can be applied to an
    # Amazon Lightsail bucket.
    #
    # A bucket bundle specifies the monthly cost, storage space, and data
    # transfer quota for a bucket.
    #
    # @!attribute [rw] bundle_id
    #   The ID of the bundle.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the bundle.
    #   @return [String]
    #
    # @!attribute [rw] price
    #   The monthly price of the bundle, in US dollars.
    #   @return [Float]
    #
    # @!attribute [rw] storage_per_month_in_gb
    #   The storage size of the bundle, in GB.
    #   @return [Integer]
    #
    # @!attribute [rw] transfer_per_month_in_gb
    #   The monthly network transfer quota of the bundle.
    #   @return [Integer]
    #
    # @!attribute [rw] is_active
    #   Indicates whether the bundle is active. Use for a new or existing
    #   bucket.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/BucketBundle AWS API Documentation
    #
    class BucketBundle < Struct.new(
      :bundle_id,
      :name,
      :price,
      :storage_per_month_in_gb,
      :transfer_per_month_in_gb,
      :is_active)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the state of an Amazon Lightsail bucket.
    #
    # @!attribute [rw] code
    #   The state code of the bucket.
    #
    #   The following codes are possible:
    #
    #   * `OK` - The bucket is in a running state.
    #
    #   * `Unknown` - Creation of the bucket might have timed-out. You might
    #     want to delete the bucket and create a new one.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message that describes the state of the bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/BucketState AWS API Documentation
    #
    class BucketState < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a bundle, which is a set of specs describing your virtual
    # private server (or *instance*).
    #
    # @!attribute [rw] price
    #   The price in US dollars (`5.0`) of the bundle.
    #   @return [Float]
    #
    # @!attribute [rw] cpu_count
    #   The number of vCPUs included in the bundle (`2`).
    #   @return [Integer]
    #
    # @!attribute [rw] disk_size_in_gb
    #   The size of the SSD (`30`).
    #   @return [Integer]
    #
    # @!attribute [rw] bundle_id
    #   The bundle ID (`micro_x_x`).
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type (`micro`).
    #   @return [String]
    #
    # @!attribute [rw] is_active
    #   A Boolean value indicating whether the bundle is active.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   A friendly name for the bundle (`Micro`).
    #   @return [String]
    #
    # @!attribute [rw] power
    #   A numeric value that represents the power of the bundle (`500`). You
    #   can use the bundle's power value in conjunction with a blueprint's
    #   minimum power value to determine whether the blueprint will run on
    #   the bundle. For example, you need a bundle with a power value of 500
    #   or more to create an instance that uses a blueprint with a minimum
    #   power value of 500.
    #   @return [Integer]
    #
    # @!attribute [rw] ram_size_in_gb
    #   The amount of RAM in GB (`2.0`).
    #   @return [Float]
    #
    # @!attribute [rw] transfer_per_month_in_gb
    #   The data transfer rate per month in GB (`2000`).
    #   @return [Integer]
    #
    # @!attribute [rw] supported_platforms
    #   The operating system platform (Linux/Unix-based or Windows
    #   Server-based) that the bundle supports. You can only launch a
    #   `WINDOWS` bundle on a blueprint that supports the `WINDOWS`
    #   platform. `LINUX_UNIX` blueprints require a `LINUX_UNIX` bundle.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_app_categories
    #   Virtual computer blueprints that are supported by a Lightsail for
    #   Research bundle.
    #
    #   This parameter only applies to Lightsail for Research resources.
    #   @return [Array<String>]
    #
    # @!attribute [rw] public_ipv_4_address_count
    #   An integer that indicates the public ipv4 address count included in
    #   the bundle, the value is either 0 or 1.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Bundle AWS API Documentation
    #
    class Bundle < Struct.new(
      :price,
      :cpu_count,
      :disk_size_in_gb,
      :bundle_id,
      :instance_type,
      :is_active,
      :name,
      :power,
      :ram_size_in_gb,
      :transfer_per_month_in_gb,
      :supported_platforms,
      :supported_app_categories,
      :public_ipv_4_address_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the default cache behavior of an Amazon Lightsail content
    # delivery network (CDN) distribution.
    #
    # @!attribute [rw] behavior
    #   The cache behavior of the distribution.
    #
    #   The following cache behaviors can be specified:
    #
    #   * <b> <code>cache</code> </b> - This option is best for static
    #     sites. When specified, your distribution caches and serves your
    #     entire website as static content. This behavior is ideal for
    #     websites with static content that doesn't change depending on who
    #     views it, or for websites that don't use cookies, headers, or
    #     query strings to personalize content.
    #
    #   * <b> <code>dont-cache</code> </b> - This option is best for sites
    #     that serve a mix of static and dynamic content. When specified,
    #     your distribution caches and serve only the content that is
    #     specified in the distribution's `CacheBehaviorPerPath` parameter.
    #     This behavior is ideal for websites or web applications that use
    #     cookies, headers, and query strings to personalize content for
    #     individual users.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CacheBehavior AWS API Documentation
    #
    class CacheBehavior < Struct.new(
      :behavior)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the per-path cache behavior of an Amazon Lightsail content
    # delivery network (CDN) distribution.
    #
    # A per-path cache behavior is used to override, or add an exception to,
    # the default cache behavior of a distribution. For example, if the
    # `cacheBehavior` is set to `cache`, then a per-path cache behavior can
    # be used to specify a directory, file, or file type that your
    # distribution will cache. Alternately, if the distribution's
    # `cacheBehavior` is `dont-cache`, then a per-path cache behavior can be
    # used to specify a directory, file, or file type that your distribution
    # will not cache.
    #
    # @!attribute [rw] path
    #   The path to a directory or file to cached, or not cache. Use an
    #   asterisk symbol to specify wildcard directories
    #   (`path/to/assets/*`), and file types (`*.html, *jpg, *js`).
    #   Directories and file paths are case-sensitive.
    #
    #   Examples:
    #
    #   * Specify the following to cache all files in the document root of
    #     an Apache web server running on a Lightsail instance.
    #
    #     `var/www/html/`
    #
    #   * Specify the following file to cache only the index page in the
    #     document root of an Apache web server.
    #
    #     `var/www/html/index.html`
    #
    #   * Specify the following to cache only the .html files in the
    #     document root of an Apache web server.
    #
    #     `var/www/html/*.html`
    #
    #   * Specify the following to cache only the .jpg, .png, and .gif files
    #     in the images sub-directory of the document root of an Apache web
    #     server.
    #
    #     `var/www/html/images/*.jpg`
    #
    #     `var/www/html/images/*.png`
    #
    #     `var/www/html/images/*.gif`
    #
    #     Specify the following to cache all files in the images
    #     sub-directory of the document root of an Apache web server.
    #
    #     `var/www/html/images/`
    #   @return [String]
    #
    # @!attribute [rw] behavior
    #   The cache behavior for the specified path.
    #
    #   You can specify one of the following per-path cache behaviors:
    #
    #   * <b> <code>cache</code> </b> - This behavior caches the specified
    #     path.
    #
    #   * <b> <code>dont-cache</code> </b> - This behavior doesn't cache
    #     the specified path.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CacheBehaviorPerPath AWS API Documentation
    #
    class CacheBehaviorPerPath < Struct.new(
      :path,
      :behavior)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the cache settings of an Amazon Lightsail content delivery
    # network (CDN) distribution.
    #
    # These settings apply only to your distribution's `cacheBehaviors`
    # (including the `defaultCacheBehavior`) that have a `behavior` of
    # `cache`.
    #
    # @!attribute [rw] default_ttl
    #   The default amount of time that objects stay in the distribution's
    #   cache before the distribution forwards another request to the origin
    #   to determine whether the content has been updated.
    #
    #   <note markdown="1"> The value specified applies only when the origin does not add HTTP
    #   headers such as `Cache-Control max-age`, `Cache-Control s-maxage`,
    #   and `Expires` to objects.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] minimum_ttl
    #   The minimum amount of time that objects stay in the distribution's
    #   cache before the distribution forwards another request to the origin
    #   to determine whether the object has been updated.
    #
    #   A value of `0` must be specified for `minimumTTL` if the
    #   distribution is configured to forward all headers to the origin.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_ttl
    #   The maximum amount of time that objects stay in the distribution's
    #   cache before the distribution forwards another request to the origin
    #   to determine whether the object has been updated.
    #
    #   The value specified applies only when the origin adds HTTP headers
    #   such as `Cache-Control max-age`, `Cache-Control s-maxage`, and
    #   `Expires` to objects.
    #   @return [Integer]
    #
    # @!attribute [rw] allowed_http_methods
    #   The HTTP methods that are processed and forwarded to the
    #   distribution's origin.
    #
    #   You can specify the following options:
    #
    #   * `GET,HEAD` - The distribution forwards the `GET` and `HEAD`
    #     methods.
    #
    #   * `GET,HEAD,OPTIONS` - The distribution forwards the `GET`, `HEAD`,
    #     and `OPTIONS` methods.
    #
    #   * `GET,HEAD,OPTIONS,PUT,PATCH,POST,DELETE` - The distribution
    #     forwards the `GET`, `HEAD`, `OPTIONS`, `PUT`, `PATCH`, `POST`, and
    #     `DELETE` methods.
    #
    #   If you specify the third option, you might need to restrict access
    #   to your distribution's origin so users can't perform operations
    #   that you don't want them to. For example, you might not want users
    #   to have permission to delete objects from your origin.
    #   @return [String]
    #
    # @!attribute [rw] cached_http_methods
    #   The HTTP method responses that are cached by your distribution.
    #
    #   You can specify the following options:
    #
    #   * `GET,HEAD` - The distribution caches responses to the `GET` and
    #     `HEAD` methods.
    #
    #   * `GET,HEAD,OPTIONS` - The distribution caches responses to the
    #     `GET`, `HEAD`, and `OPTIONS` methods.
    #   @return [String]
    #
    # @!attribute [rw] forwarded_cookies
    #   An object that describes the cookies that are forwarded to the
    #   origin. Your content is cached based on the cookies that are
    #   forwarded.
    #   @return [Types::CookieObject]
    #
    # @!attribute [rw] forwarded_headers
    #   An object that describes the headers that are forwarded to the
    #   origin. Your content is cached based on the headers that are
    #   forwarded.
    #   @return [Types::HeaderObject]
    #
    # @!attribute [rw] forwarded_query_strings
    #   An object that describes the query strings that are forwarded to the
    #   origin. Your content is cached based on the query strings that are
    #   forwarded.
    #   @return [Types::QueryStringObject]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CacheSettings AWS API Documentation
    #
    class CacheSettings < Struct.new(
      :default_ttl,
      :minimum_ttl,
      :maximum_ttl,
      :allowed_http_methods,
      :cached_http_methods,
      :forwarded_cookies,
      :forwarded_headers,
      :forwarded_query_strings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the full details of an Amazon Lightsail SSL/TLS certificate.
    #
    # <note markdown="1"> To get a summary of a certificate, use the `GetCertificates` action
    # and omit `includeCertificateDetails` from your request. The response
    # will include only the certificate Amazon Resource Name (ARN),
    # certificate name, domain name, and tags.
    #
    #  </note>
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the certificate (`my-certificate`).
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The validation status of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] serial_number
    #   The serial number of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] subject_alternative_names
    #   An array of strings that specify the alternate domains
    #   (`example2.com`) and subdomains (`blog.example.com`) of the
    #   certificate.
    #   @return [Array<String>]
    #
    # @!attribute [rw] domain_validation_records
    #   An array of objects that describe the domain validation records of
    #   the certificate.
    #   @return [Array<Types::DomainValidationRecord>]
    #
    # @!attribute [rw] request_failure_reason
    #   The validation failure reason, if any, of the certificate.
    #
    #   The following failure reasons are possible:
    #
    #   * <b> <code>NO_AVAILABLE_CONTACTS</code> </b> - This failure applies
    #     to email validation, which is not available for Lightsail
    #     certificates.
    #
    #   * <b> <code>ADDITIONAL_VERIFICATION_REQUIRED</code> </b> - Lightsail
    #     requires additional information to process this certificate
    #     request. This can happen as a fraud-protection measure, such as
    #     when the domain ranks within the Alexa top 1000 websites. To
    #     provide the required information, use the [Amazon Web Services
    #     Support Center][1] to contact Amazon Web Services Support.
    #
    #     <note markdown="1"> You cannot request a certificate for Amazon-owned domain names
    #     such as those ending in amazonaws.com, cloudfront.net, or
    #     elasticbeanstalk.com.
    #
    #      </note>
    #
    #   * <b> <code>DOMAIN_NOT_ALLOWED</code> </b> - One or more of the
    #     domain names in the certificate request was reported as an unsafe
    #     domain by [VirusTotal][2]. To correct the problem, search for your
    #     domain name on the [VirusTotal][2] website. If your domain is
    #     reported as suspicious, see [Google Help for Hacked Websites][3]
    #     to learn what you can do.
    #
    #     If you believe that the result is a false positive, notify the
    #     organization that is reporting the domain. VirusTotal is an
    #     aggregate of several antivirus and URL scanners and cannot remove
    #     your domain from a block list itself. After you correct the
    #     problem and the VirusTotal registry has been updated, request a
    #     new certificate.
    #
    #     If you see this error and your domain is not included in the
    #     VirusTotal list, visit the [Amazon Web Services Support Center][1]
    #     and create a case.
    #
    #   * <b> <code>INVALID_PUBLIC_DOMAIN</code> </b> - One or more of the
    #     domain names in the certificate request is not valid. Typically,
    #     this is because a domain name in the request is not a valid
    #     top-level domain. Try to request a certificate again, correcting
    #     any spelling errors or typos that were in the failed request, and
    #     ensure that all domain names in the request are for valid
    #     top-level domains. For example, you cannot request a certificate
    #     for `example.invalidpublicdomain` because `invalidpublicdomain` is
    #     not a valid top-level domain.
    #
    #   * <b> <code>OTHER</code> </b> - Typically, this failure occurs when
    #     there is a typographical error in one or more of the domain names
    #     in the certificate request. Try to request a certificate again,
    #     correcting any spelling errors or typos that were in the failed
    #     request.
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/support/home
    #   [2]: https://www.virustotal.com/gui/home/url
    #   [3]: https://developers.google.com/web/fundamentals/security/hacked
    #   @return [String]
    #
    # @!attribute [rw] in_use_resource_count
    #   The number of Lightsail resources that the certificate is attached
    #   to.
    #   @return [Integer]
    #
    # @!attribute [rw] key_algorithm
    #   The algorithm used to generate the key pair (the public and private
    #   key) of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the certificate was created.
    #   @return [Time]
    #
    # @!attribute [rw] issued_at
    #   The timestamp when the certificate was issued.
    #   @return [Time]
    #
    # @!attribute [rw] issuer_ca
    #   The certificate authority that issued the certificate.
    #   @return [String]
    #
    # @!attribute [rw] not_before
    #   The timestamp when the certificate is first valid.
    #   @return [Time]
    #
    # @!attribute [rw] not_after
    #   The timestamp when the certificate expires.
    #   @return [Time]
    #
    # @!attribute [rw] eligible_to_renew
    #   The renewal eligibility of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] renewal_summary
    #   An object that describes the status of the certificate renewal
    #   managed by Lightsail.
    #   @return [Types::RenewalSummary]
    #
    # @!attribute [rw] revoked_at
    #   The timestamp when the certificate was revoked. This value is
    #   present only when the certificate status is `REVOKED`.
    #   @return [Time]
    #
    # @!attribute [rw] revocation_reason
    #   The reason the certificate was revoked. This value is present only
    #   when the certificate status is `REVOKED`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values for the resource. For more
    #   information about tags in Lightsail, see the [Amazon Lightsail
    #   Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] support_code
    #   The support code. Include this code in your email to support when
    #   you have questions about your Lightsail certificate. This code
    #   enables our support team to look up your Lightsail information more
    #   easily.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Certificate AWS API Documentation
    #
    class Certificate < Struct.new(
      :arn,
      :name,
      :domain_name,
      :status,
      :serial_number,
      :subject_alternative_names,
      :domain_validation_records,
      :request_failure_reason,
      :in_use_resource_count,
      :key_algorithm,
      :created_at,
      :issued_at,
      :issuer_ca,
      :not_before,
      :not_after,
      :eligible_to_renew,
      :renewal_summary,
      :revoked_at,
      :revocation_reason,
      :tags,
      :support_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Amazon Lightsail SSL/TLS certificate.
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_name
    #   The name of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_detail
    #   An object that describes a certificate in detail.
    #   @return [Types::Certificate]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values for the resource. For more
    #   information about tags in Lightsail, see the [Amazon Lightsail
    #   Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CertificateSummary AWS API Documentation
    #
    class CertificateSummary < Struct.new(
      :certificate_arn,
      :certificate_name,
      :domain_name,
      :certificate_detail,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] port_info
    #   An object to describe the ports to close for the specified instance.
    #   @return [Types::PortInfo]
    #
    # @!attribute [rw] instance_name
    #   The name of the instance for which to close ports.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CloseInstancePublicPortsRequest AWS API Documentation
    #
    class CloseInstancePublicPortsRequest < Struct.new(
      :port_info,
      :instance_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An object that describes the result of the action, such as the
    #   status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CloseInstancePublicPortsResult AWS API Documentation
    #
    class CloseInstancePublicPortsResult < Struct.new(
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a CloudFormation stack record created as a result of the
    # `create cloud formation stack` action.
    #
    # A CloudFormation stack record provides information about the AWS
    # CloudFormation stack used to create a new Amazon Elastic Compute Cloud
    # instance from an exported Lightsail instance snapshot.
    #
    # @!attribute [rw] name
    #   The name of the CloudFormation stack record. It starts with
    #   `CloudFormationStackRecord` followed by a GUID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the CloudFormation stack record.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date when the CloudFormation stack record was created.
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   A list of objects describing the Availability Zone and Amazon Web
    #   Services Region of the CloudFormation stack record.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The Lightsail resource type (`CloudFormationStackRecord`).
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the CloudFormation stack record.
    #   @return [String]
    #
    # @!attribute [rw] source_info
    #   A list of objects describing the source of the CloudFormation stack
    #   record.
    #   @return [Array<Types::CloudFormationStackRecordSourceInfo>]
    #
    # @!attribute [rw] destination_info
    #   A list of objects describing the destination service, which is AWS
    #   CloudFormation, and the Amazon Resource Name (ARN) of the AWS
    #   CloudFormation stack.
    #   @return [Types::DestinationInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CloudFormationStackRecord AWS API Documentation
    #
    class CloudFormationStackRecord < Struct.new(
      :name,
      :arn,
      :created_at,
      :location,
      :resource_type,
      :state,
      :source_info,
      :destination_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the source of a CloudFormation stack record (i.e., the
    # export snapshot record).
    #
    # @!attribute [rw] resource_type
    #   The Lightsail resource type (`ExportSnapshotRecord`).
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the record.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the export snapshot record.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CloudFormationStackRecordSourceInfo AWS API Documentation
    #
    class CloudFormationStackRecordSourceInfo < Struct.new(
      :resource_type,
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a contact method.
    #
    # A contact method is a way to send you notifications. For more
    # information, see [Notifications in Amazon Lightsail][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-notifications
    #
    # @!attribute [rw] contact_endpoint
    #   The destination of the contact method, such as an email address or a
    #   mobile phone number.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the contact method.
    #
    #   A contact method has the following possible status:
    #
    #   * `PendingVerification` - The contact method has not yet been
    #     verified, and the verification has not yet expired.
    #
    #   * `Valid` - The contact method has been verified.
    #
    #   * `InValid` - An attempt was made to verify the contact method, but
    #     the verification has expired.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol of the contact method, such as email or SMS (text
    #   messaging).
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the contact method.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the contact method.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the contact method was created.
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   An object that describes the location of the contact method, such as
    #   the Amazon Web Services Region and Availability Zone.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The Lightsail resource type of the contact method.
    #   @return [String]
    #
    # @!attribute [rw] support_code
    #   The support code. Include this code in your email to support when
    #   you have questions about your Lightsail contact method. This code
    #   enables our support team to look up your Lightsail information more
    #   easily.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ContactMethod AWS API Documentation
    #
    class ContactMethod < Struct.new(
      :contact_endpoint,
      :status,
      :protocol,
      :name,
      :arn,
      :created_at,
      :location,
      :resource_type,
      :support_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the settings of a container that will be launched, or that
    # is launched, to an Amazon Lightsail container service.
    #
    # @!attribute [rw] image
    #   The name of the image used for the container.
    #
    #   Container images sourced from your Lightsail container service, that
    #   are registered and stored on your service, start with a colon (`:`).
    #   For example, if your container service name is
    #   `container-service-1`, the container image label is `mystaticsite`,
    #   and you want to use the third (`3`) version of the registered
    #   container image, then you should specify
    #   `:container-service-1.mystaticsite.3`. To use the latest version of
    #   a container image, specify `latest` instead of a version number (for
    #   example, `:container-service-1.mystaticsite.latest`). Lightsail will
    #   automatically use the highest numbered version of the registered
    #   container image.
    #
    #   Container images sourced from a public registry like Docker Hub
    #   don't start with a colon. For example, `nginx:latest` or `nginx`.
    #   @return [String]
    #
    # @!attribute [rw] command
    #   The launch command for the container.
    #   @return [Array<String>]
    #
    # @!attribute [rw] environment
    #   The environment variables of the container.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] ports
    #   The open firewall ports of the container.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Container AWS API Documentation
    #
    class Container < Struct.new(
      :image,
      :command,
      :environment,
      :ports)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a container image that is registered to an Amazon Lightsail
    # container service.
    #
    # @!attribute [rw] image
    #   The name of the container image.
    #   @return [String]
    #
    # @!attribute [rw] digest
    #   The digest of the container image.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the container image was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ContainerImage AWS API Documentation
    #
    class ContainerImage < Struct.new(
      :image,
      :digest,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Amazon Lightsail container service.
    #
    # @!attribute [rw] container_service_name
    #   The name of the container service.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the container service.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the container service was created.
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   An object that describes the location of the container service, such
    #   as the Amazon Web Services Region and Availability Zone.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The Lightsail resource type of the container service.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values for the resource. For more
    #   information about tags in Lightsail, see the [Amazon Lightsail
    #   Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] power
    #   The power specification of the container service.
    #
    #   The power specifies the amount of RAM, the number of vCPUs, and the
    #   base price of the container service.
    #   @return [String]
    #
    # @!attribute [rw] power_id
    #   The ID of the power of the container service.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the container service.
    #
    #   The following container service states are possible:
    #
    #   * `PENDING` - The container service is being created.
    #
    #   * `READY` - The container service is running but it does not have an
    #     active container deployment.
    #
    #   * `DEPLOYING` - The container service is launching a container
    #     deployment.
    #
    #   * `RUNNING` - The container service is running and it has an active
    #     container deployment.
    #
    #   * `UPDATING` - The container service capacity or its custom domains
    #     are being updated.
    #
    #   * `DELETING` - The container service is being deleted.
    #
    #   * `DISABLED` - The container service is disabled, and its active
    #     deployment and containers, if any, are shut down.
    #   @return [String]
    #
    # @!attribute [rw] state_detail
    #   An object that describes the current state of the container service.
    #
    #   <note markdown="1"> The state detail is populated only when a container service is in a
    #   `PENDING`, `DEPLOYING`, or `UPDATING` state.
    #
    #    </note>
    #   @return [Types::ContainerServiceStateDetail]
    #
    # @!attribute [rw] scale
    #   The scale specification of the container service.
    #
    #   The scale specifies the allocated compute nodes of the container
    #   service.
    #   @return [Integer]
    #
    # @!attribute [rw] current_deployment
    #   An object that describes the current container deployment of the
    #   container service.
    #   @return [Types::ContainerServiceDeployment]
    #
    # @!attribute [rw] next_deployment
    #   An object that describes the next deployment of the container
    #   service.
    #
    #   This value is `null` when there is no deployment in a `pending`
    #   state.
    #   @return [Types::ContainerServiceDeployment]
    #
    # @!attribute [rw] is_disabled
    #   A Boolean value indicating whether the container service is
    #   disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] principal_arn
    #   The principal ARN of the container service.
    #
    #   The principal ARN can be used to create a trust relationship between
    #   your standard Amazon Web Services account and your Lightsail
    #   container service. This allows you to give your service permission
    #   to access resources in your standard Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] private_domain_name
    #   The private domain name of the container service.
    #
    #   The private domain name is accessible only by other resources within
    #   the default virtual private cloud (VPC) of your Lightsail account.
    #   @return [String]
    #
    # @!attribute [rw] public_domain_names
    #   The public domain name of the container service, such as
    #   `example.com` and `www.example.com`.
    #
    #   You can specify up to four public domain names for a container
    #   service. The domain names that you specify are used when you create
    #   a deployment with a container configured as the public endpoint of
    #   your container service.
    #
    #   If you don't specify public domain names, then you can use the
    #   default domain of the container service.
    #
    #   You must create and validate an SSL/TLS certificate before you can
    #   use public domain names with your container service. Use the
    #   `CreateCertificate` action to create a certificate for the public
    #   domain names you want to use with your container service.
    #
    #   See `CreateContainerService` or `UpdateContainerService` for
    #   information about how to specify public domain names for your
    #   Lightsail container service.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] url
    #   The publicly accessible URL of the container service.
    #
    #   If no public endpoint is specified in the `currentDeployment`, this
    #   URL returns a 404 response.
    #   @return [String]
    #
    # @!attribute [rw] private_registry_access
    #   An object that describes the configuration for the container service
    #   to access private container image repositories, such as Amazon
    #   Elastic Container Registry (Amazon ECR) private repositories.
    #
    #   For more information, see [Configuring access to an Amazon ECR
    #   private repository for an Amazon Lightsail container service][1] in
    #   the *Amazon Lightsail Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-container-service-ecr-private-repo-access
    #   @return [Types::PrivateRegistryAccess]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ContainerService AWS API Documentation
    #
    class ContainerService < Struct.new(
      :container_service_name,
      :arn,
      :created_at,
      :location,
      :resource_type,
      :tags,
      :power,
      :power_id,
      :state,
      :state_detail,
      :scale,
      :current_deployment,
      :next_deployment,
      :is_disabled,
      :principal_arn,
      :private_domain_name,
      :public_domain_names,
      :url,
      :private_registry_access)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a container deployment configuration of an Amazon Lightsail
    # container service.
    #
    # A deployment specifies the settings, such as the ports and launch
    # command, of containers that are deployed to your container service.
    #
    # @!attribute [rw] version
    #   The version number of the deployment.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The state of the deployment.
    #
    #   A deployment can be in one of the following states:
    #
    #   * `ACTIVATING` - The deployment is being created.
    #
    #   * `ACTIVE` - The deployment was successfully created, and it's
    #     currently running on the container service. The container service
    #     can have only one deployment in an active state at a time.
    #
    #   * `INACTIVE` - The deployment was previously successfully created,
    #     but it is not currently running on the container service.
    #
    #   * `FAILED` - The deployment failed. Use the `GetContainerLog` action
    #     to view the log events for the containers in the deployment to try
    #     to determine the reason for the failure.
    #   @return [String]
    #
    # @!attribute [rw] containers
    #   An object that describes the configuration for the containers of the
    #   deployment.
    #   @return [Hash<String,Types::Container>]
    #
    # @!attribute [rw] public_endpoint
    #   An object that describes the endpoint of the deployment.
    #   @return [Types::ContainerServiceEndpoint]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the deployment was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ContainerServiceDeployment AWS API Documentation
    #
    class ContainerServiceDeployment < Struct.new(
      :version,
      :state,
      :containers,
      :public_endpoint,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a container deployment configuration of an Amazon Lightsail
    # container service.
    #
    # A deployment specifies the settings, such as the ports and launch
    # command, of containers that are deployed to your container service.
    #
    # @!attribute [rw] containers
    #   An object that describes the configuration for the containers of the
    #   deployment.
    #   @return [Hash<String,Types::Container>]
    #
    # @!attribute [rw] public_endpoint
    #   An object that describes the endpoint of the deployment.
    #   @return [Types::EndpointRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ContainerServiceDeploymentRequest AWS API Documentation
    #
    class ContainerServiceDeploymentRequest < Struct.new(
      :containers,
      :public_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the activation status of the role that you can use to grant
    # an Amazon Lightsail container service access to Amazon Elastic
    # Container Registry (Amazon ECR) private repositories.
    #
    # When activated, Lightsail creates an Identity and Access Management
    # (IAM) role for the specified Lightsail container service. You can use
    # the ARN of the role to create a trust relationship between your
    # Lightsail container service and an Amazon ECR private repository in
    # your Amazon Web Services account. This allows your container service
    # to pull images from Amazon ECR private repositories. For more
    # information, see [Configuring access to an Amazon ECR private
    # repository for an Amazon Lightsail container service][1] in the
    # *Amazon Lightsail Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-container-service-ecr-private-repo-access
    #
    # @!attribute [rw] is_active
    #   A Boolean value that indicates whether the role is activated.
    #   @return [Boolean]
    #
    # @!attribute [rw] principal_arn
    #   The Amazon Resource Name (ARN) of the role, if it is activated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ContainerServiceECRImagePullerRole AWS API Documentation
    #
    class ContainerServiceECRImagePullerRole < Struct.new(
      :is_active,
      :principal_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a request to activate or deactivate the role that you can
    # use to grant an Amazon Lightsail container service access to Amazon
    # Elastic Container Registry (Amazon ECR) private repositories.
    #
    # When activated, Lightsail creates an Identity and Access Management
    # (IAM) role for the specified Lightsail container service. You can use
    # the ARN of the role to create a trust relationship between your
    # Lightsail container service and an Amazon ECR private repository in
    # your Amazon Web Services account. This allows your container service
    # to pull images from Amazon ECR private repositories. For more
    # information, see [Configuring access to an Amazon ECR private
    # repository for an Amazon Lightsail container service][1] in the
    # *Amazon Lightsail Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-container-service-ecr-private-repo-access
    #
    # @!attribute [rw] is_active
    #   A Boolean value that indicates whether to activate the role.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ContainerServiceECRImagePullerRoleRequest AWS API Documentation
    #
    class ContainerServiceECRImagePullerRoleRequest < Struct.new(
      :is_active)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the public endpoint configuration of a deployment of an
    # Amazon Lightsail container service.
    #
    # @!attribute [rw] container_name
    #   The name of the container entry of the deployment that the endpoint
    #   configuration applies to.
    #   @return [String]
    #
    # @!attribute [rw] container_port
    #   The port of the specified container to which traffic is forwarded
    #   to.
    #   @return [Integer]
    #
    # @!attribute [rw] health_check
    #   An object that describes the health check configuration of the
    #   container.
    #   @return [Types::ContainerServiceHealthCheckConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ContainerServiceEndpoint AWS API Documentation
    #
    class ContainerServiceEndpoint < Struct.new(
      :container_name,
      :container_port,
      :health_check)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the health check configuration of an Amazon Lightsail
    # container service.
    #
    # @!attribute [rw] healthy_threshold
    #   The number of consecutive health checks successes required before
    #   moving the container to the `Healthy` state. The default value is
    #   `2`.
    #   @return [Integer]
    #
    # @!attribute [rw] unhealthy_threshold
    #   The number of consecutive health check failures required before
    #   moving the container to the `Unhealthy` state. The default value is
    #   `2`.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout_seconds
    #   The amount of time, in seconds, during which no response means a
    #   failed health check. You can specify between 2 and 60 seconds. The
    #   default value is `2`.
    #   @return [Integer]
    #
    # @!attribute [rw] interval_seconds
    #   The approximate interval, in seconds, between health checks of an
    #   individual container. You can specify between 5 and 300 seconds. The
    #   default value is `5`.
    #   @return [Integer]
    #
    # @!attribute [rw] path
    #   The path on the container on which to perform the health check. The
    #   default value is `/`.
    #   @return [String]
    #
    # @!attribute [rw] success_codes
    #   The HTTP codes to use when checking for a successful response from a
    #   container. You can specify values between `200` and `499`. You can
    #   specify multiple values (for example, `200,202`) or a range of
    #   values (for example, `200-299`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ContainerServiceHealthCheckConfig AWS API Documentation
    #
    class ContainerServiceHealthCheckConfig < Struct.new(
      :healthy_threshold,
      :unhealthy_threshold,
      :timeout_seconds,
      :interval_seconds,
      :path,
      :success_codes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the log events of a container of an Amazon Lightsail
    # container service.
    #
    # @!attribute [rw] created_at
    #   The timestamp when the container service log event was created.
    #   @return [Time]
    #
    # @!attribute [rw] message
    #   The message of the container service log event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ContainerServiceLogEvent AWS API Documentation
    #
    class ContainerServiceLogEvent < Struct.new(
      :created_at,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the powers that can be specified for an Amazon Lightsail
    # container service.
    #
    # The power specifies the amount of RAM, the number of vCPUs, and the
    # base price of the container service.
    #
    # @!attribute [rw] power_id
    #   The ID of the power (`nano-1`).
    #   @return [String]
    #
    # @!attribute [rw] price
    #   The monthly price of the power in USD.
    #   @return [Float]
    #
    # @!attribute [rw] cpu_count
    #   The number of vCPUs included in the power.
    #   @return [Float]
    #
    # @!attribute [rw] ram_size_in_gb
    #   The amount of RAM (in GB) of the power.
    #   @return [Float]
    #
    # @!attribute [rw] name
    #   The friendly name of the power (`nano`).
    #   @return [String]
    #
    # @!attribute [rw] is_active
    #   A Boolean value indicating whether the power is active and can be
    #   specified for container services.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ContainerServicePower AWS API Documentation
    #
    class ContainerServicePower < Struct.new(
      :power_id,
      :price,
      :cpu_count,
      :ram_size_in_gb,
      :name,
      :is_active)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the sign-in credentials for the container image registry of
    # an Amazon Lightsail account.
    #
    # @!attribute [rw] username
    #   The container service registry username to use to push container
    #   images to the container image registry of a Lightsail account.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The container service registry password to use to push container
    #   images to the container image registry of a Lightsail account
    #   @return [String]
    #
    # @!attribute [rw] expires_at
    #   The timestamp of when the container image registry sign-in
    #   credentials expire.
    #
    #   The log in credentials expire 12 hours after they are created, at
    #   which point you will need to create a new set of log in credentials
    #   using the `CreateContainerServiceRegistryLogin` action.
    #   @return [Time]
    #
    # @!attribute [rw] registry
    #   The address to use to push container images to the container image
    #   registry of a Lightsail account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ContainerServiceRegistryLogin AWS API Documentation
    #
    class ContainerServiceRegistryLogin < Struct.new(
      :username,
      :password,
      :expires_at,
      :registry)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the current state of a container service.
    #
    # @!attribute [rw] code
    #   The state code of the container service.
    #
    #   The following state codes are possible:
    #
    #   * The following state codes are possible if your container service
    #     is in a `DEPLOYING` or `UPDATING` state:
    #
    #     * `CREATING_SYSTEM_RESOURCES` - The system resources for your
    #       container service are being created.
    #
    #     * `CREATING_NETWORK_INFRASTRUCTURE` - The network infrastructure
    #       for your container service are being created.
    #
    #     * `PROVISIONING_CERTIFICATE` - The SSL/TLS certificate for your
    #       container service is being created.
    #
    #     * `PROVISIONING_SERVICE` - Your container service is being
    #       provisioned.
    #
    #     * `CREATING_DEPLOYMENT` - Your deployment is being created on your
    #       container service.
    #
    #     * `EVALUATING_HEALTH_CHECK` - The health of your deployment is
    #       being evaluated.
    #
    #     * `ACTIVATING_DEPLOYMENT` - Your deployment is being activated.
    #   * The following state codes are possible if your container service
    #     is in a `PENDING` state:
    #
    #     * `CERTIFICATE_LIMIT_EXCEEDED` - The SSL/TLS certificate required
    #       for your container service exceeds the maximum number of
    #       certificates allowed for your account.
    #
    #     * `UNKNOWN_ERROR` - An error was experienced when your container
    #       service was being created.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message that provides more information for the state code.
    #
    #   <note markdown="1"> The state detail is populated only when a container service is in a
    #   `PENDING`, `DEPLOYING`, or `UPDATING` state.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ContainerServiceStateDetail AWS API Documentation
    #
    class ContainerServiceStateDetail < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] container_services
    #   An array of objects that describe one or more container services.
    #   @return [Array<Types::ContainerService>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ContainerServicesListResult AWS API Documentation
    #
    class ContainerServicesListResult < Struct.new(
      :container_services)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes whether an Amazon Lightsail content delivery network (CDN)
    # distribution forwards cookies to the origin and, if so, which ones.
    #
    # For the cookies that you specify, your distribution caches separate
    # versions of the specified content based on the cookie values in viewer
    # requests.
    #
    # @!attribute [rw] option
    #   Specifies which cookies to forward to the distribution's origin for
    #   a cache behavior: `all`, `none`, or `allow-list` to forward only the
    #   cookies specified in the `cookiesAllowList` parameter.
    #   @return [String]
    #
    # @!attribute [rw] cookies_allow_list
    #   The specific cookies to forward to your distribution's origin.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CookieObject AWS API Documentation
    #
    class CookieObject < Struct.new(
      :option,
      :cookies_allow_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_snapshot_name
    #   The name of the source manual snapshot to copy.
    #
    #   Constraint:
    #
    #   * Define this parameter only when copying a manual snapshot as
    #     another manual snapshot.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] source_resource_name
    #   The name of the source instance or disk from which the source
    #   automatic snapshot was created.
    #
    #   Constraint:
    #
    #   * Define this parameter only when copying an automatic snapshot as a
    #     manual snapshot. For more information, see the [Amazon Lightsail
    #     Developer Guide][1].
    #
    #   ^
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-keeping-automatic-snapshots
    #   @return [String]
    #
    # @!attribute [rw] restore_date
    #   The date of the source automatic snapshot to copy. Use the `get auto
    #   snapshots` operation to identify the dates of the available
    #   automatic snapshots.
    #
    #   Constraints:
    #
    #   * Must be specified in `YYYY-MM-DD` format.
    #
    #   * This parameter cannot be defined together with the `use latest
    #     restorable auto snapshot` parameter. The `restore date` and `use
    #     latest restorable auto snapshot` parameters are mutually
    #     exclusive.
    #
    #   * Define this parameter only when copying an automatic snapshot as a
    #     manual snapshot. For more information, see the [Amazon Lightsail
    #     Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-keeping-automatic-snapshots
    #   @return [String]
    #
    # @!attribute [rw] use_latest_restorable_auto_snapshot
    #   A Boolean value to indicate whether to use the latest available
    #   automatic snapshot of the specified source instance or disk.
    #
    #   Constraints:
    #
    #   * This parameter cannot be defined together with the `restore date`
    #     parameter. The `use latest restorable auto snapshot` and `restore
    #     date` parameters are mutually exclusive.
    #
    #   * Define this parameter only when copying an automatic snapshot as a
    #     manual snapshot. For more information, see the [Amazon Lightsail
    #     Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-keeping-automatic-snapshots
    #   @return [Boolean]
    #
    # @!attribute [rw] target_snapshot_name
    #   The name of the new manual snapshot to be created as a copy.
    #   @return [String]
    #
    # @!attribute [rw] source_region
    #   The Amazon Web Services Region where the source manual or automatic
    #   snapshot is located.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CopySnapshotRequest AWS API Documentation
    #
    class CopySnapshotRequest < Struct.new(
      :source_snapshot_name,
      :source_resource_name,
      :restore_date,
      :use_latest_restorable_auto_snapshot,
      :target_snapshot_name,
      :source_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CopySnapshotResult AWS API Documentation
    #
    class CopySnapshotResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the estimated cost for resources in your Lightsail for
    # Research account.
    #
    # @!attribute [rw] usage_type
    #   The types of usage that are included in the estimate, such as costs,
    #   usage, or data transfer.
    #   @return [String]
    #
    # @!attribute [rw] results_by_time
    #   The cost estimate result that's associated with a time period.
    #   @return [Array<Types::EstimateByTime>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CostEstimate AWS API Documentation
    #
    class CostEstimate < Struct.new(
      :usage_type,
      :results_by_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bucket_name
    #   The name of the bucket that the new access key will belong to, and
    #   grant access to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateBucketAccessKeyRequest AWS API Documentation
    #
    class CreateBucketAccessKeyRequest < Struct.new(
      :bucket_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_key
    #   An object that describes the access key that is created.
    #   @return [Types::AccessKey]
    #
    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateBucketAccessKeyResult AWS API Documentation
    #
    class CreateBucketAccessKeyResult < Struct.new(
      :access_key,
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bucket_name
    #   The name for the bucket.
    #
    #   For more information about bucket names, see [Bucket naming rules in
    #   Amazon Lightsail][1] in the *Amazon Lightsail Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/bucket-naming-rules-in-amazon-lightsail
    #   @return [String]
    #
    # @!attribute [rw] bundle_id
    #   The ID of the bundle to use for the bucket.
    #
    #   A bucket bundle specifies the monthly cost, storage space, and data
    #   transfer quota for a bucket.
    #
    #   Use the [GetBucketBundles][1] action to get a list of bundle IDs
    #   that you can specify.
    #
    #   Use the [UpdateBucketBundle][2] action to change the bundle after
    #   the bucket is created.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetBucketBundles.html
    #   [2]: https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_UpdateBucketBundle.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the bucket during
    #   creation.
    #
    #   Use the [TagResource][1] action to tag the bucket after it's
    #   created.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_TagResource.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] enable_object_versioning
    #   A Boolean value that indicates whether to enable versioning of
    #   objects in the bucket.
    #
    #   For more information about versioning, see [Enabling and suspending
    #   object versioning in a bucket in Amazon Lightsail][1] in the *Amazon
    #   Lightsail Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-managing-bucket-object-versioning
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateBucketRequest AWS API Documentation
    #
    class CreateBucketRequest < Struct.new(
      :bucket_name,
      :bundle_id,
      :tags,
      :enable_object_versioning)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bucket
    #   An object that describes the bucket that is created.
    #   @return [Types::Bucket]
    #
    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateBucketResult AWS API Documentation
    #
    class CreateBucketResult < Struct.new(
      :bucket,
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_name
    #   The name for the certificate.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name (`example.com`) for the certificate.
    #   @return [String]
    #
    # @!attribute [rw] subject_alternative_names
    #   An array of strings that specify the alternate domains
    #   (`example2.com`) and subdomains (`blog.example.com`) for the
    #   certificate.
    #
    #   You can specify a maximum of nine alternate domains (in addition to
    #   the primary domain name).
    #
    #   Wildcard domain entries (`*.example.com`) are not supported.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the certificate during
    #   create.
    #
    #   Use the `TagResource` action to tag a resource after it's created.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateCertificateRequest AWS API Documentation
    #
    class CreateCertificateRequest < Struct.new(
      :certificate_name,
      :domain_name,
      :subject_alternative_names,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate
    #   An object that describes the certificate created.
    #   @return [Types::CertificateSummary]
    #
    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateCertificateResult AWS API Documentation
    #
    class CreateCertificateResult < Struct.new(
      :certificate,
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instances
    #   An array of parameters that will be used to create the new Amazon
    #   EC2 instance. You can only pass one instance entry at a time in this
    #   array. You will get an invalid parameter error if you pass more than
    #   one instance entry in this array.
    #   @return [Array<Types::InstanceEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateCloudFormationStackRequest AWS API Documentation
    #
    class CreateCloudFormationStackRequest < Struct.new(
      :instances)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateCloudFormationStackResult AWS API Documentation
    #
    class CreateCloudFormationStackResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protocol
    #   The protocol of the contact method, such as `Email` or `SMS` (text
    #   messaging).
    #
    #   The `SMS` protocol is supported only in the following Amazon Web
    #   Services Regions.
    #
    #   * US East (N. Virginia) (`us-east-1`)
    #
    #   * US West (Oregon) (`us-west-2`)
    #
    #   * Europe (Ireland) (`eu-west-1`)
    #
    #   * Asia Pacific (Tokyo) (`ap-northeast-1`)
    #
    #   * Asia Pacific (Singapore) (`ap-southeast-1`)
    #
    #   * Asia Pacific (Sydney) (`ap-southeast-2`)
    #
    #   For a list of countries/regions where SMS text messages can be sent,
    #   and the latest Amazon Web Services Regions where SMS text messaging
    #   is supported, see [Supported Regions and Countries][1] in the
    #   *Amazon SNS Developer Guide*.
    #
    #   For more information about notifications in Amazon Lightsail, see
    #   [Notifications in Amazon Lightsail][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sns/latest/dg/sns-supported-regions-countries.html
    #   [2]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-notifications
    #   @return [String]
    #
    # @!attribute [rw] contact_endpoint
    #   The destination of the contact method, such as an email address or a
    #   mobile phone number.
    #
    #   Use the E.164 format when specifying a mobile phone number. E.164 is
    #   a standard for the phone number structure used for international
    #   telecommunication. Phone numbers that follow this format can have a
    #   maximum of 15 digits, and they are prefixed with the plus character
    #   (+) and the country code. For example, a U.S. phone number in E.164
    #   format would be specified as +1XXX5550100. For more information, see
    #   [E.164][1] on *Wikipedia*.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/E.164
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateContactMethodRequest AWS API Documentation
    #
    class CreateContactMethodRequest < Struct.new(
      :protocol,
      :contact_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateContactMethodResult AWS API Documentation
    #
    class CreateContactMethodResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_name
    #   The name of the container service for which to create the
    #   deployment.
    #   @return [String]
    #
    # @!attribute [rw] containers
    #   An object that describes the settings of the containers that will be
    #   launched on the container service.
    #   @return [Hash<String,Types::Container>]
    #
    # @!attribute [rw] public_endpoint
    #   An object that describes the settings of the public endpoint for the
    #   container service.
    #   @return [Types::EndpointRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateContainerServiceDeploymentRequest AWS API Documentation
    #
    class CreateContainerServiceDeploymentRequest < Struct.new(
      :service_name,
      :containers,
      :public_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] container_service
    #   An object that describes a container service.
    #   @return [Types::ContainerService]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateContainerServiceDeploymentResult AWS API Documentation
    #
    class CreateContainerServiceDeploymentResult < Struct.new(
      :container_service)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateContainerServiceRegistryLoginRequest AWS API Documentation
    #
    class CreateContainerServiceRegistryLoginRequest < Aws::EmptyStructure; end

    # @!attribute [rw] registry_login
    #   An object that describes the log in information for the container
    #   service registry of your Lightsail account.
    #   @return [Types::ContainerServiceRegistryLogin]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateContainerServiceRegistryLoginResult AWS API Documentation
    #
    class CreateContainerServiceRegistryLoginResult < Struct.new(
      :registry_login)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_name
    #   The name for the container service.
    #
    #   The name that you specify for your container service will make up
    #   part of its default domain. The default domain of a container
    #   service is typically
    #   `https://<ServiceName>.<RandomGUID>.<AWSRegion>.cs.amazonlightsail.com`.
    #   If the name of your container service is `container-service-1`, and
    #   it's located in the US East (Ohio) Amazon Web Services Region
    #   (`us-east-2`), then the domain for your container service will be
    #   like the following example:
    #   `https://container-service-1.ur4EXAMPLE2uq.us-east-2.cs.amazonlightsail.com`
    #
    #   The following are the requirements for container service names:
    #
    #   * Must be unique within each Amazon Web Services Region in your
    #     Lightsail account.
    #
    #   * Must contain 1 to 63 characters.
    #
    #   * Must contain only alphanumeric characters and hyphens.
    #
    #   * A hyphen (-) can separate words but cannot be at the start or end
    #     of the name.
    #   @return [String]
    #
    # @!attribute [rw] power
    #   The power specification for the container service.
    #
    #   The power specifies the amount of memory, vCPUs, and base monthly
    #   cost of each node of the container service. The `power` and `scale`
    #   of a container service makes up its configured capacity. To
    #   determine the monthly price of your container service, multiply the
    #   base price of the `power` with the `scale` (the number of nodes) of
    #   the service.
    #
    #   Use the `GetContainerServicePowers` action to get a list of power
    #   options that you can specify using this parameter, and their base
    #   monthly cost.
    #   @return [String]
    #
    # @!attribute [rw] scale
    #   The scale specification for the container service.
    #
    #   The scale specifies the allocated compute nodes of the container
    #   service. The `power` and `scale` of a container service makes up its
    #   configured capacity. To determine the monthly price of your
    #   container service, multiply the base price of the `power` with the
    #   `scale` (the number of nodes) of the service.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the container service
    #   during create.
    #
    #   Use the `TagResource` action to tag a resource after it's created.
    #
    #   For more information about tags in Lightsail, see the [Amazon
    #   Lightsail Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] public_domain_names
    #   The public domain names to use with the container service, such as
    #   `example.com` and `www.example.com`.
    #
    #   You can specify up to four public domain names for a container
    #   service. The domain names that you specify are used when you create
    #   a deployment with a container configured as the public endpoint of
    #   your container service.
    #
    #   If you don't specify public domain names, then you can use the
    #   default domain of the container service.
    #
    #   You must create and validate an SSL/TLS certificate before you can
    #   use public domain names with your container service. Use the
    #   `CreateCertificate` action to create a certificate for the public
    #   domain names you want to use with your container service.
    #
    #   You can specify public domain names using a string to array map as
    #   shown in the example later on this page.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] deployment
    #   An object that describes a deployment for the container service.
    #
    #   A deployment specifies the containers that will be launched on the
    #   container service and their settings, such as the ports to open, the
    #   environment variables to apply, and the launch command to run. It
    #   also specifies the container that will serve as the public endpoint
    #   of the deployment and its settings, such as the HTTP or HTTPS port
    #   to use, and the health check configuration.
    #   @return [Types::ContainerServiceDeploymentRequest]
    #
    # @!attribute [rw] private_registry_access
    #   An object to describe the configuration for the container service to
    #   access private container image repositories, such as Amazon Elastic
    #   Container Registry (Amazon ECR) private repositories.
    #
    #   For more information, see [Configuring access to an Amazon ECR
    #   private repository for an Amazon Lightsail container service][1] in
    #   the *Amazon Lightsail Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-container-service-ecr-private-repo-access
    #   @return [Types::PrivateRegistryAccessRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateContainerServiceRequest AWS API Documentation
    #
    class CreateContainerServiceRequest < Struct.new(
      :service_name,
      :power,
      :scale,
      :tags,
      :public_domain_names,
      :deployment,
      :private_registry_access)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] container_service
    #   An object that describes a container service.
    #   @return [Types::ContainerService]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateContainerServiceResult AWS API Documentation
    #
    class CreateContainerServiceResult < Struct.new(
      :container_service)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] disk_name
    #   The unique Lightsail disk name (`my-disk`).
    #   @return [String]
    #
    # @!attribute [rw] disk_snapshot_name
    #   The name of the disk snapshot (`my-snapshot`) from which to create
    #   the new storage disk.
    #
    #   Constraint:
    #
    #   * This parameter cannot be defined together with the `source disk
    #     name` parameter. The `disk snapshot name` and `source disk name`
    #     parameters are mutually exclusive.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone where you want to create the disk
    #   (`us-east-2a`). Choose the same Availability Zone as the Lightsail
    #   instance where you want to create the disk.
    #
    #   Use the GetRegions operation to list the Availability Zones where
    #   Lightsail is currently available.
    #   @return [String]
    #
    # @!attribute [rw] size_in_gb
    #   The size of the disk in GB (`32`).
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the resource during
    #   create.
    #
    #   Use the `TagResource` action to tag a resource after it's created.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] add_ons
    #   An array of objects that represent the add-ons to enable for the new
    #   disk.
    #   @return [Array<Types::AddOnRequest>]
    #
    # @!attribute [rw] source_disk_name
    #   The name of the source disk from which the source automatic snapshot
    #   was created.
    #
    #   Constraints:
    #
    #   * This parameter cannot be defined together with the `disk snapshot
    #     name` parameter. The `source disk name` and `disk snapshot name`
    #     parameters are mutually exclusive.
    #
    #   * Define this parameter only when creating a new disk from an
    #     automatic snapshot. For more information, see the [Amazon
    #     Lightsail Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots
    #   @return [String]
    #
    # @!attribute [rw] restore_date
    #   The date of the automatic snapshot to use for the new disk. Use the
    #   `get auto snapshots` operation to identify the dates of the
    #   available automatic snapshots.
    #
    #   Constraints:
    #
    #   * Must be specified in `YYYY-MM-DD` format.
    #
    #   * This parameter cannot be defined together with the `use latest
    #     restorable auto snapshot` parameter. The `restore date` and `use
    #     latest restorable auto snapshot` parameters are mutually
    #     exclusive.
    #
    #   * Define this parameter only when creating a new disk from an
    #     automatic snapshot. For more information, see the [Amazon
    #     Lightsail Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots
    #   @return [String]
    #
    # @!attribute [rw] use_latest_restorable_auto_snapshot
    #   A Boolean value to indicate whether to use the latest available
    #   automatic snapshot.
    #
    #   Constraints:
    #
    #   * This parameter cannot be defined together with the `restore date`
    #     parameter. The `use latest restorable auto snapshot` and `restore
    #     date` parameters are mutually exclusive.
    #
    #   * Define this parameter only when creating a new disk from an
    #     automatic snapshot. For more information, see the [Amazon
    #     Lightsail Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDiskFromSnapshotRequest AWS API Documentation
    #
    class CreateDiskFromSnapshotRequest < Struct.new(
      :disk_name,
      :disk_snapshot_name,
      :availability_zone,
      :size_in_gb,
      :tags,
      :add_ons,
      :source_disk_name,
      :restore_date,
      :use_latest_restorable_auto_snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDiskFromSnapshotResult AWS API Documentation
    #
    class CreateDiskFromSnapshotResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] disk_name
    #   The unique Lightsail disk name (`my-disk`).
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone where you want to create the disk
    #   (`us-east-2a`). Use the same Availability Zone as the Lightsail
    #   instance to which you want to attach the disk.
    #
    #   Use the `get regions` operation to list the Availability Zones where
    #   Lightsail is currently available.
    #   @return [String]
    #
    # @!attribute [rw] size_in_gb
    #   The size of the disk in GB (`32`).
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the resource during
    #   create.
    #
    #   Use the `TagResource` action to tag a resource after it's created.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] add_ons
    #   An array of objects that represent the add-ons to enable for the new
    #   disk.
    #   @return [Array<Types::AddOnRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDiskRequest AWS API Documentation
    #
    class CreateDiskRequest < Struct.new(
      :disk_name,
      :availability_zone,
      :size_in_gb,
      :tags,
      :add_ons)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDiskResult AWS API Documentation
    #
    class CreateDiskResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] disk_name
    #   The unique name of the source disk (`Disk-Virginia-1`).
    #
    #   <note markdown="1"> This parameter cannot be defined together with the `instance name`
    #   parameter. The `disk name` and `instance name` parameters are
    #   mutually exclusive.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] disk_snapshot_name
    #   The name of the destination disk snapshot (`my-disk-snapshot`) based
    #   on the source disk.
    #   @return [String]
    #
    # @!attribute [rw] instance_name
    #   The unique name of the source instance
    #   (`Amazon_Linux-512MB-Virginia-1`). When this is defined, a snapshot
    #   of the instance's system volume is created.
    #
    #   <note markdown="1"> This parameter cannot be defined together with the `disk name`
    #   parameter. The `instance name` and `disk name` parameters are
    #   mutually exclusive.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the resource during
    #   create.
    #
    #   Use the `TagResource` action to tag a resource after it's created.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDiskSnapshotRequest AWS API Documentation
    #
    class CreateDiskSnapshotRequest < Struct.new(
      :disk_name,
      :disk_snapshot_name,
      :instance_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDiskSnapshotResult AWS API Documentation
    #
    class CreateDiskSnapshotResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] distribution_name
    #   The name for the distribution.
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   An object that describes the origin resource for the distribution,
    #   such as a Lightsail instance, bucket, or load balancer.
    #
    #   The distribution pulls, caches, and serves content from the origin.
    #   @return [Types::InputOrigin]
    #
    # @!attribute [rw] default_cache_behavior
    #   An object that describes the default cache behavior for the
    #   distribution.
    #   @return [Types::CacheBehavior]
    #
    # @!attribute [rw] cache_behavior_settings
    #   An object that describes the cache behavior settings for the
    #   distribution.
    #   @return [Types::CacheSettings]
    #
    # @!attribute [rw] cache_behaviors
    #   An array of objects that describe the per-path cache behavior for
    #   the distribution.
    #   @return [Array<Types::CacheBehaviorPerPath>]
    #
    # @!attribute [rw] bundle_id
    #   The bundle ID to use for the distribution.
    #
    #   A distribution bundle describes the specifications of your
    #   distribution, such as the monthly cost and monthly network transfer
    #   quota.
    #
    #   Use the `GetDistributionBundles` action to get a list of
    #   distribution bundle IDs that you can specify.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type for the distribution.
    #
    #   The possible values are `ipv4` for IPv4 only, and `dualstack` for
    #   IPv4 and IPv6.
    #
    #   The default value is `dualstack`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the distribution during
    #   create.
    #
    #   Use the `TagResource` action to tag a resource after it's created.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] certificate_name
    #   The name of the SSL/TLS certificate that you want to attach to the
    #   distribution.
    #
    #   Use the [GetCertificates][1] action to get a list of certificate
    #   names that you can specify.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetCertificates.html
    #   @return [String]
    #
    # @!attribute [rw] viewer_minimum_tls_protocol_version
    #   The minimum TLS protocol version for the SSL/TLS certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDistributionRequest AWS API Documentation
    #
    class CreateDistributionRequest < Struct.new(
      :distribution_name,
      :origin,
      :default_cache_behavior,
      :cache_behavior_settings,
      :cache_behaviors,
      :bundle_id,
      :ip_address_type,
      :tags,
      :certificate_name,
      :viewer_minimum_tls_protocol_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] distribution
    #   An object that describes the distribution created.
    #   @return [Types::LightsailDistribution]
    #
    # @!attribute [rw] operation
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDistributionResult AWS API Documentation
    #
    class CreateDistributionResult < Struct.new(
      :distribution,
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The domain name (`example.com`) for which you want to create the
    #   domain entry.
    #   @return [String]
    #
    # @!attribute [rw] domain_entry
    #   An array of key-value pairs containing information about the domain
    #   entry request.
    #   @return [Types::DomainEntry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDomainEntryRequest AWS API Documentation
    #
    class CreateDomainEntryRequest < Struct.new(
      :domain_name,
      :domain_entry)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDomainEntryResult AWS API Documentation
    #
    class CreateDomainEntryResult < Struct.new(
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The domain name to manage (`example.com`).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the resource during
    #   create.
    #
    #   Use the `TagResource` action to tag a resource after it's created.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDomainRequest AWS API Documentation
    #
    class CreateDomainRequest < Struct.new(
      :domain_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDomainResult AWS API Documentation
    #
    class CreateDomainResult < Struct.new(
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_name
    #   The resource name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateGUISessionAccessDetailsRequest AWS API Documentation
    #
    class CreateGUISessionAccessDetailsRequest < Struct.new(
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_name
    #   The resource name.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the operation.
    #   @return [String]
    #
    # @!attribute [rw] percentage_complete
    #   The percentage of completion for the operation.
    #   @return [Integer]
    #
    # @!attribute [rw] failure_reason
    #   The reason the operation failed.
    #   @return [String]
    #
    # @!attribute [rw] sessions
    #   Returns information about the specified Amazon DCV GUI session.
    #   @return [Array<Types::Session>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateGUISessionAccessDetailsResult AWS API Documentation
    #
    class CreateGUISessionAccessDetailsResult < Struct.new(
      :resource_name,
      :status,
      :percentage_complete,
      :failure_reason,
      :sessions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_snapshot_name
    #   The name for your new snapshot.
    #   @return [String]
    #
    # @!attribute [rw] instance_name
    #   The Lightsail instance on which to base your snapshot.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the resource during
    #   create.
    #
    #   Use the `TagResource` action to tag a resource after it's created.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateInstanceSnapshotRequest AWS API Documentation
    #
    class CreateInstanceSnapshotRequest < Struct.new(
      :instance_snapshot_name,
      :instance_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateInstanceSnapshotResult AWS API Documentation
    #
    class CreateInstanceSnapshotResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_names
    #   The names for your new instances.
    #   @return [Array<String>]
    #
    # @!attribute [rw] attached_disk_mapping
    #   An object containing information about one or more disk mappings.
    #   @return [Hash<String,Array<Types::DiskMap>>]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone where you want to create your instances. Use
    #   the following formatting: `us-east-2a` (case sensitive). You can get
    #   a list of Availability Zones by using the [get regions][1]
    #   operation. Be sure to add the `include Availability Zones` parameter
    #   to your request.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html
    #   @return [String]
    #
    # @!attribute [rw] instance_snapshot_name
    #   The name of the instance snapshot on which you are basing your new
    #   instances. Use the get instance snapshots operation to return
    #   information about your existing snapshots.
    #
    #   Constraint:
    #
    #   * This parameter cannot be defined together with the `source
    #     instance name` parameter. The `instance snapshot name` and `source
    #     instance name` parameters are mutually exclusive.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] bundle_id
    #   The bundle of specification information for your virtual private
    #   server (or *instance*), including the pricing plan (`micro_x_x`).
    #   @return [String]
    #
    # @!attribute [rw] user_data
    #   You can create a launch script that configures a server with
    #   additional user data. For example, `apt-get -y update`.
    #
    #   <note markdown="1"> Depending on the machine image you choose, the command to get
    #   software on your instance varies. Amazon Linux and CentOS use `yum`,
    #   Debian and Ubuntu use `apt-get`, and FreeBSD uses `pkg`. For a
    #   complete list, see the [Amazon Lightsail Developer Guide][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/compare-options-choose-lightsail-instance-image
    #   @return [String]
    #
    # @!attribute [rw] key_pair_name
    #   The name for your key pair.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the resource during
    #   create.
    #
    #   Use the `TagResource` action to tag a resource after it's created.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] add_ons
    #   An array of objects representing the add-ons to enable for the new
    #   instance.
    #   @return [Array<Types::AddOnRequest>]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type for the instance.
    #
    #   The possible values are `ipv4` for IPv4 only, `ipv6` for IPv6 only,
    #   and `dualstack` for IPv4 and IPv6.
    #
    #   The default value is `dualstack`.
    #   @return [String]
    #
    # @!attribute [rw] source_instance_name
    #   The name of the source instance from which the source automatic
    #   snapshot was created.
    #
    #   Constraints:
    #
    #   * This parameter cannot be defined together with the `instance
    #     snapshot name` parameter. The `source instance name` and `instance
    #     snapshot name` parameters are mutually exclusive.
    #
    #   * Define this parameter only when creating a new instance from an
    #     automatic snapshot. For more information, see the [Amazon
    #     Lightsail Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots
    #   @return [String]
    #
    # @!attribute [rw] restore_date
    #   The date of the automatic snapshot to use for the new instance. Use
    #   the `get auto snapshots` operation to identify the dates of the
    #   available automatic snapshots.
    #
    #   Constraints:
    #
    #   * Must be specified in `YYYY-MM-DD` format.
    #
    #   * This parameter cannot be defined together with the `use latest
    #     restorable auto snapshot` parameter. The `restore date` and `use
    #     latest restorable auto snapshot` parameters are mutually
    #     exclusive.
    #
    #   * Define this parameter only when creating a new instance from an
    #     automatic snapshot. For more information, see the [Amazon
    #     Lightsail Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots
    #   @return [String]
    #
    # @!attribute [rw] use_latest_restorable_auto_snapshot
    #   A Boolean value to indicate whether to use the latest available
    #   automatic snapshot.
    #
    #   Constraints:
    #
    #   * This parameter cannot be defined together with the `restore date`
    #     parameter. The `use latest restorable auto snapshot` and `restore
    #     date` parameters are mutually exclusive.
    #
    #   * Define this parameter only when creating a new instance from an
    #     automatic snapshot. For more information, see the [Amazon
    #     Lightsail Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateInstancesFromSnapshotRequest AWS API Documentation
    #
    class CreateInstancesFromSnapshotRequest < Struct.new(
      :instance_names,
      :attached_disk_mapping,
      :availability_zone,
      :instance_snapshot_name,
      :bundle_id,
      :user_data,
      :key_pair_name,
      :tags,
      :add_ons,
      :ip_address_type,
      :source_instance_name,
      :restore_date,
      :use_latest_restorable_auto_snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateInstancesFromSnapshotResult AWS API Documentation
    #
    class CreateInstancesFromSnapshotResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_names
    #   The names to use for your new Lightsail instances. Separate multiple
    #   values using quotation marks and commas, for example:
    #   `["MyFirstInstance","MySecondInstance"]`
    #   @return [Array<String>]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone in which to create your instance. Use the
    #   following format: `us-east-2a` (case sensitive). You can get a list
    #   of Availability Zones by using the [get regions][1] operation. Be
    #   sure to add the `include Availability Zones` parameter to your
    #   request.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html
    #   @return [String]
    #
    # @!attribute [rw] custom_image_name
    #   (Discontinued) The name for your custom image.
    #
    #   <note markdown="1"> In releases prior to June 12, 2017, this parameter was ignored by
    #   the API. It is now discontinued.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] blueprint_id
    #   The ID for a virtual private server image (`app_wordpress_x_x` or
    #   `app_lamp_x_x`). Use the `get blueprints` operation to return a list
    #   of available images (or *blueprints*).
    #
    #   <note markdown="1"> Use active blueprints when creating new instances. Inactive
    #   blueprints are listed to support customers with existing instances
    #   and are not necessarily available to create new instances.
    #   Blueprints are marked inactive when they become outdated due to
    #   operating system updates or new application releases.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] bundle_id
    #   The bundle of specification information for your virtual private
    #   server (or *instance*), including the pricing plan (`medium_x_x`).
    #   @return [String]
    #
    # @!attribute [rw] user_data
    #   A launch script you can create that configures a server with
    #   additional user data. For example, you might want to run `apt-get -y
    #   update`.
    #
    #   <note markdown="1"> Depending on the machine image you choose, the command to get
    #   software on your instance varies. Amazon Linux and CentOS use `yum`,
    #   Debian and Ubuntu use `apt-get`, and FreeBSD uses `pkg`. For a
    #   complete list, see the [Amazon Lightsail Developer Guide][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/compare-options-choose-lightsail-instance-image
    #   @return [String]
    #
    # @!attribute [rw] key_pair_name
    #   The name of your key pair.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the resource during
    #   create.
    #
    #   Use the `TagResource` action to tag a resource after it's created.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] add_ons
    #   An array of objects representing the add-ons to enable for the new
    #   instance.
    #   @return [Array<Types::AddOnRequest>]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type for the instance.
    #
    #   The possible values are `ipv4` for IPv4 only, `ipv6` for IPv6 only,
    #   and `dualstack` for IPv4 and IPv6.
    #
    #   The default value is `dualstack`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateInstancesRequest AWS API Documentation
    #
    class CreateInstancesRequest < Struct.new(
      :instance_names,
      :availability_zone,
      :custom_image_name,
      :blueprint_id,
      :bundle_id,
      :user_data,
      :key_pair_name,
      :tags,
      :add_ons,
      :ip_address_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateInstancesResult AWS API Documentation
    #
    class CreateInstancesResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_pair_name
    #   The name for your new key pair.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the resource during
    #   create.
    #
    #   Use the `TagResource` action to tag a resource after it's created.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateKeyPairRequest AWS API Documentation
    #
    class CreateKeyPairRequest < Struct.new(
      :key_pair_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_pair
    #   An array of key-value pairs containing information about the new key
    #   pair you just created.
    #   @return [Types::KeyPair]
    #
    # @!attribute [rw] public_key_base_64
    #   A base64-encoded public key of the `ssh-rsa` type.
    #   @return [String]
    #
    # @!attribute [rw] private_key_base_64
    #   A base64-encoded RSA private key.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateKeyPairResult AWS API Documentation
    #
    class CreateKeyPairResult < Struct.new(
      :key_pair,
      :public_key_base_64,
      :private_key_base_64,
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] load_balancer_name
    #   The name of your load balancer.
    #   @return [String]
    #
    # @!attribute [rw] instance_port
    #   The instance port where you're creating your load balancer.
    #   @return [Integer]
    #
    # @!attribute [rw] health_check_path
    #   The path you provided to perform the load balancer health check. If
    #   you didn't specify a health check path, Lightsail uses the root
    #   path of your website (`"/"`).
    #
    #   You may want to specify a custom health check path other than the
    #   root of your application if your home page loads slowly or has a lot
    #   of media or scripting on it.
    #   @return [String]
    #
    # @!attribute [rw] certificate_name
    #   The name of the SSL/TLS certificate.
    #
    #   If you specify `certificateName`, then `certificateDomainName` is
    #   required (and vice-versa).
    #   @return [String]
    #
    # @!attribute [rw] certificate_domain_name
    #   The domain name with which your certificate is associated
    #   (`example.com`).
    #
    #   If you specify `certificateDomainName`, then `certificateName` is
    #   required (and vice-versa).
    #   @return [String]
    #
    # @!attribute [rw] certificate_alternative_names
    #   The optional alternative domains and subdomains to use with your
    #   SSL/TLS certificate (`www.example.com`, `example.com`,
    #   `m.example.com`, `blog.example.com`).
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the resource during
    #   create.
    #
    #   Use the `TagResource` action to tag a resource after it's created.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type for the load balancer.
    #
    #   The possible values are `ipv4` for IPv4 only, `ipv6` for IPv6 only,
    #   and `dualstack` for IPv4 and IPv6.
    #
    #   The default value is `dualstack`.
    #   @return [String]
    #
    # @!attribute [rw] tls_policy_name
    #   The name of the TLS policy to apply to the load balancer.
    #
    #   Use the [GetLoadBalancerTlsPolicies][1] action to get a list of TLS
    #   policy names that you can specify.
    #
    #   For more information about load balancer TLS policies, see
    #   [Configuring TLS security policies on your Amazon Lightsail load
    #   balancers][2] in the *Amazon Lightsail Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetLoadBalancerTlsPolicies.html
    #   [2]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configure-load-balancer-tls-security-policy
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateLoadBalancerRequest AWS API Documentation
    #
    class CreateLoadBalancerRequest < Struct.new(
      :load_balancer_name,
      :instance_port,
      :health_check_path,
      :certificate_name,
      :certificate_domain_name,
      :certificate_alternative_names,
      :tags,
      :ip_address_type,
      :tls_policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateLoadBalancerResult AWS API Documentation
    #
    class CreateLoadBalancerResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] load_balancer_name
    #   The load balancer name where you want to create the SSL/TLS
    #   certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_name
    #   The SSL/TLS certificate name.
    #
    #   You can have up to 10 certificates in your account at one time. Each
    #   Lightsail load balancer can have up to 2 certificates associated
    #   with it at one time. There is also an overall limit to the number of
    #   certificates that can be issue in a 365-day period. For more
    #   information, see [Limits][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html
    #   @return [String]
    #
    # @!attribute [rw] certificate_domain_name
    #   The domain name (`example.com`) for your SSL/TLS certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_alternative_names
    #   An array of strings listing alternative domains and subdomains for
    #   your SSL/TLS certificate. Lightsail will de-dupe the names for you.
    #   You can have a maximum of 9 alternative names (in addition to the 1
    #   primary domain). We do not support wildcards (`*.example.com`).
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the resource during
    #   create.
    #
    #   Use the `TagResource` action to tag a resource after it's created.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateLoadBalancerTlsCertificateRequest AWS API Documentation
    #
    class CreateLoadBalancerTlsCertificateRequest < Struct.new(
      :load_balancer_name,
      :certificate_name,
      :certificate_domain_name,
      :certificate_alternative_names,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateLoadBalancerTlsCertificateResult AWS API Documentation
    #
    class CreateLoadBalancerTlsCertificateResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] relational_database_name
    #   The name to use for your new Lightsail database resource.
    #
    #   Constraints:
    #
    #   * Must contain from 2 to 255 alphanumeric characters, or hyphens.
    #
    #   * The first and last character must be a letter or number.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone in which to create your new database. Use the
    #   `us-east-2a` case-sensitive format.
    #
    #   You can get a list of Availability Zones by using the `get regions`
    #   operation. Be sure to add the `include relational database
    #   Availability Zones` parameter to your request.
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   Specifies the accessibility options for your new database. A value
    #   of `true` specifies a database that is available to resources
    #   outside of your Lightsail account. A value of `false` specifies a
    #   database that is available only to your Lightsail resources in the
    #   same region as your database.
    #   @return [Boolean]
    #
    # @!attribute [rw] relational_database_snapshot_name
    #   The name of the database snapshot from which to create your new
    #   database.
    #   @return [String]
    #
    # @!attribute [rw] relational_database_bundle_id
    #   The bundle ID for your new database. A bundle describes the
    #   performance specifications for your database.
    #
    #   You can get a list of database bundle IDs by using the `get
    #   relational database bundles` operation.
    #
    #   When creating a new database from a snapshot, you cannot choose a
    #   bundle that is smaller than the bundle of the source database.
    #   @return [String]
    #
    # @!attribute [rw] source_relational_database_name
    #   The name of the source database.
    #   @return [String]
    #
    # @!attribute [rw] restore_time
    #   The date and time to restore your database from.
    #
    #   Constraints:
    #
    #   * Must be before the latest restorable time for the database.
    #
    #   * Cannot be specified if the `use latest restorable time` parameter
    #     is `true`.
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Specified in the Unix time format.
    #
    #     For example, if you wish to use a restore time of October 1, 2018,
    #     at 8 PM UTC, then you input `1538424000` as the restore time.
    #   @return [Time]
    #
    # @!attribute [rw] use_latest_restorable_time
    #   Specifies whether your database is restored from the latest backup
    #   time. A value of `true` restores from the latest backup time.
    #
    #   Default: `false`
    #
    #   Constraints: Cannot be specified if the `restore time` parameter is
    #   provided.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the resource during
    #   create.
    #
    #   Use the `TagResource` action to tag a resource after it's created.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateRelationalDatabaseFromSnapshotRequest AWS API Documentation
    #
    class CreateRelationalDatabaseFromSnapshotRequest < Struct.new(
      :relational_database_name,
      :availability_zone,
      :publicly_accessible,
      :relational_database_snapshot_name,
      :relational_database_bundle_id,
      :source_relational_database_name,
      :restore_time,
      :use_latest_restorable_time,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateRelationalDatabaseFromSnapshotResult AWS API Documentation
    #
    class CreateRelationalDatabaseFromSnapshotResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] relational_database_name
    #   The name to use for your new Lightsail database resource.
    #
    #   Constraints:
    #
    #   * Must contain from 2 to 255 alphanumeric characters, or hyphens.
    #
    #   * The first and last character must be a letter or number.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone in which to create your new database. Use the
    #   `us-east-2a` case-sensitive format.
    #
    #   You can get a list of Availability Zones by using the `get regions`
    #   operation. Be sure to add the `include relational database
    #   Availability Zones` parameter to your request.
    #   @return [String]
    #
    # @!attribute [rw] relational_database_blueprint_id
    #   The blueprint ID for your new database. A blueprint describes the
    #   major engine version of a database.
    #
    #   You can get a list of database blueprints IDs by using the `get
    #   relational database blueprints` operation.
    #   @return [String]
    #
    # @!attribute [rw] relational_database_bundle_id
    #   The bundle ID for your new database. A bundle describes the
    #   performance specifications for your database.
    #
    #   You can get a list of database bundle IDs by using the `get
    #   relational database bundles` operation.
    #   @return [String]
    #
    # @!attribute [rw] master_database_name
    #   The meaning of this parameter differs according to the database
    #   engine you use.
    #
    #   **MySQL**
    #
    #   The name of the database to create when the Lightsail database
    #   resource is created. If this parameter isn't specified, no database
    #   is created in the database resource.
    #
    #   Constraints:
    #
    #   * Must contain 1 to 64 letters or numbers.
    #
    #   * Must begin with a letter. Subsequent characters can be letters,
    #     underscores, or digits (0- 9).
    #
    #   * Can't be a word reserved by the specified database engine.
    #
    #     For more information about reserved words in MySQL, see the
    #     Keywords and Reserved Words articles for [MySQL 5.6][1], [MySQL
    #     5.7][2], and [MySQL 8.0][3].
    #
    #   **PostgreSQL**
    #
    #   The name of the database to create when the Lightsail database
    #   resource is created. If this parameter isn't specified, a database
    #   named `postgres` is created in the database resource.
    #
    #   Constraints:
    #
    #   * Must contain 1 to 63 letters or numbers.
    #
    #   * Must begin with a letter. Subsequent characters can be letters,
    #     underscores, or digits (0- 9).
    #
    #   * Can't be a word reserved by the specified database engine.
    #
    #     For more information about reserved words in PostgreSQL, see the
    #     SQL Key Words articles for [PostgreSQL 9.6][4], [PostgreSQL
    #     10][5], [PostgreSQL 11][6], and [PostgreSQL 12][7].
    #
    #
    #
    #   [1]: https://dev.mysql.com/doc/refman/5.6/en/keywords.html
    #   [2]: https://dev.mysql.com/doc/refman/5.7/en/keywords.html
    #   [3]: https://dev.mysql.com/doc/refman/8.0/en/keywords.html
    #   [4]: https://www.postgresql.org/docs/9.6/sql-keywords-appendix.html
    #   [5]: https://www.postgresql.org/docs/10/sql-keywords-appendix.html
    #   [6]: https://www.postgresql.org/docs/11/sql-keywords-appendix.html
    #   [7]: https://www.postgresql.org/docs/12/sql-keywords-appendix.html
    #   @return [String]
    #
    # @!attribute [rw] master_username
    #   The name for the master user.
    #
    #   **MySQL**
    #
    #   Constraints:
    #
    #   * Required for MySQL.
    #
    #   * Must be 1 to 16 letters or numbers. Can contain underscores.
    #
    #   * First character must be a letter.
    #
    #   * Can't be a reserved word for the chosen database engine.
    #
    #     For more information about reserved words in MySQL 5.6 or 5.7, see
    #     the Keywords and Reserved Words articles for [MySQL 5.6][1],
    #     [MySQL 5.7][2], or [MySQL 8.0][3].
    #
    #   **PostgreSQL**
    #
    #   Constraints:
    #
    #   * Required for PostgreSQL.
    #
    #   * Must be 1 to 63 letters or numbers. Can contain underscores.
    #
    #   * First character must be a letter.
    #
    #   * Can't be a reserved word for the chosen database engine.
    #
    #     For more information about reserved words in MySQL 5.6 or 5.7, see
    #     the Keywords and Reserved Words articles for [PostgreSQL 9.6][4],
    #     [PostgreSQL 10][5], [PostgreSQL 11][6], and [PostgreSQL 12][7].
    #
    #
    #
    #   [1]: https://dev.mysql.com/doc/refman/5.6/en/keywords.html
    #   [2]: https://dev.mysql.com/doc/refman/5.7/en/keywords.html
    #   [3]: https://dev.mysql.com/doc/refman/8.0/en/keywords.html
    #   [4]: https://www.postgresql.org/docs/9.6/sql-keywords-appendix.html
    #   [5]: https://www.postgresql.org/docs/10/sql-keywords-appendix.html
    #   [6]: https://www.postgresql.org/docs/11/sql-keywords-appendix.html
    #   [7]: https://www.postgresql.org/docs/12/sql-keywords-appendix.html
    #   @return [String]
    #
    # @!attribute [rw] master_user_password
    #   The password for the master user. The password can include any
    #   printable ASCII character except "/", """, or "@". It cannot
    #   contain spaces.
    #
    #   **MySQL**
    #
    #   Constraints: Must contain from 8 to 41 characters.
    #
    #   **PostgreSQL**
    #
    #   Constraints: Must contain from 8 to 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] preferred_backup_window
    #   The daily time range during which automated backups are created for
    #   your new database if automated backups are enabled.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region. For more information about the
    #   preferred backup window time blocks for each region, see the
    #   [Working With Backups][1] guide in the Amazon Relational Database
    #   Service documentation.
    #
    #   Constraints:
    #
    #   * Must be in the `hh24:mi-hh24:mi` format.
    #
    #     Example: `16:00-16:30`
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Must not conflict with the preferred maintenance window.
    #
    #   * Must be at least 30 minutes.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur on
    #   your new database.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region, occurring on a random day of the
    #   week.
    #
    #   Constraints:
    #
    #   * Must be in the `ddd:hh24:mi-ddd:hh24:mi` format.
    #
    #   * Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
    #
    #   * Must be at least 30 minutes.
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Example: `Tue:17:00-Tue:17:30`
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   Specifies the accessibility options for your new database. A value
    #   of `true` specifies a database that is available to resources
    #   outside of your Lightsail account. A value of `false` specifies a
    #   database that is available only to your Lightsail resources in the
    #   same region as your database.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the resource during
    #   create.
    #
    #   Use the `TagResource` action to tag a resource after it's created.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateRelationalDatabaseRequest AWS API Documentation
    #
    class CreateRelationalDatabaseRequest < Struct.new(
      :relational_database_name,
      :availability_zone,
      :relational_database_blueprint_id,
      :relational_database_bundle_id,
      :master_database_name,
      :master_username,
      :master_user_password,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :publicly_accessible,
      :tags)
      SENSITIVE = [:master_user_password]
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateRelationalDatabaseResult AWS API Documentation
    #
    class CreateRelationalDatabaseResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] relational_database_name
    #   The name of the database on which to base your new snapshot.
    #   @return [String]
    #
    # @!attribute [rw] relational_database_snapshot_name
    #   The name for your new database snapshot.
    #
    #   Constraints:
    #
    #   * Must contain from 2 to 255 alphanumeric characters, or hyphens.
    #
    #   * The first and last character must be a letter or number.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the resource during
    #   create.
    #
    #   Use the `TagResource` action to tag a resource after it's created.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateRelationalDatabaseSnapshotRequest AWS API Documentation
    #
    class CreateRelationalDatabaseSnapshotRequest < Struct.new(
      :relational_database_name,
      :relational_database_snapshot_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateRelationalDatabaseSnapshotResult AWS API Documentation
    #
    class CreateRelationalDatabaseSnapshotResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alarm_name
    #   The name of the alarm to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteAlarmRequest AWS API Documentation
    #
    class DeleteAlarmRequest < Struct.new(
      :alarm_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteAlarmResult AWS API Documentation
    #
    class DeleteAlarmResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_name
    #   The name of the source instance or disk from which to delete the
    #   automatic snapshot.
    #   @return [String]
    #
    # @!attribute [rw] date
    #   The date of the automatic snapshot to delete in `YYYY-MM-DD` format.
    #   Use the `get auto snapshots` operation to get the available
    #   automatic snapshots for a resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteAutoSnapshotRequest AWS API Documentation
    #
    class DeleteAutoSnapshotRequest < Struct.new(
      :resource_name,
      :date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteAutoSnapshotResult AWS API Documentation
    #
    class DeleteAutoSnapshotResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bucket_name
    #   The name of the bucket that the access key belongs to.
    #   @return [String]
    #
    # @!attribute [rw] access_key_id
    #   The ID of the access key to delete.
    #
    #   Use the [GetBucketAccessKeys][1] action to get a list of access key
    #   IDs that you can specify.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetBucketAccessKeys.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteBucketAccessKeyRequest AWS API Documentation
    #
    class DeleteBucketAccessKeyRequest < Struct.new(
      :bucket_name,
      :access_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteBucketAccessKeyResult AWS API Documentation
    #
    class DeleteBucketAccessKeyResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bucket_name
    #   The name of the bucket to delete.
    #
    #   Use the [GetBuckets][1] action to get a list of bucket names that
    #   you can specify.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetBuckets.html
    #   @return [String]
    #
    # @!attribute [rw] force_delete
    #   A Boolean value that indicates whether to force delete the bucket.
    #
    #   You must force delete the bucket if it has one of the following
    #   conditions:
    #
    #   * The bucket is the origin of a distribution.
    #
    #   * The bucket has instances that were granted access to it using the
    #     [SetResourceAccessForBucket][1] action.
    #
    #   * The bucket has objects.
    #
    #   * The bucket has access keys.
    #
    #   Force deleting a bucket might impact other resources that rely on
    #   the bucket, such as instances, distributions, or software that use
    #   the issued access keys.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_SetResourceAccessForBucket.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteBucketRequest AWS API Documentation
    #
    class DeleteBucketRequest < Struct.new(
      :bucket_name,
      :force_delete)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteBucketResult AWS API Documentation
    #
    class DeleteBucketResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_name
    #   The name of the certificate to delete.
    #
    #   Use the `GetCertificates` action to get a list of certificate names
    #   that you can specify.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteCertificateRequest AWS API Documentation
    #
    class DeleteCertificateRequest < Struct.new(
      :certificate_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteCertificateResult AWS API Documentation
    #
    class DeleteCertificateResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protocol
    #   The protocol that will be deleted, such as `Email` or `SMS` (text
    #   messaging).
    #
    #   <note markdown="1"> To delete an `Email` and an `SMS` contact method if you added both,
    #   you must run separate `DeleteContactMethod` actions to delete each
    #   protocol.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteContactMethodRequest AWS API Documentation
    #
    class DeleteContactMethodRequest < Struct.new(
      :protocol)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteContactMethodResult AWS API Documentation
    #
    class DeleteContactMethodResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_name
    #   The name of the container service for which to delete a registered
    #   container image.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The name of the container image to delete from the container
    #   service.
    #
    #   Use the `GetContainerImages` action to get the name of the container
    #   images that are registered to a container service.
    #
    #   <note markdown="1"> Container images sourced from your Lightsail container service, that
    #   are registered and stored on your service, start with a colon (`:`).
    #   For example, `:container-service-1.mystaticwebsite.1`. Container
    #   images sourced from a public registry like Docker Hub don't start
    #   with a colon. For example, `nginx:latest` or `nginx`.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteContainerImageRequest AWS API Documentation
    #
    class DeleteContainerImageRequest < Struct.new(
      :service_name,
      :image)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteContainerImageResult AWS API Documentation
    #
    class DeleteContainerImageResult < Aws::EmptyStructure; end

    # @!attribute [rw] service_name
    #   The name of the container service to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteContainerServiceRequest AWS API Documentation
    #
    class DeleteContainerServiceRequest < Struct.new(
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteContainerServiceResult AWS API Documentation
    #
    class DeleteContainerServiceResult < Aws::EmptyStructure; end

    # @!attribute [rw] disk_name
    #   The unique name of the disk you want to delete (`my-disk`).
    #   @return [String]
    #
    # @!attribute [rw] force_delete_add_ons
    #   A Boolean value to indicate whether to delete all add-ons for the
    #   disk.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDiskRequest AWS API Documentation
    #
    class DeleteDiskRequest < Struct.new(
      :disk_name,
      :force_delete_add_ons)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDiskResult AWS API Documentation
    #
    class DeleteDiskResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] disk_snapshot_name
    #   The name of the disk snapshot you want to delete
    #   (`my-disk-snapshot`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDiskSnapshotRequest AWS API Documentation
    #
    class DeleteDiskSnapshotRequest < Struct.new(
      :disk_snapshot_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDiskSnapshotResult AWS API Documentation
    #
    class DeleteDiskSnapshotResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] distribution_name
    #   The name of the distribution to delete.
    #
    #   Use the `GetDistributions` action to get a list of distribution
    #   names that you can specify.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDistributionRequest AWS API Documentation
    #
    class DeleteDistributionRequest < Struct.new(
      :distribution_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An object that describes the result of the action, such as the
    #   status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDistributionResult AWS API Documentation
    #
    class DeleteDistributionResult < Struct.new(
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The name of the domain entry to delete.
    #   @return [String]
    #
    # @!attribute [rw] domain_entry
    #   An array of key-value pairs containing information about your domain
    #   entries.
    #   @return [Types::DomainEntry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDomainEntryRequest AWS API Documentation
    #
    class DeleteDomainEntryRequest < Struct.new(
      :domain_name,
      :domain_entry)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDomainEntryResult AWS API Documentation
    #
    class DeleteDomainEntryResult < Struct.new(
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The specific domain name to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDomainRequest AWS API Documentation
    #
    class DeleteDomainRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDomainResult AWS API Documentation
    #
    class DeleteDomainResult < Struct.new(
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_name
    #   The name of the instance to delete.
    #   @return [String]
    #
    # @!attribute [rw] force_delete_add_ons
    #   A Boolean value to indicate whether to delete all add-ons for the
    #   instance.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteInstanceRequest AWS API Documentation
    #
    class DeleteInstanceRequest < Struct.new(
      :instance_name,
      :force_delete_add_ons)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteInstanceResult AWS API Documentation
    #
    class DeleteInstanceResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_snapshot_name
    #   The name of the snapshot to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteInstanceSnapshotRequest AWS API Documentation
    #
    class DeleteInstanceSnapshotRequest < Struct.new(
      :instance_snapshot_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteInstanceSnapshotResult AWS API Documentation
    #
    class DeleteInstanceSnapshotResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_pair_name
    #   The name of the key pair to delete.
    #   @return [String]
    #
    # @!attribute [rw] expected_fingerprint
    #   The RSA fingerprint of the Lightsail default key pair to delete.
    #
    #   <note markdown="1"> The `expectedFingerprint` parameter is required only when specifying
    #   to delete a Lightsail default key pair.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteKeyPairRequest AWS API Documentation
    #
    class DeleteKeyPairRequest < Struct.new(
      :key_pair_name,
      :expected_fingerprint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteKeyPairResult AWS API Documentation
    #
    class DeleteKeyPairResult < Struct.new(
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_name
    #   The name of the instance for which you want to reset the host key or
    #   certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteKnownHostKeysRequest AWS API Documentation
    #
    class DeleteKnownHostKeysRequest < Struct.new(
      :instance_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteKnownHostKeysResult AWS API Documentation
    #
    class DeleteKnownHostKeysResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] load_balancer_name
    #   The name of the load balancer you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteLoadBalancerRequest AWS API Documentation
    #
    class DeleteLoadBalancerRequest < Struct.new(
      :load_balancer_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteLoadBalancerResult AWS API Documentation
    #
    class DeleteLoadBalancerResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] load_balancer_name
    #   The load balancer name.
    #   @return [String]
    #
    # @!attribute [rw] certificate_name
    #   The SSL/TLS certificate name.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   When `true`, forces the deletion of an SSL/TLS certificate.
    #
    #   There can be two certificates associated with a Lightsail load
    #   balancer: the primary and the backup. The `force` parameter is
    #   required when the primary SSL/TLS certificate is in use by an
    #   instance attached to the load balancer.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteLoadBalancerTlsCertificateRequest AWS API Documentation
    #
    class DeleteLoadBalancerTlsCertificateRequest < Struct.new(
      :load_balancer_name,
      :certificate_name,
      :force)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteLoadBalancerTlsCertificateResult AWS API Documentation
    #
    class DeleteLoadBalancerTlsCertificateResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] relational_database_name
    #   The name of the database that you are deleting.
    #   @return [String]
    #
    # @!attribute [rw] skip_final_snapshot
    #   Determines whether a final database snapshot is created before your
    #   database is deleted. If `true` is specified, no database snapshot is
    #   created. If `false` is specified, a database snapshot is created
    #   before your database is deleted.
    #
    #   You must specify the `final relational database snapshot name`
    #   parameter if the `skip final snapshot` parameter is `false`.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] final_relational_database_snapshot_name
    #   The name of the database snapshot created if `skip final snapshot`
    #   is `false`, which is the default value for that parameter.
    #
    #   <note markdown="1"> Specifying this parameter and also specifying the `skip final
    #   snapshot` parameter to `true` results in an error.
    #
    #    </note>
    #
    #   Constraints:
    #
    #   * Must contain from 2 to 255 alphanumeric characters, or hyphens.
    #
    #   * The first and last character must be a letter or number.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteRelationalDatabaseRequest AWS API Documentation
    #
    class DeleteRelationalDatabaseRequest < Struct.new(
      :relational_database_name,
      :skip_final_snapshot,
      :final_relational_database_snapshot_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteRelationalDatabaseResult AWS API Documentation
    #
    class DeleteRelationalDatabaseResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] relational_database_snapshot_name
    #   The name of the database snapshot that you are deleting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteRelationalDatabaseSnapshotRequest AWS API Documentation
    #
    class DeleteRelationalDatabaseSnapshotRequest < Struct.new(
      :relational_database_snapshot_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteRelationalDatabaseSnapshotResult AWS API Documentation
    #
    class DeleteRelationalDatabaseSnapshotResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the destination of a record.
    #
    # @!attribute [rw] id
    #   The ID of the resource created at the destination.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The destination service of the record.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DestinationInfo AWS API Documentation
    #
    class DestinationInfo < Struct.new(
      :id,
      :service)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] distribution_name
    #   The name of the distribution from which to detach the certificate.
    #
    #   Use the `GetDistributions` action to get a list of distribution
    #   names that you can specify.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DetachCertificateFromDistributionRequest AWS API Documentation
    #
    class DetachCertificateFromDistributionRequest < Struct.new(
      :distribution_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An object that describes the result of the action, such as the
    #   status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DetachCertificateFromDistributionResult AWS API Documentation
    #
    class DetachCertificateFromDistributionResult < Struct.new(
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] disk_name
    #   The unique name of the disk you want to detach from your instance
    #   (`my-disk`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DetachDiskRequest AWS API Documentation
    #
    class DetachDiskRequest < Struct.new(
      :disk_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DetachDiskResult AWS API Documentation
    #
    class DetachDiskResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] load_balancer_name
    #   The name of the Lightsail load balancer.
    #   @return [String]
    #
    # @!attribute [rw] instance_names
    #   An array of strings containing the names of the instances you want
    #   to detach from the load balancer.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DetachInstancesFromLoadBalancerRequest AWS API Documentation
    #
    class DetachInstancesFromLoadBalancerRequest < Struct.new(
      :load_balancer_name,
      :instance_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DetachInstancesFromLoadBalancerResult AWS API Documentation
    #
    class DetachInstancesFromLoadBalancerResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] static_ip_name
    #   The name of the static IP to detach from the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DetachStaticIpRequest AWS API Documentation
    #
    class DetachStaticIpRequest < Struct.new(
      :static_ip_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DetachStaticIpResult AWS API Documentation
    #
    class DetachStaticIpResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] add_on_type
    #   The add-on type to disable.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the source resource for which to disable the add-on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DisableAddOnRequest AWS API Documentation
    #
    class DisableAddOnRequest < Struct.new(
      :add_on_type,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DisableAddOnResult AWS API Documentation
    #
    class DisableAddOnResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a block storage disk.
    #
    # @!attribute [rw] name
    #   The unique name of the disk.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the disk.
    #   @return [String]
    #
    # @!attribute [rw] support_code
    #   The support code. Include this code in your email to support when
    #   you have questions about an instance or another resource in
    #   Lightsail. This code enables our support team to look up your
    #   Lightsail information more easily.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date when the disk was created.
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   The AWS Region and Availability Zone where the disk is located.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The Lightsail resource type (`Disk`).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values for the resource. For more
    #   information about tags in Lightsail, see the [Amazon Lightsail
    #   Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] add_ons
    #   An array of objects representing the add-ons enabled on the disk.
    #   @return [Array<Types::AddOn>]
    #
    # @!attribute [rw] size_in_gb
    #   The size of the disk in GB.
    #   @return [Integer]
    #
    # @!attribute [rw] is_system_disk
    #   A Boolean value indicating whether this disk is a system disk (has
    #   an operating system loaded on it).
    #   @return [Boolean]
    #
    # @!attribute [rw] iops
    #   The input/output operations per second (IOPS) of the disk.
    #   @return [Integer]
    #
    # @!attribute [rw] path
    #   The disk path.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Describes the status of the disk.
    #   @return [String]
    #
    # @!attribute [rw] attached_to
    #   The resources to which the disk is attached.
    #   @return [String]
    #
    # @!attribute [rw] is_attached
    #   A Boolean value indicating whether the disk is attached.
    #   @return [Boolean]
    #
    # @!attribute [rw] attachment_state
    #   (Discontinued) The attachment state of the disk.
    #
    #   <note markdown="1"> In releases prior to November 14, 2017, this parameter returned
    #   `attached` for system disks in the API response. It is now
    #   discontinued, but still included in the response. Use `isAttached`
    #   instead.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] gb_in_use
    #   (Discontinued) The number of GB in use by the disk.
    #
    #   <note markdown="1"> In releases prior to November 14, 2017, this parameter was not
    #   included in the API response. It is now discontinued.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] auto_mount_status
    #   The status of automatically mounting a storage disk to a virtual
    #   computer.
    #
    #   This parameter only applies to Lightsail for Research resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Disk AWS API Documentation
    #
    class Disk < Struct.new(
      :name,
      :arn,
      :support_code,
      :created_at,
      :location,
      :resource_type,
      :tags,
      :add_ons,
      :size_in_gb,
      :is_system_disk,
      :iops,
      :path,
      :state,
      :attached_to,
      :is_attached,
      :attachment_state,
      :gb_in_use,
      :auto_mount_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a disk.
    #
    # @!attribute [rw] name
    #   The disk name.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The disk path.
    #   @return [String]
    #
    # @!attribute [rw] size_in_gb
    #   The size of the disk in GB (`32`).
    #   @return [Integer]
    #
    # @!attribute [rw] is_system_disk
    #   A Boolean value indicating whether this disk is a system disk (has
    #   an operating system loaded on it).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DiskInfo AWS API Documentation
    #
    class DiskInfo < Struct.new(
      :name,
      :path,
      :size_in_gb,
      :is_system_disk)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a block storage disk mapping.
    #
    # @!attribute [rw] original_disk_path
    #   The original disk path exposed to the instance (for example,
    #   `/dev/sdh`).
    #   @return [String]
    #
    # @!attribute [rw] new_disk_name
    #   The new disk name (`my-new-disk`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DiskMap AWS API Documentation
    #
    class DiskMap < Struct.new(
      :original_disk_path,
      :new_disk_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a block storage disk snapshot.
    #
    # @!attribute [rw] name
    #   The name of the disk snapshot (`my-disk-snapshot`).
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the disk snapshot.
    #   @return [String]
    #
    # @!attribute [rw] support_code
    #   The support code. Include this code in your email to support when
    #   you have questions about an instance or another resource in
    #   Lightsail. This code enables our support team to look up your
    #   Lightsail information more easily.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date when the disk snapshot was created.
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   The AWS Region and Availability Zone where the disk snapshot was
    #   created.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The Lightsail resource type (`DiskSnapshot`).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values for the resource. For more
    #   information about tags in Lightsail, see the [Amazon Lightsail
    #   Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] size_in_gb
    #   The size of the disk in GB.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The status of the disk snapshot operation.
    #   @return [String]
    #
    # @!attribute [rw] progress
    #   The progress of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] from_disk_name
    #   The unique name of the source disk from which the disk snapshot was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] from_disk_arn
    #   The Amazon Resource Name (ARN) of the source disk from which the
    #   disk snapshot was created.
    #   @return [String]
    #
    # @!attribute [rw] from_instance_name
    #   The unique name of the source instance from which the disk (system
    #   volume) snapshot was created.
    #   @return [String]
    #
    # @!attribute [rw] from_instance_arn
    #   The Amazon Resource Name (ARN) of the source instance from which the
    #   disk (system volume) snapshot was created.
    #   @return [String]
    #
    # @!attribute [rw] is_from_auto_snapshot
    #   A Boolean value indicating whether the snapshot was created from an
    #   automatic snapshot.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DiskSnapshot AWS API Documentation
    #
    class DiskSnapshot < Struct.new(
      :name,
      :arn,
      :support_code,
      :created_at,
      :location,
      :resource_type,
      :tags,
      :size_in_gb,
      :state,
      :progress,
      :from_disk_name,
      :from_disk_arn,
      :from_instance_name,
      :from_instance_arn,
      :is_from_auto_snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a disk snapshot.
    #
    # @!attribute [rw] size_in_gb
    #   The size of the disk in GB (`32`).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DiskSnapshotInfo AWS API Documentation
    #
    class DiskSnapshotInfo < Struct.new(
      :size_in_gb)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the specifications of a distribution bundle.
    #
    # @!attribute [rw] bundle_id
    #   The ID of the bundle.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the distribution bundle.
    #   @return [String]
    #
    # @!attribute [rw] price
    #   The monthly price, in US dollars, of the bundle.
    #   @return [Float]
    #
    # @!attribute [rw] transfer_per_month_in_gb
    #   The monthly network transfer quota of the bundle.
    #   @return [Integer]
    #
    # @!attribute [rw] is_active
    #   Indicates whether the bundle is active, and can be specified for a
    #   new or existing distribution.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DistributionBundle AWS API Documentation
    #
    class DistributionBundle < Struct.new(
      :bundle_id,
      :name,
      :price,
      :transfer_per_month_in_gb,
      :is_active)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the creation state of the canonical name (CNAME) records
    # that are automatically added by Amazon Lightsail to the DNS of a
    # domain to validate domain ownership for an SSL/TLS certificate.
    #
    # When you create an SSL/TLS certificate for a Lightsail resource, you
    # must add a set of CNAME records to the DNS of the domains for the
    # certificate to validate that you own the domains. Lightsail can
    # automatically add the CNAME records to the DNS of the domain if the
    # DNS zone for the domain exists within your Lightsail account. If
    # automatic record addition fails, or if you manage the DNS of your
    # domain using a third-party service, then you must manually add the
    # CNAME records to the DNS of your domain. For more information, see
    # [Verify an SSL/TLS certificate in Amazon Lightsail][1] in the *Amazon
    # Lightsail Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/verify-tls-ssl-certificate-using-dns-cname-https
    #
    # @!attribute [rw] code
    #   The status code for the automated DNS record creation.
    #
    #   Following are the possible values:
    #
    #   * `SUCCEEDED` - The validation records were successfully added to
    #     the domain.
    #
    #   * `STARTED` - The automatic DNS record creation has started.
    #
    #   * `FAILED` - The validation records failed to be added to the
    #     domain.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message that describes the reason for the status code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DnsRecordCreationState AWS API Documentation
    #
    class DnsRecordCreationState < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a domain where you are storing recordsets.
    #
    # @!attribute [rw] name
    #   The name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the domain recordset
    #   (`arn:aws:lightsail:global:123456789101:Domain/824cede0-abc7-4f84-8dbc-12345EXAMPLE`).
    #   @return [String]
    #
    # @!attribute [rw] support_code
    #   The support code. Include this code in your email to support when
    #   you have questions about an instance or another resource in
    #   Lightsail. This code enables our support team to look up your
    #   Lightsail information more easily.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date when the domain recordset was created.
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   The AWS Region and Availability Zones where the domain recordset was
    #   created.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values for the resource. For more
    #   information about tags in Lightsail, see the [Amazon Lightsail
    #   Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] domain_entries
    #   An array of key-value pairs containing information about the domain
    #   entries.
    #   @return [Array<Types::DomainEntry>]
    #
    # @!attribute [rw] registered_domain_delegation_info
    #   An object that describes the state of the Route 53 domain delegation
    #   to a Lightsail DNS zone.
    #   @return [Types::RegisteredDomainDelegationInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Domain AWS API Documentation
    #
    class Domain < Struct.new(
      :name,
      :arn,
      :support_code,
      :created_at,
      :location,
      :resource_type,
      :tags,
      :domain_entries,
      :registered_domain_delegation_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a domain recordset entry.
    #
    # @!attribute [rw] id
    #   The ID of the domain recordset entry.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The target IP address (`192.0.2.0`), or AWS name server
    #   (`ns-111.awsdns-22.com.`).
    #
    #   For Lightsail load balancers, the value looks like
    #   `ab1234c56789c6b86aba6fb203d443bc-123456789.us-east-2.elb.amazonaws.com`.
    #   For Lightsail distributions, the value looks like
    #   `exampled1182ne.cloudfront.net`. For Lightsail container services,
    #   the value looks like
    #   `container-service-1.example23scljs.us-west-2.cs.amazonlightsail.com`.
    #   Be sure to also set `isAlias` to `true` when setting up an A record
    #   for a Lightsail load balancer, distribution, or container service.
    #   @return [String]
    #
    # @!attribute [rw] is_alias
    #   When `true`, specifies whether the domain entry is an alias used by
    #   the Lightsail load balancer, Lightsail container service, Lightsail
    #   content delivery network (CDN) distribution, or another Amazon Web
    #   Services resource. You can include an alias (A type) record in your
    #   request, which points to the DNS name of a load balancer, container
    #   service, CDN distribution, or other Amazon Web Services resource and
    #   routes traffic to that resource.
    #   @return [Boolean]
    #
    # @!attribute [rw] type
    #   The type of domain entry, such as address for IPv4 (A), address for
    #   IPv6 (AAAA), canonical name (CNAME), mail exchanger (MX), name
    #   server (NS), start of authority (SOA), service locator (SRV), or
    #   text (TXT).
    #
    #   The following domain entry types can be used:
    #
    #   * `A`
    #
    #   * `AAAA`
    #
    #   * `CNAME`
    #
    #   * `MX`
    #
    #   * `NS`
    #
    #   * `SOA`
    #
    #   * `SRV`
    #
    #   * `TXT`
    #   @return [String]
    #
    # @!attribute [rw] options
    #   (Discontinued) The options for the domain entry.
    #
    #   <note markdown="1"> In releases prior to November 29, 2017, this parameter was not
    #   included in the API response. It is now discontinued.
    #
    #    </note>
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DomainEntry AWS API Documentation
    #
    class DomainEntry < Struct.new(
      :id,
      :name,
      :target,
      :is_alias,
      :type,
      :options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the domain name system (DNS) records that you must add to
    # the DNS of your registered domain to validate ownership for an Amazon
    # Lightsail SSL/TLS certificate.
    #
    # @!attribute [rw] domain_name
    #   The domain name of the certificate validation record. For example,
    #   `example.com` or `www.example.com`.
    #   @return [String]
    #
    # @!attribute [rw] resource_record
    #   An object that describes the DNS records to add to your domain's
    #   DNS to validate it for the certificate.
    #   @return [Types::ResourceRecord]
    #
    # @!attribute [rw] dns_record_creation_state
    #   An object that describes the state of the canonical name (CNAME)
    #   records that are automatically added by Lightsail to the DNS of the
    #   domain to validate domain ownership.
    #   @return [Types::DnsRecordCreationState]
    #
    # @!attribute [rw] validation_status
    #   The validation status of the record.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DomainValidationRecord AWS API Documentation
    #
    class DomainValidationRecord < Struct.new(
      :domain_name,
      :resource_record,
      :dns_record_creation_state,
      :validation_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DownloadDefaultKeyPairRequest AWS API Documentation
    #
    class DownloadDefaultKeyPairRequest < Aws::EmptyStructure; end

    # @!attribute [rw] public_key_base_64
    #   A base64-encoded public key of the `ssh-rsa` type.
    #   @return [String]
    #
    # @!attribute [rw] private_key_base_64
    #   A base64-encoded RSA private key.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the default key pair was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DownloadDefaultKeyPairResult AWS API Documentation
    #
    class DownloadDefaultKeyPairResult < Struct.new(
      :public_key_base_64,
      :private_key_base_64,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_name
    #   The name of the source resource for which to enable or modify the
    #   add-on.
    #   @return [String]
    #
    # @!attribute [rw] add_on_request
    #   An array of strings representing the add-on to enable or modify.
    #   @return [Types::AddOnRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/EnableAddOnRequest AWS API Documentation
    #
    class EnableAddOnRequest < Struct.new(
      :resource_name,
      :add_on_request)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/EnableAddOnResult AWS API Documentation
    #
    class EnableAddOnResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the settings of a public endpoint for an Amazon Lightsail
    # container service.
    #
    # @!attribute [rw] container_name
    #   The name of the container for the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] container_port
    #   The port of the container to which traffic is forwarded to.
    #   @return [Integer]
    #
    # @!attribute [rw] health_check
    #   An object that describes the health check configuration of the
    #   container.
    #   @return [Types::ContainerServiceHealthCheckConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/EndpointRequest AWS API Documentation
    #
    class EndpointRequest < Struct.new(
      :container_name,
      :container_port,
      :health_check)
      SENSITIVE = []
      include Aws::Structure
    end

    # An estimate that's associated with a time period.
    #
    # @!attribute [rw] usage_cost
    #   The amount of cost or usage that's measured for the cost estimate.
    #   @return [Float]
    #
    # @!attribute [rw] pricing_unit
    #   The unit of measurement that's used for the cost estimate.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The number of pricing units used to calculate the total number of
    #   hours. For example, 1 unit equals 1 hour.
    #   @return [Float]
    #
    # @!attribute [rw] currency
    #   The currency of the estimate in USD.
    #   @return [String]
    #
    # @!attribute [rw] time_period
    #   The period of time, in days, that an estimate covers. The period has
    #   a start date and an end date. The start date must come before the
    #   end date.
    #   @return [Types::TimePeriod]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/EstimateByTime AWS API Documentation
    #
    class EstimateByTime < Struct.new(
      :usage_cost,
      :pricing_unit,
      :unit,
      :currency,
      :time_period)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an export snapshot record.
    #
    # @!attribute [rw] name
    #   The export snapshot record name.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the export snapshot record.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date when the export snapshot record was created.
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   The AWS Region and Availability Zone where the export snapshot
    #   record is located.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The Lightsail resource type (`ExportSnapshotRecord`).
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the export snapshot record.
    #   @return [String]
    #
    # @!attribute [rw] source_info
    #   A list of objects describing the source of the export snapshot
    #   record.
    #   @return [Types::ExportSnapshotRecordSourceInfo]
    #
    # @!attribute [rw] destination_info
    #   A list of objects describing the destination of the export snapshot
    #   record.
    #   @return [Types::DestinationInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ExportSnapshotRecord AWS API Documentation
    #
    class ExportSnapshotRecord < Struct.new(
      :name,
      :arn,
      :created_at,
      :location,
      :resource_type,
      :state,
      :source_info,
      :destination_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the source of an export snapshot record.
    #
    # @!attribute [rw] resource_type
    #   The Lightsail resource type (`InstanceSnapshot` or `DiskSnapshot`).
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date when the source instance or disk snapshot was created.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the source instance or disk snapshot.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the source instance or disk
    #   snapshot.
    #   @return [String]
    #
    # @!attribute [rw] from_resource_name
    #   The name of the snapshot's source instance or disk.
    #   @return [String]
    #
    # @!attribute [rw] from_resource_arn
    #   The Amazon Resource Name (ARN) of the snapshot's source instance or
    #   disk.
    #   @return [String]
    #
    # @!attribute [rw] instance_snapshot_info
    #   A list of objects describing an instance snapshot.
    #   @return [Types::InstanceSnapshotInfo]
    #
    # @!attribute [rw] disk_snapshot_info
    #   A list of objects describing a disk snapshot.
    #   @return [Types::DiskSnapshotInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ExportSnapshotRecordSourceInfo AWS API Documentation
    #
    class ExportSnapshotRecordSourceInfo < Struct.new(
      :resource_type,
      :created_at,
      :name,
      :arn,
      :from_resource_name,
      :from_resource_arn,
      :instance_snapshot_info,
      :disk_snapshot_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_snapshot_name
    #   The name of the instance or disk snapshot to be exported to Amazon
    #   EC2.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ExportSnapshotRequest AWS API Documentation
    #
    class ExportSnapshotRequest < Struct.new(
      :source_snapshot_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ExportSnapshotResult AWS API Documentation
    #
    class ExportSnapshotResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetActiveNames` request. If
    #   your results are paginated, the response will return a next page
    #   token that you can specify as the page token in a subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetActiveNamesRequest AWS API Documentation
    #
    class GetActiveNamesRequest < Struct.new(
      :page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] active_names
    #   The list of active names returned by the get active names request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of results from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another `GetActiveNames`
    #   request and specify the next page token using the `pageToken`
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetActiveNamesResult AWS API Documentation
    #
    class GetActiveNamesResult < Struct.new(
      :active_names,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alarm_name
    #   The name of the alarm.
    #
    #   Specify an alarm name to return information about a specific alarm.
    #   @return [String]
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetAlarms` request. If your
    #   results are paginated, the response will return a next page token
    #   that you can specify as the page token in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] monitored_resource_name
    #   The name of the Lightsail resource being monitored by the alarm.
    #
    #   Specify a monitored resource name to return information about all
    #   alarms for a specific resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetAlarmsRequest AWS API Documentation
    #
    class GetAlarmsRequest < Struct.new(
      :alarm_name,
      :page_token,
      :monitored_resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alarms
    #   An array of objects that describe the alarms.
    #   @return [Array<Types::Alarm>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of results from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another `GetAlarms` request
    #   and specify the next page token using the `pageToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetAlarmsResult AWS API Documentation
    #
    class GetAlarmsResult < Struct.new(
      :alarms,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_name
    #   The name of the source instance or disk from which to get automatic
    #   snapshot information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetAutoSnapshotsRequest AWS API Documentation
    #
    class GetAutoSnapshotsRequest < Struct.new(
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_name
    #   The name of the source instance or disk for the automatic snapshots.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type of the automatic snapshot. The possible values are
    #   `Instance`, and `Disk`.
    #   @return [String]
    #
    # @!attribute [rw] auto_snapshots
    #   An array of objects that describe the automatic snapshots that are
    #   available for the specified source instance or disk.
    #   @return [Array<Types::AutoSnapshotDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetAutoSnapshotsResult AWS API Documentation
    #
    class GetAutoSnapshotsResult < Struct.new(
      :resource_name,
      :resource_type,
      :auto_snapshots)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] include_inactive
    #   A Boolean value that indicates whether to include inactive
    #   (unavailable) blueprints in the response of your request.
    #   @return [Boolean]
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetBlueprints` request. If
    #   your results are paginated, the response will return a next page
    #   token that you can specify as the page token in a subsequent
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] app_category
    #   Returns a list of blueprints that are specific to Lightsail for
    #   Research.
    #
    #   You must use this parameter to view Lightsail for Research
    #   blueprints.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetBlueprintsRequest AWS API Documentation
    #
    class GetBlueprintsRequest < Struct.new(
      :include_inactive,
      :page_token,
      :app_category)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blueprints
    #   An array of key-value pairs that contains information about the
    #   available blueprints.
    #   @return [Array<Types::Blueprint>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of results from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another `GetBlueprints`
    #   request and specify the next page token using the `pageToken`
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetBlueprintsResult AWS API Documentation
    #
    class GetBlueprintsResult < Struct.new(
      :blueprints,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bucket_name
    #   The name of the bucket for which to return access keys.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetBucketAccessKeysRequest AWS API Documentation
    #
    class GetBucketAccessKeysRequest < Struct.new(
      :bucket_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_keys
    #   An object that describes the access keys for the specified bucket.
    #   @return [Array<Types::AccessKey>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetBucketAccessKeysResult AWS API Documentation
    #
    class GetBucketAccessKeysResult < Struct.new(
      :access_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] include_inactive
    #   A Boolean value that indicates whether to include inactive
    #   (unavailable) bundles in the response of your request.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetBucketBundlesRequest AWS API Documentation
    #
    class GetBucketBundlesRequest < Struct.new(
      :include_inactive)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bundles
    #   An object that describes bucket bundles.
    #   @return [Array<Types::BucketBundle>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetBucketBundlesResult AWS API Documentation
    #
    class GetBucketBundlesResult < Struct.new(
      :bundles)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bucket_name
    #   The name of the bucket for which to get metric data.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The metric for which you want to return information.
    #
    #   Valid bucket metric names are listed below, along with the most
    #   useful statistics to include in your request, and the published unit
    #   value.
    #
    #   <note markdown="1"> These bucket metrics are reported once per day.
    #
    #    </note>
    #
    #   * <b> <code>BucketSizeBytes</code> </b> - The amount of data in
    #     bytes stored in a bucket. This value is calculated by summing the
    #     size of all objects in the bucket (including object versions),
    #     including the size of all parts for all incomplete multipart
    #     uploads to the bucket.
    #
    #     Statistics: The most useful statistic is `Maximum`.
    #
    #     Unit: The published unit is `Bytes`.
    #
    #   * <b> <code>NumberOfObjects</code> </b> - The total number of
    #     objects stored in a bucket. This value is calculated by counting
    #     all objects in the bucket (including object versions) and the
    #     total number of parts for all incomplete multipart uploads to the
    #     bucket.
    #
    #     Statistics: The most useful statistic is `Average`.
    #
    #     Unit: The published unit is `Count`.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp indicating the earliest data to be returned.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The timestamp indicating the latest data to be returned.
    #   @return [Time]
    #
    # @!attribute [rw] period
    #   The granularity, in seconds, of the returned data points.
    #
    #   <note markdown="1"> Bucket storage metrics are reported once per day. Therefore, you
    #   should specify a period of 86400 seconds, which is the number of
    #   seconds in a day.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] statistics
    #   The statistic for the metric.
    #
    #   The following statistics are available:
    #
    #   * `Minimum` - The lowest value observed during the specified period.
    #     Use this value to determine low volumes of activity for your
    #     application.
    #
    #   * `Maximum` - The highest value observed during the specified
    #     period. Use this value to determine high volumes of activity for
    #     your application.
    #
    #   * `Sum` - The sum of all values submitted for the matching metric.
    #     You can use this statistic to determine the total volume of a
    #     metric.
    #
    #   * `Average` - The value of `Sum` / `SampleCount` during the
    #     specified period. By comparing this statistic with the `Minimum`
    #     and `Maximum` values, you can determine the full scope of a metric
    #     and how close the average use is to the `Minimum` and `Maximum`
    #     values. This comparison helps you to know when to increase or
    #     decrease your resources.
    #
    #   * `SampleCount` - The count, or number, of data points used for the
    #     statistical calculation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] unit
    #   The unit for the metric data request.
    #
    #   Valid units depend on the metric data being requested. For the valid
    #   units with each available metric, see the `metricName` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetBucketMetricDataRequest AWS API Documentation
    #
    class GetBucketMetricDataRequest < Struct.new(
      :bucket_name,
      :metric_name,
      :start_time,
      :end_time,
      :period,
      :statistics,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metric_name
    #   The name of the metric returned.
    #   @return [String]
    #
    # @!attribute [rw] metric_data
    #   An array of objects that describe the metric data returned.
    #   @return [Array<Types::MetricDatapoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetBucketMetricDataResult AWS API Documentation
    #
    class GetBucketMetricDataResult < Struct.new(
      :metric_name,
      :metric_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bucket_name
    #   The name of the bucket for which to return information.
    #
    #   When omitted, the response includes all of your buckets in the
    #   Amazon Web Services Region where the request is made.
    #   @return [String]
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetBuckets` request. If
    #   your results are paginated, the response will return a next page
    #   token that you can specify as the page token in a subsequent
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] include_connected_resources
    #   A Boolean value that indicates whether to include Lightsail
    #   instances that were given access to the bucket using the
    #   [SetResourceAccessForBucket][1] action.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_SetResourceAccessForBucket.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetBucketsRequest AWS API Documentation
    #
    class GetBucketsRequest < Struct.new(
      :bucket_name,
      :page_token,
      :include_connected_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] buckets
    #   An array of objects that describe buckets.
    #   @return [Array<Types::Bucket>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of results from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another `GetBuckets`
    #   request and specify the next page token using the `pageToken`
    #   parameter.
    #   @return [String]
    #
    # @!attribute [rw] account_level_bpa_sync
    #   An object that describes the synchronization status of the Amazon S3
    #   account-level block public access feature for your Lightsail
    #   buckets.
    #
    #   For more information about this feature and how it affects Lightsail
    #   buckets, see [Block public access for buckets in Amazon
    #   Lightsail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-block-public-access-for-buckets
    #   @return [Types::AccountLevelBpaSync]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetBucketsResult AWS API Documentation
    #
    class GetBucketsResult < Struct.new(
      :buckets,
      :next_page_token,
      :account_level_bpa_sync)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] include_inactive
    #   A Boolean value that indicates whether to include inactive
    #   (unavailable) bundles in the response of your request.
    #   @return [Boolean]
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetBundles` request. If
    #   your results are paginated, the response will return a next page
    #   token that you can specify as the page token in a subsequent
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] app_category
    #   Returns a list of bundles that are specific to Lightsail for
    #   Research.
    #
    #   You must use this parameter to view Lightsail for Research bundles.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetBundlesRequest AWS API Documentation
    #
    class GetBundlesRequest < Struct.new(
      :include_inactive,
      :page_token,
      :app_category)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bundles
    #   An array of key-value pairs that contains information about the
    #   available bundles.
    #   @return [Array<Types::Bundle>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of results from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another `GetBundles`
    #   request and specify the next page token using the `pageToken`
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetBundlesResult AWS API Documentation
    #
    class GetBundlesResult < Struct.new(
      :bundles,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_statuses
    #   The status of the certificates for which to return information.
    #
    #   For example, specify `ISSUED` to return only certificates with an
    #   `ISSUED` status.
    #
    #   When omitted, the response includes all of your certificates in the
    #   Amazon Web Services Region where the request is made, regardless of
    #   their current status.
    #   @return [Array<String>]
    #
    # @!attribute [rw] include_certificate_details
    #   Indicates whether to include detailed information about the
    #   certificates in the response.
    #
    #   When omitted, the response includes only the certificate names,
    #   Amazon Resource Names (ARNs), domain names, and tags.
    #   @return [Boolean]
    #
    # @!attribute [rw] certificate_name
    #   The name for the certificate for which to return information.
    #
    #   When omitted, the response includes all of your certificates in the
    #   Amazon Web Services Region where the request is made.
    #   @return [String]
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetCertificates` request.
    #   If your results are paginated, the response will return a next page
    #   token that you can specify as the page token in a subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetCertificatesRequest AWS API Documentation
    #
    class GetCertificatesRequest < Struct.new(
      :certificate_statuses,
      :include_certificate_details,
      :certificate_name,
      :page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificates
    #   An object that describes certificates.
    #   @return [Array<Types::CertificateSummary>]
    #
    # @!attribute [rw] next_page_token
    #   If `NextPageToken` is returned there are more results available. The
    #   value of `NextPageToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetCertificatesResult AWS API Documentation
    #
    class GetCertificatesResult < Struct.new(
      :certificates,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial
    #   `GetClouFormationStackRecords` request. If your results are
    #   paginated, the response will return a next page token that you can
    #   specify as the page token in a subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetCloudFormationStackRecordsRequest AWS API Documentation
    #
    class GetCloudFormationStackRecordsRequest < Struct.new(
      :page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cloud_formation_stack_records
    #   A list of objects describing the CloudFormation stack records.
    #   @return [Array<Types::CloudFormationStackRecord>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of results from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another
    #   `GetCloudFormationStackRecords` request and specify the next page
    #   token using the `pageToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetCloudFormationStackRecordsResult AWS API Documentation
    #
    class GetCloudFormationStackRecordsResult < Struct.new(
      :cloud_formation_stack_records,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protocols
    #   The protocols used to send notifications, such as `Email`, or `SMS`
    #   (text messaging).
    #
    #   Specify a protocol in your request to return information about a
    #   specific contact method protocol.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetContactMethodsRequest AWS API Documentation
    #
    class GetContactMethodsRequest < Struct.new(
      :protocols)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contact_methods
    #   An array of objects that describe the contact methods.
    #   @return [Array<Types::ContactMethod>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetContactMethodsResult AWS API Documentation
    #
    class GetContactMethodsResult < Struct.new(
      :contact_methods)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetContainerAPIMetadataRequest AWS API Documentation
    #
    class GetContainerAPIMetadataRequest < Aws::EmptyStructure; end

    # @!attribute [rw] metadata
    #   Metadata about Lightsail containers, such as the current version of
    #   the Lightsail Control (lightsailctl) plugin.
    #   @return [Array<Hash<String,String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetContainerAPIMetadataResult AWS API Documentation
    #
    class GetContainerAPIMetadataResult < Struct.new(
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_name
    #   The name of the container service for which to return registered
    #   container images.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetContainerImagesRequest AWS API Documentation
    #
    class GetContainerImagesRequest < Struct.new(
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] container_images
    #   An array of objects that describe container images that are
    #   registered to the container service.
    #   @return [Array<Types::ContainerImage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetContainerImagesResult AWS API Documentation
    #
    class GetContainerImagesResult < Struct.new(
      :container_images)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_name
    #   The name of the container service for which to get a container log.
    #   @return [String]
    #
    # @!attribute [rw] container_name
    #   The name of the container that is either running or previously ran
    #   on the container service for which to return a log.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start of the time interval for which to get log data.
    #
    #   Constraints:
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Specified in the Unix time format.
    #
    #     For example, if you wish to use a start time of October 1, 2018,
    #     at 8 PM UTC, specify `1538424000` as the start time.
    #
    #   You can convert a human-friendly time to Unix time format using a
    #   converter like [Epoch converter][1].
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time interval for which to get log data.
    #
    #   Constraints:
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Specified in the Unix time format.
    #
    #     For example, if you wish to use an end time of October 1, 2018, at
    #     9 PM UTC, specify `1538427600` as the end time.
    #
    #   You can convert a human-friendly time to Unix time format using a
    #   converter like [Epoch converter][1].
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @!attribute [rw] filter_pattern
    #   The pattern to use to filter the returned log events to a specific
    #   term.
    #
    #   The following are a few examples of filter patterns that you can
    #   specify:
    #
    #   * To return all log events, specify a filter pattern of `""`.
    #
    #   * To exclude log events that contain the `ERROR` term, and return
    #     all other log events, specify a filter pattern of `"-ERROR"`.
    #
    #   * To return log events that contain the `ERROR` term, specify a
    #     filter pattern of `"ERROR"`.
    #
    #   * To return log events that contain both the `ERROR` and `Exception`
    #     terms, specify a filter pattern of `"ERROR Exception"`.
    #
    #   * To return log events that contain the `ERROR` *or* the `Exception`
    #     term, specify a filter pattern of `"?ERROR ?Exception"`.
    #   @return [String]
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetContainerLog` request.
    #   If your results are paginated, the response will return a next page
    #   token that you can specify as the page token in a subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetContainerLogRequest AWS API Documentation
    #
    class GetContainerLogRequest < Struct.new(
      :service_name,
      :container_name,
      :start_time,
      :end_time,
      :filter_pattern,
      :page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_events
    #   An array of objects that describe the log events of a container.
    #   @return [Array<Types::ContainerServiceLogEvent>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of results from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another `GetContainerLog`
    #   request and specify the next page token using the `pageToken`
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetContainerLogResult AWS API Documentation
    #
    class GetContainerLogResult < Struct.new(
      :log_events,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_name
    #   The name of the container service for which to return deployments.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetContainerServiceDeploymentsRequest AWS API Documentation
    #
    class GetContainerServiceDeploymentsRequest < Struct.new(
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployments
    #   An array of objects that describe deployments for a container
    #   service.
    #   @return [Array<Types::ContainerServiceDeployment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetContainerServiceDeploymentsResult AWS API Documentation
    #
    class GetContainerServiceDeploymentsResult < Struct.new(
      :deployments)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_name
    #   The name of the container service for which to get metric data.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The metric for which you want to return information.
    #
    #   Valid container service metric names are listed below, along with
    #   the most useful statistics to include in your request, and the
    #   published unit value.
    #
    #   * `CPUUtilization` - The average percentage of compute units that
    #     are currently in use across all nodes of the container service.
    #     This metric identifies the processing power required to run
    #     containers on each node of the container service.
    #
    #     Statistics: The most useful statistics are `Maximum` and
    #     `Average`.
    #
    #     Unit: The published unit is `Percent`.
    #
    #   * `MemoryUtilization` - The average percentage of available memory
    #     that is currently in use across all nodes of the container
    #     service. This metric identifies the memory required to run
    #     containers on each node of the container service.
    #
    #     Statistics: The most useful statistics are `Maximum` and
    #     `Average`.
    #
    #     Unit: The published unit is `Percent`.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time of the time period.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the time period.
    #   @return [Time]
    #
    # @!attribute [rw] period
    #   The granularity, in seconds, of the returned data points.
    #
    #   All container service metric data is available in 5-minute (300
    #   seconds) granularity.
    #   @return [Integer]
    #
    # @!attribute [rw] statistics
    #   The statistic for the metric.
    #
    #   The following statistics are available:
    #
    #   * `Minimum` - The lowest value observed during the specified period.
    #     Use this value to determine low volumes of activity for your
    #     application.
    #
    #   * `Maximum` - The highest value observed during the specified
    #     period. Use this value to determine high volumes of activity for
    #     your application.
    #
    #   * `Sum` - All values submitted for the matching metric added
    #     together. You can use this statistic to determine the total volume
    #     of a metric.
    #
    #   * `Average` - The value of `Sum` / `SampleCount` during the
    #     specified period. By comparing this statistic with the `Minimum`
    #     and `Maximum` values, you can determine the full scope of a metric
    #     and how close the average use is to the `Minimum` and `Maximum`
    #     values. This comparison helps you to know when to increase or
    #     decrease your resources.
    #
    #   * `SampleCount` - The count, or number, of data points used for the
    #     statistical calculation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetContainerServiceMetricDataRequest AWS API Documentation
    #
    class GetContainerServiceMetricDataRequest < Struct.new(
      :service_name,
      :metric_name,
      :start_time,
      :end_time,
      :period,
      :statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metric_name
    #   The name of the metric returned.
    #   @return [String]
    #
    # @!attribute [rw] metric_data
    #   An array of objects that describe the metric data returned.
    #   @return [Array<Types::MetricDatapoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetContainerServiceMetricDataResult AWS API Documentation
    #
    class GetContainerServiceMetricDataResult < Struct.new(
      :metric_name,
      :metric_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetContainerServicePowersRequest AWS API Documentation
    #
    class GetContainerServicePowersRequest < Aws::EmptyStructure; end

    # @!attribute [rw] powers
    #   An array of objects that describe the powers that can be specified
    #   for a container service.
    #   @return [Array<Types::ContainerServicePower>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetContainerServicePowersResult AWS API Documentation
    #
    class GetContainerServicePowersResult < Struct.new(
      :powers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_name
    #   The name of the container service for which to return information.
    #
    #   When omitted, the response includes all of your container services
    #   in the Amazon Web Services Region where the request is made.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetContainerServicesRequest AWS API Documentation
    #
    class GetContainerServicesRequest < Struct.new(
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_name
    #   The resource name.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The cost estimate start time.
    #
    #   Constraints:
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Specified in the Unix time format.
    #
    #     For example, if you want to use a start time of October 1, 2018,
    #     at 8 PM UTC, specify `1538424000` as the start time.
    #
    #   You can convert a human-friendly time to Unix time format using a
    #   converter like [Epoch converter][1].
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The cost estimate end time.
    #
    #   Constraints:
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Specified in the Unix time format.
    #
    #     For example, if you want to use an end time of October 1, 2018, at
    #     9 PM UTC, specify `1538427600` as the end time.
    #
    #   You can convert a human-friendly time to Unix time format using a
    #   converter like [Epoch converter][1].
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetCostEstimateRequest AWS API Documentation
    #
    class GetCostEstimateRequest < Struct.new(
      :resource_name,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resources_budget_estimate
    #   Returns the estimate's forecasted cost or usage.
    #   @return [Array<Types::ResourceBudgetEstimate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetCostEstimateResult AWS API Documentation
    #
    class GetCostEstimateResult < Struct.new(
      :resources_budget_estimate)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] disk_name
    #   The name of the disk (`my-disk`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDiskRequest AWS API Documentation
    #
    class GetDiskRequest < Struct.new(
      :disk_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] disk
    #   An object containing information about the disk.
    #   @return [Types::Disk]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDiskResult AWS API Documentation
    #
    class GetDiskResult < Struct.new(
      :disk)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] disk_snapshot_name
    #   The name of the disk snapshot (`my-disk-snapshot`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDiskSnapshotRequest AWS API Documentation
    #
    class GetDiskSnapshotRequest < Struct.new(
      :disk_snapshot_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] disk_snapshot
    #   An object containing information about the disk snapshot.
    #   @return [Types::DiskSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDiskSnapshotResult AWS API Documentation
    #
    class GetDiskSnapshotResult < Struct.new(
      :disk_snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetDiskSnapshots` request.
    #   If your results are paginated, the response will return a next page
    #   token that you can specify as the page token in a subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDiskSnapshotsRequest AWS API Documentation
    #
    class GetDiskSnapshotsRequest < Struct.new(
      :page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] disk_snapshots
    #   An array of objects containing information about all block storage
    #   disk snapshots.
    #   @return [Array<Types::DiskSnapshot>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of results from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another `GetDiskSnapshots`
    #   request and specify the next page token using the `pageToken`
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDiskSnapshotsResult AWS API Documentation
    #
    class GetDiskSnapshotsResult < Struct.new(
      :disk_snapshots,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetDisks` request. If your
    #   results are paginated, the response will return a next page token
    #   that you can specify as the page token in a subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDisksRequest AWS API Documentation
    #
    class GetDisksRequest < Struct.new(
      :page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] disks
    #   An array of objects containing information about all block storage
    #   disks.
    #   @return [Array<Types::Disk>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of results from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another `GetDisks` request
    #   and specify the next page token using the `pageToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDisksResult AWS API Documentation
    #
    class GetDisksResult < Struct.new(
      :disks,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDistributionBundlesRequest AWS API Documentation
    #
    class GetDistributionBundlesRequest < Aws::EmptyStructure; end

    # @!attribute [rw] bundles
    #   An object that describes a distribution bundle.
    #   @return [Array<Types::DistributionBundle>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDistributionBundlesResult AWS API Documentation
    #
    class GetDistributionBundlesResult < Struct.new(
      :bundles)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] distribution_name
    #   The name of the distribution for which to return the timestamp of
    #   the last cache reset.
    #
    #   Use the `GetDistributions` action to get a list of distribution
    #   names that you can specify.
    #
    #   When omitted, the response includes the latest cache reset timestamp
    #   of all your distributions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDistributionLatestCacheResetRequest AWS API Documentation
    #
    class GetDistributionLatestCacheResetRequest < Struct.new(
      :distribution_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the last cache reset.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The timestamp of the last cache reset (`1479734909.17`) in Unix time
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDistributionLatestCacheResetResult AWS API Documentation
    #
    class GetDistributionLatestCacheResetResult < Struct.new(
      :status,
      :create_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] distribution_name
    #   The name of the distribution for which to get metric data.
    #
    #   Use the `GetDistributions` action to get a list of distribution
    #   names that you can specify.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The metric for which you want to return information.
    #
    #   Valid distribution metric names are listed below, along with the
    #   most useful `statistics` to include in your request, and the
    #   published `unit` value.
    #
    #   * <b> <code>Requests</code> </b> - The total number of viewer
    #     requests received by your Lightsail distribution, for all HTTP
    #     methods, and for both HTTP and HTTPS requests.
    #
    #     `Statistics`: The most useful statistic is `Sum`.
    #
    #     `Unit`: The published unit is `None`.
    #
    #   * <b> <code>BytesDownloaded</code> </b> - The number of bytes
    #     downloaded by viewers for GET, HEAD, and OPTIONS requests.
    #
    #     `Statistics`: The most useful statistic is `Sum`.
    #
    #     `Unit`: The published unit is `None`.
    #
    #   * <b> <code>BytesUploaded </code> </b> - The number of bytes
    #     uploaded to your origin by your Lightsail distribution, using POST
    #     and PUT requests.
    #
    #     `Statistics`: The most useful statistic is `Sum`.
    #
    #     `Unit`: The published unit is `None`.
    #
    #   * <b> <code>TotalErrorRate</code> </b> - The percentage of all
    #     viewer requests for which the response's HTTP status code was 4xx
    #     or 5xx.
    #
    #     `Statistics`: The most useful statistic is `Average`.
    #
    #     `Unit`: The published unit is `Percent`.
    #
    #   * <b> <code>4xxErrorRate</code> </b> - The percentage of all viewer
    #     requests for which the response's HTTP status cod was 4xx. In
    #     these cases, the client or client viewer may have made an error.
    #     For example, a status code of 404 (Not Found) means that the
    #     client requested an object that could not be found.
    #
    #     `Statistics`: The most useful statistic is `Average`.
    #
    #     `Unit`: The published unit is `Percent`.
    #
    #   * <b> <code>5xxErrorRate</code> </b> - The percentage of all viewer
    #     requests for which the response's HTTP status code was 5xx. In
    #     these cases, the origin server did not satisfy the requests. For
    #     example, a status code of 503 (Service Unavailable) means that the
    #     origin server is currently unavailable.
    #
    #     `Statistics`: The most useful statistic is `Average`.
    #
    #     `Unit`: The published unit is `Percent`.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start of the time interval for which to get metric data.
    #
    #   Constraints:
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Specified in the Unix time format.
    #
    #     For example, if you wish to use a start time of October 1, 2018,
    #     at 8 PM UTC, specify `1538424000` as the start time.
    #
    #   You can convert a human-friendly time to Unix time format using a
    #   converter like [Epoch converter][1].
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time interval for which to get metric data.
    #
    #   Constraints:
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Specified in the Unix time format.
    #
    #     For example, if you wish to use an end time of October 1, 2018, at
    #     9 PM UTC, specify `1538427600` as the end time.
    #
    #   You can convert a human-friendly time to Unix time format using a
    #   converter like [Epoch converter][1].
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @!attribute [rw] period
    #   The granularity, in seconds, for the metric data points that will be
    #   returned.
    #   @return [Integer]
    #
    # @!attribute [rw] unit
    #   The unit for the metric data request.
    #
    #   Valid units depend on the metric data being requested. For the valid
    #   units with each available metric, see the `metricName` parameter.
    #   @return [String]
    #
    # @!attribute [rw] statistics
    #   The statistic for the metric.
    #
    #   The following statistics are available:
    #
    #   * `Minimum` - The lowest value observed during the specified period.
    #     Use this value to determine low volumes of activity for your
    #     application.
    #
    #   * `Maximum` - The highest value observed during the specified
    #     period. Use this value to determine high volumes of activity for
    #     your application.
    #
    #   * `Sum` - All values submitted for the matching metric added
    #     together. You can use this statistic to determine the total volume
    #     of a metric.
    #
    #   * `Average` - The value of Sum / SampleCount during the specified
    #     period. By comparing this statistic with the Minimum and Maximum
    #     values, you can determine the full scope of a metric and how close
    #     the average use is to the Minimum and Maximum values. This
    #     comparison helps you to know when to increase or decrease your
    #     resources.
    #
    #   * `SampleCount` - The count, or number, of data points used for the
    #     statistical calculation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDistributionMetricDataRequest AWS API Documentation
    #
    class GetDistributionMetricDataRequest < Struct.new(
      :distribution_name,
      :metric_name,
      :start_time,
      :end_time,
      :period,
      :unit,
      :statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metric_name
    #   The name of the metric returned.
    #   @return [String]
    #
    # @!attribute [rw] metric_data
    #   An array of objects that describe the metric data returned.
    #   @return [Array<Types::MetricDatapoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDistributionMetricDataResult AWS API Documentation
    #
    class GetDistributionMetricDataResult < Struct.new(
      :metric_name,
      :metric_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] distribution_name
    #   The name of the distribution for which to return information.
    #
    #   When omitted, the response includes all of your distributions in the
    #   Amazon Web Services Region where the request is made.
    #   @return [String]
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetDistributions` request.
    #   If your results are paginated, the response will return a next page
    #   token that you can specify as the page token in a subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDistributionsRequest AWS API Documentation
    #
    class GetDistributionsRequest < Struct.new(
      :distribution_name,
      :page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] distributions
    #   An array of objects that describe your distributions.
    #   @return [Array<Types::LightsailDistribution>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of results from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another `GetDistributions`
    #   request and specify the next page token using the `pageToken`
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDistributionsResult AWS API Documentation
    #
    class GetDistributionsResult < Struct.new(
      :distributions,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The domain name for which your want to return information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDomainRequest AWS API Documentation
    #
    class GetDomainRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   An array of key-value pairs containing information about your get
    #   domain request.
    #   @return [Types::Domain]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDomainResult AWS API Documentation
    #
    class GetDomainResult < Struct.new(
      :domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetDomains` request. If
    #   your results are paginated, the response will return a next page
    #   token that you can specify as the page token in a subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDomainsRequest AWS API Documentation
    #
    class GetDomainsRequest < Struct.new(
      :page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domains
    #   An array of key-value pairs containing information about each of the
    #   domain entries in the user's account.
    #   @return [Array<Types::Domain>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of results from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another `GetDomains`
    #   request and specify the next page token using the `pageToken`
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDomainsResult AWS API Documentation
    #
    class GetDomainsResult < Struct.new(
      :domains,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetExportSnapshotRecords`
    #   request. If your results are paginated, the response will return a
    #   next page token that you can specify as the page token in a
    #   subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetExportSnapshotRecordsRequest AWS API Documentation
    #
    class GetExportSnapshotRecordsRequest < Struct.new(
      :page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export_snapshot_records
    #   A list of objects describing the export snapshot records.
    #   @return [Array<Types::ExportSnapshotRecord>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of results from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another
    #   `GetExportSnapshotRecords` request and specify the next page token
    #   using the `pageToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetExportSnapshotRecordsResult AWS API Documentation
    #
    class GetExportSnapshotRecordsResult < Struct.new(
      :export_snapshot_records,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_name
    #   The name of the instance to access.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol to use to connect to your instance. Defaults to `ssh`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceAccessDetailsRequest AWS API Documentation
    #
    class GetInstanceAccessDetailsRequest < Struct.new(
      :instance_name,
      :protocol)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_details
    #   An array of key-value pairs containing information about a get
    #   instance access request.
    #   @return [Types::InstanceAccessDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceAccessDetailsResult AWS API Documentation
    #
    class GetInstanceAccessDetailsResult < Struct.new(
      :access_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_name
    #   The name of the instance for which you want to get metrics data.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The metric for which you want to return information.
    #
    #   Valid instance metric names are listed below, along with the most
    #   useful `statistics` to include in your request, and the published
    #   `unit` value.
    #
    #   * <b> <code>BurstCapacityPercentage</code> </b> - The percentage of
    #     CPU performance available for your instance to burst above its
    #     baseline. Your instance continuously accrues and consumes burst
    #     capacity. Burst capacity stops accruing when your instance's
    #     `BurstCapacityPercentage` reaches 100%. For more information, see
    #     [Viewing instance burst capacity in Amazon Lightsail][1].
    #
    #     `Statistics`: The most useful statistics are `Maximum` and
    #     `Average`.
    #
    #     `Unit`: The published unit is `Percent`.
    #
    #   * <b> <code>BurstCapacityTime</code> </b> - The available amount of
    #     time for your instance to burst at 100% CPU utilization. Your
    #     instance continuously accrues and consumes burst capacity. Burst
    #     capacity time stops accruing when your instance's
    #     `BurstCapacityPercentage` metric reaches 100%.
    #
    #     Burst capacity time is consumed at the full rate only when your
    #     instance operates at 100% CPU utilization. For example, if your
    #     instance operates at 50% CPU utilization in the burstable zone for
    #     a 5-minute period, then it consumes CPU burst capacity minutes at
    #     a 50% rate in that period. Your instance consumed 2 minutes and 30
    #     seconds of CPU burst capacity minutes in the 5-minute period. For
    #     more information, see [Viewing instance burst capacity in Amazon
    #     Lightsail][1].
    #
    #     `Statistics`: The most useful statistics are `Maximum` and
    #     `Average`.
    #
    #     `Unit`: The published unit is `Seconds`.
    #
    #   * <b> <code>CPUUtilization</code> </b> - The percentage of allocated
    #     compute units that are currently in use on the instance. This
    #     metric identifies the processing power to run the applications on
    #     the instance. Tools in your operating system can show a lower
    #     percentage than Lightsail when the instance is not allocated a
    #     full processor core.
    #
    #     `Statistics`: The most useful statistics are `Maximum` and
    #     `Average`.
    #
    #     `Unit`: The published unit is `Percent`.
    #
    #   * <b> <code>NetworkIn</code> </b> - The number of bytes received on
    #     all network interfaces by the instance. This metric identifies the
    #     volume of incoming network traffic to the instance. The number
    #     reported is the number of bytes received during the period.
    #     Because this metric is reported in 5-minute intervals, divide the
    #     reported number by 300 to find Bytes/second.
    #
    #     `Statistics`: The most useful statistic is `Sum`.
    #
    #     `Unit`: The published unit is `Bytes`.
    #
    #   * <b> <code>NetworkOut</code> </b> - The number of bytes sent out on
    #     all network interfaces by the instance. This metric identifies the
    #     volume of outgoing network traffic from the instance. The number
    #     reported is the number of bytes sent during the period. Because
    #     this metric is reported in 5-minute intervals, divide the reported
    #     number by 300 to find Bytes/second.
    #
    #     `Statistics`: The most useful statistic is `Sum`.
    #
    #     `Unit`: The published unit is `Bytes`.
    #
    #   * <b> <code>StatusCheckFailed</code> </b> - Reports whether the
    #     instance passed or failed both the instance status check and the
    #     system status check. This metric can be either 0 (passed) or 1
    #     (failed). This metric data is available in 1-minute (60 seconds)
    #     granularity.
    #
    #     `Statistics`: The most useful statistic is `Sum`.
    #
    #     `Unit`: The published unit is `Count`.
    #
    #   * <b> <code>StatusCheckFailed_Instance</code> </b> - Reports whether
    #     the instance passed or failed the instance status check. This
    #     metric can be either 0 (passed) or 1 (failed). This metric data is
    #     available in 1-minute (60 seconds) granularity.
    #
    #     `Statistics`: The most useful statistic is `Sum`.
    #
    #     `Unit`: The published unit is `Count`.
    #
    #   * <b> <code>StatusCheckFailed_System</code> </b> - Reports whether
    #     the instance passed or failed the system status check. This metric
    #     can be either 0 (passed) or 1 (failed). This metric data is
    #     available in 1-minute (60 seconds) granularity.
    #
    #     `Statistics`: The most useful statistic is `Sum`.
    #
    #     `Unit`: The published unit is `Count`.
    #
    #   * <b> <code>MetadataNoToken</code> </b> - Reports the number of
    #     times that the instance metadata service was successfully accessed
    #     without a token. This metric determines if there are any processes
    #     accessing instance metadata by using Instance Metadata Service
    #     Version 1, which doesn't use a token. If all requests use
    #     token-backed sessions, such as Instance Metadata Service Version
    #     2, then the value is 0.
    #
    #     `Statistics`: The most useful statistic is `Sum`.
    #
    #     `Unit`: The published unit is `Count`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-viewing-instance-burst-capacity
    #   @return [String]
    #
    # @!attribute [rw] period
    #   The granularity, in seconds, of the returned data points.
    #
    #   The `StatusCheckFailed`, `StatusCheckFailed_Instance`, and
    #   `StatusCheckFailed_System` instance metric data is available in
    #   1-minute (60 seconds) granularity. All other instance metric data is
    #   available in 5-minute (300 seconds) granularity.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   The start time of the time period.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the time period.
    #   @return [Time]
    #
    # @!attribute [rw] unit
    #   The unit for the metric data request. Valid units depend on the
    #   metric data being requested. For the valid units to specify with
    #   each available metric, see the `metricName` parameter.
    #   @return [String]
    #
    # @!attribute [rw] statistics
    #   The statistic for the metric.
    #
    #   The following statistics are available:
    #
    #   * `Minimum` - The lowest value observed during the specified period.
    #     Use this value to determine low volumes of activity for your
    #     application.
    #
    #   * `Maximum` - The highest value observed during the specified
    #     period. Use this value to determine high volumes of activity for
    #     your application.
    #
    #   * `Sum` - All values submitted for the matching metric added
    #     together. You can use this statistic to determine the total volume
    #     of a metric.
    #
    #   * `Average` - The value of Sum / SampleCount during the specified
    #     period. By comparing this statistic with the Minimum and Maximum
    #     values, you can determine the full scope of a metric and how close
    #     the average use is to the Minimum and Maximum values. This
    #     comparison helps you to know when to increase or decrease your
    #     resources.
    #
    #   * `SampleCount` - The count, or number, of data points used for the
    #     statistical calculation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceMetricDataRequest AWS API Documentation
    #
    class GetInstanceMetricDataRequest < Struct.new(
      :instance_name,
      :metric_name,
      :period,
      :start_time,
      :end_time,
      :unit,
      :statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metric_name
    #   The name of the metric returned.
    #   @return [String]
    #
    # @!attribute [rw] metric_data
    #   An array of objects that describe the metric data returned.
    #   @return [Array<Types::MetricDatapoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceMetricDataResult AWS API Documentation
    #
    class GetInstanceMetricDataResult < Struct.new(
      :metric_name,
      :metric_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_name
    #   The name of the instance for which to return firewall port states.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstancePortStatesRequest AWS API Documentation
    #
    class GetInstancePortStatesRequest < Struct.new(
      :instance_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] port_states
    #   An array of objects that describe the firewall port states for the
    #   specified instance.
    #   @return [Array<Types::InstancePortState>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstancePortStatesResult AWS API Documentation
    #
    class GetInstancePortStatesResult < Struct.new(
      :port_states)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_name
    #   The name of the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceRequest AWS API Documentation
    #
    class GetInstanceRequest < Struct.new(
      :instance_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance
    #   An array of key-value pairs containing information about the
    #   specified instance.
    #   @return [Types::Instance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceResult AWS API Documentation
    #
    class GetInstanceResult < Struct.new(
      :instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_snapshot_name
    #   The name of the snapshot for which you are requesting information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceSnapshotRequest AWS API Documentation
    #
    class GetInstanceSnapshotRequest < Struct.new(
      :instance_snapshot_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_snapshot
    #   An array of key-value pairs containing information about the results
    #   of your get instance snapshot request.
    #   @return [Types::InstanceSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceSnapshotResult AWS API Documentation
    #
    class GetInstanceSnapshotResult < Struct.new(
      :instance_snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetInstanceSnapshots`
    #   request. If your results are paginated, the response will return a
    #   next page token that you can specify as the page token in a
    #   subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceSnapshotsRequest AWS API Documentation
    #
    class GetInstanceSnapshotsRequest < Struct.new(
      :page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_snapshots
    #   An array of key-value pairs containing information about the results
    #   of your get instance snapshots request.
    #   @return [Array<Types::InstanceSnapshot>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of results from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another
    #   `GetInstanceSnapshots` request and specify the next page token using
    #   the `pageToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceSnapshotsResult AWS API Documentation
    #
    class GetInstanceSnapshotsResult < Struct.new(
      :instance_snapshots,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_name
    #   The name of the instance to get state information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceStateRequest AWS API Documentation
    #
    class GetInstanceStateRequest < Struct.new(
      :instance_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] state
    #   The state of the instance.
    #   @return [Types::InstanceState]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceStateResult AWS API Documentation
    #
    class GetInstanceStateResult < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetInstances` request. If
    #   your results are paginated, the response will return a next page
    #   token that you can specify as the page token in a subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstancesRequest AWS API Documentation
    #
    class GetInstancesRequest < Struct.new(
      :page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instances
    #   An array of key-value pairs containing information about your
    #   instances.
    #   @return [Array<Types::Instance>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of results from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another `GetInstances`
    #   request and specify the next page token using the `pageToken`
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstancesResult AWS API Documentation
    #
    class GetInstancesResult < Struct.new(
      :instances,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_pair_name
    #   The name of the key pair for which you are requesting information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetKeyPairRequest AWS API Documentation
    #
    class GetKeyPairRequest < Struct.new(
      :key_pair_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_pair
    #   An array of key-value pairs containing information about the key
    #   pair.
    #   @return [Types::KeyPair]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetKeyPairResult AWS API Documentation
    #
    class GetKeyPairResult < Struct.new(
      :key_pair)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetKeyPairs` request. If
    #   your results are paginated, the response will return a next page
    #   token that you can specify as the page token in a subsequent
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] include_default_key_pair
    #   A Boolean value that indicates whether to include the default key
    #   pair in the response of your request.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetKeyPairsRequest AWS API Documentation
    #
    class GetKeyPairsRequest < Struct.new(
      :page_token,
      :include_default_key_pair)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_pairs
    #   An array of key-value pairs containing information about the key
    #   pairs.
    #   @return [Array<Types::KeyPair>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of results from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another `GetKeyPairs`
    #   request and specify the next page token using the `pageToken`
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetKeyPairsResult AWS API Documentation
    #
    class GetKeyPairsResult < Struct.new(
      :key_pairs,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] load_balancer_name
    #   The name of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The metric for which you want to return information.
    #
    #   Valid load balancer metric names are listed below, along with the
    #   most useful `statistics` to include in your request, and the
    #   published `unit` value.
    #
    #   * <b> <code>ClientTLSNegotiationErrorCount</code> </b> - The number
    #     of TLS connections initiated by the client that did not establish
    #     a session with the load balancer due to a TLS error generated by
    #     the load balancer. Possible causes include a mismatch of ciphers
    #     or protocols.
    #
    #     `Statistics`: The most useful statistic is `Sum`.
    #
    #     `Unit`: The published unit is `Count`.
    #
    #   * <b> <code>HealthyHostCount</code> </b> - The number of target
    #     instances that are considered healthy.
    #
    #     `Statistics`: The most useful statistic are `Average`, `Minimum`,
    #     and `Maximum`.
    #
    #     `Unit`: The published unit is `Count`.
    #
    #   * <b> <code>HTTPCode_Instance_2XX_Count</code> </b> - The number of
    #     HTTP 2XX response codes generated by the target instances. This
    #     does not include any response codes generated by the load
    #     balancer.
    #
    #     `Statistics`: The most useful statistic is `Sum`. Note that
    #     `Minimum`, `Maximum`, and `Average` all return `1`.
    #
    #     `Unit`: The published unit is `Count`.
    #
    #   * <b> <code>HTTPCode_Instance_3XX_Count</code> </b> - The number of
    #     HTTP 3XX response codes generated by the target instances. This
    #     does not include any response codes generated by the load
    #     balancer.
    #
    #     `Statistics`: The most useful statistic is `Sum`. Note that
    #     `Minimum`, `Maximum`, and `Average` all return `1`.
    #
    #     `Unit`: The published unit is `Count`.
    #
    #   * <b> <code>HTTPCode_Instance_4XX_Count</code> </b> - The number of
    #     HTTP 4XX response codes generated by the target instances. This
    #     does not include any response codes generated by the load
    #     balancer.
    #
    #     `Statistics`: The most useful statistic is `Sum`. Note that
    #     `Minimum`, `Maximum`, and `Average` all return `1`.
    #
    #     `Unit`: The published unit is `Count`.
    #
    #   * <b> <code>HTTPCode_Instance_5XX_Count</code> </b> - The number of
    #     HTTP 5XX response codes generated by the target instances. This
    #     does not include any response codes generated by the load
    #     balancer.
    #
    #     `Statistics`: The most useful statistic is `Sum`. Note that
    #     `Minimum`, `Maximum`, and `Average` all return `1`.
    #
    #     `Unit`: The published unit is `Count`.
    #
    #   * <b> <code>HTTPCode_LB_4XX_Count</code> </b> - The number of HTTP
    #     4XX client error codes that originated from the load balancer.
    #     Client errors are generated when requests are malformed or
    #     incomplete. These requests were not received by the target
    #     instance. This count does not include response codes generated by
    #     the target instances.
    #
    #     `Statistics`: The most useful statistic is `Sum`. Note that
    #     `Minimum`, `Maximum`, and `Average` all return `1`.
    #
    #     `Unit`: The published unit is `Count`.
    #
    #   * <b> <code>HTTPCode_LB_5XX_Count</code> </b> - The number of HTTP
    #     5XX server error codes that originated from the load balancer.
    #     This does not include any response codes generated by the target
    #     instance. This metric is reported if there are no healthy
    #     instances attached to the load balancer, or if the request rate
    #     exceeds the capacity of the instances (spillover) or the load
    #     balancer.
    #
    #     `Statistics`: The most useful statistic is `Sum`. Note that
    #     `Minimum`, `Maximum`, and `Average` all return `1`.
    #
    #     `Unit`: The published unit is `Count`.
    #
    #   * <b> <code>InstanceResponseTime</code> </b> - The time elapsed, in
    #     seconds, after the request leaves the load balancer until a
    #     response from the target instance is received.
    #
    #     `Statistics`: The most useful statistic is `Average`.
    #
    #     `Unit`: The published unit is `Seconds`.
    #
    #   * <b> <code>RejectedConnectionCount</code> </b> - The number of
    #     connections that were rejected because the load balancer had
    #     reached its maximum number of connections.
    #
    #     `Statistics`: The most useful statistic is `Sum`.
    #
    #     `Unit`: The published unit is `Count`.
    #
    #   * <b> <code>RequestCount</code> </b> - The number of requests
    #     processed over IPv4. This count includes only the requests with a
    #     response generated by a target instance of the load balancer.
    #
    #     `Statistics`: The most useful statistic is `Sum`. Note that
    #     `Minimum`, `Maximum`, and `Average` all return `1`.
    #
    #     `Unit`: The published unit is `Count`.
    #
    #   * <b> <code>UnhealthyHostCount</code> </b> - The number of target
    #     instances that are considered unhealthy.
    #
    #     `Statistics`: The most useful statistic are `Average`, `Minimum`,
    #     and `Maximum`.
    #
    #     `Unit`: The published unit is `Count`.
    #   @return [String]
    #
    # @!attribute [rw] period
    #   The granularity, in seconds, of the returned data points.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   The start time of the period.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the period.
    #   @return [Time]
    #
    # @!attribute [rw] unit
    #   The unit for the metric data request. Valid units depend on the
    #   metric data being requested. For the valid units with each available
    #   metric, see the `metricName` parameter.
    #   @return [String]
    #
    # @!attribute [rw] statistics
    #   The statistic for the metric.
    #
    #   The following statistics are available:
    #
    #   * `Minimum` - The lowest value observed during the specified period.
    #     Use this value to determine low volumes of activity for your
    #     application.
    #
    #   * `Maximum` - The highest value observed during the specified
    #     period. Use this value to determine high volumes of activity for
    #     your application.
    #
    #   * `Sum` - All values submitted for the matching metric added
    #     together. You can use this statistic to determine the total volume
    #     of a metric.
    #
    #   * `Average` - The value of Sum / SampleCount during the specified
    #     period. By comparing this statistic with the Minimum and Maximum
    #     values, you can determine the full scope of a metric and how close
    #     the average use is to the Minimum and Maximum values. This
    #     comparison helps you to know when to increase or decrease your
    #     resources.
    #
    #   * `SampleCount` - The count, or number, of data points used for the
    #     statistical calculation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetLoadBalancerMetricDataRequest AWS API Documentation
    #
    class GetLoadBalancerMetricDataRequest < Struct.new(
      :load_balancer_name,
      :metric_name,
      :period,
      :start_time,
      :end_time,
      :unit,
      :statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metric_name
    #   The name of the metric returned.
    #   @return [String]
    #
    # @!attribute [rw] metric_data
    #   An array of objects that describe the metric data returned.
    #   @return [Array<Types::MetricDatapoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetLoadBalancerMetricDataResult AWS API Documentation
    #
    class GetLoadBalancerMetricDataResult < Struct.new(
      :metric_name,
      :metric_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] load_balancer_name
    #   The name of the load balancer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetLoadBalancerRequest AWS API Documentation
    #
    class GetLoadBalancerRequest < Struct.new(
      :load_balancer_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] load_balancer
    #   An object containing information about your load balancer.
    #   @return [Types::LoadBalancer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetLoadBalancerResult AWS API Documentation
    #
    class GetLoadBalancerResult < Struct.new(
      :load_balancer)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] load_balancer_name
    #   The name of the load balancer you associated with your SSL/TLS
    #   certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetLoadBalancerTlsCertificatesRequest AWS API Documentation
    #
    class GetLoadBalancerTlsCertificatesRequest < Struct.new(
      :load_balancer_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tls_certificates
    #   An array of LoadBalancerTlsCertificate objects describing your
    #   SSL/TLS certificates.
    #   @return [Array<Types::LoadBalancerTlsCertificate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetLoadBalancerTlsCertificatesResult AWS API Documentation
    #
    class GetLoadBalancerTlsCertificatesResult < Struct.new(
      :tls_certificates)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetLoadBalancerTlsPolicies`
    #   request. If your results are paginated, the response will return a
    #   next page token that you can specify as the page token in a
    #   subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetLoadBalancerTlsPoliciesRequest AWS API Documentation
    #
    class GetLoadBalancerTlsPoliciesRequest < Struct.new(
      :page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tls_policies
    #   An array of objects that describe the TLS security policies that are
    #   available.
    #   @return [Array<Types::LoadBalancerTlsPolicy>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of results from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another
    #   `GetLoadBalancerTlsPolicies` request and specify the next page token
    #   using the `pageToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetLoadBalancerTlsPoliciesResult AWS API Documentation
    #
    class GetLoadBalancerTlsPoliciesResult < Struct.new(
      :tls_policies,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetLoadBalancers` request.
    #   If your results are paginated, the response will return a next page
    #   token that you can specify as the page token in a subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetLoadBalancersRequest AWS API Documentation
    #
    class GetLoadBalancersRequest < Struct.new(
      :page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] load_balancers
    #   An array of LoadBalancer objects describing your load balancers.
    #   @return [Array<Types::LoadBalancer>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of results from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another `GetLoadBalancers`
    #   request and specify the next page token using the `pageToken`
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetLoadBalancersResult AWS API Documentation
    #
    class GetLoadBalancersResult < Struct.new(
      :load_balancers,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   A GUID used to identify the operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetOperationRequest AWS API Documentation
    #
    class GetOperationRequest < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetOperationResult AWS API Documentation
    #
    class GetOperationResult < Struct.new(
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_name
    #   The name of the resource for which you are requesting information.
    #   @return [String]
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetOperationsForResource`
    #   request. If your results are paginated, the response will return a
    #   next page token that you can specify as the page token in a
    #   subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetOperationsForResourceRequest AWS API Documentation
    #
    class GetOperationsForResourceRequest < Struct.new(
      :resource_name,
      :page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @!attribute [rw] next_page_count
    #   (Discontinued) Returns the number of pages of results that remain.
    #
    #   <note markdown="1"> In releases prior to June 12, 2017, this parameter returned `null`
    #   by the API. It is now discontinued, and the API returns the `next
    #   page token` parameter instead.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of results from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another
    #   `GetOperationsForResource` request and specify the next page token
    #   using the `pageToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetOperationsForResourceResult AWS API Documentation
    #
    class GetOperationsForResourceResult < Struct.new(
      :operations,
      :next_page_count,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetOperations` request. If
    #   your results are paginated, the response will return a next page
    #   token that you can specify as the page token in a subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetOperationsRequest AWS API Documentation
    #
    class GetOperationsRequest < Struct.new(
      :page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of results from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another `GetOperations`
    #   request and specify the next page token using the `pageToken`
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetOperationsResult AWS API Documentation
    #
    class GetOperationsResult < Struct.new(
      :operations,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] include_availability_zones
    #   A Boolean value indicating whether to also include Availability
    #   Zones in your get regions request. Availability Zones are indicated
    #   with a letter: `us-east-2a`.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_relational_database_availability_zones
    #   A Boolean value indicating whether to also include Availability
    #   Zones for databases in your get regions request. Availability Zones
    #   are indicated with a letter (`us-east-2a`).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRegionsRequest AWS API Documentation
    #
    class GetRegionsRequest < Struct.new(
      :include_availability_zones,
      :include_relational_database_availability_zones)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] regions
    #   An array of key-value pairs containing information about your get
    #   regions request.
    #   @return [Array<Types::Region>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRegionsResult AWS API Documentation
    #
    class GetRegionsResult < Struct.new(
      :regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial
    #   `GetRelationalDatabaseBlueprints` request. If your results are
    #   paginated, the response will return a next page token that you can
    #   specify as the page token in a subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseBlueprintsRequest AWS API Documentation
    #
    class GetRelationalDatabaseBlueprintsRequest < Struct.new(
      :page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blueprints
    #   An object describing the result of your get relational database
    #   blueprints request.
    #   @return [Array<Types::RelationalDatabaseBlueprint>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of results from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another
    #   `GetRelationalDatabaseBlueprints` request and specify the next page
    #   token using the `pageToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseBlueprintsResult AWS API Documentation
    #
    class GetRelationalDatabaseBlueprintsResult < Struct.new(
      :blueprints,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial
    #   `GetRelationalDatabaseBundles` request. If your results are
    #   paginated, the response will return a next page token that you can
    #   specify as the page token in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] include_inactive
    #   A Boolean value that indicates whether to include inactive
    #   (unavailable) bundles in the response of your request.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseBundlesRequest AWS API Documentation
    #
    class GetRelationalDatabaseBundlesRequest < Struct.new(
      :page_token,
      :include_inactive)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bundles
    #   An object describing the result of your get relational database
    #   bundles request.
    #   @return [Array<Types::RelationalDatabaseBundle>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of results from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another
    #   `GetRelationalDatabaseBundles` request and specify the next page
    #   token using the `pageToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseBundlesResult AWS API Documentation
    #
    class GetRelationalDatabaseBundlesResult < Struct.new(
      :bundles,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] relational_database_name
    #   The name of the database from which to get events.
    #   @return [String]
    #
    # @!attribute [rw] duration_in_minutes
    #   The number of minutes in the past from which to retrieve events. For
    #   example, to get all events from the past 2 hours, enter 120.
    #
    #   Default: `60`
    #
    #   The minimum is 1 and the maximum is 14 days (20160 minutes).
    #   @return [Integer]
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial
    #   `GetRelationalDatabaseEvents` request. If your results are
    #   paginated, the response will return a next page token that you can
    #   specify as the page token in a subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseEventsRequest AWS API Documentation
    #
    class GetRelationalDatabaseEventsRequest < Struct.new(
      :relational_database_name,
      :duration_in_minutes,
      :page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] relational_database_events
    #   An object describing the result of your get relational database
    #   events request.
    #   @return [Array<Types::RelationalDatabaseEvent>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of results from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another
    #   `GetRelationalDatabaseEvents` request and specify the next page
    #   token using the `pageToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseEventsResult AWS API Documentation
    #
    class GetRelationalDatabaseEventsResult < Struct.new(
      :relational_database_events,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] relational_database_name
    #   The name of your database for which to get log events.
    #   @return [String]
    #
    # @!attribute [rw] log_stream_name
    #   The name of the log stream.
    #
    #   Use the `get relational database log streams` operation to get a
    #   list of available log streams.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start of the time interval from which to get log events.
    #
    #   Constraints:
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Specified in the Unix time format.
    #
    #     For example, if you wish to use a start time of October 1, 2018,
    #     at 8 PM UTC, then you input `1538424000` as the start time.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time interval from which to get log events.
    #
    #   Constraints:
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Specified in the Unix time format.
    #
    #     For example, if you wish to use an end time of October 1, 2018, at
    #     8 PM UTC, then you input `1538424000` as the end time.
    #   @return [Time]
    #
    # @!attribute [rw] start_from_head
    #   Parameter to specify if the log should start from head or tail. If
    #   `true` is specified, the log event starts from the head of the log.
    #   If `false` is specified, the log event starts from the tail of the
    #   log.
    #
    #   <note markdown="1"> For PostgreSQL, the default value of `false` is the only option
    #   available.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next or previous page of results from
    #   your request.
    #
    #   To get a page token, perform an initial
    #   `GetRelationalDatabaseLogEvents` request. If your results are
    #   paginated, the response will return a next forward token and/or next
    #   backward token that you can specify as the page token in a
    #   subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseLogEventsRequest AWS API Documentation
    #
    class GetRelationalDatabaseLogEventsRequest < Struct.new(
      :relational_database_name,
      :log_stream_name,
      :start_time,
      :end_time,
      :start_from_head,
      :page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_log_events
    #   An object describing the result of your get relational database log
    #   events request.
    #   @return [Array<Types::LogEvent>]
    #
    # @!attribute [rw] next_backward_token
    #   A token used for advancing to the previous page of results from your
    #   get relational database log events request.
    #   @return [String]
    #
    # @!attribute [rw] next_forward_token
    #   A token used for advancing to the next page of results from your get
    #   relational database log events request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseLogEventsResult AWS API Documentation
    #
    class GetRelationalDatabaseLogEventsResult < Struct.new(
      :resource_log_events,
      :next_backward_token,
      :next_forward_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] relational_database_name
    #   The name of your database for which to get log streams.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseLogStreamsRequest AWS API Documentation
    #
    class GetRelationalDatabaseLogStreamsRequest < Struct.new(
      :relational_database_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_streams
    #   An object describing the result of your get relational database log
    #   streams request.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseLogStreamsResult AWS API Documentation
    #
    class GetRelationalDatabaseLogStreamsResult < Struct.new(
      :log_streams)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] relational_database_name
    #   The name of your database for which to get the master user password.
    #   @return [String]
    #
    # @!attribute [rw] password_version
    #   The password version to return.
    #
    #   Specifying `CURRENT` or `PREVIOUS` returns the current or previous
    #   passwords respectively. Specifying `PENDING` returns the newest
    #   version of the password that will rotate to `CURRENT`. After the
    #   `PENDING` password rotates to `CURRENT`, the `PENDING` password is
    #   no longer available.
    #
    #   Default: `CURRENT`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseMasterUserPasswordRequest AWS API Documentation
    #
    class GetRelationalDatabaseMasterUserPasswordRequest < Struct.new(
      :relational_database_name,
      :password_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] master_user_password
    #   The master user password for the `password version` specified.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the specified version of the master user password
    #   was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseMasterUserPasswordResult AWS API Documentation
    #
    class GetRelationalDatabaseMasterUserPasswordResult < Struct.new(
      :master_user_password,
      :created_at)
      SENSITIVE = [:master_user_password]
      include Aws::Structure
    end

    # @!attribute [rw] relational_database_name
    #   The name of your database from which to get metric data.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The metric for which you want to return information.
    #
    #   Valid relational database metric names are listed below, along with
    #   the most useful `statistics` to include in your request, and the
    #   published `unit` value. All relational database metric data is
    #   available in 1-minute (60 seconds) granularity.
    #
    #   * <b> <code>CPUUtilization</code> </b> - The percentage of CPU
    #     utilization currently in use on the database.
    #
    #     `Statistics`: The most useful statistics are `Maximum` and
    #     `Average`.
    #
    #     `Unit`: The published unit is `Percent`.
    #
    #   * <b> <code>DatabaseConnections</code> </b> - The number of database
    #     connections in use.
    #
    #     `Statistics`: The most useful statistics are `Maximum` and `Sum`.
    #
    #     `Unit`: The published unit is `Count`.
    #
    #   * <b> <code>DiskQueueDepth</code> </b> - The number of outstanding
    #     IOs (read/write requests) that are waiting to access the disk.
    #
    #     `Statistics`: The most useful statistic is `Sum`.
    #
    #     `Unit`: The published unit is `Count`.
    #
    #   * <b> <code>FreeStorageSpace</code> </b> - The amount of available
    #     storage space.
    #
    #     `Statistics`: The most useful statistic is `Sum`.
    #
    #     `Unit`: The published unit is `Bytes`.
    #
    #   * <b> <code>NetworkReceiveThroughput</code> </b> - The incoming
    #     (Receive) network traffic on the database, including both customer
    #     database traffic and AWS traffic used for monitoring and
    #     replication.
    #
    #     `Statistics`: The most useful statistic is `Average`.
    #
    #     `Unit`: The published unit is `Bytes/Second`.
    #
    #   * <b> <code>NetworkTransmitThroughput</code> </b> - The outgoing
    #     (Transmit) network traffic on the database, including both
    #     customer database traffic and AWS traffic used for monitoring and
    #     replication.
    #
    #     `Statistics`: The most useful statistic is `Average`.
    #
    #     `Unit`: The published unit is `Bytes/Second`.
    #   @return [String]
    #
    # @!attribute [rw] period
    #   The granularity, in seconds, of the returned data points.
    #
    #   All relational database metric data is available in 1-minute (60
    #   seconds) granularity.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   The start of the time interval from which to get metric data.
    #
    #   Constraints:
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Specified in the Unix time format.
    #
    #     For example, if you wish to use a start time of October 1, 2018,
    #     at 8 PM UTC, then you input `1538424000` as the start time.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time interval from which to get metric data.
    #
    #   Constraints:
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Specified in the Unix time format.
    #
    #     For example, if you wish to use an end time of October 1, 2018, at
    #     8 PM UTC, then you input `1538424000` as the end time.
    #   @return [Time]
    #
    # @!attribute [rw] unit
    #   The unit for the metric data request. Valid units depend on the
    #   metric data being requested. For the valid units with each available
    #   metric, see the `metricName` parameter.
    #   @return [String]
    #
    # @!attribute [rw] statistics
    #   The statistic for the metric.
    #
    #   The following statistics are available:
    #
    #   * `Minimum` - The lowest value observed during the specified period.
    #     Use this value to determine low volumes of activity for your
    #     application.
    #
    #   * `Maximum` - The highest value observed during the specified
    #     period. Use this value to determine high volumes of activity for
    #     your application.
    #
    #   * `Sum` - All values submitted for the matching metric added
    #     together. You can use this statistic to determine the total volume
    #     of a metric.
    #
    #   * `Average` - The value of Sum / SampleCount during the specified
    #     period. By comparing this statistic with the Minimum and Maximum
    #     values, you can determine the full scope of a metric and how close
    #     the average use is to the Minimum and Maximum values. This
    #     comparison helps you to know when to increase or decrease your
    #     resources.
    #
    #   * `SampleCount` - The count, or number, of data points used for the
    #     statistical calculation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseMetricDataRequest AWS API Documentation
    #
    class GetRelationalDatabaseMetricDataRequest < Struct.new(
      :relational_database_name,
      :metric_name,
      :period,
      :start_time,
      :end_time,
      :unit,
      :statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metric_name
    #   The name of the metric returned.
    #   @return [String]
    #
    # @!attribute [rw] metric_data
    #   An array of objects that describe the metric data returned.
    #   @return [Array<Types::MetricDatapoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseMetricDataResult AWS API Documentation
    #
    class GetRelationalDatabaseMetricDataResult < Struct.new(
      :metric_name,
      :metric_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] relational_database_name
    #   The name of your database for which to get parameters.
    #   @return [String]
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial
    #   `GetRelationalDatabaseParameters` request. If your results are
    #   paginated, the response will return a next page token that you can
    #   specify as the page token in a subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseParametersRequest AWS API Documentation
    #
    class GetRelationalDatabaseParametersRequest < Struct.new(
      :relational_database_name,
      :page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] parameters
    #   An object describing the result of your get relational database
    #   parameters request.
    #   @return [Array<Types::RelationalDatabaseParameter>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of results from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another
    #   `GetRelationalDatabaseParameters` request and specify the next page
    #   token using the `pageToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseParametersResult AWS API Documentation
    #
    class GetRelationalDatabaseParametersResult < Struct.new(
      :parameters,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] relational_database_name
    #   The name of the database that you are looking up.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseRequest AWS API Documentation
    #
    class GetRelationalDatabaseRequest < Struct.new(
      :relational_database_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] relational_database
    #   An object describing the specified database.
    #   @return [Types::RelationalDatabase]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseResult AWS API Documentation
    #
    class GetRelationalDatabaseResult < Struct.new(
      :relational_database)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] relational_database_snapshot_name
    #   The name of the database snapshot for which to get information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseSnapshotRequest AWS API Documentation
    #
    class GetRelationalDatabaseSnapshotRequest < Struct.new(
      :relational_database_snapshot_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] relational_database_snapshot
    #   An object describing the specified database snapshot.
    #   @return [Types::RelationalDatabaseSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseSnapshotResult AWS API Documentation
    #
    class GetRelationalDatabaseSnapshotResult < Struct.new(
      :relational_database_snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial
    #   `GetRelationalDatabaseSnapshots` request. If your results are
    #   paginated, the response will return a next page token that you can
    #   specify as the page token in a subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseSnapshotsRequest AWS API Documentation
    #
    class GetRelationalDatabaseSnapshotsRequest < Struct.new(
      :page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] relational_database_snapshots
    #   An object describing the result of your get relational database
    #   snapshots request.
    #   @return [Array<Types::RelationalDatabaseSnapshot>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of results from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another
    #   `GetRelationalDatabaseSnapshots` request and specify the next page
    #   token using the `pageToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseSnapshotsResult AWS API Documentation
    #
    class GetRelationalDatabaseSnapshotsResult < Struct.new(
      :relational_database_snapshots,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetRelationalDatabases`
    #   request. If your results are paginated, the response will return a
    #   next page token that you can specify as the page token in a
    #   subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabasesRequest AWS API Documentation
    #
    class GetRelationalDatabasesRequest < Struct.new(
      :page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] relational_databases
    #   An object describing the result of your get relational databases
    #   request.
    #   @return [Array<Types::RelationalDatabase>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of results from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another
    #   `GetRelationalDatabases` request and specify the next page token
    #   using the `pageToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabasesResult AWS API Documentation
    #
    class GetRelationalDatabasesResult < Struct.new(
      :relational_databases,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_name
    #   The name of the resource for which you are requesting information.
    #   @return [String]
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetSetupHistory` request.
    #   If your results are paginated, the response will return a next page
    #   token that you can specify as the page token in a subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetSetupHistoryRequest AWS API Documentation
    #
    class GetSetupHistoryRequest < Struct.new(
      :resource_name,
      :page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] setup_history
    #   The historical information that's returned.
    #   @return [Array<Types::SetupHistory>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of results from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another `GetSetupHistory`
    #   request and specify the next page token using the pageToken
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetSetupHistoryResult AWS API Documentation
    #
    class GetSetupHistoryResult < Struct.new(
      :setup_history,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] static_ip_name
    #   The name of the static IP in Lightsail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetStaticIpRequest AWS API Documentation
    #
    class GetStaticIpRequest < Struct.new(
      :static_ip_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] static_ip
    #   An array of key-value pairs containing information about the
    #   requested static IP.
    #   @return [Types::StaticIp]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetStaticIpResult AWS API Documentation
    #
    class GetStaticIpResult < Struct.new(
      :static_ip)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetStaticIps` request. If
    #   your results are paginated, the response will return a next page
    #   token that you can specify as the page token in a subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetStaticIpsRequest AWS API Documentation
    #
    class GetStaticIpsRequest < Struct.new(
      :page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] static_ips
    #   An array of key-value pairs containing information about your get
    #   static IPs request.
    #   @return [Array<Types::StaticIp>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of results from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another `GetStaticIps`
    #   request and specify the next page token using the `pageToken`
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetStaticIpsResult AWS API Documentation
    #
    class GetStaticIpsResult < Struct.new(
      :static_ips,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the request headers that a Lightsail distribution bases
    # caching on.
    #
    # For the headers that you specify, your distribution caches separate
    # versions of the specified content based on the header values in viewer
    # requests. For example, suppose viewer requests for `logo.jpg` contain
    # a custom `product` header that has a value of either `acme` or `apex`,
    # and you configure your distribution to cache your content based on
    # values in the `product` header. Your distribution forwards the
    # `product` header to the origin and caches the response from the origin
    # once for each header value.
    #
    # @!attribute [rw] option
    #   The headers that you want your distribution to forward to your
    #   origin and base caching on.
    #
    #   You can configure your distribution to do one of the following:
    #
    #   * <b> <code>all</code> </b> - Forward all headers to your origin.
    #
    #   * <b> <code>none</code> </b> - Forward only the default headers.
    #
    #   * <b> <code>allow-list</code> </b> - Forward only the headers you
    #     specify using the `headersAllowList` parameter.
    #   @return [String]
    #
    # @!attribute [rw] headers_allow_list
    #   The specific headers to forward to your distribution's origin.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/HeaderObject AWS API Documentation
    #
    class HeaderObject < Struct.new(
      :option,
      :headers_allow_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the public SSH host keys or the RDP certificate.
    #
    # @!attribute [rw] algorithm
    #   The SSH host key algorithm or the RDP certificate format.
    #
    #   For SSH host keys, the algorithm may be `ssh-rsa`,
    #   `ecdsa-sha2-nistp256`, `ssh-ed25519`, etc. For RDP certificates, the
    #   algorithm is always `x509-cert`.
    #   @return [String]
    #
    # @!attribute [rw] public_key
    #   The public SSH host key or the RDP certificate.
    #   @return [String]
    #
    # @!attribute [rw] witnessed_at
    #   The time that the SSH host key or RDP certificate was recorded by
    #   Lightsail.
    #   @return [Time]
    #
    # @!attribute [rw] fingerprint_sha1
    #   The SHA-1 fingerprint of the returned SSH host key or RDP
    #   certificate.
    #
    #   * Example of an SHA-1 SSH fingerprint:
    #
    #     `SHA1:1CHH6FaAaXjtFOsR/t83vf91SR0`
    #
    #   * Example of an SHA-1 RDP fingerprint:
    #
    #     `af:34:51:fe:09:f0:e0:da:b8:4e:56:ca:60:c2:10:ff:38:06:db:45`
    #   @return [String]
    #
    # @!attribute [rw] fingerprint_sha256
    #   The SHA-256 fingerprint of the returned SSH host key or RDP
    #   certificate.
    #
    #   * Example of an SHA-256 SSH fingerprint:
    #
    #     `SHA256:KTsMnRBh1IhD17HpdfsbzeGA4jOijm5tyXsMjKVbB8o`
    #
    #   * Example of an SHA-256 RDP fingerprint:
    #
    #     `03:9b:36:9f:4b:de:4e:61:70:fc:7c:c9:78:e7:d2:1a:1c:25:a8:0c:91:f6:7c:e4:d6:a0:85:c8:b4:53:99:68`
    #   @return [String]
    #
    # @!attribute [rw] not_valid_before
    #   The returned RDP certificate is valid after this point in time.
    #
    #   This value is listed only for RDP certificates.
    #   @return [Time]
    #
    # @!attribute [rw] not_valid_after
    #   The returned RDP certificate is not valid after this point in time.
    #
    #   This value is listed only for RDP certificates.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/HostKeyAttributes AWS API Documentation
    #
    class HostKeyAttributes < Struct.new(
      :algorithm,
      :public_key,
      :witnessed_at,
      :fingerprint_sha1,
      :fingerprint_sha256,
      :not_valid_before,
      :not_valid_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_pair_name
    #   The name of the key pair for which you want to import the public
    #   key.
    #   @return [String]
    #
    # @!attribute [rw] public_key_base_64
    #   A base64-encoded public key of the `ssh-rsa` type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ImportKeyPairRequest AWS API Documentation
    #
    class ImportKeyPairRequest < Struct.new(
      :key_pair_name,
      :public_key_base_64)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ImportKeyPairResult AWS API Documentation
    #
    class ImportKeyPairResult < Struct.new(
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the origin resource of an Amazon Lightsail content delivery
    # network (CDN) distribution.
    #
    # An origin can be a Lightsail instance, bucket, container service, or
    # load balancer. A distribution pulls content from an origin, caches it,
    # and serves it to viewers via a worldwide network of edge servers.
    #
    # @!attribute [rw] name
    #   The name of the origin resource.
    #   @return [String]
    #
    # @!attribute [rw] region_name
    #   The AWS Region name of the origin resource.
    #   @return [String]
    #
    # @!attribute [rw] protocol_policy
    #   The protocol that your Amazon Lightsail distribution uses when
    #   establishing a connection with your origin to pull content.
    #   @return [String]
    #
    # @!attribute [rw] response_timeout
    #   The amount of time, in seconds, that the distribution waits for a
    #   response after forwarding a request to the origin. The minimum
    #   timeout is 1 second, the maximum is 60 seconds, and the default (if
    #   you don't specify otherwise) is 30 seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InputOrigin AWS API Documentation
    #
    class InputOrigin < Struct.new(
      :name,
      :region_name,
      :protocol_policy,
      :response_timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an instance (a virtual private server).
    #
    # @!attribute [rw] name
    #   The name the user gave the instance (`Amazon_Linux_2023-1`).
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the instance
    #   (`arn:aws:lightsail:us-east-2:123456789101:Instance/244ad76f-8aad-4741-809f-12345EXAMPLE`).
    #   @return [String]
    #
    # @!attribute [rw] support_code
    #   The support code. Include this code in your email to support when
    #   you have questions about an instance or another resource in
    #   Lightsail. This code enables our support team to look up your
    #   Lightsail information more easily.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the instance was created (`1479734909.17`) in
    #   Unix time format.
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   The region name and Availability Zone where the instance is located.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The type of resource (usually `Instance`).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values for the resource. For more
    #   information about tags in Lightsail, see the [Amazon Lightsail
    #   Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] blueprint_id
    #   The blueprint ID (`amazon_linux_2023`).
    #   @return [String]
    #
    # @!attribute [rw] blueprint_name
    #   The friendly name of the blueprint (`Amazon Linux 2023`).
    #   @return [String]
    #
    # @!attribute [rw] bundle_id
    #   The bundle for the instance (`micro_x_x`).
    #   @return [String]
    #
    # @!attribute [rw] add_ons
    #   An array of objects representing the add-ons enabled on the
    #   instance.
    #   @return [Array<Types::AddOn>]
    #
    # @!attribute [rw] is_static_ip
    #   A Boolean value indicating whether this instance has a static IP
    #   assigned to it.
    #   @return [Boolean]
    #
    # @!attribute [rw] private_ip_address
    #   The private IP address of the instance.
    #   @return [String]
    #
    # @!attribute [rw] public_ip_address
    #   The public IP address of the instance.
    #   @return [String]
    #
    # @!attribute [rw] ipv6_addresses
    #   The IPv6 addresses of the instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type of the instance.
    #
    #   The possible values are `ipv4` for IPv4 only, `ipv6` for IPv6 only,
    #   and `dualstack` for IPv4 and IPv6.
    #   @return [String]
    #
    # @!attribute [rw] hardware
    #   The size of the vCPU and the amount of RAM for the instance.
    #   @return [Types::InstanceHardware]
    #
    # @!attribute [rw] networking
    #   Information about the public ports and monthly data transfer rates
    #   for the instance.
    #   @return [Types::InstanceNetworking]
    #
    # @!attribute [rw] state
    #   The status code and the state (`running`) for the instance.
    #   @return [Types::InstanceState]
    #
    # @!attribute [rw] username
    #   The user name for connecting to the instance (`ec2-user`).
    #   @return [String]
    #
    # @!attribute [rw] ssh_key_name
    #   The name of the SSH key being used to connect to the instance
    #   (`LightsailDefaultKeyPair`).
    #   @return [String]
    #
    # @!attribute [rw] metadata_options
    #   The metadata options for the Amazon Lightsail instance.
    #   @return [Types::InstanceMetadataOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Instance AWS API Documentation
    #
    class Instance < Struct.new(
      :name,
      :arn,
      :support_code,
      :created_at,
      :location,
      :resource_type,
      :tags,
      :blueprint_id,
      :blueprint_name,
      :bundle_id,
      :add_ons,
      :is_static_ip,
      :private_ip_address,
      :public_ip_address,
      :ipv6_addresses,
      :ip_address_type,
      :hardware,
      :networking,
      :state,
      :username,
      :ssh_key_name,
      :metadata_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for gaining temporary access to one of your Amazon
    # Lightsail instances.
    #
    # @!attribute [rw] cert_key
    #   For SSH access, the public key to use when accessing your instance
    #   For OpenSSH clients (command line SSH), you should save this value
    #   to `tempkey-cert.pub`.
    #   @return [String]
    #
    # @!attribute [rw] expires_at
    #   For SSH access, the date on which the temporary keys expire.
    #   @return [Time]
    #
    # @!attribute [rw] ip_address
    #   The public IP address of the Amazon Lightsail instance.
    #   @return [String]
    #
    # @!attribute [rw] ipv6_addresses
    #   The IPv6 address of the Amazon Lightsail instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] password
    #   For RDP access, the password for your Amazon Lightsail instance.
    #   Password will be an empty string if the password for your new
    #   instance is not ready yet. When you create an instance, it can take
    #   up to 15 minutes for the instance to be ready.
    #
    #   <note markdown="1"> If you create an instance using any key pair other than the default
    #   (`LightsailDefaultKeyPair`), `password` will always be an empty
    #   string.
    #
    #    If you change the Administrator password on the instance, Lightsail
    #   will continue to return the original password value. When accessing
    #   the instance using RDP, you need to manually enter the Administrator
    #   password after changing it from the default.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] password_data
    #   For a Windows Server-based instance, an object with the data you can
    #   use to retrieve your password. This is only needed if `password` is
    #   empty and the instance is not new (and therefore the password is not
    #   ready yet). When you create an instance, it can take up to 15
    #   minutes for the instance to be ready.
    #   @return [Types::PasswordData]
    #
    # @!attribute [rw] private_key
    #   For SSH access, the temporary private key. For OpenSSH clients
    #   (command line SSH), you should save this value to `tempkey`).
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol for these Amazon Lightsail instance access details.
    #   @return [String]
    #
    # @!attribute [rw] instance_name
    #   The name of this Amazon Lightsail instance.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name to use when logging in to the Amazon Lightsail
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] host_keys
    #   Describes the public SSH host keys or the RDP certificate.
    #   @return [Array<Types::HostKeyAttributes>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InstanceAccessDetails AWS API Documentation
    #
    class InstanceAccessDetails < Struct.new(
      :cert_key,
      :expires_at,
      :ip_address,
      :ipv6_addresses,
      :password,
      :password_data,
      :private_key,
      :protocol,
      :instance_name,
      :username,
      :host_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the Amazon Elastic Compute Cloud instance and related
    # resources to be created using the `create cloud formation stack`
    # operation.
    #
    # @!attribute [rw] source_name
    #   The name of the export snapshot record, which contains the exported
    #   Lightsail instance snapshot that will be used as the source of the
    #   new Amazon EC2 instance.
    #
    #   Use the `get export snapshot records` operation to get a list of
    #   export snapshot records that you can use to create a CloudFormation
    #   stack.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type (`t2.micro`) to use for the new Amazon EC2
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] port_info_source
    #   The port configuration to use for the new Amazon EC2 instance.
    #
    #   The following configuration options are available:
    #
    #   * `DEFAULT` - Use the default firewall settings from the Lightsail
    #     instance blueprint. If this is specified, then IPv4 and IPv6 will
    #     be configured for the new instance that is created in Amazon EC2.
    #
    #   * `INSTANCE` - Use the configured firewall settings from the source
    #     Lightsail instance. If this is specified, the new instance that is
    #     created in Amazon EC2 will be configured to match the
    #     configuration of the source Lightsail instance. For example, if
    #     the source instance is configured for dual-stack (IPv4 and IPv6),
    #     then IPv4 and IPv6 will be configured for the new instance that is
    #     created in Amazon EC2. If the source instance is configured for
    #     IPv4 only, then only IPv4 will be configured for the new instance
    #     that is created in Amazon EC2.
    #
    #   * `NONE` - Use the default Amazon EC2 security group. If this is
    #     specified, then only IPv4 will be configured for the new instance
    #     that is created in Amazon EC2.
    #
    #   * `CLOSED` - All ports closed. If this is specified, then only IPv4
    #     will be configured for the new instance that is created in Amazon
    #     EC2.
    #
    #   <note markdown="1"> If you configured `lightsail-connect` as a `cidrListAliases` on your
    #   instance, or if you chose to allow the Lightsail browser-based SSH
    #   or RDP clients to connect to your instance, that configuration is
    #   not carried over to your new Amazon EC2 instance.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] user_data
    #   A launch script you can create that configures a server with
    #   additional user data. For example, you might want to run `apt-get -y
    #   update`.
    #
    #   <note markdown="1"> Depending on the machine image you choose, the command to get
    #   software on your instance varies. Amazon Linux and CentOS use `yum`,
    #   Debian and Ubuntu use `apt-get`, and FreeBSD uses `pkg`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone for the new Amazon EC2 instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InstanceEntry AWS API Documentation
    #
    class InstanceEntry < Struct.new(
      :source_name,
      :instance_type,
      :port_info_source,
      :user_data,
      :availability_zone)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the hardware for the instance.
    #
    # @!attribute [rw] cpu_count
    #   The number of vCPUs the instance has.
    #   @return [Integer]
    #
    # @!attribute [rw] disks
    #   The disks attached to the instance.
    #   @return [Array<Types::Disk>]
    #
    # @!attribute [rw] ram_size_in_gb
    #   The amount of RAM in GB on the instance (`1.0`).
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InstanceHardware AWS API Documentation
    #
    class InstanceHardware < Struct.new(
      :cpu_count,
      :disks,
      :ram_size_in_gb)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes information about the health of the instance.
    #
    # @!attribute [rw] instance_name
    #   The name of the Lightsail instance for which you are requesting
    #   health check data.
    #   @return [String]
    #
    # @!attribute [rw] instance_health
    #   Describes the overall instance health. Valid values are below.
    #   @return [String]
    #
    # @!attribute [rw] instance_health_reason
    #   More information about the instance health. If the `instanceHealth`
    #   is `healthy`, then an `instanceHealthReason` value is not provided.
    #
    #   If <b> <code>instanceHealth</code> </b> is `initial`, the <b>
    #   <code>instanceHealthReason</code> </b> value can be one of the
    #   following:
    #
    #   * <b> <code>Lb.RegistrationInProgress</code> </b> - The target
    #     instance is in the process of being registered with the load
    #     balancer.
    #
    #   * <b> <code>Lb.InitialHealthChecking</code> </b> - The Lightsail
    #     load balancer is still sending the target instance the minimum
    #     number of health checks required to determine its health status.
    #
    #   If <b> <code>instanceHealth</code> </b> is `unhealthy`, the <b>
    #   <code>instanceHealthReason</code> </b> value can be one of the
    #   following:
    #
    #   * <b> <code>Instance.ResponseCodeMismatch</code> </b> - The health
    #     checks did not return an expected HTTP code.
    #
    #   * <b> <code>Instance.Timeout</code> </b> - The health check requests
    #     timed out.
    #
    #   * <b> <code>Instance.FailedHealthChecks</code> </b> - The health
    #     checks failed because the connection to the target instance timed
    #     out, the target instance response was malformed, or the target
    #     instance failed the health check for an unknown reason.
    #
    #   * <b> <code>Lb.InternalError</code> </b> - The health checks failed
    #     due to an internal error.
    #
    #   If <b> <code>instanceHealth</code> </b> is `unused`, the <b>
    #   <code>instanceHealthReason</code> </b> value can be one of the
    #   following:
    #
    #   * <b> <code>Instance.NotRegistered</code> </b> - The target instance
    #     is not registered with the target group.
    #
    #   * <b> <code>Instance.NotInUse</code> </b> - The target group is not
    #     used by any load balancer, or the target instance is in an
    #     Availability Zone that is not enabled for its load balancer.
    #
    #   * <b> <code>Instance.IpUnusable</code> </b> - The target IP address
    #     is reserved for use by a Lightsail load balancer.
    #
    #   * <b> <code>Instance.InvalidState</code> </b> - The target is in the
    #     stopped or terminated state.
    #
    #   If <b> <code>instanceHealth</code> </b> is `draining`, the <b>
    #   <code>instanceHealthReason</code> </b> value can be one of the
    #   following:
    #
    #   * <b> <code>Instance.DeregistrationInProgress</code> </b> - The
    #     target instance is in the process of being deregistered and the
    #     deregistration delay period has not expired.
    #
    #   ^
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InstanceHealthSummary AWS API Documentation
    #
    class InstanceHealthSummary < Struct.new(
      :instance_name,
      :instance_health,
      :instance_health_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata options for the instance.
    #
    # @!attribute [rw] state
    #   The state of the metadata option changes.
    #
    #   The following states are possible:
    #
    #   * `pending` - The metadata options are being updated. The instance
    #     is not yet ready to process metadata traffic with the new
    #     selection.
    #
    #   * `applied` - The metadata options have been successfully applied to
    #     the instance.
    #   @return [String]
    #
    # @!attribute [rw] http_tokens
    #   The state of token usage for your instance metadata requests.
    #
    #   If the state is `optional`, you can choose whether to retrieve
    #   instance metadata with a signed token header on your request. If you
    #   retrieve the IAM role credentials without a token, the version 1.0
    #   role credentials are returned. If you retrieve the IAM role
    #   credentials by using a valid signed token, the version 2.0 role
    #   credentials are returned.
    #
    #   If the state is `required`, you must send a signed token header with
    #   all instance metadata retrieval requests. In this state, retrieving
    #   the IAM role credential always returns the version 2.0 credentials.
    #   The version 1.0 credentials are not available.
    #
    #   Not all instance blueprints in Lightsail support version 2.0
    #   credentials. Use the `MetadataNoToken` instance metric to track the
    #   number of calls to the instance metadata service that are using
    #   version 1.0 credentials. For more information, see [Viewing instance
    #   metrics in Amazon Lightsail][1] in the *Amazon Lightsail Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-viewing-instance-health-metrics
    #   @return [String]
    #
    # @!attribute [rw] http_endpoint
    #   Indicates whether the HTTP metadata endpoint on your instances is
    #   enabled or disabled.
    #
    #   If the value is `disabled`, you cannot access your instance
    #   metadata.
    #   @return [String]
    #
    # @!attribute [rw] http_put_response_hop_limit
    #   The desired HTTP PUT response hop limit for instance metadata
    #   requests. A larger number means that the instance metadata requests
    #   can travel farther.
    #   @return [Integer]
    #
    # @!attribute [rw] http_protocol_ipv_6
    #   Indicates whether the IPv6 endpoint for the instance metadata
    #   service is enabled or disabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InstanceMetadataOptions AWS API Documentation
    #
    class InstanceMetadataOptions < Struct.new(
      :state,
      :http_tokens,
      :http_endpoint,
      :http_put_response_hop_limit,
      :http_protocol_ipv_6)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes monthly data transfer rates and port information for an
    # instance.
    #
    # @!attribute [rw] monthly_transfer
    #   The amount of data in GB allocated for monthly data transfers.
    #   @return [Types::MonthlyTransfer]
    #
    # @!attribute [rw] ports
    #   An array of key-value pairs containing information about the ports
    #   on the instance.
    #   @return [Array<Types::InstancePortInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InstanceNetworking AWS API Documentation
    #
    class InstanceNetworking < Struct.new(
      :monthly_transfer,
      :ports)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes information about ports for an Amazon Lightsail instance.
    #
    # @!attribute [rw] from_port
    #   The first port in a range of open ports on an instance.
    #
    #   Allowed ports:
    #
    #   * TCP and UDP - `0` to `65535`
    #
    #   * ICMP - The ICMP type for IPv4 addresses. For example, specify `8`
    #     as the `fromPort` (ICMP type), and `-1` as the `toPort` (ICMP
    #     code), to enable ICMP Ping. For more information, see [Control
    #     Messages][1] on *Wikipedia*.
    #
    #   * ICMPv6 - The ICMP type for IPv6 addresses. For example, specify
    #     `128` as the `fromPort` (ICMPv6 type), and `0` as `toPort` (ICMPv6
    #     code). For more information, see [Internet Control Message
    #     Protocol for IPv6][2].
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol#Control_messages
    #   [2]: https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol_for_IPv6
    #   @return [Integer]
    #
    # @!attribute [rw] to_port
    #   The last port in a range of open ports on an instance.
    #
    #   Allowed ports:
    #
    #   * TCP and UDP - `0` to `65535`
    #
    #   * ICMP - The ICMP code for IPv4 addresses. For example, specify `8`
    #     as the `fromPort` (ICMP type), and `-1` as the `toPort` (ICMP
    #     code), to enable ICMP Ping. For more information, see [Control
    #     Messages][1] on *Wikipedia*.
    #
    #   * ICMPv6 - The ICMP code for IPv6 addresses. For example, specify
    #     `128` as the `fromPort` (ICMPv6 type), and `0` as `toPort` (ICMPv6
    #     code). For more information, see [Internet Control Message
    #     Protocol for IPv6][2].
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol#Control_messages
    #   [2]: https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol_for_IPv6
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The IP protocol name.
    #
    #   The name can be one of the following:
    #
    #   * `tcp` - Transmission Control Protocol (TCP) provides reliable,
    #     ordered, and error-checked delivery of streamed data between
    #     applications running on hosts communicating by an IP network. If
    #     you have an application that doesn't require reliable data stream
    #     service, use UDP instead.
    #
    #   * `all` - All transport layer protocol types. For more general
    #     information, see [Transport layer][1] on *Wikipedia*.
    #
    #   * `udp` - With User Datagram Protocol (UDP), computer applications
    #     can send messages (or datagrams) to other hosts on an Internet
    #     Protocol (IP) network. Prior communications are not required to
    #     set up transmission channels or data paths. Applications that
    #     don't require reliable data stream service can use UDP, which
    #     provides a connectionless datagram service that emphasizes reduced
    #     latency over reliability. If you do require reliable data stream
    #     service, use TCP instead.
    #
    #   * `icmp` - Internet Control Message Protocol (ICMP) is used to send
    #     error messages and operational information indicating success or
    #     failure when communicating with an instance. For example, an error
    #     is indicated when an instance could not be reached. When you
    #     specify `icmp` as the `protocol`, you must specify the ICMP type
    #     using the `fromPort` parameter, and ICMP code using the `toPort`
    #     parameter.
    #
    #   * `icmp6` - Internet Control Message Protocol (ICMP) for IPv6. When
    #     you specify `icmp6` as the `protocol`, you must specify the ICMP
    #     type using the `fromPort` parameter, and ICMP code using the
    #     `toPort` parameter.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Transport_layer
    #   @return [String]
    #
    # @!attribute [rw] access_from
    #   The location from which access is allowed. For example, `Anywhere
    #   (0.0.0.0/0)`, or `Custom` if a specific IP address or range of IP
    #   addresses is allowed.
    #   @return [String]
    #
    # @!attribute [rw] access_type
    #   The type of access (`Public` or `Private`).
    #   @return [String]
    #
    # @!attribute [rw] common_name
    #   The common name of the port information.
    #   @return [String]
    #
    # @!attribute [rw] access_direction
    #   The access direction (`inbound` or `outbound`).
    #
    #   <note markdown="1"> Lightsail currently supports only `inbound` access direction.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] cidrs
    #   The IPv4 address, or range of IPv4 addresses (in CIDR notation) that
    #   are allowed to connect to an instance through the ports, and the
    #   protocol.
    #
    #   <note markdown="1"> The `ipv6Cidrs` parameter lists the IPv6 addresses that are allowed
    #   to connect to an instance.
    #
    #    </note>
    #
    #   For more information about CIDR block notation, see [Classless
    #   Inter-Domain Routing][1] on *Wikipedia*.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing#CIDR_notation
    #   @return [Array<String>]
    #
    # @!attribute [rw] ipv6_cidrs
    #   The IPv6 address, or range of IPv6 addresses (in CIDR notation) that
    #   are allowed to connect to an instance through the ports, and the
    #   protocol. Only devices with an IPv6 address can connect to an
    #   instance through IPv6; otherwise, IPv4 should be used.
    #
    #   <note markdown="1"> The `cidrs` parameter lists the IPv4 addresses that are allowed to
    #   connect to an instance.
    #
    #    </note>
    #
    #   For more information about CIDR block notation, see [Classless
    #   Inter-Domain Routing][1] on *Wikipedia*.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing#CIDR_notation
    #   @return [Array<String>]
    #
    # @!attribute [rw] cidr_list_aliases
    #   An alias that defines access for a preconfigured range of IP
    #   addresses.
    #
    #   The only alias currently supported is `lightsail-connect`, which
    #   allows IP addresses of the browser-based RDP/SSH client in the
    #   Lightsail console to connect to your instance.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InstancePortInfo AWS API Documentation
    #
    class InstancePortInfo < Struct.new(
      :from_port,
      :to_port,
      :protocol,
      :access_from,
      :access_type,
      :common_name,
      :access_direction,
      :cidrs,
      :ipv6_cidrs,
      :cidr_list_aliases)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes open ports on an instance, the IP addresses allowed to
    # connect to the instance through the ports, and the protocol.
    #
    # @!attribute [rw] from_port
    #   The first port in a range of open ports on an instance.
    #
    #   Allowed ports:
    #
    #   * TCP and UDP - `0` to `65535`
    #
    #   * ICMP - The ICMP type for IPv4 addresses. For example, specify `8`
    #     as the `fromPort` (ICMP type), and `-1` as the `toPort` (ICMP
    #     code), to enable ICMP Ping. For more information, see [Control
    #     Messages][1] on *Wikipedia*.
    #
    #   * ICMPv6 - The ICMP type for IPv6 addresses. For example, specify
    #     `128` as the `fromPort` (ICMPv6 type), and `0` as `toPort` (ICMPv6
    #     code). For more information, see [Internet Control Message
    #     Protocol for IPv6][2].
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol#Control_messages
    #   [2]: https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol_for_IPv6
    #   @return [Integer]
    #
    # @!attribute [rw] to_port
    #   The last port in a range of open ports on an instance.
    #
    #   Allowed ports:
    #
    #   * TCP and UDP - `0` to `65535`
    #
    #   * ICMP - The ICMP code for IPv4 addresses. For example, specify `8`
    #     as the `fromPort` (ICMP type), and `-1` as the `toPort` (ICMP
    #     code), to enable ICMP Ping. For more information, see [Control
    #     Messages][1] on *Wikipedia*.
    #
    #   * ICMPv6 - The ICMP code for IPv6 addresses. For example, specify
    #     `128` as the `fromPort` (ICMPv6 type), and `0` as `toPort` (ICMPv6
    #     code). For more information, see [Internet Control Message
    #     Protocol for IPv6][2].
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol#Control_messages
    #   [2]: https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol_for_IPv6
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The IP protocol name.
    #
    #   The name can be one of the following:
    #
    #   * `tcp` - Transmission Control Protocol (TCP) provides reliable,
    #     ordered, and error-checked delivery of streamed data between
    #     applications running on hosts communicating by an IP network. If
    #     you have an application that doesn't require reliable data stream
    #     service, use UDP instead.
    #
    #   * `all` - All transport layer protocol types. For more general
    #     information, see [Transport layer][1] on *Wikipedia*.
    #
    #   * `udp` - With User Datagram Protocol (UDP), computer applications
    #     can send messages (or datagrams) to other hosts on an Internet
    #     Protocol (IP) network. Prior communications are not required to
    #     set up transmission channels or data paths. Applications that
    #     don't require reliable data stream service can use UDP, which
    #     provides a connectionless datagram service that emphasizes reduced
    #     latency over reliability. If you do require reliable data stream
    #     service, use TCP instead.
    #
    #   * `icmp` - Internet Control Message Protocol (ICMP) is used to send
    #     error messages and operational information indicating success or
    #     failure when communicating with an instance. For example, an error
    #     is indicated when an instance could not be reached. When you
    #     specify `icmp` as the `protocol`, you must specify the ICMP type
    #     using the `fromPort` parameter, and ICMP code using the `toPort`
    #     parameter.
    #
    #   * `icmp6` - Internet Control Message Protocol (ICMP) for IPv6. When
    #     you specify `icmp6` as the `protocol`, you must specify the ICMP
    #     type using the `fromPort` parameter, and ICMP code using the
    #     `toPort` parameter.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Transport_layer
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Specifies whether the instance port is `open` or `closed`.
    #
    #   <note markdown="1"> The port state for Lightsail instances is always `open`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] cidrs
    #   The IPv4 address, or range of IPv4 addresses (in CIDR notation) that
    #   are allowed to connect to an instance through the ports, and the
    #   protocol.
    #
    #   <note markdown="1"> The `ipv6Cidrs` parameter lists the IPv6 addresses that are allowed
    #   to connect to an instance.
    #
    #    </note>
    #
    #   For more information about CIDR block notation, see [Classless
    #   Inter-Domain Routing][1] on *Wikipedia*.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing#CIDR_notation
    #   @return [Array<String>]
    #
    # @!attribute [rw] ipv6_cidrs
    #   The IPv6 address, or range of IPv6 addresses (in CIDR notation) that
    #   are allowed to connect to an instance through the ports, and the
    #   protocol. Only devices with an IPv6 address can connect to an
    #   instance through IPv6; otherwise, IPv4 should be used.
    #
    #   <note markdown="1"> The `cidrs` parameter lists the IPv4 addresses that are allowed to
    #   connect to an instance.
    #
    #    </note>
    #
    #   For more information about CIDR block notation, see [Classless
    #   Inter-Domain Routing][1] on *Wikipedia*.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing#CIDR_notation
    #   @return [Array<String>]
    #
    # @!attribute [rw] cidr_list_aliases
    #   An alias that defines access for a preconfigured range of IP
    #   addresses.
    #
    #   The only alias currently supported is `lightsail-connect`, which
    #   allows IP addresses of the browser-based RDP/SSH client in the
    #   Lightsail console to connect to your instance.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InstancePortState AWS API Documentation
    #
    class InstancePortState < Struct.new(
      :from_port,
      :to_port,
      :protocol,
      :state,
      :cidrs,
      :ipv6_cidrs,
      :cidr_list_aliases)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an instance snapshot.
    #
    # @!attribute [rw] name
    #   The name of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the snapshot
    #   (`arn:aws:lightsail:us-east-2:123456789101:InstanceSnapshot/d23b5706-3322-4d83-81e5-12345EXAMPLE`).
    #   @return [String]
    #
    # @!attribute [rw] support_code
    #   The support code. Include this code in your email to support when
    #   you have questions about an instance or another resource in
    #   Lightsail. This code enables our support team to look up your
    #   Lightsail information more easily.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the snapshot was created (`1479907467.024`).
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   The region name and Availability Zone where you created the
    #   snapshot.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The type of resource (usually `InstanceSnapshot`).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values for the resource. For more
    #   information about tags in Lightsail, see the [Amazon Lightsail
    #   Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] state
    #   The state the snapshot is in.
    #   @return [String]
    #
    # @!attribute [rw] progress
    #   The progress of the snapshot.
    #
    #   <note markdown="1"> This is populated only for disk snapshots, and is `null` for
    #   instance snapshots.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] from_attached_disks
    #   An array of disk objects containing information about all block
    #   storage disks.
    #   @return [Array<Types::Disk>]
    #
    # @!attribute [rw] from_instance_name
    #   The instance from which the snapshot was created.
    #   @return [String]
    #
    # @!attribute [rw] from_instance_arn
    #   The Amazon Resource Name (ARN) of the instance from which the
    #   snapshot was created
    #   (`arn:aws:lightsail:us-east-2:123456789101:Instance/64b8404c-ccb1-430b-8daf-12345EXAMPLE`).
    #   @return [String]
    #
    # @!attribute [rw] from_blueprint_id
    #   The blueprint ID from which you created the snapshot
    #   (`amazon_linux_2023`). A blueprint is a virtual private server (or
    #   *instance*) image used to create instances quickly.
    #   @return [String]
    #
    # @!attribute [rw] from_bundle_id
    #   The bundle ID from which you created the snapshot (`micro_x_x`).
    #   @return [String]
    #
    # @!attribute [rw] is_from_auto_snapshot
    #   A Boolean value indicating whether the snapshot was created from an
    #   automatic snapshot.
    #   @return [Boolean]
    #
    # @!attribute [rw] size_in_gb
    #   The size in GB of the SSD.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InstanceSnapshot AWS API Documentation
    #
    class InstanceSnapshot < Struct.new(
      :name,
      :arn,
      :support_code,
      :created_at,
      :location,
      :resource_type,
      :tags,
      :state,
      :progress,
      :from_attached_disks,
      :from_instance_name,
      :from_instance_arn,
      :from_blueprint_id,
      :from_bundle_id,
      :is_from_auto_snapshot,
      :size_in_gb)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an instance snapshot.
    #
    # @!attribute [rw] from_bundle_id
    #   The bundle ID from which the source instance was created
    #   (`micro_x_x`).
    #   @return [String]
    #
    # @!attribute [rw] from_blueprint_id
    #   The blueprint ID from which the source instance
    #   (`amazon_linux_2023`).
    #   @return [String]
    #
    # @!attribute [rw] from_disk_info
    #   A list of objects describing the disks that were attached to the
    #   source instance.
    #   @return [Array<Types::DiskInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InstanceSnapshotInfo AWS API Documentation
    #
    class InstanceSnapshotInfo < Struct.new(
      :from_bundle_id,
      :from_blueprint_id,
      :from_disk_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the virtual private server (or *instance*) status.
    #
    # @!attribute [rw] code
    #   The status code for the instance.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The state of the instance (`running` or `pending`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InstanceState AWS API Documentation
    #
    class InstanceState < Struct.new(
      :code,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lightsail throws this exception when user input does not conform to
    # the validation rules of an input field.
    #
    # <note markdown="1"> Domain and distribution APIs are only available in the N. Virginia
    # (`us-east-1`) Amazon Web Services Region. Please set your Amazon Web
    # Services Region configuration to `us-east-1` to create, view, or edit
    # these resources.
    #
    #  </note>
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] docs
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] tip
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InvalidInputException AWS API Documentation
    #
    class InvalidInputException < Struct.new(
      :code,
      :docs,
      :message,
      :tip)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/IsVpcPeeredRequest AWS API Documentation
    #
    class IsVpcPeeredRequest < Aws::EmptyStructure; end

    # @!attribute [rw] is_peered
    #   Returns `true` if the Lightsail VPC is peered; otherwise, `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/IsVpcPeeredResult AWS API Documentation
    #
    class IsVpcPeeredResult < Struct.new(
      :is_peered)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an SSH key pair.
    #
    # @!attribute [rw] name
    #   The friendly name of the SSH key pair.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the key pair
    #   (`arn:aws:lightsail:us-east-2:123456789101:KeyPair/05859e3d-331d-48ba-9034-12345EXAMPLE`).
    #   @return [String]
    #
    # @!attribute [rw] support_code
    #   The support code. Include this code in your email to support when
    #   you have questions about an instance or another resource in
    #   Lightsail. This code enables our support team to look up your
    #   Lightsail information more easily.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the key pair was created (`1479816991.349`).
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   The region name and Availability Zone where the key pair was
    #   created.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The resource type (usually `KeyPair`).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values for the resource. For more
    #   information about tags in Lightsail, see the [Amazon Lightsail
    #   Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] fingerprint
    #   The RSA fingerprint of the key pair.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/KeyPair AWS API Documentation
    #
    class KeyPair < Struct.new(
      :name,
      :arn,
      :support_code,
      :created_at,
      :location,
      :resource_type,
      :tags,
      :fingerprint)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Amazon Lightsail content delivery network (CDN)
    # distribution.
    #
    # @!attribute [rw] name
    #   The name of the distribution.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the distribution.
    #   @return [String]
    #
    # @!attribute [rw] support_code
    #   The support code. Include this code in your email to support when
    #   you have questions about your Lightsail distribution. This code
    #   enables our support team to look up your Lightsail information more
    #   easily.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the distribution was created.
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   An object that describes the location of the distribution, such as
    #   the Amazon Web Services Region and Availability Zone.
    #
    #   <note markdown="1"> Lightsail distributions are global resources that can reference an
    #   origin in any Amazon Web Services Region, and distribute its content
    #   globally. However, all distributions are located in the `us-east-1`
    #   Region.
    #
    #    </note>
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The Lightsail resource type (`Distribution`).
    #   @return [String]
    #
    # @!attribute [rw] alternative_domain_names
    #   The alternate domain names of the distribution.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of the distribution.
    #   @return [String]
    #
    # @!attribute [rw] is_enabled
    #   Indicates whether the distribution is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] domain_name
    #   The domain name of the distribution.
    #   @return [String]
    #
    # @!attribute [rw] bundle_id
    #   The ID of the bundle currently applied to the distribution.
    #   @return [String]
    #
    # @!attribute [rw] certificate_name
    #   The name of the SSL/TLS certificate attached to the distribution, if
    #   any.
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   An object that describes the origin resource of the distribution,
    #   such as a Lightsail instance, bucket, or load balancer.
    #
    #   The distribution pulls, caches, and serves content from the origin.
    #   @return [Types::Origin]
    #
    # @!attribute [rw] origin_public_dns
    #   The public DNS of the origin.
    #   @return [String]
    #
    # @!attribute [rw] default_cache_behavior
    #   An object that describes the default cache behavior of the
    #   distribution.
    #   @return [Types::CacheBehavior]
    #
    # @!attribute [rw] cache_behavior_settings
    #   An object that describes the cache behavior settings of the
    #   distribution.
    #   @return [Types::CacheSettings]
    #
    # @!attribute [rw] cache_behaviors
    #   An array of objects that describe the per-path cache behavior of the
    #   distribution.
    #   @return [Array<Types::CacheBehaviorPerPath>]
    #
    # @!attribute [rw] able_to_update_bundle
    #   Indicates whether the bundle that is currently applied to your
    #   distribution, specified using the `distributionName` parameter, can
    #   be changed to another bundle.
    #
    #   Use the `UpdateDistributionBundle` action to change your
    #   distribution's bundle.
    #   @return [Boolean]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type of the distribution.
    #
    #   The possible values are `ipv4` for IPv4 only, and `dualstack` for
    #   IPv4 and IPv6.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values for the resource. For more
    #   information about tags in Lightsail, see the [Amazon Lightsail
    #   Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] viewer_minimum_tls_protocol_version
    #   The minimum TLS protocol version that the distribution can use to
    #   communicate with viewers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/LightsailDistribution AWS API Documentation
    #
    class LightsailDistribution < Struct.new(
      :name,
      :arn,
      :support_code,
      :created_at,
      :location,
      :resource_type,
      :alternative_domain_names,
      :status,
      :is_enabled,
      :domain_name,
      :bundle_id,
      :certificate_name,
      :origin,
      :origin_public_dns,
      :default_cache_behavior,
      :cache_behavior_settings,
      :cache_behaviors,
      :able_to_update_bundle,
      :ip_address_type,
      :tags,
      :viewer_minimum_tls_protocol_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a load balancer.
    #
    # @!attribute [rw] name
    #   The name of the load balancer (`my-load-balancer`).
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] support_code
    #   The support code. Include this code in your email to support when
    #   you have questions about your Lightsail load balancer. This code
    #   enables our support team to look up your Lightsail information more
    #   easily.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date when your load balancer was created.
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   The AWS Region where your load balancer was created (`us-east-2a`).
    #   Lightsail automatically creates your load balancer across
    #   Availability Zones.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The resource type (`LoadBalancer`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values for the resource. For more
    #   information about tags in Lightsail, see the [Amazon Lightsail
    #   Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] dns_name
    #   The DNS name of your Lightsail load balancer.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The status of your load balancer. Valid values are below.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol you have enabled for your load balancer. Valid values
    #   are below.
    #
    #   You can't just have `HTTP_HTTPS`, but you can have just `HTTP`.
    #   @return [String]
    #
    # @!attribute [rw] public_ports
    #   An array of public port settings for your load balancer. For HTTP,
    #   use port 80. For HTTPS, use port 443.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] health_check_path
    #   The path you specified to perform your health checks. If no path is
    #   specified, the load balancer tries to make a request to the default
    #   (root) page.
    #   @return [String]
    #
    # @!attribute [rw] instance_port
    #   The port where the load balancer will direct traffic to your
    #   Lightsail instances. For HTTP traffic, it's port 80. For HTTPS
    #   traffic, it's port 443.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_health_summary
    #   An array of InstanceHealthSummary objects describing the health of
    #   the load balancer.
    #   @return [Array<Types::InstanceHealthSummary>]
    #
    # @!attribute [rw] tls_certificate_summaries
    #   An array of LoadBalancerTlsCertificateSummary objects that provide
    #   additional information about the SSL/TLS certificates. For example,
    #   if `true`, the certificate is attached to the load balancer.
    #   @return [Array<Types::LoadBalancerTlsCertificateSummary>]
    #
    # @!attribute [rw] configuration_options
    #   A string to string map of the configuration options for your load
    #   balancer. Valid values are listed below.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type of the load balancer.
    #
    #   The possible values are `ipv4` for IPv4 only, `ipv6` for IPv6 only,
    #   and `dualstack` for IPv4 and IPv6.
    #   @return [String]
    #
    # @!attribute [rw] https_redirection_enabled
    #   A Boolean value that indicates whether HTTPS redirection is enabled
    #   for the load balancer.
    #   @return [Boolean]
    #
    # @!attribute [rw] tls_policy_name
    #   The name of the TLS security policy for the load balancer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/LoadBalancer AWS API Documentation
    #
    class LoadBalancer < Struct.new(
      :name,
      :arn,
      :support_code,
      :created_at,
      :location,
      :resource_type,
      :tags,
      :dns_name,
      :state,
      :protocol,
      :public_ports,
      :health_check_path,
      :instance_port,
      :instance_health_summary,
      :tls_certificate_summaries,
      :configuration_options,
      :ip_address_type,
      :https_redirection_enabled,
      :tls_policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a load balancer SSL/TLS certificate.
    #
    # TLS is just an updated, more secure version of Secure Socket Layer
    # (SSL).
    #
    # @!attribute [rw] name
    #   The name of the SSL/TLS certificate (`my-certificate`).
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the SSL/TLS certificate.
    #   @return [String]
    #
    # @!attribute [rw] support_code
    #   The support code. Include this code in your email to support when
    #   you have questions about your Lightsail load balancer or SSL/TLS
    #   certificate. This code enables our support team to look up your
    #   Lightsail information more easily.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when you created your SSL/TLS certificate.
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   The Amazon Web Services Region and Availability Zone where you
    #   created your certificate.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The resource type (`LoadBalancerTlsCertificate`).
    #
    #   * <b> <code>Instance</code> </b> - A Lightsail instance (a virtual
    #     private server)
    #
    #   * <b> <code>StaticIp</code> </b> - A static IP address
    #
    #   * <b> <code>KeyPair</code> </b> - The key pair used to connect to a
    #     Lightsail instance
    #
    #   * <b> <code>InstanceSnapshot</code> </b> - A Lightsail instance
    #     snapshot
    #
    #   * <b> <code>Domain</code> </b> - A DNS zone
    #
    #   * <b> <code>PeeredVpc</code> </b> - A peered VPC
    #
    #   * <b> <code>LoadBalancer</code> </b> - A Lightsail load balancer
    #
    #   * <b> <code>LoadBalancerTlsCertificate</code> </b> - An SSL/TLS
    #     certificate associated with a Lightsail load balancer
    #
    #   * <b> <code>Disk</code> </b> - A Lightsail block storage disk
    #
    #   * <b> <code>DiskSnapshot</code> </b> - A block storage disk snapshot
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values for the resource. For more
    #   information about tags in Lightsail, see the [Amazon Lightsail
    #   Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] load_balancer_name
    #   The load balancer name where your SSL/TLS certificate is attached.
    #   @return [String]
    #
    # @!attribute [rw] is_attached
    #   When `true`, the SSL/TLS certificate is attached to the Lightsail
    #   load balancer.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The validation status of the SSL/TLS certificate. Valid values are
    #   below.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name for your SSL/TLS certificate.
    #   @return [String]
    #
    # @!attribute [rw] domain_validation_records
    #   An array of LoadBalancerTlsCertificateDomainValidationRecord objects
    #   describing the records.
    #   @return [Array<Types::LoadBalancerTlsCertificateDomainValidationRecord>]
    #
    # @!attribute [rw] failure_reason
    #   The validation failure reason, if any, of the certificate.
    #
    #   The following failure reasons are possible:
    #
    #   * <b> <code>NO_AVAILABLE_CONTACTS</code> </b> - This failure applies
    #     to email validation, which is not available for Lightsail
    #     certificates.
    #
    #   * <b> <code>ADDITIONAL_VERIFICATION_REQUIRED</code> </b> - Lightsail
    #     requires additional information to process this certificate
    #     request. This can happen as a fraud-protection measure, such as
    #     when the domain ranks within the Alexa top 1000 websites. To
    #     provide the required information, use the [AWS Support Center][1]
    #     to contact AWS Support.
    #
    #     <note markdown="1"> You cannot request a certificate for Amazon-owned domain names
    #     such as those ending in amazonaws.com, cloudfront.net, or
    #     elasticbeanstalk.com.
    #
    #      </note>
    #
    #   * <b> <code>DOMAIN_NOT_ALLOWED</code> </b> - One or more of the
    #     domain names in the certificate request was reported as an unsafe
    #     domain by [VirusTotal][2]. To correct the problem, search for your
    #     domain name on the [VirusTotal][2] website. If your domain is
    #     reported as suspicious, see [Google Help for Hacked Websites][3]
    #     to learn what you can do.
    #
    #     If you believe that the result is a false positive, notify the
    #     organization that is reporting the domain. VirusTotal is an
    #     aggregate of several antivirus and URL scanners and cannot remove
    #     your domain from a block list itself. After you correct the
    #     problem and the VirusTotal registry has been updated, request a
    #     new certificate.
    #
    #     If you see this error and your domain is not included in the
    #     VirusTotal list, visit the [AWS Support Center][1] and create a
    #     case.
    #
    #   * <b> <code>INVALID_PUBLIC_DOMAIN</code> </b> - One or more of the
    #     domain names in the certificate request is not valid. Typically,
    #     this is because a domain name in the request is not a valid
    #     top-level domain. Try to request a certificate again, correcting
    #     any spelling errors or typos that were in the failed request, and
    #     ensure that all domain names in the request are for valid
    #     top-level domains. For example, you cannot request a certificate
    #     for `example.invalidpublicdomain` because `invalidpublicdomain` is
    #     not a valid top-level domain.
    #
    #   * <b> <code>OTHER</code> </b> - Typically, this failure occurs when
    #     there is a typographical error in one or more of the domain names
    #     in the certificate request. Try to request a certificate again,
    #     correcting any spelling errors or typos that were in the failed
    #     request.
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/support/home
    #   [2]: https://www.virustotal.com/gui/home/url
    #   [3]: https://developers.google.com/web/fundamentals/security/hacked
    #   @return [String]
    #
    # @!attribute [rw] issued_at
    #   The time when the SSL/TLS certificate was issued.
    #   @return [Time]
    #
    # @!attribute [rw] issuer
    #   The issuer of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] key_algorithm
    #   The algorithm used to generate the key pair (the public and private
    #   key).
    #   @return [String]
    #
    # @!attribute [rw] not_after
    #   The timestamp when the SSL/TLS certificate expires.
    #   @return [Time]
    #
    # @!attribute [rw] not_before
    #   The timestamp when the SSL/TLS certificate is first valid.
    #   @return [Time]
    #
    # @!attribute [rw] renewal_summary
    #   An object that describes the status of the certificate renewal
    #   managed by Lightsail.
    #   @return [Types::LoadBalancerTlsCertificateRenewalSummary]
    #
    # @!attribute [rw] revocation_reason
    #   The reason the certificate was revoked. This value is present only
    #   when the certificate status is `REVOKED`.
    #   @return [String]
    #
    # @!attribute [rw] revoked_at
    #   The timestamp when the certificate was revoked. This value is
    #   present only when the certificate status is `REVOKED`.
    #   @return [Time]
    #
    # @!attribute [rw] serial
    #   The serial number of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] signature_algorithm
    #   The algorithm that was used to sign the certificate.
    #   @return [String]
    #
    # @!attribute [rw] subject
    #   The name of the entity that is associated with the public key
    #   contained in the certificate.
    #   @return [String]
    #
    # @!attribute [rw] subject_alternative_names
    #   An array of strings that specify the alternate domains
    #   (`example2.com`) and subdomains (`blog.example.com`) for the
    #   certificate.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/LoadBalancerTlsCertificate AWS API Documentation
    #
    class LoadBalancerTlsCertificate < Struct.new(
      :name,
      :arn,
      :support_code,
      :created_at,
      :location,
      :resource_type,
      :tags,
      :load_balancer_name,
      :is_attached,
      :status,
      :domain_name,
      :domain_validation_records,
      :failure_reason,
      :issued_at,
      :issuer,
      :key_algorithm,
      :not_after,
      :not_before,
      :renewal_summary,
      :revocation_reason,
      :revoked_at,
      :serial,
      :signature_algorithm,
      :subject,
      :subject_alternative_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that describes the state of the canonical name (CNAME)
    # records that are automatically added by Lightsail to the DNS of the
    # domain to validate domain ownership.
    #
    # @!attribute [rw] code
    #   The status code for the automated DNS record creation.
    #
    #   Following are the possible values:
    #
    #   * `SUCCEEDED` - The validation records were successfully added.
    #
    #   * `STARTED` - The automatic DNS record creation has started.
    #
    #   * `FAILED` - The validation record addition failed.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message that describes the reason for the status code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/LoadBalancerTlsCertificateDnsRecordCreationState AWS API Documentation
    #
    class LoadBalancerTlsCertificateDnsRecordCreationState < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the domain names on an SSL/TLS certificate
    # that you will use to validate domain ownership.
    #
    # @!attribute [rw] domain_name
    #   The fully qualified domain name in the certificate request.
    #   @return [String]
    #
    # @!attribute [rw] validation_status
    #   The status of the domain validation. Valid values are listed below.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/LoadBalancerTlsCertificateDomainValidationOption AWS API Documentation
    #
    class LoadBalancerTlsCertificateDomainValidationOption < Struct.new(
      :domain_name,
      :validation_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the validation record of each domain name in the SSL/TLS
    # certificate.
    #
    # @!attribute [rw] name
    #   A fully qualified domain name in the certificate. For example,
    #   `example.com`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of validation record. For example, `CNAME` for domain
    #   validation.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for that type.
    #   @return [String]
    #
    # @!attribute [rw] validation_status
    #   The validation status. Valid values are listed below.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name against which your SSL/TLS certificate was
    #   validated.
    #   @return [String]
    #
    # @!attribute [rw] dns_record_creation_state
    #   An object that describes the state of the canonical name (CNAME)
    #   records that are automatically added by Lightsail to the DNS of a
    #   domain to validate domain ownership.
    #   @return [Types::LoadBalancerTlsCertificateDnsRecordCreationState]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/LoadBalancerTlsCertificateDomainValidationRecord AWS API Documentation
    #
    class LoadBalancerTlsCertificateDomainValidationRecord < Struct.new(
      :name,
      :type,
      :value,
      :validation_status,
      :domain_name,
      :dns_record_creation_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the status of Lightsail's managed renewal
    # for the certificate.
    #
    # The renewal status of the certificate.
    #
    # The following renewal status are possible:
    #
    # * <b> <code>PendingAutoRenewal</code> </b> - Lightsail is attempting
    #   to automatically validate the domain names in the certificate. No
    #   further action is required.
    #
    # * <b> <code>PendingValidation</code> </b> - Lightsail couldn't
    #   automatically validate one or more domain names in the certificate.
    #   You must take action to validate these domain names or the
    #   certificate won't be renewed. If you used DNS validation, check to
    #   make sure your certificate's domain validation records exist in
    #   your domain's DNS, and that your certificate remains in use.
    #
    # * <b> <code>Success</code> </b> - All domain names in the certificate
    #   are validated, and Lightsail renewed the certificate. No further
    #   action is required.
    #
    # * <b> <code>Failed</code> </b> - One or more domain names were not
    #   validated before the certificate expired, and Lightsail did not
    #   renew the certificate. You can request a new certificate using the
    #   `CreateCertificate` action.
    #
    # @!attribute [rw] renewal_status
    #   The renewal status of the certificate.
    #
    #   The following renewal status are possible:
    #
    #   * <b> <code>PendingAutoRenewal</code> </b> - Lightsail is attempting
    #     to automatically validate the domain names of the certificate. No
    #     further action is required.
    #
    #   * <b> <code>PendingValidation</code> </b> - Lightsail couldn't
    #     automatically validate one or more domain names of the
    #     certificate. You must take action to validate these domain names
    #     or the certificate won't be renewed. Check to make sure your
    #     certificate's domain validation records exist in your domain's
    #     DNS, and that your certificate remains in use.
    #
    #   * <b> <code>Success</code> </b> - All domain names in the
    #     certificate are validated, and Lightsail renewed the certificate.
    #     No further action is required.
    #
    #   * <b> <code>Failed</code> </b> - One or more domain names were not
    #     validated before the certificate expired, and Lightsail did not
    #     renew the certificate. You can request a new certificate using the
    #     `CreateCertificate` action.
    #   @return [String]
    #
    # @!attribute [rw] domain_validation_options
    #   Contains information about the validation of each domain name in the
    #   certificate, as it pertains to Lightsail's managed renewal. This is
    #   different from the initial validation that occurs as a result of the
    #   RequestCertificate request.
    #   @return [Array<Types::LoadBalancerTlsCertificateDomainValidationOption>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/LoadBalancerTlsCertificateRenewalSummary AWS API Documentation
    #
    class LoadBalancerTlsCertificateRenewalSummary < Struct.new(
      :renewal_status,
      :domain_validation_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of SSL/TLS certificate metadata.
    #
    # @!attribute [rw] name
    #   The name of the SSL/TLS certificate.
    #   @return [String]
    #
    # @!attribute [rw] is_attached
    #   When `true`, the SSL/TLS certificate is attached to the Lightsail
    #   load balancer.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/LoadBalancerTlsCertificateSummary AWS API Documentation
    #
    class LoadBalancerTlsCertificateSummary < Struct.new(
      :name,
      :is_attached)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the TLS security policies that are available for Lightsail
    # load balancers.
    #
    # For more information about load balancer TLS security policies, see
    # [Configuring TLS security policies on your Amazon Lightsail load
    # balancers][1] in the *Amazon Lightsail Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configure-load-balancer-tls-security-policy
    #
    # @!attribute [rw] name
    #   The name of the TLS security policy.
    #   @return [String]
    #
    # @!attribute [rw] is_default
    #   A Boolean value that indicates whether the TLS security policy is
    #   the default.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   The description of the TLS security policy.
    #   @return [String]
    #
    # @!attribute [rw] protocols
    #   The protocols used in a given TLS security policy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ciphers
    #   The ciphers used by the TLS security policy.
    #
    #   The ciphers are listed in order of preference.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/LoadBalancerTlsPolicy AWS API Documentation
    #
    class LoadBalancerTlsPolicy < Struct.new(
      :name,
      :is_default,
      :description,
      :protocols,
      :ciphers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a database log event.
    #
    # @!attribute [rw] created_at
    #   The timestamp when the database log event was created.
    #   @return [Time]
    #
    # @!attribute [rw] message
    #   The message of the database log event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/LogEvent AWS API Documentation
    #
    class LogEvent < Struct.new(
      :created_at,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the metric data point.
    #
    # @!attribute [rw] average
    #   The average.
    #   @return [Float]
    #
    # @!attribute [rw] maximum
    #   The maximum.
    #   @return [Float]
    #
    # @!attribute [rw] minimum
    #   The minimum.
    #   @return [Float]
    #
    # @!attribute [rw] sample_count
    #   The sample count.
    #   @return [Float]
    #
    # @!attribute [rw] sum
    #   The sum.
    #   @return [Float]
    #
    # @!attribute [rw] timestamp
    #   The timestamp (`1479816991.349`).
    #   @return [Time]
    #
    # @!attribute [rw] unit
    #   The unit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/MetricDatapoint AWS API Documentation
    #
    class MetricDatapoint < Struct.new(
      :average,
      :maximum,
      :minimum,
      :sample_count,
      :sum,
      :timestamp,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes resource being monitored by an alarm.
    #
    # An alarm is a way to monitor your Amazon Lightsail resource metrics.
    # For more information, see [Alarms in Amazon Lightsail][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-alarms
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource being monitored.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Lightsail resource being monitored.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The Lightsail resource type of the resource being monitored.
    #
    #   Instances, load balancers, and relational databases are the only
    #   Lightsail resources that can currently be monitored by alarms.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/MonitoredResourceInfo AWS API Documentation
    #
    class MonitoredResourceInfo < Struct.new(
      :arn,
      :name,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the monthly data transfer in and out of your virtual private
    # server (or *instance*).
    #
    # @!attribute [rw] gb_per_month_allocated
    #   The amount allocated per month (in GB).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/MonthlyTransfer AWS API Documentation
    #
    class MonthlyTransfer < Struct.new(
      :gb_per_month_allocated)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the state of the name server records update made by Amazon
    # Lightsail to an Amazon Route 53 registered domain.
    #
    # For more information, see [DNS in Amazon Lightsail][1] in the *Amazon
    # Lightsail Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/understanding-dns-in-amazon-lightsail
    #
    # @!attribute [rw] code
    #   The status code for the name servers update.
    #
    #   Following are the possible values:
    #
    #   * `SUCCEEDED` - The name server records were successfully updated.
    #
    #   * `PENDING` - The name server record update is in progress.
    #
    #   * `FAILED` - The name server record update failed.
    #
    #   * `STARTED` - The automatic name server record update started.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message that describes the reason for the status code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/NameServersUpdateState AWS API Documentation
    #
    class NameServersUpdateState < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lightsail throws this exception when it cannot find a resource.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] docs
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] tip
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :code,
      :docs,
      :message,
      :tip)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] port_info
    #   An object to describe the ports to open for the specified instance.
    #   @return [Types::PortInfo]
    #
    # @!attribute [rw] instance_name
    #   The name of the instance for which to open ports.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/OpenInstancePublicPortsRequest AWS API Documentation
    #
    class OpenInstancePublicPortsRequest < Struct.new(
      :port_info,
      :instance_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/OpenInstancePublicPortsResult AWS API Documentation
    #
    class OpenInstancePublicPortsResult < Struct.new(
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the API operation.
    #
    # @!attribute [rw] id
    #   The ID of the operation.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The resource name.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the operation was initialized (`1479816991.349`).
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   The Amazon Web Services Region and Availability Zone.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] is_terminal
    #   A Boolean value indicating whether the operation is terminal.
    #   @return [Boolean]
    #
    # @!attribute [rw] operation_details
    #   Details about the operation (`Debian-1GB-Ohio-1`).
    #   @return [String]
    #
    # @!attribute [rw] operation_type
    #   The type of operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the operation.
    #   @return [String]
    #
    # @!attribute [rw] status_changed_at
    #   The timestamp when the status was changed (`1479816991.349`).
    #   @return [Time]
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_details
    #   The error details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Operation AWS API Documentation
    #
    class Operation < Struct.new(
      :id,
      :resource_name,
      :resource_type,
      :created_at,
      :location,
      :is_terminal,
      :operation_details,
      :operation_type,
      :status,
      :status_changed_at,
      :error_code,
      :error_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lightsail throws this exception when an operation fails to execute.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] docs
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] tip
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/OperationFailureException AWS API Documentation
    #
    class OperationFailureException < Struct.new(
      :code,
      :docs,
      :message,
      :tip)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the origin resource of an Amazon Lightsail content delivery
    # network (CDN) distribution.
    #
    # An origin can be a Lightsail instance, bucket, or load balancer. A
    # distribution pulls content from an origin, caches it, and serves it to
    # viewers via a worldwide network of edge servers.
    #
    # @!attribute [rw] name
    #   The name of the origin resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type of the origin resource (*Instance*).
    #   @return [String]
    #
    # @!attribute [rw] region_name
    #   The AWS Region name of the origin resource.
    #   @return [String]
    #
    # @!attribute [rw] protocol_policy
    #   The protocol that your Amazon Lightsail distribution uses when
    #   establishing a connection with your origin to pull content.
    #   @return [String]
    #
    # @!attribute [rw] response_timeout
    #   The amount of time, in seconds, that the distribution waits for a
    #   response after forwarding a request to the origin. The minimum
    #   timeout is 1 second, the maximum is 60 seconds, and the default (if
    #   you don't specify otherwise) is 30 seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Origin AWS API Documentation
    #
    class Origin < Struct.new(
      :name,
      :resource_type,
      :region_name,
      :protocol_policy,
      :response_timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # The password data for the Windows Server-based instance, including the
    # ciphertext and the key pair name.
    #
    # @!attribute [rw] ciphertext
    #   The encrypted password. Ciphertext will be an empty string if access
    #   to your new instance is not ready yet. When you create an instance,
    #   it can take up to 15 minutes for the instance to be ready.
    #
    #   <note markdown="1"> If you use the default key pair (`LightsailDefaultKeyPair`), the
    #   decrypted password will be available in the password field.
    #
    #    If you are using a custom key pair, you need to use your own means
    #   of decryption.
    #
    #    If you change the Administrator password on the instance, Lightsail
    #   will continue to return the original ciphertext value. When
    #   accessing the instance using RDP, you need to manually enter the
    #   Administrator password after changing it from the default.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] key_pair_name
    #   The name of the key pair that you used when creating your instance.
    #   If no key pair name was specified when creating the instance,
    #   Lightsail uses the default key pair (`LightsailDefaultKeyPair`).
    #
    #   If you are using a custom key pair, you need to use your own means
    #   of decrypting your password using the `ciphertext`. Lightsail
    #   creates the ciphertext by encrypting your password with the public
    #   key part of this key pair.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PasswordData AWS API Documentation
    #
    class PasswordData < Struct.new(
      :ciphertext,
      :key_pair_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PeerVpcRequest AWS API Documentation
    #
    class PeerVpcRequest < Aws::EmptyStructure; end

    # @!attribute [rw] operation
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PeerVpcResult AWS API Documentation
    #
    class PeerVpcResult < Struct.new(
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a pending database maintenance action.
    #
    # @!attribute [rw] action
    #   The type of pending database maintenance action.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Additional detail about the pending database maintenance action.
    #   @return [String]
    #
    # @!attribute [rw] current_apply_date
    #   The effective date of the pending database maintenance action.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PendingMaintenanceAction AWS API Documentation
    #
    class PendingMaintenanceAction < Struct.new(
      :action,
      :description,
      :current_apply_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a pending database value modification.
    #
    # @!attribute [rw] master_user_password
    #   The password for the master user of the database.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The database engine version.
    #   @return [String]
    #
    # @!attribute [rw] backup_retention_enabled
    #   A Boolean value indicating whether automated backup retention is
    #   enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PendingModifiedRelationalDatabaseValues AWS API Documentation
    #
    class PendingModifiedRelationalDatabaseValues < Struct.new(
      :master_user_password,
      :engine_version,
      :backup_retention_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes ports to open on an instance, the IP addresses allowed to
    # connect to the instance through the ports, and the protocol.
    #
    # @!attribute [rw] from_port
    #   The first port in a range of open ports on an instance.
    #
    #   Allowed ports:
    #
    #   * TCP and UDP - `0` to `65535`
    #
    #   * ICMP - The ICMP type for IPv4 addresses. For example, specify `8`
    #     as the `fromPort` (ICMP type), and `-1` as the `toPort` (ICMP
    #     code), to enable ICMP Ping. For more information, see [Control
    #     Messages][1] on *Wikipedia*.
    #
    #   * ICMPv6 - The ICMP type for IPv6 addresses. For example, specify
    #     `128` as the `fromPort` (ICMPv6 type), and `0` as `toPort` (ICMPv6
    #     code). For more information, see [Internet Control Message
    #     Protocol for IPv6][2].
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol#Control_messages
    #   [2]: https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol_for_IPv6
    #   @return [Integer]
    #
    # @!attribute [rw] to_port
    #   The last port in a range of open ports on an instance.
    #
    #   Allowed ports:
    #
    #   * TCP and UDP - `0` to `65535`
    #
    #   * ICMP - The ICMP code for IPv4 addresses. For example, specify `8`
    #     as the `fromPort` (ICMP type), and `-1` as the `toPort` (ICMP
    #     code), to enable ICMP Ping. For more information, see [Control
    #     Messages][1] on *Wikipedia*.
    #
    #   * ICMPv6 - The ICMP code for IPv6 addresses. For example, specify
    #     `128` as the `fromPort` (ICMPv6 type), and `0` as `toPort` (ICMPv6
    #     code). For more information, see [Internet Control Message
    #     Protocol for IPv6][2].
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol#Control_messages
    #   [2]: https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol_for_IPv6
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The IP protocol name.
    #
    #   The name can be one of the following:
    #
    #   * `tcp` - Transmission Control Protocol (TCP) provides reliable,
    #     ordered, and error-checked delivery of streamed data between
    #     applications running on hosts communicating by an IP network. If
    #     you have an application that doesn't require reliable data stream
    #     service, use UDP instead.
    #
    #   * `all` - All transport layer protocol types. For more general
    #     information, see [Transport layer][1] on *Wikipedia*.
    #
    #   * `udp` - With User Datagram Protocol (UDP), computer applications
    #     can send messages (or datagrams) to other hosts on an Internet
    #     Protocol (IP) network. Prior communications are not required to
    #     set up transmission channels or data paths. Applications that
    #     don't require reliable data stream service can use UDP, which
    #     provides a connectionless datagram service that emphasizes reduced
    #     latency over reliability. If you do require reliable data stream
    #     service, use TCP instead.
    #
    #   * `icmp` - Internet Control Message Protocol (ICMP) is used to send
    #     error messages and operational information indicating success or
    #     failure when communicating with an instance. For example, an error
    #     is indicated when an instance could not be reached. When you
    #     specify `icmp` as the `protocol`, you must specify the ICMP type
    #     using the `fromPort` parameter, and ICMP code using the `toPort`
    #     parameter.
    #
    #   * `icmp6` - Internet Control Message Protocol (ICMP) for IPv6. When
    #     you specify `icmp6` as the `protocol`, you must specify the ICMP
    #     type using the `fromPort` parameter, and ICMP code using the
    #     `toPort` parameter.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Transport_layer
    #   @return [String]
    #
    # @!attribute [rw] cidrs
    #   The IPv4 address, or range of IPv4 addresses (in CIDR notation) that
    #   are allowed to connect to an instance through the ports, and the
    #   protocol.
    #
    #   <note markdown="1"> The `ipv6Cidrs` parameter lists the IPv6 addresses that are allowed
    #   to connect to an instance.
    #
    #    </note>
    #
    #   Examples:
    #
    #   * To allow the IP address `192.0.2.44`, specify `192.0.2.44` or
    #     `192.0.2.44/32`.
    #
    #   * To allow the IP addresses `192.0.2.0` to `192.0.2.255`, specify
    #     `192.0.2.0/24`.
    #
    #   For more information about CIDR block notation, see [Classless
    #   Inter-Domain Routing][1] on *Wikipedia*.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing#CIDR_notation
    #   @return [Array<String>]
    #
    # @!attribute [rw] ipv6_cidrs
    #   The IPv6 address, or range of IPv6 addresses (in CIDR notation) that
    #   are allowed to connect to an instance through the ports, and the
    #   protocol. Only devices with an IPv6 address can connect to an
    #   instance through IPv6; otherwise, IPv4 should be used.
    #
    #   <note markdown="1"> The `cidrs` parameter lists the IPv4 addresses that are allowed to
    #   connect to an instance.
    #
    #    </note>
    #
    #   For more information about CIDR block notation, see [Classless
    #   Inter-Domain Routing][1] on *Wikipedia*.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing#CIDR_notation
    #   @return [Array<String>]
    #
    # @!attribute [rw] cidr_list_aliases
    #   An alias that defines access for a preconfigured range of IP
    #   addresses.
    #
    #   The only alias currently supported is `lightsail-connect`, which
    #   allows IP addresses of the browser-based RDP/SSH client in the
    #   Lightsail console to connect to your instance.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PortInfo AWS API Documentation
    #
    class PortInfo < Struct.new(
      :from_port,
      :to_port,
      :protocol,
      :cidrs,
      :ipv6_cidrs,
      :cidr_list_aliases)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration for an Amazon Lightsail container service
    # to access private container image repositories, such as Amazon Elastic
    # Container Registry (Amazon ECR) private repositories.
    #
    # For more information, see [Configuring access to an Amazon ECR private
    # repository for an Amazon Lightsail container service][1] in the
    # *Amazon Lightsail Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-container-service-ecr-private-repo-access
    #
    # @!attribute [rw] ecr_image_puller_role
    #   An object that describes the activation status of the role that you
    #   can use to grant a Lightsail container service access to Amazon ECR
    #   private repositories. If the role is activated, the Amazon Resource
    #   Name (ARN) of the role is also listed.
    #   @return [Types::ContainerServiceECRImagePullerRole]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PrivateRegistryAccess AWS API Documentation
    #
    class PrivateRegistryAccess < Struct.new(
      :ecr_image_puller_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a request to configure an Amazon Lightsail container service
    # to access private container image repositories, such as Amazon Elastic
    # Container Registry (Amazon ECR) private repositories.
    #
    # For more information, see [Configuring access to an Amazon ECR private
    # repository for an Amazon Lightsail container service][1] in the
    # *Amazon Lightsail Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-container-service-ecr-private-repo-access
    #
    # @!attribute [rw] ecr_image_puller_role
    #   An object to describe a request to activate or deactivate the role
    #   that you can use to grant an Amazon Lightsail container service
    #   access to Amazon Elastic Container Registry (Amazon ECR) private
    #   repositories.
    #   @return [Types::ContainerServiceECRImagePullerRoleRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PrivateRegistryAccessRequest AWS API Documentation
    #
    class PrivateRegistryAccessRequest < Struct.new(
      :ecr_image_puller_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alarm_name
    #   The name for the alarm. Specify the name of an existing alarm to
    #   update, and overwrite the previous configuration of the alarm.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The name of the metric to associate with the alarm.
    #
    #   You can configure up to two alarms per metric.
    #
    #   The following metrics are available for each resource type:
    #
    #   * **Instances**: `BurstCapacityPercentage`, `BurstCapacityTime`,
    #     `CPUUtilization`, `NetworkIn`, `NetworkOut`, `StatusCheckFailed`,
    #     `StatusCheckFailed_Instance`, and `StatusCheckFailed_System`.
    #
    #   * **Load balancers**: `ClientTLSNegotiationErrorCount`,
    #     `HealthyHostCount`, `UnhealthyHostCount`, `HTTPCode_LB_4XX_Count`,
    #     `HTTPCode_LB_5XX_Count`, `HTTPCode_Instance_2XX_Count`,
    #     `HTTPCode_Instance_3XX_Count`, `HTTPCode_Instance_4XX_Count`,
    #     `HTTPCode_Instance_5XX_Count`, `InstanceResponseTime`,
    #     `RejectedConnectionCount`, and `RequestCount`.
    #
    #   * **Relational databases**: `CPUUtilization`, `DatabaseConnections`,
    #     `DiskQueueDepth`, `FreeStorageSpace`, `NetworkReceiveThroughput`,
    #     and `NetworkTransmitThroughput`.
    #
    #   For more information about these metrics, see [Metrics available in
    #   Lightsail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-resource-health-metrics#available-metrics
    #   @return [String]
    #
    # @!attribute [rw] monitored_resource_name
    #   The name of the Lightsail resource that will be monitored.
    #
    #   Instances, load balancers, and relational databases are the only
    #   Lightsail resources that can currently be monitored by alarms.
    #   @return [String]
    #
    # @!attribute [rw] comparison_operator
    #   The arithmetic operation to use when comparing the specified
    #   statistic to the threshold. The specified statistic value is used as
    #   the first operand.
    #   @return [String]
    #
    # @!attribute [rw] threshold
    #   The value against which the specified statistic is compared.
    #   @return [Float]
    #
    # @!attribute [rw] evaluation_periods
    #   The number of most recent periods over which data is compared to the
    #   specified threshold. If you are setting an "M out of N" alarm,
    #   this value (`evaluationPeriods`) is the N.
    #
    #   If you are setting an alarm that requires that a number of
    #   consecutive data points be breaching to trigger the alarm, this
    #   value specifies the rolling period of time in which data points are
    #   evaluated.
    #
    #   Each evaluation period is five minutes long. For example, specify an
    #   evaluation period of 24 to evaluate a metric over a rolling period
    #   of two hours.
    #
    #   You can specify a minimum valuation period of 1 (5 minutes), and a
    #   maximum evaluation period of 288 (24 hours).
    #   @return [Integer]
    #
    # @!attribute [rw] datapoints_to_alarm
    #   The number of data points that must be not within the specified
    #   threshold to trigger the alarm. If you are setting an "M out of N"
    #   alarm, this value (`datapointsToAlarm`) is the M.
    #   @return [Integer]
    #
    # @!attribute [rw] treat_missing_data
    #   Sets how this alarm will handle missing data points.
    #
    #   An alarm can treat missing data in the following ways:
    #
    #   * `breaching` - Assume the missing data is not within the threshold.
    #     Missing data counts towards the number of times the metric is not
    #     within the threshold.
    #
    #   * `notBreaching` - Assume the missing data is within the threshold.
    #     Missing data does not count towards the number of times the metric
    #     is not within the threshold.
    #
    #   * `ignore` - Ignore the missing data. Maintains the current alarm
    #     state.
    #
    #   * `missing` - Missing data is treated as missing.
    #
    #   If `treatMissingData` is not specified, the default behavior of
    #   `missing` is used.
    #   @return [String]
    #
    # @!attribute [rw] contact_protocols
    #   The contact protocols to use for the alarm, such as `Email`, `SMS`
    #   (text messaging), or both.
    #
    #   A notification is sent via the specified contact protocol if
    #   notifications are enabled for the alarm, and when the alarm is
    #   triggered.
    #
    #   A notification is not sent if a contact protocol is not specified,
    #   if the specified contact protocol is not configured in the Amazon
    #   Web Services Region, or if notifications are not enabled for the
    #   alarm using the `notificationEnabled` paramater.
    #
    #   Use the `CreateContactMethod` action to configure a contact protocol
    #   in an Amazon Web Services Region.
    #   @return [Array<String>]
    #
    # @!attribute [rw] notification_triggers
    #   The alarm states that trigger a notification.
    #
    #   An alarm has the following possible states:
    #
    #   * `ALARM` - The metric is outside of the defined threshold.
    #
    #   * `INSUFFICIENT_DATA` - The alarm has just started, the metric is
    #     not available, or not enough data is available for the metric to
    #     determine the alarm state.
    #
    #   * `OK` - The metric is within the defined threshold.
    #
    #   When you specify a notification trigger, the `ALARM` state must be
    #   specified. The `INSUFFICIENT_DATA` and `OK` states can be specified
    #   in addition to the `ALARM` state.
    #
    #   * If you specify `OK` as an alarm trigger, a notification is sent
    #     when the alarm switches from an `ALARM` or `INSUFFICIENT_DATA`
    #     alarm state to an `OK` state. This can be thought of as an *all
    #     clear* alarm notification.
    #
    #   * If you specify `INSUFFICIENT_DATA` as the alarm trigger, a
    #     notification is sent when the alarm switches from an `OK` or
    #     `ALARM` alarm state to an `INSUFFICIENT_DATA` state.
    #
    #   The notification trigger defaults to `ALARM` if you don't specify
    #   this parameter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] notification_enabled
    #   Indicates whether the alarm is enabled.
    #
    #   Notifications are enabled by default if you don't specify this
    #   parameter.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PutAlarmRequest AWS API Documentation
    #
    class PutAlarmRequest < Struct.new(
      :alarm_name,
      :metric_name,
      :monitored_resource_name,
      :comparison_operator,
      :threshold,
      :evaluation_periods,
      :datapoints_to_alarm,
      :treat_missing_data,
      :contact_protocols,
      :notification_triggers,
      :notification_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PutAlarmResult AWS API Documentation
    #
    class PutAlarmResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] port_infos
    #   An array of objects to describe the ports to open for the specified
    #   instance.
    #   @return [Array<Types::PortInfo>]
    #
    # @!attribute [rw] instance_name
    #   The name of the instance for which to open ports.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PutInstancePublicPortsRequest AWS API Documentation
    #
    class PutInstancePublicPortsRequest < Struct.new(
      :port_infos,
      :instance_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PutInstancePublicPortsResult AWS API Documentation
    #
    class PutInstancePublicPortsResult < Struct.new(
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the query string parameters that an Amazon Lightsail content
    # delivery network (CDN) distribution to bases caching on.
    #
    # For the query strings that you specify, your distribution caches
    # separate versions of the specified content based on the query string
    # values in viewer requests.
    #
    # @!attribute [rw] option
    #   Indicates whether the distribution forwards and caches based on
    #   query strings.
    #   @return [Boolean]
    #
    # @!attribute [rw] query_strings_allow_list
    #   The specific query strings that the distribution forwards to the
    #   origin.
    #
    #   Your distribution will cache content based on the specified query
    #   strings.
    #
    #   If the `option` parameter is true, then your distribution forwards
    #   all query strings, regardless of what you specify using the
    #   `queryStringsAllowList` parameter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/QueryStringObject AWS API Documentation
    #
    class QueryStringObject < Struct.new(
      :option,
      :query_strings_allow_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the deletion state of an Amazon Route 53 hosted zone for a
    # domain that is being automatically delegated to an Amazon Lightsail
    # DNS zone.
    #
    # @!attribute [rw] code
    #   The status code for the deletion state.
    #
    #   Following are the possible values:
    #
    #   * `SUCCEEDED` - The hosted zone was successfully deleted.
    #
    #   * `PENDING` - The hosted zone deletion is in progress.
    #
    #   * `FAILED` - The hosted zone deletion failed.
    #
    #   * `STARTED` - The hosted zone deletion started.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message that describes the reason for the status code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/R53HostedZoneDeletionState AWS API Documentation
    #
    class R53HostedZoneDeletionState < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_name
    #   The name of the instance to reboot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RebootInstanceRequest AWS API Documentation
    #
    class RebootInstanceRequest < Struct.new(
      :instance_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RebootInstanceResult AWS API Documentation
    #
    class RebootInstanceResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] relational_database_name
    #   The name of your database to reboot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RebootRelationalDatabaseRequest AWS API Documentation
    #
    class RebootRelationalDatabaseRequest < Struct.new(
      :relational_database_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RebootRelationalDatabaseResult AWS API Documentation
    #
    class RebootRelationalDatabaseResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the Amazon Web Services Region.
    #
    # @!attribute [rw] continent_code
    #   The continent code (`NA`, meaning North America).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the Amazon Web Services Region (`This region is
    #   recommended to serve users in the eastern United States and eastern
    #   Canada`).
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name (`Ohio`).
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The region name (`us-east-2`).
    #   @return [String]
    #
    # @!attribute [rw] availability_zones
    #   The Availability Zones. Follows the format `us-east-2a`
    #   (case-sensitive).
    #   @return [Array<Types::AvailabilityZone>]
    #
    # @!attribute [rw] relational_database_availability_zones
    #   The Availability Zones for databases. Follows the format
    #   `us-east-2a` (case-sensitive).
    #   @return [Array<Types::AvailabilityZone>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Region AWS API Documentation
    #
    class Region < Struct.new(
      :continent_code,
      :description,
      :display_name,
      :name,
      :availability_zones,
      :relational_database_availability_zones)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_name
    #   The name of the container service for which to register a container
    #   image.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   The label for the container image when it's registered to the
    #   container service.
    #
    #   Use a descriptive label that you can use to track the different
    #   versions of your registered container images.
    #
    #   Use the `GetContainerImages` action to return the container images
    #   registered to a Lightsail container service. The label is the
    #   `<imagelabel>` portion of the following image name example:
    #
    #   * `:container-service-1.<imagelabel>.1`
    #
    #   ^
    #
    #   If the name of your container service is `mycontainerservice`, and
    #   the label that you specify is `mystaticwebsite`, then the name of
    #   the registered container image will be
    #   `:mycontainerservice.mystaticwebsite.1`.
    #
    #   The number at the end of these image name examples represents the
    #   version of the registered container image. If you push and register
    #   another container image to the same Lightsail container service,
    #   with the same label, then the version number for the new registered
    #   container image will be `2`. If you push and register another
    #   container image, the version number will be `3`, and so on.
    #   @return [String]
    #
    # @!attribute [rw] digest
    #   The digest of the container image to be registered.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RegisterContainerImageRequest AWS API Documentation
    #
    class RegisterContainerImageRequest < Struct.new(
      :service_name,
      :label,
      :digest)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] container_image
    #   An object that describes a container image that is registered to a
    #   Lightsail container service
    #   @return [Types::ContainerImage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RegisterContainerImageResult AWS API Documentation
    #
    class RegisterContainerImageResult < Struct.new(
      :container_image)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the delegation state of an Amazon Route 53 registered domain
    # to Amazon Lightsail.
    #
    # When you delegate an Amazon Route 53 registered domain to Lightsail,
    # you can manage the DNS of the domain using a Lightsail DNS zone. You
    # no longer use the Route 53 hosted zone to manage the DNS of the
    # domain. To delegate the domain, Lightsail automatically updates the
    # domain's name servers in Route 53 to the name servers of the
    # Lightsail DNS zone. Then, Lightsail automatically deletes the Route 53
    # hosted zone for the domain.
    #
    # All of the following conditions must be true for automatic domain
    # delegation to be successful:
    #
    # * The registered domain must be in the same Amazon Web Services
    #   account as the Lightsail account making the request.
    #
    # * The user or entity making the request must have permission to manage
    #   domains in Route 53.
    #
    # * The Route 53 hosted zone for the domain must be empty. It cannot
    #   contain DNS records other than start of authority (SOA) and name
    #   server records.
    #
    # If automatic domain delegation fails, or if you manage the DNS of your
    # domain using a service other than Route 53, then you must manually add
    # the Lightsail DNS zone name servers to your domain in order to
    # delegate management of its DNS to Lightsail. For more information, see
    # [Creating a DNS zone to manage your domain’s records in Amazon
    # Lightsail][1] in the *Amazon Lightsail Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/lightsail-how-to-create-dns-entry
    #
    # @!attribute [rw] name_servers_update_state
    #   An object that describes the state of the name server records that
    #   are automatically added to the Route 53 domain by Lightsail.
    #   @return [Types::NameServersUpdateState]
    #
    # @!attribute [rw] r53_hosted_zone_deletion_state
    #   Describes the deletion state of an Amazon Route 53 hosted zone for a
    #   domain that is being automatically delegated to an Amazon Lightsail
    #   DNS zone.
    #   @return [Types::R53HostedZoneDeletionState]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RegisteredDomainDelegationInfo AWS API Documentation
    #
    class RegisteredDomainDelegationInfo < Struct.new(
      :name_servers_update_state,
      :r53_hosted_zone_deletion_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a database.
    #
    # @!attribute [rw] name
    #   The unique name of the database resource in Lightsail.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the database.
    #   @return [String]
    #
    # @!attribute [rw] support_code
    #   The support code for the database. Include this code in your email
    #   to support when you have questions about a database in Lightsail.
    #   This code enables our support team to look up your Lightsail
    #   information more easily.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the database was created. Formatted in Unix time.
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   The Region name and Availability Zone where the database is located.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The Lightsail resource type for the database (for example,
    #   `RelationalDatabase`).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values for the resource. For more
    #   information about tags in Lightsail, see the [Amazon Lightsail
    #   Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] relational_database_blueprint_id
    #   The blueprint ID for the database. A blueprint describes the major
    #   engine version of a database.
    #   @return [String]
    #
    # @!attribute [rw] relational_database_bundle_id
    #   The bundle ID for the database. A bundle describes the performance
    #   specifications for your database.
    #   @return [String]
    #
    # @!attribute [rw] master_database_name
    #   The name of the master database created when the Lightsail database
    #   resource is created.
    #   @return [String]
    #
    # @!attribute [rw] hardware
    #   Describes the hardware of the database.
    #   @return [Types::RelationalDatabaseHardware]
    #
    # @!attribute [rw] state
    #   Describes the current state of the database.
    #   @return [String]
    #
    # @!attribute [rw] secondary_availability_zone
    #   Describes the secondary Availability Zone of a high availability
    #   database.
    #
    #   The secondary database is used for failover support of a high
    #   availability database.
    #   @return [String]
    #
    # @!attribute [rw] backup_retention_enabled
    #   A Boolean value indicating whether automated backup retention is
    #   enabled for the database.
    #   @return [Boolean]
    #
    # @!attribute [rw] pending_modified_values
    #   Describes pending database value modifications.
    #   @return [Types::PendingModifiedRelationalDatabaseValues]
    #
    # @!attribute [rw] engine
    #   The database software (for example, `MySQL`).
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The database engine version (for example, `5.7.23`).
    #   @return [String]
    #
    # @!attribute [rw] latest_restorable_time
    #   The latest point in time to which the database can be restored.
    #   Formatted in Unix time.
    #   @return [Time]
    #
    # @!attribute [rw] master_username
    #   The master user name of the database.
    #   @return [String]
    #
    # @!attribute [rw] parameter_apply_status
    #   The status of parameter updates for the database.
    #   @return [String]
    #
    # @!attribute [rw] preferred_backup_window
    #   The daily time range during which automated backups are created for
    #   the database (for example, `16:00-16:30`).
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur on
    #   the database.
    #
    #   In the format `ddd:hh24:mi-ddd:hh24:mi`. For example,
    #   `Tue:17:00-Tue:17:30`.
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   A Boolean value indicating whether the database is publicly
    #   accessible.
    #   @return [Boolean]
    #
    # @!attribute [rw] master_endpoint
    #   The master endpoint for the database.
    #   @return [Types::RelationalDatabaseEndpoint]
    #
    # @!attribute [rw] pending_maintenance_actions
    #   Describes the pending maintenance actions for the database.
    #   @return [Array<Types::PendingMaintenanceAction>]
    #
    # @!attribute [rw] ca_certificate_identifier
    #   The certificate associated with the database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RelationalDatabase AWS API Documentation
    #
    class RelationalDatabase < Struct.new(
      :name,
      :arn,
      :support_code,
      :created_at,
      :location,
      :resource_type,
      :tags,
      :relational_database_blueprint_id,
      :relational_database_bundle_id,
      :master_database_name,
      :hardware,
      :state,
      :secondary_availability_zone,
      :backup_retention_enabled,
      :pending_modified_values,
      :engine,
      :engine_version,
      :latest_restorable_time,
      :master_username,
      :parameter_apply_status,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :publicly_accessible,
      :master_endpoint,
      :pending_maintenance_actions,
      :ca_certificate_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a database image, or blueprint. A blueprint describes the
    # major engine version of a database.
    #
    # @!attribute [rw] blueprint_id
    #   The ID for the database blueprint.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The database software of the database blueprint (for example,
    #   `MySQL`).
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The database engine version for the database blueprint (for example,
    #   `5.7.23`).
    #   @return [String]
    #
    # @!attribute [rw] engine_description
    #   The description of the database engine for the database blueprint.
    #   @return [String]
    #
    # @!attribute [rw] engine_version_description
    #   The description of the database engine version for the database
    #   blueprint.
    #   @return [String]
    #
    # @!attribute [rw] is_engine_default
    #   A Boolean value indicating whether the engine version is the default
    #   for the database blueprint.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RelationalDatabaseBlueprint AWS API Documentation
    #
    class RelationalDatabaseBlueprint < Struct.new(
      :blueprint_id,
      :engine,
      :engine_version,
      :engine_description,
      :engine_version_description,
      :is_engine_default)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a database bundle. A bundle describes the performance
    # specifications of the database.
    #
    # @!attribute [rw] bundle_id
    #   The ID for the database bundle.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the database bundle.
    #   @return [String]
    #
    # @!attribute [rw] price
    #   The cost of the database bundle in US currency.
    #   @return [Float]
    #
    # @!attribute [rw] ram_size_in_gb
    #   The amount of RAM in GB (for example, `2.0`) for the database
    #   bundle.
    #   @return [Float]
    #
    # @!attribute [rw] disk_size_in_gb
    #   The size of the disk for the database bundle.
    #   @return [Integer]
    #
    # @!attribute [rw] transfer_per_month_in_gb
    #   The data transfer rate per month in GB for the database bundle.
    #   @return [Integer]
    #
    # @!attribute [rw] cpu_count
    #   The number of virtual CPUs (vCPUs) for the database bundle.
    #   @return [Integer]
    #
    # @!attribute [rw] is_encrypted
    #   A Boolean value indicating whether the database bundle is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_active
    #   A Boolean value indicating whether the database bundle is active.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RelationalDatabaseBundle AWS API Documentation
    #
    class RelationalDatabaseBundle < Struct.new(
      :bundle_id,
      :name,
      :price,
      :ram_size_in_gb,
      :disk_size_in_gb,
      :transfer_per_month_in_gb,
      :cpu_count,
      :is_encrypted,
      :is_active)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an endpoint for a database.
    #
    # @!attribute [rw] port
    #   Specifies the port that the database is listening on.
    #   @return [Integer]
    #
    # @!attribute [rw] address
    #   Specifies the DNS address of the database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RelationalDatabaseEndpoint AWS API Documentation
    #
    class RelationalDatabaseEndpoint < Struct.new(
      :port,
      :address)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an event for a database.
    #
    # @!attribute [rw] resource
    #   The database that the database event relates to.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the database event was created.
    #   @return [Time]
    #
    # @!attribute [rw] message
    #   The message of the database event.
    #   @return [String]
    #
    # @!attribute [rw] event_categories
    #   The category that the database event belongs to.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RelationalDatabaseEvent AWS API Documentation
    #
    class RelationalDatabaseEvent < Struct.new(
      :resource,
      :created_at,
      :message,
      :event_categories)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the hardware of a database.
    #
    # @!attribute [rw] cpu_count
    #   The number of vCPUs for the database.
    #   @return [Integer]
    #
    # @!attribute [rw] disk_size_in_gb
    #   The size of the disk for the database.
    #   @return [Integer]
    #
    # @!attribute [rw] ram_size_in_gb
    #   The amount of RAM in GB for the database.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RelationalDatabaseHardware AWS API Documentation
    #
    class RelationalDatabaseHardware < Struct.new(
      :cpu_count,
      :disk_size_in_gb,
      :ram_size_in_gb)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the parameters of a database.
    #
    # @!attribute [rw] allowed_values
    #   Specifies the valid range of values for the parameter.
    #   @return [String]
    #
    # @!attribute [rw] apply_method
    #   Indicates when parameter updates are applied.
    #
    #   Can be `immediate` or `pending-reboot`.
    #   @return [String]
    #
    # @!attribute [rw] apply_type
    #   Specifies the engine-specific parameter type.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   Specifies the valid data type for the parameter.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Provides a description of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] is_modifiable
    #   A Boolean value indicating whether the parameter can be modified.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameter_name
    #   Specifies the name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] parameter_value
    #   Specifies the value of the parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RelationalDatabaseParameter AWS API Documentation
    #
    class RelationalDatabaseParameter < Struct.new(
      :allowed_values,
      :apply_method,
      :apply_type,
      :data_type,
      :description,
      :is_modifiable,
      :parameter_name,
      :parameter_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a database snapshot.
    #
    # @!attribute [rw] name
    #   The name of the database snapshot.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the database snapshot.
    #   @return [String]
    #
    # @!attribute [rw] support_code
    #   The support code for the database snapshot. Include this code in
    #   your email to support when you have questions about a database
    #   snapshot in Lightsail. This code enables our support team to look up
    #   your Lightsail information more easily.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the database snapshot was created.
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   The Region name and Availability Zone where the database snapshot is
    #   located.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The Lightsail resource type.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values for the resource. For more
    #   information about tags in Lightsail, see the [Amazon Lightsail
    #   Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] engine
    #   The software of the database snapshot (for example, `MySQL`)
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The database engine version for the database snapshot (for example,
    #   `5.7.23`).
    #   @return [String]
    #
    # @!attribute [rw] size_in_gb
    #   The size of the disk in GB (for example, `32`) for the database
    #   snapshot.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The state of the database snapshot.
    #   @return [String]
    #
    # @!attribute [rw] from_relational_database_name
    #   The name of the source database from which the database snapshot was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] from_relational_database_arn
    #   The Amazon Resource Name (ARN) of the database from which the
    #   database snapshot was created.
    #   @return [String]
    #
    # @!attribute [rw] from_relational_database_bundle_id
    #   The bundle ID of the database from which the database snapshot was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] from_relational_database_blueprint_id
    #   The blueprint ID of the database from which the database snapshot
    #   was created. A blueprint describes the major engine version of a
    #   database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RelationalDatabaseSnapshot AWS API Documentation
    #
    class RelationalDatabaseSnapshot < Struct.new(
      :name,
      :arn,
      :support_code,
      :created_at,
      :location,
      :resource_type,
      :tags,
      :engine,
      :engine_version,
      :size_in_gb,
      :state,
      :from_relational_database_name,
      :from_relational_database_arn,
      :from_relational_database_bundle_id,
      :from_relational_database_blueprint_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] static_ip_name
    #   The name of the static IP to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ReleaseStaticIpRequest AWS API Documentation
    #
    class ReleaseStaticIpRequest < Struct.new(
      :static_ip_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ReleaseStaticIpResult AWS API Documentation
    #
    class ReleaseStaticIpResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the status of a SSL/TLS certificate renewal managed by
    # Amazon Lightsail.
    #
    # @!attribute [rw] domain_validation_records
    #   An array of objects that describe the domain validation records of
    #   the certificate.
    #   @return [Array<Types::DomainValidationRecord>]
    #
    # @!attribute [rw] renewal_status
    #   The renewal status of the certificate.
    #
    #   The following renewal status are possible:
    #
    #   * <b> <code>PendingAutoRenewal</code> </b> - Lightsail is attempting
    #     to automatically validate the domain names of the certificate. No
    #     further action is required.
    #
    #   * <b> <code>PendingValidation</code> </b> - Lightsail couldn't
    #     automatically validate one or more domain names of the
    #     certificate. You must take action to validate these domain names
    #     or the certificate won't be renewed. Check to make sure your
    #     certificate's domain validation records exist in your domain's
    #     DNS, and that your certificate remains in use.
    #
    #   * <b> <code>Success</code> </b> - All domain names in the
    #     certificate are validated, and Lightsail renewed the certificate.
    #     No further action is required.
    #
    #   * <b> <code>Failed</code> </b> - One or more domain names were not
    #     validated before the certificate expired, and Lightsail did not
    #     renew the certificate. You can request a new certificate using the
    #     `CreateCertificate` action.
    #   @return [String]
    #
    # @!attribute [rw] renewal_status_reason
    #   The reason for the renewal status of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the certificate was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RenewalSummary AWS API Documentation
    #
    class RenewalSummary < Struct.new(
      :domain_validation_records,
      :renewal_status,
      :renewal_status_reason,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] distribution_name
    #   The name of the distribution for which to reset cache.
    #
    #   Use the `GetDistributions` action to get a list of distribution
    #   names that you can specify.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ResetDistributionCacheRequest AWS API Documentation
    #
    class ResetDistributionCacheRequest < Struct.new(
      :distribution_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the reset cache request.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The timestamp of the reset cache request (`1479734909.17`) in Unix
    #   time format.
    #   @return [Time]
    #
    # @!attribute [rw] operation
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ResetDistributionCacheResult AWS API Documentation
    #
    class ResetDistributionCacheResult < Struct.new(
      :status,
      :create_time,
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the estimated cost or usage that a budget tracks.
    #
    # @!attribute [rw] resource_name
    #   The resource name.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource the budget will track.
    #   @return [String]
    #
    # @!attribute [rw] cost_estimates
    #   The cost estimate for the specified budget.
    #   @return [Array<Types::CostEstimate>]
    #
    # @!attribute [rw] start_time
    #   The estimate start time.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The estimate end time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ResourceBudgetEstimate AWS API Documentation
    #
    class ResourceBudgetEstimate < Struct.new(
      :resource_name,
      :resource_type,
      :cost_estimates,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the resource location.
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone. Follows the format `us-east-2a`
    #   (case-sensitive).
    #   @return [String]
    #
    # @!attribute [rw] region_name
    #   The Amazon Web Services Region name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ResourceLocation AWS API Documentation
    #
    class ResourceLocation < Struct.new(
      :availability_zone,
      :region_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Amazon Lightsail instance that has access to a Lightsail
    # bucket.
    #
    # @!attribute [rw] name
    #   The name of the Lightsail instance.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The Lightsail resource type (for example, `Instance`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ResourceReceivingAccess AWS API Documentation
    #
    class ResourceReceivingAccess < Struct.new(
      :name,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the domain name system (DNS) records to add to your
    # domain's DNS to validate it for an Amazon Lightsail certificate.
    #
    # @!attribute [rw] name
    #   The name of the record.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The DNS record type.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the DNS record.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ResourceRecord AWS API Documentation
    #
    class ResourceRecord < Struct.new(
      :name,
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protocol
    #   The protocol to verify, such as `Email` or `SMS` (text messaging).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/SendContactMethodVerificationRequest AWS API Documentation
    #
    class SendContactMethodVerificationRequest < Struct.new(
      :protocol)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/SendContactMethodVerificationResult AWS API Documentation
    #
    class SendContactMethodVerificationResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # A general service exception.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] docs
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] tip
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ServiceException AWS API Documentation
    #
    class ServiceException < Struct.new(
      :code,
      :docs,
      :message,
      :tip)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a web-based, remote graphical user interface (GUI), Amazon
    # DCV session. The session is used to access a virtual computer’s
    # operating system or application.
    #
    # @!attribute [rw] name
    #   The session name.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The session URL.
    #   @return [String]
    #
    # @!attribute [rw] is_primary
    #   When true, this Boolean value indicates the primary session for the
    #   specified resource.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Session AWS API Documentation
    #
    class Session < Struct.new(
      :name,
      :url,
      :is_primary)
      SENSITIVE = [:url]
      include Aws::Structure
    end

    # @!attribute [rw] resource_type
    #   The resource type.
    #
    #   The resource values are `Distribution`, `Instance`, and
    #   `LoadBalancer`.
    #
    #   <note markdown="1"> Distribution-related APIs are available only in the N. Virginia
    #   (`us-east-1`) Amazon Web Services Region. Set your Amazon Web
    #   Services Region configuration to `us-east-1` to create, view, or
    #   edit distributions.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource for which to set the IP address type.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type to set for the specified resource.
    #
    #   The possible values are `ipv4` for IPv4 only, `ipv6` for IPv6 only,
    #   and `dualstack` for IPv4 and IPv6.
    #   @return [String]
    #
    # @!attribute [rw] accept_bundle_update
    #   Required parameter to accept the instance bundle update when
    #   changing to, and from, IPv6-only.
    #
    #   <note markdown="1"> An instance bundle will change when switching from `dual-stack` or
    #   `ipv4`, to `ipv6`. It also changes when switching from `ipv6`, to
    #   `dual-stack` or `ipv4`.
    #
    #    You must include this parameter in the command to update the bundle.
    #   For example, if you switch from `dual-stack` to `ipv6`, the bundle
    #   will be updated, and billing for the IPv6-only instance bundle
    #   begins immediately.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/SetIpAddressTypeRequest AWS API Documentation
    #
    class SetIpAddressTypeRequest < Struct.new(
      :resource_type,
      :resource_name,
      :ip_address_type,
      :accept_bundle_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/SetIpAddressTypeResult AWS API Documentation
    #
    class SetIpAddressTypeResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_name
    #   The name of the Lightsail instance for which to set bucket access.
    #   The instance must be in a running or stopped state.
    #   @return [String]
    #
    # @!attribute [rw] bucket_name
    #   The name of the bucket for which to set access to another Lightsail
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] access
    #   The access setting.
    #
    #   The following access settings are available:
    #
    #   * `allow` - Allows access to the bucket and its objects.
    #
    #   * `deny` - Denies access to the bucket and its objects. Use this
    #     setting to remove access for a resource previously set to `allow`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/SetResourceAccessForBucketRequest AWS API Documentation
    #
    class SetResourceAccessForBucketRequest < Struct.new(
      :resource_name,
      :bucket_name,
      :access)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/SetResourceAccessForBucketResult AWS API Documentation
    #
    class SetResourceAccessForBucketResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns details about the commands that were run.
    #
    # @!attribute [rw] command
    #   The command that was executed.
    #   @return [String]
    #
    # @!attribute [rw] date_time
    #   The timestamp for when the request was run.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the target resource.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the `SetupInstanceHttps` request.
    #   @return [String]
    #
    # @!attribute [rw] standard_error
    #   The text written by the command to stderr.
    #   @return [String]
    #
    # @!attribute [rw] standard_output
    #   The text written by the command to stdout.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The current version of the script..
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/SetupExecutionDetails AWS API Documentation
    #
    class SetupExecutionDetails < Struct.new(
      :command,
      :date_time,
      :name,
      :status,
      :standard_error,
      :standard_output,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns a list of the commands that were ran on the target resource.
    #
    # The status of each command is also returned.
    #
    # @!attribute [rw] operation_id
    #   A GUID that's used to identify the operation.
    #   @return [String]
    #
    # @!attribute [rw] request
    #   Information about the specified request.
    #   @return [Types::SetupRequest]
    #
    # @!attribute [rw] resource
    #   The target resource name for the request.
    #   @return [Types::SetupHistoryResource]
    #
    # @!attribute [rw] execution_details
    #   Describes the full details of the request.
    #   @return [Array<Types::SetupExecutionDetails>]
    #
    # @!attribute [rw] status
    #   The status of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/SetupHistory AWS API Documentation
    #
    class SetupHistory < Struct.new(
      :operation_id,
      :request,
      :resource,
      :execution_details,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Lightsail resource that `SetupHistory` was ran on.
    #
    # @!attribute [rw] name
    #   The name of the Lightsail resource.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Lightsail resource.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp for when the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   Describes the resource location.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The Lightsail resource type. For example, `Instance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/SetupHistoryResource AWS API Documentation
    #
    class SetupHistoryResource < Struct.new(
      :name,
      :arn,
      :created_at,
      :location,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_name
    #   The name of the Lightsail instance.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The contact method for SSL/TLS certificate renewal alerts. You can
    #   enter one email address.
    #   @return [String]
    #
    # @!attribute [rw] domain_names
    #   The name of the domain and subdomains that were specified for the
    #   SSL/TLS certificate.
    #   @return [Array<String>]
    #
    # @!attribute [rw] certificate_provider
    #   The certificate authority that issues the SSL/TLS certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/SetupInstanceHttpsRequest AWS API Documentation
    #
    class SetupInstanceHttpsRequest < Struct.new(
      :instance_name,
      :email_address,
      :domain_names,
      :certificate_provider)
      SENSITIVE = [:email_address]
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   The available API operations for `SetupInstanceHttps`.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/SetupInstanceHttpsResult AWS API Documentation
    #
    class SetupInstanceHttpsResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information that was submitted during the `SetupInstanceHttps`
    # request. Email information is redacted for privacy.
    #
    # @!attribute [rw] instance_name
    #   The name of the Lightsail instance.
    #   @return [String]
    #
    # @!attribute [rw] domain_names
    #   The name of the domain and subdomains that the SSL/TLS certificate
    #   secures.
    #   @return [Array<String>]
    #
    # @!attribute [rw] certificate_provider
    #   The Certificate Authority (CA) that issues the SSL/TLS certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/SetupRequest AWS API Documentation
    #
    class SetupRequest < Struct.new(
      :instance_name,
      :domain_names,
      :certificate_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_name
    #   The resource name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StartGUISessionRequest AWS API Documentation
    #
    class StartGUISessionRequest < Struct.new(
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   The available API operations.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StartGUISessionResult AWS API Documentation
    #
    class StartGUISessionResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_name
    #   The name of the instance (a virtual private server) to start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StartInstanceRequest AWS API Documentation
    #
    class StartInstanceRequest < Struct.new(
      :instance_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StartInstanceResult AWS API Documentation
    #
    class StartInstanceResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] relational_database_name
    #   The name of your database to start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StartRelationalDatabaseRequest AWS API Documentation
    #
    class StartRelationalDatabaseRequest < Struct.new(
      :relational_database_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StartRelationalDatabaseResult AWS API Documentation
    #
    class StartRelationalDatabaseResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a static IP.
    #
    # @!attribute [rw] name
    #   The name of the static IP (`StaticIP-Ohio-EXAMPLE`).
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the static IP
    #   (`arn:aws:lightsail:us-east-2:123456789101:StaticIp/9cbb4a9e-f8e3-4dfe-b57e-12345EXAMPLE`).
    #   @return [String]
    #
    # @!attribute [rw] support_code
    #   The support code. Include this code in your email to support when
    #   you have questions about an instance or another resource in
    #   Lightsail. This code enables our support team to look up your
    #   Lightsail information more easily.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the static IP was created (`1479735304.222`).
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   The region and Availability Zone where the static IP was created.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The resource type (usually `StaticIp`).
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The static IP address.
    #   @return [String]
    #
    # @!attribute [rw] attached_to
    #   The instance where the static IP is attached
    #   (`Amazon_Linux-1GB-Ohio-1`).
    #   @return [String]
    #
    # @!attribute [rw] is_attached
    #   A Boolean value indicating whether the static IP is attached.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StaticIp AWS API Documentation
    #
    class StaticIp < Struct.new(
      :name,
      :arn,
      :support_code,
      :created_at,
      :location,
      :resource_type,
      :ip_address,
      :attached_to,
      :is_attached)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_name
    #   The resource name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StopGUISessionRequest AWS API Documentation
    #
    class StopGUISessionRequest < Struct.new(
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   The available API operations.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StopGUISessionResult AWS API Documentation
    #
    class StopGUISessionResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a request to create or edit the `StopInstanceOnIdle` add-on.
    #
    # This add-on only applies to Lightsail for Research resources.
    #
    # @!attribute [rw] threshold
    #   The value to compare with the duration.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The amount of idle time in minutes after which your virtual computer
    #   will automatically stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StopInstanceOnIdleRequest AWS API Documentation
    #
    class StopInstanceOnIdleRequest < Struct.new(
      :threshold,
      :duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_name
    #   The name of the instance (a virtual private server) to stop.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   When set to `True`, forces a Lightsail instance that is stuck in a
    #   `stopping` state to stop.
    #
    #   Only use the `force` parameter if your instance is stuck in the
    #   `stopping` state. In any other state, your instance should stop
    #   normally without adding this parameter to your API request.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StopInstanceRequest AWS API Documentation
    #
    class StopInstanceRequest < Struct.new(
      :instance_name,
      :force)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StopInstanceResult AWS API Documentation
    #
    class StopInstanceResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] relational_database_name
    #   The name of your database to stop.
    #   @return [String]
    #
    # @!attribute [rw] relational_database_snapshot_name
    #   The name of your new database snapshot to be created before stopping
    #   your database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StopRelationalDatabaseRequest AWS API Documentation
    #
    class StopRelationalDatabaseRequest < Struct.new(
      :relational_database_name,
      :relational_database_snapshot_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StopRelationalDatabaseResult AWS API Documentation
    #
    class StopRelationalDatabaseResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a tag key and optional value assigned to an Amazon Lightsail
    # resource.
    #
    # For more information about tags in Lightsail, see the [Amazon
    # Lightsail Developer Guide][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags
    #
    # @!attribute [rw] key
    #   The key of the tag.
    #
    #   Constraints: Tag keys accept a maximum of 128 letters, numbers,
    #   spaces in UTF-8, or the following characters: + - = . \_ : / @
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag.
    #
    #   Constraints: Tag values accept a maximum of 256 letters, numbers,
    #   spaces in UTF-8, or the following characters: + - = . \_ : / @
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_name
    #   The name of the resource to which you are adding tags.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which you want to
    #   add a tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag key and optional value.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_name,
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/TagResourceResult AWS API Documentation
    #
    class TagResourceResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alarm_name
    #   The name of the alarm to test.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The alarm state to test.
    #
    #   An alarm has the following possible states that can be tested:
    #
    #   * `ALARM` - The metric is outside of the defined threshold.
    #
    #   * `INSUFFICIENT_DATA` - The alarm has just started, the metric is
    #     not available, or not enough data is available for the metric to
    #     determine the alarm state.
    #
    #   * `OK` - The metric is within the defined threshold.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/TestAlarmRequest AWS API Documentation
    #
    class TestAlarmRequest < Struct.new(
      :alarm_name,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/TestAlarmResult AWS API Documentation
    #
    class TestAlarmResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sets the start date and end date for retrieving a cost estimate. The
    # start date is inclusive, but the end date is exclusive. For example,
    # if `start` is `2017-01-01` and `end` is `2017-05-01`, then the cost
    # and usage data is retrieved from `2017-01-01` up to and including
    # `2017-04-30` but not including `2017-05-01`.
    #
    # @!attribute [rw] start
    #   The beginning of the time period. The start date is inclusive. For
    #   example, if `start` is `2017-01-01`, Lightsail for Research
    #   retrieves cost and usage data starting at `2017-01-01` up to the end
    #   date. The start date must be equal to or no later than the current
    #   date to avoid a validation error.
    #   @return [Time]
    #
    # @!attribute [rw] end
    #   The end of the time period. The end date is exclusive. For example,
    #   if `end` is `2017-05-01`, Lightsail for Research retrieves cost and
    #   usage data from the start date up to, but not including,
    #   `2017-05-01`.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/TimePeriod AWS API Documentation
    #
    class TimePeriod < Struct.new(
      :start,
      :end)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lightsail throws this exception when the user has not been
    # authenticated.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] docs
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] tip
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UnauthenticatedException AWS API Documentation
    #
    class UnauthenticatedException < Struct.new(
      :code,
      :docs,
      :message,
      :tip)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UnpeerVpcRequest AWS API Documentation
    #
    class UnpeerVpcRequest < Aws::EmptyStructure; end

    # @!attribute [rw] operation
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UnpeerVpcResult AWS API Documentation
    #
    class UnpeerVpcResult < Struct.new(
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_name
    #   The name of the resource from which you are removing a tag.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which you want
    #   to remove a tag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys to delete from the specified resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_name,
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UntagResourceResult AWS API Documentation
    #
    class UntagResourceResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bucket_name
    #   The name of the bucket for which to update the bundle.
    #   @return [String]
    #
    # @!attribute [rw] bundle_id
    #   The ID of the new bundle to apply to the bucket.
    #
    #   Use the [GetBucketBundles][1] action to get a list of bundle IDs
    #   that you can specify.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetBucketBundles.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateBucketBundleRequest AWS API Documentation
    #
    class UpdateBucketBundleRequest < Struct.new(
      :bucket_name,
      :bundle_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateBucketBundleResult AWS API Documentation
    #
    class UpdateBucketBundleResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bucket_name
    #   The name of the bucket to update.
    #   @return [String]
    #
    # @!attribute [rw] access_rules
    #   An object that sets the public accessibility of objects in the
    #   specified bucket.
    #   @return [Types::AccessRules]
    #
    # @!attribute [rw] versioning
    #   Specifies whether to enable or suspend versioning of objects in the
    #   bucket.
    #
    #   The following options can be specified:
    #
    #   * `Enabled` - Enables versioning of objects in the specified bucket.
    #
    #   * `Suspended` - Suspends versioning of objects in the specified
    #     bucket. Existing object versions are retained.
    #   @return [String]
    #
    # @!attribute [rw] readonly_access_accounts
    #   An array of strings to specify the Amazon Web Services account IDs
    #   that can access the bucket.
    #
    #   You can give a maximum of 10 Amazon Web Services accounts access to
    #   a bucket.
    #   @return [Array<String>]
    #
    # @!attribute [rw] access_log_config
    #   An object that describes the access log configuration for the
    #   bucket.
    #   @return [Types::BucketAccessLogConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateBucketRequest AWS API Documentation
    #
    class UpdateBucketRequest < Struct.new(
      :bucket_name,
      :access_rules,
      :versioning,
      :readonly_access_accounts,
      :access_log_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bucket
    #   An object that describes the bucket that is updated.
    #   @return [Types::Bucket]
    #
    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateBucketResult AWS API Documentation
    #
    class UpdateBucketResult < Struct.new(
      :bucket,
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_name
    #   The name of the container service to update.
    #   @return [String]
    #
    # @!attribute [rw] power
    #   The power for the container service.
    #
    #   The power specifies the amount of memory, vCPUs, and base monthly
    #   cost of each node of the container service. The `power` and `scale`
    #   of a container service makes up its configured capacity. To
    #   determine the monthly price of your container service, multiply the
    #   base price of the `power` with the `scale` (the number of nodes) of
    #   the service.
    #
    #   Use the `GetContainerServicePowers` action to view the
    #   specifications of each power option.
    #   @return [String]
    #
    # @!attribute [rw] scale
    #   The scale for the container service.
    #
    #   The scale specifies the allocated compute nodes of the container
    #   service. The `power` and `scale` of a container service makes up its
    #   configured capacity. To determine the monthly price of your
    #   container service, multiply the base price of the `power` with the
    #   `scale` (the number of nodes) of the service.
    #   @return [Integer]
    #
    # @!attribute [rw] is_disabled
    #   A Boolean value to indicate whether the container service is
    #   disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] public_domain_names
    #   The public domain names to use with the container service, such as
    #   `example.com` and `www.example.com`.
    #
    #   You can specify up to four public domain names for a container
    #   service. The domain names that you specify are used when you create
    #   a deployment with a container configured as the public endpoint of
    #   your container service.
    #
    #   If you don't specify public domain names, then you can use the
    #   default domain of the container service.
    #
    #   You must create and validate an SSL/TLS certificate before you can
    #   use public domain names with your container service. Use the
    #   `CreateCertificate` action to create a certificate for the public
    #   domain names you want to use with your container service.
    #
    #   You can specify public domain names using a string to array map as
    #   shown in the example later on this page.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] private_registry_access
    #   An object to describe the configuration for the container service to
    #   access private container image repositories, such as Amazon Elastic
    #   Container Registry (Amazon ECR) private repositories.
    #
    #   For more information, see [Configuring access to an Amazon ECR
    #   private repository for an Amazon Lightsail container service][1] in
    #   the *Amazon Lightsail Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-container-service-ecr-private-repo-access
    #   @return [Types::PrivateRegistryAccessRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateContainerServiceRequest AWS API Documentation
    #
    class UpdateContainerServiceRequest < Struct.new(
      :service_name,
      :power,
      :scale,
      :is_disabled,
      :public_domain_names,
      :private_registry_access)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] container_service
    #   An object that describes a container service.
    #   @return [Types::ContainerService]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateContainerServiceResult AWS API Documentation
    #
    class UpdateContainerServiceResult < Struct.new(
      :container_service)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] distribution_name
    #   The name of the distribution for which to update the bundle.
    #
    #   Use the `GetDistributions` action to get a list of distribution
    #   names that you can specify.
    #   @return [String]
    #
    # @!attribute [rw] bundle_id
    #   The bundle ID of the new bundle to apply to your distribution.
    #
    #   Use the `GetDistributionBundles` action to get a list of
    #   distribution bundle IDs that you can specify.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateDistributionBundleRequest AWS API Documentation
    #
    class UpdateDistributionBundleRequest < Struct.new(
      :distribution_name,
      :bundle_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An object that describes the result of the action, such as the
    #   status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateDistributionBundleResult AWS API Documentation
    #
    class UpdateDistributionBundleResult < Struct.new(
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] distribution_name
    #   The name of the distribution to update.
    #
    #   Use the `GetDistributions` action to get a list of distribution
    #   names that you can specify.
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   An object that describes the origin resource for the distribution,
    #   such as a Lightsail instance, bucket, or load balancer.
    #
    #   The distribution pulls, caches, and serves content from the origin.
    #   @return [Types::InputOrigin]
    #
    # @!attribute [rw] default_cache_behavior
    #   An object that describes the default cache behavior for the
    #   distribution.
    #   @return [Types::CacheBehavior]
    #
    # @!attribute [rw] cache_behavior_settings
    #   An object that describes the cache behavior settings for the
    #   distribution.
    #
    #   <note markdown="1"> The `cacheBehaviorSettings` specified in your
    #   `UpdateDistributionRequest` will replace your distribution's
    #   existing settings.
    #
    #    </note>
    #   @return [Types::CacheSettings]
    #
    # @!attribute [rw] cache_behaviors
    #   An array of objects that describe the per-path cache behavior for
    #   the distribution.
    #   @return [Array<Types::CacheBehaviorPerPath>]
    #
    # @!attribute [rw] is_enabled
    #   Indicates whether to enable the distribution.
    #   @return [Boolean]
    #
    # @!attribute [rw] viewer_minimum_tls_protocol_version
    #   Use this parameter to update the minimum TLS protocol version for
    #   the SSL/TLS certificate that's attached to the distribution.
    #   @return [String]
    #
    # @!attribute [rw] certificate_name
    #   The name of the SSL/TLS certificate that you want to attach to the
    #   distribution.
    #
    #   Only certificates with a status of `ISSUED` can be attached to a
    #   distribution.
    #
    #   Use the [GetCertificates][1] action to get a list of certificate
    #   names that you can specify.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetCertificates.html
    #   @return [String]
    #
    # @!attribute [rw] use_default_certificate
    #   Indicates whether the default SSL/TLS certificate is attached to the
    #   distribution. The default value is `true`. When `true`, the
    #   distribution uses the default domain name such as
    #   `d111111abcdef8.cloudfront.net`.
    #
    #   Set this value to `false` to attach a new certificate to the
    #   distribution.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateDistributionRequest AWS API Documentation
    #
    class UpdateDistributionRequest < Struct.new(
      :distribution_name,
      :origin,
      :default_cache_behavior,
      :cache_behavior_settings,
      :cache_behaviors,
      :is_enabled,
      :viewer_minimum_tls_protocol_version,
      :certificate_name,
      :use_default_certificate)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateDistributionResult AWS API Documentation
    #
    class UpdateDistributionResult < Struct.new(
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The name of the domain recordset to update.
    #   @return [String]
    #
    # @!attribute [rw] domain_entry
    #   An array of key-value pairs containing information about the domain
    #   entry.
    #   @return [Types::DomainEntry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateDomainEntryRequest AWS API Documentation
    #
    class UpdateDomainEntryRequest < Struct.new(
      :domain_name,
      :domain_entry)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateDomainEntryResult AWS API Documentation
    #
    class UpdateDomainEntryResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_name
    #   The name of the instance for which to update metadata parameters.
    #   @return [String]
    #
    # @!attribute [rw] http_tokens
    #   The state of token usage for your instance metadata requests. If the
    #   parameter is not specified in the request, the default state is
    #   `optional`.
    #
    #   If the state is `optional`, you can choose whether to retrieve
    #   instance metadata with a signed token header on your request. If you
    #   retrieve the IAM role credentials without a token, the version 1.0
    #   role credentials are returned. If you retrieve the IAM role
    #   credentials by using a valid signed token, the version 2.0 role
    #   credentials are returned.
    #
    #   If the state is `required`, you must send a signed token header with
    #   all instance metadata retrieval requests. In this state, retrieving
    #   the IAM role credential always returns the version 2.0 credentials.
    #   The version 1.0 credentials are not available.
    #   @return [String]
    #
    # @!attribute [rw] http_endpoint
    #   Enables or disables the HTTP metadata endpoint on your instances. If
    #   this parameter is not specified, the existing state is maintained.
    #
    #   If you specify a value of `disabled`, you cannot access your
    #   instance metadata.
    #   @return [String]
    #
    # @!attribute [rw] http_put_response_hop_limit
    #   The desired HTTP PUT response hop limit for instance metadata
    #   requests. A larger number means that the instance metadata requests
    #   can travel farther. If no parameter is specified, the existing state
    #   is maintained.
    #   @return [Integer]
    #
    # @!attribute [rw] http_protocol_ipv_6
    #   Enables or disables the IPv6 endpoint for the instance metadata
    #   service. This setting applies only when the HTTP metadata endpoint
    #   is enabled.
    #
    #   <note markdown="1"> This parameter is available only for instances in the Europe
    #   (Stockholm) Amazon Web Services Region (`eu-north-1`).
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateInstanceMetadataOptionsRequest AWS API Documentation
    #
    class UpdateInstanceMetadataOptionsRequest < Struct.new(
      :instance_name,
      :http_tokens,
      :http_endpoint,
      :http_put_response_hop_limit,
      :http_protocol_ipv_6)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateInstanceMetadataOptionsResult AWS API Documentation
    #
    class UpdateInstanceMetadataOptionsResult < Struct.new(
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] load_balancer_name
    #   The name of the load balancer that you want to modify
    #   (`my-load-balancer`.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The name of the attribute you want to update.
    #   @return [String]
    #
    # @!attribute [rw] attribute_value
    #   The value that you want to specify for the attribute name.
    #
    #   The following values are supported depending on what you specify for
    #   the `attributeName` request parameter:
    #
    #   * If you specify `HealthCheckPath` for the `attributeName` request
    #     parameter, then the `attributeValue` request parameter must be the
    #     path to ping on the target (for example,
    #     `/weather/us/wa/seattle`).
    #
    #   * If you specify `SessionStickinessEnabled` for the `attributeName`
    #     request parameter, then the `attributeValue` request parameter
    #     must be `true` to activate session stickiness or `false` to
    #     deactivate session stickiness.
    #
    #   * If you specify `SessionStickiness_LB_CookieDurationSeconds` for
    #     the `attributeName` request parameter, then the `attributeValue`
    #     request parameter must be an interger that represents the cookie
    #     duration in seconds.
    #
    #   * If you specify `HttpsRedirectionEnabled` for the `attributeName`
    #     request parameter, then the `attributeValue` request parameter
    #     must be `true` to activate HTTP to HTTPS redirection or `false` to
    #     deactivate HTTP to HTTPS redirection.
    #
    #   * If you specify `TlsPolicyName` for the `attributeName` request
    #     parameter, then the `attributeValue` request parameter must be the
    #     name of the TLS policy.
    #
    #     Use the [GetLoadBalancerTlsPolicies][1] action to get a list of
    #     TLS policy names that you can specify.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetLoadBalancerTlsPolicies.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateLoadBalancerAttributeRequest AWS API Documentation
    #
    class UpdateLoadBalancerAttributeRequest < Struct.new(
      :load_balancer_name,
      :attribute_name,
      :attribute_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateLoadBalancerAttributeResult AWS API Documentation
    #
    class UpdateLoadBalancerAttributeResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] relational_database_name
    #   The name of your database for which to update parameters.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The database parameters to update.
    #   @return [Array<Types::RelationalDatabaseParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateRelationalDatabaseParametersRequest AWS API Documentation
    #
    class UpdateRelationalDatabaseParametersRequest < Struct.new(
      :relational_database_name,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateRelationalDatabaseParametersResult AWS API Documentation
    #
    class UpdateRelationalDatabaseParametersResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] relational_database_name
    #   The name of your Lightsail database resource to update.
    #   @return [String]
    #
    # @!attribute [rw] master_user_password
    #   The password for the master user. The password can include any
    #   printable ASCII character except "/", """, or "@".
    #
    #   My**SQL**
    #
    #   Constraints: Must contain from 8 to 41 characters.
    #
    #   **PostgreSQL**
    #
    #   Constraints: Must contain from 8 to 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] rotate_master_user_password
    #   When `true`, the master user password is changed to a new strong
    #   password generated by Lightsail.
    #
    #   Use the `get relational database master user password` operation to
    #   get the new password.
    #   @return [Boolean]
    #
    # @!attribute [rw] preferred_backup_window
    #   The daily time range during which automated backups are created for
    #   your database if automated backups are enabled.
    #
    #   Constraints:
    #
    #   * Must be in the `hh24:mi-hh24:mi` format.
    #
    #     Example: `16:00-16:30`
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Must not conflict with the preferred maintenance window.
    #
    #   * Must be at least 30 minutes.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur on
    #   your database.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each Amazon Web Services Region, occurring on a
    #   random day of the week.
    #
    #   Constraints:
    #
    #   * Must be in the `ddd:hh24:mi-ddd:hh24:mi` format.
    #
    #   * Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
    #
    #   * Must be at least 30 minutes.
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Example: `Tue:17:00-Tue:17:30`
    #   @return [String]
    #
    # @!attribute [rw] enable_backup_retention
    #   When `true`, enables automated backup retention for your database.
    #
    #   Updates are applied during the next maintenance window because this
    #   can result in an outage.
    #   @return [Boolean]
    #
    # @!attribute [rw] disable_backup_retention
    #   When `true`, disables automated backup retention for your database.
    #
    #   Disabling backup retention deletes all automated database backups.
    #   Before disabling this, you may want to create a snapshot of your
    #   database using the `create relational database snapshot` operation.
    #
    #   Updates are applied during the next maintenance window because this
    #   can result in an outage.
    #   @return [Boolean]
    #
    # @!attribute [rw] publicly_accessible
    #   Specifies the accessibility options for your database. A value of
    #   `true` specifies a database that is available to resources outside
    #   of your Lightsail account. A value of `false` specifies a database
    #   that is available only to your Lightsail resources in the same
    #   region as your database.
    #   @return [Boolean]
    #
    # @!attribute [rw] apply_immediately
    #   When `true`, applies changes immediately. When `false`, applies
    #   changes during the preferred maintenance window. Some changes may
    #   cause an outage.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] ca_certificate_identifier
    #   Indicates the certificate that needs to be associated with the
    #   database.
    #   @return [String]
    #
    # @!attribute [rw] relational_database_blueprint_id
    #   This parameter is used to update the major version of the database.
    #   Enter the `blueprintId` for the major version that you want to
    #   update to.
    #
    #   Use the [GetRelationalDatabaseBlueprints][1] action to get a list of
    #   available blueprint IDs.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRelationalDatabaseBlueprints.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateRelationalDatabaseRequest AWS API Documentation
    #
    class UpdateRelationalDatabaseRequest < Struct.new(
      :relational_database_name,
      :master_user_password,
      :rotate_master_user_password,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :enable_backup_retention,
      :disable_backup_retention,
      :publicly_accessible,
      :apply_immediately,
      :ca_certificate_identifier,
      :relational_database_blueprint_id)
      SENSITIVE = [:master_user_password]
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateRelationalDatabaseResult AWS API Documentation
    #
    class UpdateRelationalDatabaseResult < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

