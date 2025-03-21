# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Firehose
  module Types

    # Describes the buffering to perform before delivering data to the
    # Serverless offering for Amazon OpenSearch Service destination.
    #
    # @!attribute [rw] interval_in_seconds
    #   Buffer incoming data for the specified period of time, in seconds,
    #   before delivering it to the destination. The default value is 300 (5
    #   minutes).
    #   @return [Integer]
    #
    # @!attribute [rw] size_in_m_bs
    #   Buffer incoming data to the specified size, in MBs, before
    #   delivering it to the destination. The default value is 5.
    #
    #   We recommend setting this parameter to a value greater than the
    #   amount of data you typically ingest into the Firehose stream in 10
    #   seconds. For example, if you typically ingest data at 1 MB/sec, the
    #   value should be 10 MB or higher.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/AmazonOpenSearchServerlessBufferingHints AWS API Documentation
    #
    class AmazonOpenSearchServerlessBufferingHints < Struct.new(
      :interval_in_seconds,
      :size_in_m_bs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of a destination in the Serverless
    # offering for Amazon OpenSearch Service.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to be assumed by
    #   Firehose for calling the Serverless offering for Amazon OpenSearch
    #   Service Configuration API and for indexing documents.
    #   @return [String]
    #
    # @!attribute [rw] collection_endpoint
    #   The endpoint to use when communicating with the collection in the
    #   Serverless offering for Amazon OpenSearch Service.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The Serverless offering for Amazon OpenSearch Service index name.
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering options. If no value is specified, the default values
    #   for AmazonopensearchserviceBufferingHints are used.
    #   @return [Types::AmazonOpenSearchServerlessBufferingHints]
    #
    # @!attribute [rw] retry_options
    #   The retry behavior in case Firehose is unable to deliver documents
    #   to the Serverless offering for Amazon OpenSearch Service. The
    #   default value is 300 (5 minutes).
    #   @return [Types::AmazonOpenSearchServerlessRetryOptions]
    #
    # @!attribute [rw] s3_backup_mode
    #   Defines how documents should be delivered to Amazon S3. When it is
    #   set to FailedDocumentsOnly, Firehose writes any documents that could
    #   not be indexed to the configured Amazon S3 destination, with
    #   AmazonOpenSearchService-failed/ appended to the key prefix. When set
    #   to AllDocuments, Firehose delivers all incoming records to Amazon
    #   S3, and also writes failed documents with
    #   AmazonOpenSearchService-failed/ appended to the prefix.
    #   @return [String]
    #
    # @!attribute [rw] s3_configuration
    #   Describes the configuration of a destination in Amazon S3.
    #   @return [Types::S3DestinationConfiguration]
    #
    # @!attribute [rw] processing_configuration
    #   Describes a data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   Describes the Amazon CloudWatch logging options for your Firehose
    #   stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] vpc_configuration
    #   The details of the VPC of the Amazon OpenSearch or Amazon OpenSearch
    #   Serverless destination.
    #   @return [Types::VpcConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/AmazonOpenSearchServerlessDestinationConfiguration AWS API Documentation
    #
    class AmazonOpenSearchServerlessDestinationConfiguration < Struct.new(
      :role_arn,
      :collection_endpoint,
      :index_name,
      :buffering_hints,
      :retry_options,
      :s3_backup_mode,
      :s3_configuration,
      :processing_configuration,
      :cloud_watch_logging_options,
      :vpc_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The destination description in the Serverless offering for Amazon
    # OpenSearch Service.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services
    #   credentials.
    #   @return [String]
    #
    # @!attribute [rw] collection_endpoint
    #   The endpoint to use when communicating with the collection in the
    #   Serverless offering for Amazon OpenSearch Service.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The Serverless offering for Amazon OpenSearch Service index name.
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering options.
    #   @return [Types::AmazonOpenSearchServerlessBufferingHints]
    #
    # @!attribute [rw] retry_options
    #   The Serverless offering for Amazon OpenSearch Service retry options.
    #   @return [Types::AmazonOpenSearchServerlessRetryOptions]
    #
    # @!attribute [rw] s3_backup_mode
    #   The Amazon S3 backup mode.
    #   @return [String]
    #
    # @!attribute [rw] s3_destination_description
    #   Describes a destination in Amazon S3.
    #   @return [Types::S3DestinationDescription]
    #
    # @!attribute [rw] processing_configuration
    #   Describes a data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   Describes the Amazon CloudWatch logging options for your Firehose
    #   stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] vpc_configuration_description
    #   The details of the VPC of the Amazon OpenSearch Service destination.
    #   @return [Types::VpcConfigurationDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/AmazonOpenSearchServerlessDestinationDescription AWS API Documentation
    #
    class AmazonOpenSearchServerlessDestinationDescription < Struct.new(
      :role_arn,
      :collection_endpoint,
      :index_name,
      :buffering_hints,
      :retry_options,
      :s3_backup_mode,
      :s3_destination_description,
      :processing_configuration,
      :cloud_watch_logging_options,
      :vpc_configuration_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an update for a destination in the Serverless offering for
    # Amazon OpenSearch Service.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to be assumed by
    #   Firehose for calling the Serverless offering for Amazon OpenSearch
    #   Service Configuration API and for indexing documents.
    #   @return [String]
    #
    # @!attribute [rw] collection_endpoint
    #   The endpoint to use when communicating with the collection in the
    #   Serverless offering for Amazon OpenSearch Service.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The Serverless offering for Amazon OpenSearch Service index name.
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering options. If no value is specified,
    #   AmazonopensearchBufferingHints object default values are used.
    #   @return [Types::AmazonOpenSearchServerlessBufferingHints]
    #
    # @!attribute [rw] retry_options
    #   The retry behavior in case Firehose is unable to deliver documents
    #   to the Serverless offering for Amazon OpenSearch Service. The
    #   default value is 300 (5 minutes).
    #   @return [Types::AmazonOpenSearchServerlessRetryOptions]
    #
    # @!attribute [rw] s3_update
    #   Describes an update for a destination in Amazon S3.
    #   @return [Types::S3DestinationUpdate]
    #
    # @!attribute [rw] processing_configuration
    #   Describes a data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   Describes the Amazon CloudWatch logging options for your Firehose
    #   stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/AmazonOpenSearchServerlessDestinationUpdate AWS API Documentation
    #
    class AmazonOpenSearchServerlessDestinationUpdate < Struct.new(
      :role_arn,
      :collection_endpoint,
      :index_name,
      :buffering_hints,
      :retry_options,
      :s3_update,
      :processing_configuration,
      :cloud_watch_logging_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures retry behavior in case Firehose is unable to deliver
    # documents to the Serverless offering for Amazon OpenSearch Service.
    #
    # @!attribute [rw] duration_in_seconds
    #   After an initial failure to deliver to the Serverless offering for
    #   Amazon OpenSearch Service, the total amount of time during which
    #   Firehose retries delivery (including the first attempt). After this
    #   time has elapsed, the failed documents are written to Amazon S3.
    #   Default value is 300 seconds (5 minutes). A value of 0 (zero)
    #   results in no retries.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/AmazonOpenSearchServerlessRetryOptions AWS API Documentation
    #
    class AmazonOpenSearchServerlessRetryOptions < Struct.new(
      :duration_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the buffering to perform before delivering data to the
    # Amazon OpenSearch Service destination.
    #
    # @!attribute [rw] interval_in_seconds
    #   Buffer incoming data for the specified period of time, in seconds,
    #   before delivering it to the destination. The default value is 300 (5
    #   minutes).
    #   @return [Integer]
    #
    # @!attribute [rw] size_in_m_bs
    #   Buffer incoming data to the specified size, in MBs, before
    #   delivering it to the destination. The default value is 5.
    #
    #   We recommend setting this parameter to a value greater than the
    #   amount of data you typically ingest into the Firehose stream in 10
    #   seconds. For example, if you typically ingest data at 1 MB/sec, the
    #   value should be 10 MB or higher.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/AmazonopensearchserviceBufferingHints AWS API Documentation
    #
    class AmazonopensearchserviceBufferingHints < Struct.new(
      :interval_in_seconds,
      :size_in_m_bs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of a destination in Amazon OpenSearch
    # Service
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to be assumed by
    #   Firehose for calling the Amazon OpenSearch Service Configuration API
    #   and for indexing documents.
    #   @return [String]
    #
    # @!attribute [rw] domain_arn
    #   The ARN of the Amazon OpenSearch Service domain. The IAM role must
    #   have permissions for DescribeElasticsearchDomain,
    #   DescribeElasticsearchDomains, and DescribeElasticsearchDomainConfig
    #   after assuming the role specified in RoleARN.
    #   @return [String]
    #
    # @!attribute [rw] cluster_endpoint
    #   The endpoint to use when communicating with the cluster. Specify
    #   either this ClusterEndpoint or the DomainARN field.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The ElasticsearAmazon OpenSearch Service index name.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The Amazon OpenSearch Service type name. For Elasticsearch 6.x,
    #   there can be only one type per index. If you try to specify a new
    #   type for an existing index that already has another type, Firehose
    #   returns an error during run time.
    #   @return [String]
    #
    # @!attribute [rw] index_rotation_period
    #   The Amazon OpenSearch Service index rotation period. Index rotation
    #   appends a timestamp to the IndexName to facilitate the expiration of
    #   old data.
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering options. If no value is specified, the default values
    #   for AmazonopensearchserviceBufferingHints are used.
    #   @return [Types::AmazonopensearchserviceBufferingHints]
    #
    # @!attribute [rw] retry_options
    #   The retry behavior in case Firehose is unable to deliver documents
    #   to Amazon OpenSearch Service. The default value is 300 (5 minutes).
    #   @return [Types::AmazonopensearchserviceRetryOptions]
    #
    # @!attribute [rw] s3_backup_mode
    #   Defines how documents should be delivered to Amazon S3. When it is
    #   set to FailedDocumentsOnly, Firehose writes any documents that could
    #   not be indexed to the configured Amazon S3 destination, with
    #   AmazonOpenSearchService-failed/ appended to the key prefix. When set
    #   to AllDocuments, Firehose delivers all incoming records to Amazon
    #   S3, and also writes failed documents with
    #   AmazonOpenSearchService-failed/ appended to the prefix.
    #   @return [String]
    #
    # @!attribute [rw] s3_configuration
    #   Describes the configuration of a destination in Amazon S3.
    #   @return [Types::S3DestinationConfiguration]
    #
    # @!attribute [rw] processing_configuration
    #   Describes a data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   Describes the Amazon CloudWatch logging options for your Firehose
    #   stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] vpc_configuration
    #   The details of the VPC of the Amazon OpenSearch or Amazon OpenSearch
    #   Serverless destination.
    #   @return [Types::VpcConfiguration]
    #
    # @!attribute [rw] document_id_options
    #   Indicates the method for setting up document ID. The supported
    #   methods are Firehose generated document ID and OpenSearch Service
    #   generated document ID.
    #   @return [Types::DocumentIdOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/AmazonopensearchserviceDestinationConfiguration AWS API Documentation
    #
    class AmazonopensearchserviceDestinationConfiguration < Struct.new(
      :role_arn,
      :domain_arn,
      :cluster_endpoint,
      :index_name,
      :type_name,
      :index_rotation_period,
      :buffering_hints,
      :retry_options,
      :s3_backup_mode,
      :s3_configuration,
      :processing_configuration,
      :cloud_watch_logging_options,
      :vpc_configuration,
      :document_id_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The destination description in Amazon OpenSearch Service.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services
    #   credentials.
    #   @return [String]
    #
    # @!attribute [rw] domain_arn
    #   The ARN of the Amazon OpenSearch Service domain.
    #   @return [String]
    #
    # @!attribute [rw] cluster_endpoint
    #   The endpoint to use when communicating with the cluster. Firehose
    #   uses either this ClusterEndpoint or the DomainARN field to send data
    #   to Amazon OpenSearch Service.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The Amazon OpenSearch Service index name.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The Amazon OpenSearch Service type name. This applies to
    #   Elasticsearch 6.x and lower versions. For Elasticsearch 7.x and
    #   OpenSearch Service 1.x, there's no value for TypeName.
    #   @return [String]
    #
    # @!attribute [rw] index_rotation_period
    #   The Amazon OpenSearch Service index rotation period
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering options.
    #   @return [Types::AmazonopensearchserviceBufferingHints]
    #
    # @!attribute [rw] retry_options
    #   The Amazon OpenSearch Service retry options.
    #   @return [Types::AmazonopensearchserviceRetryOptions]
    #
    # @!attribute [rw] s3_backup_mode
    #   The Amazon S3 backup mode.
    #   @return [String]
    #
    # @!attribute [rw] s3_destination_description
    #   Describes a destination in Amazon S3.
    #   @return [Types::S3DestinationDescription]
    #
    # @!attribute [rw] processing_configuration
    #   Describes a data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   Describes the Amazon CloudWatch logging options for your Firehose
    #   stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] vpc_configuration_description
    #   The details of the VPC of the Amazon OpenSearch Service destination.
    #   @return [Types::VpcConfigurationDescription]
    #
    # @!attribute [rw] document_id_options
    #   Indicates the method for setting up document ID. The supported
    #   methods are Firehose generated document ID and OpenSearch Service
    #   generated document ID.
    #   @return [Types::DocumentIdOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/AmazonopensearchserviceDestinationDescription AWS API Documentation
    #
    class AmazonopensearchserviceDestinationDescription < Struct.new(
      :role_arn,
      :domain_arn,
      :cluster_endpoint,
      :index_name,
      :type_name,
      :index_rotation_period,
      :buffering_hints,
      :retry_options,
      :s3_backup_mode,
      :s3_destination_description,
      :processing_configuration,
      :cloud_watch_logging_options,
      :vpc_configuration_description,
      :document_id_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an update for a destination in Amazon OpenSearch Service.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to be assumed by
    #   Firehose for calling the Amazon OpenSearch Service Configuration API
    #   and for indexing documents.
    #   @return [String]
    #
    # @!attribute [rw] domain_arn
    #   The ARN of the Amazon OpenSearch Service domain. The IAM role must
    #   have permissions for DescribeDomain, DescribeDomains, and
    #   DescribeDomainConfig after assuming the IAM role specified in
    #   RoleARN.
    #   @return [String]
    #
    # @!attribute [rw] cluster_endpoint
    #   The endpoint to use when communicating with the cluster. Specify
    #   either this ClusterEndpoint or the DomainARN field.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The Amazon OpenSearch Service index name.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The Amazon OpenSearch Service type name. For Elasticsearch 6.x,
    #   there can be only one type per index. If you try to specify a new
    #   type for an existing index that already has another type, Firehose
    #   returns an error during runtime.
    #
    #   If you upgrade Elasticsearch from 6.x to 7.x and don’t update your
    #   Firehose stream, Firehose still delivers data to Elasticsearch with
    #   the old index name and type name. If you want to update your
    #   Firehose stream with a new index name, provide an empty string for
    #   TypeName.
    #   @return [String]
    #
    # @!attribute [rw] index_rotation_period
    #   The Amazon OpenSearch Service index rotation period. Index rotation
    #   appends a timestamp to IndexName to facilitate the expiration of old
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering options. If no value is specified,
    #   AmazonopensearchBufferingHints object default values are used.
    #   @return [Types::AmazonopensearchserviceBufferingHints]
    #
    # @!attribute [rw] retry_options
    #   The retry behavior in case Firehose is unable to deliver documents
    #   to Amazon OpenSearch Service. The default value is 300 (5 minutes).
    #   @return [Types::AmazonopensearchserviceRetryOptions]
    #
    # @!attribute [rw] s3_update
    #   Describes an update for a destination in Amazon S3.
    #   @return [Types::S3DestinationUpdate]
    #
    # @!attribute [rw] processing_configuration
    #   Describes a data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   Describes the Amazon CloudWatch logging options for your Firehose
    #   stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] document_id_options
    #   Indicates the method for setting up document ID. The supported
    #   methods are Firehose generated document ID and OpenSearch Service
    #   generated document ID.
    #   @return [Types::DocumentIdOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/AmazonopensearchserviceDestinationUpdate AWS API Documentation
    #
    class AmazonopensearchserviceDestinationUpdate < Struct.new(
      :role_arn,
      :domain_arn,
      :cluster_endpoint,
      :index_name,
      :type_name,
      :index_rotation_period,
      :buffering_hints,
      :retry_options,
      :s3_update,
      :processing_configuration,
      :cloud_watch_logging_options,
      :document_id_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures retry behavior in case Firehose is unable to deliver
    # documents to Amazon OpenSearch Service.
    #
    # @!attribute [rw] duration_in_seconds
    #   After an initial failure to deliver to Amazon OpenSearch Service,
    #   the total amount of time during which Firehose retries delivery
    #   (including the first attempt). After this time has elapsed, the
    #   failed documents are written to Amazon S3. Default value is 300
    #   seconds (5 minutes). A value of 0 (zero) results in no retries.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/AmazonopensearchserviceRetryOptions AWS API Documentation
    #
    class AmazonopensearchserviceRetryOptions < Struct.new(
      :duration_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The authentication configuration of the Amazon MSK cluster.
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role used to access the Amazon MSK cluster.
    #   @return [String]
    #
    # @!attribute [rw] connectivity
    #   The type of connectivity used to access the Amazon MSK cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/AuthenticationConfiguration AWS API Documentation
    #
    class AuthenticationConfiguration < Struct.new(
      :role_arn,
      :connectivity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes hints for the buffering to perform before delivering data to
    # the destination. These options are treated as hints, and therefore
    # Firehose might choose to use different values when it is optimal. The
    # `SizeInMBs` and `IntervalInSeconds` parameters are optional. However,
    # if specify a value for one of them, you must also provide a value for
    # the other.
    #
    # @!attribute [rw] size_in_m_bs
    #   Buffer incoming data to the specified size, in MiBs, before
    #   delivering it to the destination. The default value is 5. This
    #   parameter is optional but if you specify a value for it, you must
    #   also specify a value for `IntervalInSeconds`, and vice versa.
    #
    #   We recommend setting this parameter to a value greater than the
    #   amount of data you typically ingest into the Firehose stream in 10
    #   seconds. For example, if you typically ingest data at 1 MiB/sec, the
    #   value should be 10 MiB or higher.
    #   @return [Integer]
    #
    # @!attribute [rw] interval_in_seconds
    #   Buffer incoming data for the specified period of time, in seconds,
    #   before delivering it to the destination. The default value is 300.
    #   This parameter is optional but if you specify a value for it, you
    #   must also specify a value for `SizeInMBs`, and vice versa.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/BufferingHints AWS API Documentation
    #
    class BufferingHints < Struct.new(
      :size_in_m_bs,
      :interval_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the containers where the destination Apache Iceberg Tables
    # are persisted.
    #
    # @!attribute [rw] catalog_arn
    #   Specifies the Glue catalog ARN identifier of the destination Apache
    #   Iceberg Tables. You must specify the ARN in the format
    #   `arn:aws:glue:region:account-id:catalog`.
    #   @return [String]
    #
    # @!attribute [rw] warehouse_location
    #   The warehouse location for Apache Iceberg tables. You must configure
    #   this when schema evolution and table creation is enabled.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/CatalogConfiguration AWS API Documentation
    #
    class CatalogConfiguration < Struct.new(
      :catalog_arn,
      :warehouse_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the Amazon CloudWatch logging options for your Firehose
    # stream.
    #
    # @!attribute [rw] enabled
    #   Enables or disables CloudWatch logging.
    #   @return [Boolean]
    #
    # @!attribute [rw] log_group_name
    #   The CloudWatch group name for logging. This value is required if
    #   CloudWatch logging is enabled.
    #   @return [String]
    #
    # @!attribute [rw] log_stream_name
    #   The CloudWatch log stream name for logging. This value is required
    #   if CloudWatch logging is enabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/CloudWatchLoggingOptions AWS API Documentation
    #
    class CloudWatchLoggingOptions < Struct.new(
      :enabled,
      :log_group_name,
      :log_stream_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Another modification has already happened. Fetch `VersionId` again and
    # use it to update the destination.
    #
    # @!attribute [rw] message
    #   A message that provides information about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a `COPY` command for Amazon Redshift.
    #
    # @!attribute [rw] data_table_name
    #   The name of the target table. The table must already exist in the
    #   database.
    #   @return [String]
    #
    # @!attribute [rw] data_table_columns
    #   A comma-separated list of column names.
    #   @return [String]
    #
    # @!attribute [rw] copy_options
    #   Optional parameters to use with the Amazon Redshift `COPY` command.
    #   For more information, see the "Optional Parameters" section of
    #   [Amazon Redshift COPY command][1]. Some possible examples that would
    #   apply to Firehose are as follows:
    #
    #   `delimiter '\t' lzop;` - fields are delimited with "\\t" (TAB
    #   character) and compressed using lzop.
    #
    #   `delimiter '|'` - fields are delimited with "\|" (this is the
    #   default delimiter).
    #
    #   `delimiter '|' escape` - the delimiter should be escaped.
    #
    #   `fixedwidth
    #   'venueid:3,venuename:25,venuecity:12,venuestate:2,venueseats:6'` -
    #   fields are fixed width in the source, with each width specified
    #   after every column in the table.
    #
    #   `JSON 's3://mybucket/jsonpaths.txt'` - data is in JSON format, and
    #   the path specified is the format of the data.
    #
    #   For more examples, see [Amazon Redshift COPY command examples][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/dg/r_COPY.html
    #   [2]: https://docs.aws.amazon.com/redshift/latest/dg/r_COPY_command_examples.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/CopyCommand AWS API Documentation
    #
    class CopyCommand < Struct.new(
      :data_table_name,
      :data_table_columns,
      :copy_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delivery_stream_name
    #   The name of the Firehose stream. This name must be unique per Amazon
    #   Web Services account in the same Amazon Web Services Region. If the
    #   Firehose streams are in different accounts or different Regions, you
    #   can have multiple Firehose streams with the same name.
    #   @return [String]
    #
    # @!attribute [rw] delivery_stream_type
    #   The Firehose stream type. This parameter can be one of the following
    #   values:
    #
    #   * `DirectPut`: Provider applications access the Firehose stream
    #     directly.
    #
    #   * `KinesisStreamAsSource`: The Firehose stream uses a Kinesis data
    #     stream as a source.
    #   @return [String]
    #
    # @!attribute [rw] direct_put_source_configuration
    #   The structure that configures parameters such as
    #   `ThroughputHintInMBs` for a stream configured with Direct PUT as a
    #   source.
    #   @return [Types::DirectPutSourceConfiguration]
    #
    # @!attribute [rw] kinesis_stream_source_configuration
    #   When a Kinesis data stream is used as the source for the Firehose
    #   stream, a KinesisStreamSourceConfiguration containing the Kinesis
    #   data stream Amazon Resource Name (ARN) and the role ARN for the
    #   source stream.
    #   @return [Types::KinesisStreamSourceConfiguration]
    #
    # @!attribute [rw] delivery_stream_encryption_configuration_input
    #   Used to specify the type and Amazon Resource Name (ARN) of the KMS
    #   key needed for Server-Side Encryption (SSE).
    #   @return [Types::DeliveryStreamEncryptionConfigurationInput]
    #
    # @!attribute [rw] s3_destination_configuration
    #   \[Deprecated\] The destination in Amazon S3. You can specify only
    #   one destination.
    #   @return [Types::S3DestinationConfiguration]
    #
    # @!attribute [rw] extended_s3_destination_configuration
    #   The destination in Amazon S3. You can specify only one destination.
    #   @return [Types::ExtendedS3DestinationConfiguration]
    #
    # @!attribute [rw] redshift_destination_configuration
    #   The destination in Amazon Redshift. You can specify only one
    #   destination.
    #   @return [Types::RedshiftDestinationConfiguration]
    #
    # @!attribute [rw] elasticsearch_destination_configuration
    #   The destination in Amazon OpenSearch Service. You can specify only
    #   one destination.
    #   @return [Types::ElasticsearchDestinationConfiguration]
    #
    # @!attribute [rw] amazonopensearchservice_destination_configuration
    #   The destination in Amazon OpenSearch Service. You can specify only
    #   one destination.
    #   @return [Types::AmazonopensearchserviceDestinationConfiguration]
    #
    # @!attribute [rw] splunk_destination_configuration
    #   The destination in Splunk. You can specify only one destination.
    #   @return [Types::SplunkDestinationConfiguration]
    #
    # @!attribute [rw] http_endpoint_destination_configuration
    #   Enables configuring Kinesis Firehose to deliver data to any HTTP
    #   endpoint destination. You can specify only one destination.
    #   @return [Types::HttpEndpointDestinationConfiguration]
    #
    # @!attribute [rw] tags
    #   A set of tags to assign to the Firehose stream. A tag is a key-value
    #   pair that you can define and assign to Amazon Web Services
    #   resources. Tags are metadata. For example, you can add friendly
    #   names and descriptions or other types of information that can help
    #   you distinguish the Firehose stream. For more information about
    #   tags, see [Using Cost Allocation Tags][1] in the Amazon Web Services
    #   Billing and Cost Management User Guide.
    #
    #   You can specify up to 50 tags when creating a Firehose stream.
    #
    #   If you specify tags in the `CreateDeliveryStream` action, Amazon
    #   Data Firehose performs an additional authorization on the
    #   `firehose:TagDeliveryStream` action to verify if users have
    #   permissions to create tags. If you do not provide this permission,
    #   requests to create new Firehose streams with IAM resource tags will
    #   fail with an `AccessDeniedException` such as following.
    #
    #   **AccessDeniedException**
    #
    #   User: arn:aws:sts::x:assumed-role/x/x is not authorized to perform:
    #   firehose:TagDeliveryStream on resource:
    #   arn:aws:firehose:us-east-1:x:deliverystream/x with an explicit deny
    #   in an identity-based policy.
    #
    #   For an example IAM policy, see [Tag example.][2]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
    #   [2]: https://docs.aws.amazon.com/firehose/latest/APIReference/API_CreateDeliveryStream.html#API_CreateDeliveryStream_Examples
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] amazon_open_search_serverless_destination_configuration
    #   The destination in the Serverless offering for Amazon OpenSearch
    #   Service. You can specify only one destination.
    #   @return [Types::AmazonOpenSearchServerlessDestinationConfiguration]
    #
    # @!attribute [rw] msk_source_configuration
    #   The configuration for the Amazon MSK cluster to be used as the
    #   source for a delivery stream.
    #   @return [Types::MSKSourceConfiguration]
    #
    # @!attribute [rw] snowflake_destination_configuration
    #   Configure Snowflake destination
    #   @return [Types::SnowflakeDestinationConfiguration]
    #
    # @!attribute [rw] iceberg_destination_configuration
    #   Configure Apache Iceberg Tables destination.
    #   @return [Types::IcebergDestinationConfiguration]
    #
    # @!attribute [rw] database_source_configuration
    #   The top level object for configuring streams with database as a
    #   source.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Types::DatabaseSourceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/CreateDeliveryStreamInput AWS API Documentation
    #
    class CreateDeliveryStreamInput < Struct.new(
      :delivery_stream_name,
      :delivery_stream_type,
      :direct_put_source_configuration,
      :kinesis_stream_source_configuration,
      :delivery_stream_encryption_configuration_input,
      :s3_destination_configuration,
      :extended_s3_destination_configuration,
      :redshift_destination_configuration,
      :elasticsearch_destination_configuration,
      :amazonopensearchservice_destination_configuration,
      :splunk_destination_configuration,
      :http_endpoint_destination_configuration,
      :tags,
      :amazon_open_search_serverless_destination_configuration,
      :msk_source_configuration,
      :snowflake_destination_configuration,
      :iceberg_destination_configuration,
      :database_source_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delivery_stream_arn
    #   The ARN of the Firehose stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/CreateDeliveryStreamOutput AWS API Documentation
    #
    class CreateDeliveryStreamOutput < Struct.new(
      :delivery_stream_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies that you want Firehose to convert data from the JSON format
    # to the Parquet or ORC format before writing it to Amazon S3. Firehose
    # uses the serializer and deserializer that you specify, in addition to
    # the column information from the Amazon Web Services Glue table, to
    # deserialize your input data from JSON and then serialize it to the
    # Parquet or ORC format. For more information, see [Firehose Record
    # Format Conversion][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/firehose/latest/dev/record-format-conversion.html
    #
    # @!attribute [rw] schema_configuration
    #   Specifies the Amazon Web Services Glue Data Catalog table that
    #   contains the column information. This parameter is required if
    #   `Enabled` is set to true.
    #   @return [Types::SchemaConfiguration]
    #
    # @!attribute [rw] input_format_configuration
    #   Specifies the deserializer that you want Firehose to use to convert
    #   the format of your data from JSON. This parameter is required if
    #   `Enabled` is set to true.
    #   @return [Types::InputFormatConfiguration]
    #
    # @!attribute [rw] output_format_configuration
    #   Specifies the serializer that you want Firehose to use to convert
    #   the format of your data to the Parquet or ORC format. This parameter
    #   is required if `Enabled` is set to true.
    #   @return [Types::OutputFormatConfiguration]
    #
    # @!attribute [rw] enabled
    #   Defaults to `true`. Set it to `false` if you want to disable format
    #   conversion while preserving the configuration details.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DataFormatConversionConfiguration AWS API Documentation
    #
    class DataFormatConversionConfiguration < Struct.new(
      :schema_configuration,
      :input_format_configuration,
      :output_format_configuration,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure used to configure the list of column patterns in source
    # database endpoint for Firehose to read from.
    #
    # Amazon Data Firehose is in preview release and is subject to change.
    #
    # @!attribute [rw] include
    #   The list of column patterns in source database to be included for
    #   Firehose to read from.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclude
    #   The list of column patterns in source database to be excluded for
    #   Firehose to read from.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DatabaseColumnList AWS API Documentation
    #
    class DatabaseColumnList < Struct.new(
      :include,
      :exclude)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure used to configure the list of database patterns in
    # source database endpoint for Firehose to read from.
    #
    # Amazon Data Firehose is in preview release and is subject to change.
    #
    # @!attribute [rw] include
    #   The list of database patterns in source database endpoint to be
    #   included for Firehose to read from.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclude
    #   The list of database patterns in source database endpoint to be
    #   excluded for Firehose to read from.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DatabaseList AWS API Documentation
    #
    class DatabaseList < Struct.new(
      :include,
      :exclude)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure that describes the snapshot information of a table in
    # source database endpoint that Firehose reads.
    #
    # Amazon Data Firehose is in preview release and is subject to change.
    #
    # @!attribute [rw] id
    #   The identifier of the current snapshot of the table in source
    #   database endpoint.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [String]
    #
    # @!attribute [rw] table
    #   The fully qualified name of the table in source database endpoint
    #   that Firehose reads.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [String]
    #
    # @!attribute [rw] request_timestamp
    #   The timestamp when the current snapshot is taken on the table.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Time]
    #
    # @!attribute [rw] requested_by
    #   The principal that sent the request to take the current snapshot on
    #   the table.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the current snapshot of the table.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [String]
    #
    # @!attribute [rw] failure_description
    #   Provides details in case one of the following operations fails due
    #   to an error related to KMS: CreateDeliveryStream,
    #   DeleteDeliveryStream, StartDeliveryStreamEncryption,
    #   StopDeliveryStreamEncryption.
    #   @return [Types::FailureDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DatabaseSnapshotInfo AWS API Documentation
    #
    class DatabaseSnapshotInfo < Struct.new(
      :id,
      :table,
      :request_timestamp,
      :requested_by,
      :status,
      :failure_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure to configure the authentication methods for Firehose to
    # connect to source database endpoint.
    #
    # Amazon Data Firehose is in preview release and is subject to change.
    #
    # @!attribute [rw] secrets_manager_configuration
    #   The structure that defines how Firehose accesses the secret.
    #   @return [Types::SecretsManagerConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DatabaseSourceAuthenticationConfiguration AWS API Documentation
    #
    class DatabaseSourceAuthenticationConfiguration < Struct.new(
      :secrets_manager_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The top level object for configuring streams with database as a
    # source.
    #
    # Amazon Data Firehose is in preview release and is subject to change.
    #
    # @!attribute [rw] type
    #   The type of database engine. This can be one of the following
    #   values.
    #
    #   * MySQL
    #
    #   * PostgreSQL
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The endpoint of the database server.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port of the database. This can be one of the following values.
    #
    #   * 3306 for MySQL database type
    #
    #   * 5432 for PostgreSQL database type
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Integer]
    #
    # @!attribute [rw] ssl_mode
    #   The mode to enable or disable SSL when Firehose connects to the
    #   database endpoint.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [String]
    #
    # @!attribute [rw] databases
    #   The list of database patterns in source database endpoint for
    #   Firehose to read from.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Types::DatabaseList]
    #
    # @!attribute [rw] tables
    #   The list of table patterns in source database endpoint for Firehose
    #   to read from.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Types::DatabaseTableList]
    #
    # @!attribute [rw] columns
    #   The list of column patterns in source database endpoint for Firehose
    #   to read from.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Types::DatabaseColumnList]
    #
    # @!attribute [rw] surrogate_keys
    #   The optional list of table and column names used as unique key
    #   columns when taking snapshot if the tables don’t have primary keys
    #   configured.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Array<String>]
    #
    # @!attribute [rw] snapshot_watermark_table
    #   The fully qualified name of the table in source database endpoint
    #   that Firehose uses to track snapshot progress.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [String]
    #
    # @!attribute [rw] database_source_authentication_configuration
    #   The structure to configure the authentication methods for Firehose
    #   to connect to source database endpoint.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Types::DatabaseSourceAuthenticationConfiguration]
    #
    # @!attribute [rw] database_source_vpc_configuration
    #   The details of the VPC Endpoint Service which Firehose uses to
    #   create a PrivateLink to the database.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Types::DatabaseSourceVPCConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DatabaseSourceConfiguration AWS API Documentation
    #
    class DatabaseSourceConfiguration < Struct.new(
      :type,
      :endpoint,
      :port,
      :ssl_mode,
      :databases,
      :tables,
      :columns,
      :surrogate_keys,
      :snapshot_watermark_table,
      :database_source_authentication_configuration,
      :database_source_vpc_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The top level object for database source description.
    #
    # Amazon Data Firehose is in preview release and is subject to change.
    #
    # @!attribute [rw] type
    #   The type of database engine. This can be one of the following
    #   values.
    #
    #   * MySQL
    #
    #   * PostgreSQL
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The endpoint of the database server.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port of the database. This can be one of the following values.
    #
    #   * 3306 for MySQL database type
    #
    #   * 5432 for PostgreSQL database type
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Integer]
    #
    # @!attribute [rw] ssl_mode
    #   The mode to enable or disable SSL when Firehose connects to the
    #   database endpoint.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [String]
    #
    # @!attribute [rw] databases
    #   The list of database patterns in source database endpoint for
    #   Firehose to read from.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Types::DatabaseList]
    #
    # @!attribute [rw] tables
    #   The list of table patterns in source database endpoint for Firehose
    #   to read from.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Types::DatabaseTableList]
    #
    # @!attribute [rw] columns
    #   The list of column patterns in source database endpoint for Firehose
    #   to read from.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Types::DatabaseColumnList]
    #
    # @!attribute [rw] surrogate_keys
    #   The optional list of table and column names used as unique key
    #   columns when taking snapshot if the tables don’t have primary keys
    #   configured.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Array<String>]
    #
    # @!attribute [rw] snapshot_watermark_table
    #   The fully qualified name of the table in source database endpoint
    #   that Firehose uses to track snapshot progress.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_info
    #   The structure that describes the snapshot information of a table in
    #   source database endpoint that Firehose reads.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Array<Types::DatabaseSnapshotInfo>]
    #
    # @!attribute [rw] database_source_authentication_configuration
    #   The structure to configure the authentication methods for Firehose
    #   to connect to source database endpoint.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Types::DatabaseSourceAuthenticationConfiguration]
    #
    # @!attribute [rw] database_source_vpc_configuration
    #   The details of the VPC Endpoint Service which Firehose uses to
    #   create a PrivateLink to the database.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Types::DatabaseSourceVPCConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DatabaseSourceDescription AWS API Documentation
    #
    class DatabaseSourceDescription < Struct.new(
      :type,
      :endpoint,
      :port,
      :ssl_mode,
      :databases,
      :tables,
      :columns,
      :surrogate_keys,
      :snapshot_watermark_table,
      :snapshot_info,
      :database_source_authentication_configuration,
      :database_source_vpc_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure for details of the VPC Endpoint Service which Firehose
    # uses to create a PrivateLink to the database.
    #
    # Amazon Data Firehose is in preview release and is subject to change.
    #
    # @!attribute [rw] vpc_endpoint_service_name
    #   The VPC endpoint service name which Firehose uses to create a
    #   PrivateLink to the database. The endpoint service must have the
    #   Firehose service principle `firehose.amazonaws.com` as an allowed
    #   principal on the VPC endpoint service. The VPC endpoint service name
    #   is a string that looks like
    #   `com.amazonaws.vpce.<region>.<vpc-endpoint-service-id>`.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DatabaseSourceVPCConfiguration AWS API Documentation
    #
    class DatabaseSourceVPCConfiguration < Struct.new(
      :vpc_endpoint_service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure used to configure the list of table patterns in source
    # database endpoint for Firehose to read from.
    #
    # Amazon Data Firehose is in preview release and is subject to change.
    #
    # @!attribute [rw] include
    #   The list of table patterns in source database endpoint to be
    #   included for Firehose to read from.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclude
    #   The list of table patterns in source database endpoint to be
    #   excluded for Firehose to read from.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DatabaseTableList AWS API Documentation
    #
    class DatabaseTableList < Struct.new(
      :include,
      :exclude)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delivery_stream_name
    #   The name of the Firehose stream.
    #   @return [String]
    #
    # @!attribute [rw] allow_force_delete
    #   Set this to true if you want to delete the Firehose stream even if
    #   Firehose is unable to retire the grant for the CMK. Firehose might
    #   be unable to retire the grant due to a customer error, such as when
    #   the CMK or the grant are in an invalid state. If you force deletion,
    #   you can then use the [RevokeGrant][1] operation to revoke the grant
    #   you gave to Firehose. If a failure to retire the grant happens due
    #   to an Amazon Web Services KMS issue, Firehose keeps retrying the
    #   delete operation.
    #
    #   The default value is false.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/APIReference/API_RevokeGrant.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DeleteDeliveryStreamInput AWS API Documentation
    #
    class DeleteDeliveryStreamInput < Struct.new(
      :delivery_stream_name,
      :allow_force_delete)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DeleteDeliveryStreamOutput AWS API Documentation
    #
    class DeleteDeliveryStreamOutput < Aws::EmptyStructure; end

    # Contains information about a Firehose stream.
    #
    # @!attribute [rw] delivery_stream_name
    #   The name of the Firehose stream.
    #   @return [String]
    #
    # @!attribute [rw] delivery_stream_arn
    #   The Amazon Resource Name (ARN) of the Firehose stream. For more
    #   information, see [Amazon Resource Names (ARNs) and Amazon Web
    #   Services Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] delivery_stream_status
    #   The status of the Firehose stream. If the status of a Firehose
    #   stream is `CREATING_FAILED`, this status doesn't change, and you
    #   can't invoke `CreateDeliveryStream` again on it. However, you can
    #   invoke the DeleteDeliveryStream operation to delete it.
    #   @return [String]
    #
    # @!attribute [rw] failure_description
    #   Provides details in case one of the following operations fails due
    #   to an error related to KMS: CreateDeliveryStream,
    #   DeleteDeliveryStream, StartDeliveryStreamEncryption,
    #   StopDeliveryStreamEncryption.
    #   @return [Types::FailureDescription]
    #
    # @!attribute [rw] delivery_stream_encryption_configuration
    #   Indicates the server-side encryption (SSE) status for the Firehose
    #   stream.
    #   @return [Types::DeliveryStreamEncryptionConfiguration]
    #
    # @!attribute [rw] delivery_stream_type
    #   The Firehose stream type. This can be one of the following values:
    #
    #   * `DirectPut`: Provider applications access the Firehose stream
    #     directly.
    #
    #   * `KinesisStreamAsSource`: The Firehose stream uses a Kinesis data
    #     stream as a source.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   Each time the destination is updated for a Firehose stream, the
    #   version ID is changed, and the current version ID is required when
    #   updating the destination. This is so that the service knows it is
    #   applying the changes to the correct version of the delivery stream.
    #   @return [String]
    #
    # @!attribute [rw] create_timestamp
    #   The date and time that the Firehose stream was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_timestamp
    #   The date and time that the Firehose stream was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] source
    #   If the `DeliveryStreamType` parameter is `KinesisStreamAsSource`, a
    #   SourceDescription object describing the source Kinesis data stream.
    #   @return [Types::SourceDescription]
    #
    # @!attribute [rw] destinations
    #   The destinations.
    #   @return [Array<Types::DestinationDescription>]
    #
    # @!attribute [rw] has_more_destinations
    #   Indicates whether there are more destinations available to list.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DeliveryStreamDescription AWS API Documentation
    #
    class DeliveryStreamDescription < Struct.new(
      :delivery_stream_name,
      :delivery_stream_arn,
      :delivery_stream_status,
      :failure_description,
      :delivery_stream_encryption_configuration,
      :delivery_stream_type,
      :version_id,
      :create_timestamp,
      :last_update_timestamp,
      :source,
      :destinations,
      :has_more_destinations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the server-side encryption (SSE) status for
    # the delivery stream, the type customer master key (CMK) in use, if
    # any, and the ARN of the CMK. You can get
    # `DeliveryStreamEncryptionConfiguration` by invoking the
    # DescribeDeliveryStream operation.
    #
    # @!attribute [rw] key_arn
    #   If `KeyType` is `CUSTOMER_MANAGED_CMK`, this field contains the ARN
    #   of the customer managed CMK. If `KeyType` is `Amazon Web
    #   Services_OWNED_CMK`, `DeliveryStreamEncryptionConfiguration`
    #   doesn't contain a value for `KeyARN`.
    #   @return [String]
    #
    # @!attribute [rw] key_type
    #   Indicates the type of customer master key (CMK) that is used for
    #   encryption. The default setting is `Amazon Web Services_OWNED_CMK`.
    #   For more information about CMKs, see [Customer Master Keys
    #   (CMKs)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys
    #   @return [String]
    #
    # @!attribute [rw] status
    #   This is the server-side encryption (SSE) status for the Firehose
    #   stream. For a full description of the different values of this
    #   status, see StartDeliveryStreamEncryption and
    #   StopDeliveryStreamEncryption. If this status is `ENABLING_FAILED` or
    #   `DISABLING_FAILED`, it is the status of the most recent attempt to
    #   enable or disable SSE, respectively.
    #   @return [String]
    #
    # @!attribute [rw] failure_description
    #   Provides details in case one of the following operations fails due
    #   to an error related to KMS: CreateDeliveryStream,
    #   DeleteDeliveryStream, StartDeliveryStreamEncryption,
    #   StopDeliveryStreamEncryption.
    #   @return [Types::FailureDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DeliveryStreamEncryptionConfiguration AWS API Documentation
    #
    class DeliveryStreamEncryptionConfiguration < Struct.new(
      :key_arn,
      :key_type,
      :status,
      :failure_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the type and Amazon Resource Name (ARN) of the CMK to use
    # for Server-Side Encryption (SSE).
    #
    # @!attribute [rw] key_arn
    #   If you set `KeyType` to `CUSTOMER_MANAGED_CMK`, you must specify the
    #   Amazon Resource Name (ARN) of the CMK. If you set `KeyType` to
    #   `Amazon Web Services_OWNED_CMK`, Firehose uses a service-account
    #   CMK.
    #   @return [String]
    #
    # @!attribute [rw] key_type
    #   Indicates the type of customer master key (CMK) to use for
    #   encryption. The default setting is `Amazon Web Services_OWNED_CMK`.
    #   For more information about CMKs, see [Customer Master Keys
    #   (CMKs)][1]. When you invoke CreateDeliveryStream or
    #   StartDeliveryStreamEncryption with `KeyType` set to
    #   CUSTOMER\_MANAGED\_CMK, Firehose invokes the Amazon KMS operation
    #   [CreateGrant][2] to create a grant that allows the Firehose service
    #   to use the customer managed CMK to perform encryption and
    #   decryption. Firehose manages that grant.
    #
    #   When you invoke StartDeliveryStreamEncryption to change the CMK for
    #   a Firehose stream that is encrypted with a customer managed CMK,
    #   Firehose schedules the grant it had on the old CMK for retirement.
    #
    #   You can use a CMK of type CUSTOMER\_MANAGED\_CMK to encrypt up to
    #   500 Firehose streams. If a CreateDeliveryStream or
    #   StartDeliveryStreamEncryption operation exceeds this limit, Firehose
    #   throws a `LimitExceededException`.
    #
    #   To encrypt your Firehose stream, use symmetric CMKs. Firehose
    #   doesn't support asymmetric CMKs. For information about symmetric
    #   and asymmetric CMKs, see [About Symmetric and Asymmetric CMKs][3] in
    #   the Amazon Web Services Key Management Service developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys
    #   [2]: https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateGrant.html
    #   [3]: https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-concepts.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DeliveryStreamEncryptionConfigurationInput AWS API Documentation
    #
    class DeliveryStreamEncryptionConfigurationInput < Struct.new(
      :key_arn,
      :key_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delivery_stream_name
    #   The name of the Firehose stream.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The limit on the number of destinations to return. You can have one
    #   destination per Firehose stream.
    #   @return [Integer]
    #
    # @!attribute [rw] exclusive_start_destination_id
    #   The ID of the destination to start returning the destination
    #   information. Firehose supports one destination per Firehose stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DescribeDeliveryStreamInput AWS API Documentation
    #
    class DescribeDeliveryStreamInput < Struct.new(
      :delivery_stream_name,
      :limit,
      :exclusive_start_destination_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delivery_stream_description
    #   Information about the Firehose stream.
    #   @return [Types::DeliveryStreamDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DescribeDeliveryStreamOutput AWS API Documentation
    #
    class DescribeDeliveryStreamOutput < Struct.new(
      :delivery_stream_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The deserializer you want Firehose to use for converting the input
    # data from JSON. Firehose then serializes the data to its final format
    # using the Serializer. Firehose supports two types of deserializers:
    # the [Apache Hive JSON SerDe][1] and the [OpenX JSON SerDe][2].
    #
    #
    #
    # [1]: https://cwiki.apache.org/confluence/display/Hive/LanguageManual+DDL#LanguageManualDDL-JSON
    # [2]: https://github.com/rcongiu/Hive-JSON-Serde
    #
    # @!attribute [rw] open_x_json_ser_de
    #   The OpenX SerDe. Used by Firehose for deserializing data, which
    #   means converting it from the JSON format in preparation for
    #   serializing it to the Parquet or ORC format. This is one of two
    #   deserializers you can choose, depending on which one offers the
    #   functionality you need. The other option is the native Hive /
    #   HCatalog JsonSerDe.
    #   @return [Types::OpenXJsonSerDe]
    #
    # @!attribute [rw] hive_json_ser_de
    #   The native Hive / HCatalog JsonSerDe. Used by Firehose for
    #   deserializing data, which means converting it from the JSON format
    #   in preparation for serializing it to the Parquet or ORC format. This
    #   is one of two deserializers you can choose, depending on which one
    #   offers the functionality you need. The other option is the OpenX
    #   SerDe.
    #   @return [Types::HiveJsonSerDe]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/Deserializer AWS API Documentation
    #
    class Deserializer < Struct.new(
      :open_x_json_ser_de,
      :hive_json_ser_de)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the destination for a Firehose stream.
    #
    # @!attribute [rw] destination_id
    #   The ID of the destination.
    #   @return [String]
    #
    # @!attribute [rw] s3_destination_description
    #   \[Deprecated\] The destination in Amazon S3.
    #   @return [Types::S3DestinationDescription]
    #
    # @!attribute [rw] extended_s3_destination_description
    #   The destination in Amazon S3.
    #   @return [Types::ExtendedS3DestinationDescription]
    #
    # @!attribute [rw] redshift_destination_description
    #   The destination in Amazon Redshift.
    #   @return [Types::RedshiftDestinationDescription]
    #
    # @!attribute [rw] elasticsearch_destination_description
    #   The destination in Amazon OpenSearch Service.
    #   @return [Types::ElasticsearchDestinationDescription]
    #
    # @!attribute [rw] amazonopensearchservice_destination_description
    #   The destination in Amazon OpenSearch Service.
    #   @return [Types::AmazonopensearchserviceDestinationDescription]
    #
    # @!attribute [rw] splunk_destination_description
    #   The destination in Splunk.
    #   @return [Types::SplunkDestinationDescription]
    #
    # @!attribute [rw] http_endpoint_destination_description
    #   Describes the specified HTTP endpoint destination.
    #   @return [Types::HttpEndpointDestinationDescription]
    #
    # @!attribute [rw] snowflake_destination_description
    #   Optional description for the destination
    #   @return [Types::SnowflakeDestinationDescription]
    #
    # @!attribute [rw] amazon_open_search_serverless_destination_description
    #   The destination in the Serverless offering for Amazon OpenSearch
    #   Service.
    #   @return [Types::AmazonOpenSearchServerlessDestinationDescription]
    #
    # @!attribute [rw] iceberg_destination_description
    #   Describes a destination in Apache Iceberg Tables.
    #   @return [Types::IcebergDestinationDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DestinationDescription AWS API Documentation
    #
    class DestinationDescription < Struct.new(
      :destination_id,
      :s3_destination_description,
      :extended_s3_destination_description,
      :redshift_destination_description,
      :elasticsearch_destination_description,
      :amazonopensearchservice_destination_description,
      :splunk_destination_description,
      :http_endpoint_destination_description,
      :snowflake_destination_description,
      :amazon_open_search_serverless_destination_description,
      :iceberg_destination_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of a destination in Apache Iceberg Tables.
    #
    # @!attribute [rw] destination_table_name
    #   Specifies the name of the Apache Iceberg Table.
    #   @return [String]
    #
    # @!attribute [rw] destination_database_name
    #   The name of the Apache Iceberg database.
    #   @return [String]
    #
    # @!attribute [rw] unique_keys
    #   A list of unique keys for a given Apache Iceberg table. Firehose
    #   will use these for running Create, Update, or Delete operations on
    #   the given Iceberg table.
    #   @return [Array<String>]
    #
    # @!attribute [rw] partition_spec
    #   The partition spec configuration for a table that is used by
    #   automatic table creation.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Types::PartitionSpec]
    #
    # @!attribute [rw] s3_error_output_prefix
    #   The table specific S3 error output prefix. All the errors that
    #   occurred while delivering to this table will be prefixed with this
    #   value in S3 destination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DestinationTableConfiguration AWS API Documentation
    #
    class DestinationTableConfiguration < Struct.new(
      :destination_table_name,
      :destination_database_name,
      :unique_keys,
      :partition_spec,
      :s3_error_output_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure that configures parameters such as `ThroughputHintInMBs`
    # for a stream configured with Direct PUT as a source.
    #
    # @!attribute [rw] throughput_hint_in_m_bs
    #   The value that you configure for this parameter is for information
    #   purpose only and does not affect Firehose delivery throughput limit.
    #   You can use the [Firehose Limits form][1] to request a throughput
    #   limit increase.
    #
    #
    #
    #   [1]: https://support.console.aws.amazon.com/support/home#/case/create%3FissueType=service-limit-increase%26limitType=kinesis-firehose-limits
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DirectPutSourceConfiguration AWS API Documentation
    #
    class DirectPutSourceConfiguration < Struct.new(
      :throughput_hint_in_m_bs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure that configures parameters such as `ThroughputHintInMBs`
    # for a stream configured with Direct PUT as a source.
    #
    # @!attribute [rw] throughput_hint_in_m_bs
    #   The value that you configure for this parameter is for information
    #   purpose only and does not affect Firehose delivery throughput limit.
    #   You can use the [Firehose Limits form][1] to request a throughput
    #   limit increase.
    #
    #
    #
    #   [1]: https://support.console.aws.amazon.com/support/home#/case/create%3FissueType=service-limit-increase%26limitType=kinesis-firehose-limits
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DirectPutSourceDescription AWS API Documentation
    #
    class DirectPutSourceDescription < Struct.new(
      :throughput_hint_in_m_bs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates the method for setting up document ID. The supported methods
    # are Firehose generated document ID and OpenSearch Service generated
    # document ID.
    #
    # @!attribute [rw] default_document_id_format
    #   When the `FIREHOSE_DEFAULT` option is chosen, Firehose generates a
    #   unique document ID for each record based on a unique internal
    #   identifier. The generated document ID is stable across multiple
    #   delivery attempts, which helps prevent the same record from being
    #   indexed multiple times with different document IDs.
    #
    #   When the `NO_DOCUMENT_ID` option is chosen, Firehose does not
    #   include any document IDs in the requests it sends to the Amazon
    #   OpenSearch Service. This causes the Amazon OpenSearch Service domain
    #   to generate document IDs. In case of multiple delivery attempts,
    #   this may cause the same record to be indexed more than once with
    #   different document IDs. This option enables write-heavy operations,
    #   such as the ingestion of logs and observability data, to consume
    #   less resources in the Amazon OpenSearch Service domain, resulting in
    #   improved performance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DocumentIdOptions AWS API Documentation
    #
    class DocumentIdOptions < Struct.new(
      :default_document_id_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the dynamic partitioning mechanism that creates
    # smaller data sets from the streaming data by partitioning it based on
    # partition keys. Currently, dynamic partitioning is only supported for
    # Amazon S3 destinations.
    #
    # @!attribute [rw] retry_options
    #   The retry behavior in case Firehose is unable to deliver data to an
    #   Amazon S3 prefix.
    #   @return [Types::RetryOptions]
    #
    # @!attribute [rw] enabled
    #   Specifies that the dynamic partitioning is enabled for this Firehose
    #   stream.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DynamicPartitioningConfiguration AWS API Documentation
    #
    class DynamicPartitioningConfiguration < Struct.new(
      :retry_options,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the buffering to perform before delivering data to the
    # Amazon OpenSearch Service destination.
    #
    # @!attribute [rw] interval_in_seconds
    #   Buffer incoming data for the specified period of time, in seconds,
    #   before delivering it to the destination. The default value is 300 (5
    #   minutes).
    #   @return [Integer]
    #
    # @!attribute [rw] size_in_m_bs
    #   Buffer incoming data to the specified size, in MBs, before
    #   delivering it to the destination. The default value is 5.
    #
    #   We recommend setting this parameter to a value greater than the
    #   amount of data you typically ingest into the Firehose stream in 10
    #   seconds. For example, if you typically ingest data at 1 MB/sec, the
    #   value should be 10 MB or higher.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ElasticsearchBufferingHints AWS API Documentation
    #
    class ElasticsearchBufferingHints < Struct.new(
      :interval_in_seconds,
      :size_in_m_bs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of a destination in Amazon OpenSearch
    # Service.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to be assumed by
    #   Firehose for calling the Amazon OpenSearch Service Configuration API
    #   and for indexing documents. For more information, see [Grant
    #   Firehose Access to an Amazon S3 Destination][1] and [Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] domain_arn
    #   The ARN of the Amazon OpenSearch Service domain. The IAM role must
    #   have permissions for `DescribeDomain`, `DescribeDomains`, and
    #   `DescribeDomainConfig` after assuming the role specified in
    #   **RoleARN**. For more information, see [Amazon Resource Names (ARNs)
    #   and Amazon Web Services Service Namespaces][1].
    #
    #   Specify either `ClusterEndpoint` or `DomainARN`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] cluster_endpoint
    #   The endpoint to use when communicating with the cluster. Specify
    #   either this `ClusterEndpoint` or the `DomainARN` field.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The Elasticsearch index name.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The Elasticsearch type name. For Elasticsearch 6.x, there can be
    #   only one type per index. If you try to specify a new type for an
    #   existing index that already has another type, Firehose returns an
    #   error during run time.
    #
    #   For Elasticsearch 7.x, don't specify a `TypeName`.
    #   @return [String]
    #
    # @!attribute [rw] index_rotation_period
    #   The Elasticsearch index rotation period. Index rotation appends a
    #   timestamp to the `IndexName` to facilitate the expiration of old
    #   data. For more information, see [Index Rotation for the Amazon
    #   OpenSearch Service Destination][1]. The default value is `OneDay`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-index-rotation
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering options. If no value is specified, the default values
    #   for `ElasticsearchBufferingHints` are used.
    #   @return [Types::ElasticsearchBufferingHints]
    #
    # @!attribute [rw] retry_options
    #   The retry behavior in case Firehose is unable to deliver documents
    #   to Amazon OpenSearch Service. The default value is 300 (5 minutes).
    #   @return [Types::ElasticsearchRetryOptions]
    #
    # @!attribute [rw] s3_backup_mode
    #   Defines how documents should be delivered to Amazon S3. When it is
    #   set to `FailedDocumentsOnly`, Firehose writes any documents that
    #   could not be indexed to the configured Amazon S3 destination, with
    #   `AmazonOpenSearchService-failed/` appended to the key prefix. When
    #   set to `AllDocuments`, Firehose delivers all incoming records to
    #   Amazon S3, and also writes failed documents with
    #   `AmazonOpenSearchService-failed/` appended to the prefix. For more
    #   information, see [Amazon S3 Backup for the Amazon OpenSearch Service
    #   Destination][1]. Default value is `FailedDocumentsOnly`.
    #
    #   You can't change this backup mode after you create the Firehose
    #   stream.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-s3-backup
    #   @return [String]
    #
    # @!attribute [rw] s3_configuration
    #   The configuration for the backup Amazon S3 location.
    #   @return [Types::S3DestinationConfiguration]
    #
    # @!attribute [rw] processing_configuration
    #   The data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The Amazon CloudWatch logging options for your Firehose stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] vpc_configuration
    #   The details of the VPC of the Amazon destination.
    #   @return [Types::VpcConfiguration]
    #
    # @!attribute [rw] document_id_options
    #   Indicates the method for setting up document ID. The supported
    #   methods are Firehose generated document ID and OpenSearch Service
    #   generated document ID.
    #   @return [Types::DocumentIdOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ElasticsearchDestinationConfiguration AWS API Documentation
    #
    class ElasticsearchDestinationConfiguration < Struct.new(
      :role_arn,
      :domain_arn,
      :cluster_endpoint,
      :index_name,
      :type_name,
      :index_rotation_period,
      :buffering_hints,
      :retry_options,
      :s3_backup_mode,
      :s3_configuration,
      :processing_configuration,
      :cloud_watch_logging_options,
      :vpc_configuration,
      :document_id_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The destination description in Amazon OpenSearch Service.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services
    #   credentials. For more information, see [Amazon Resource Names (ARNs)
    #   and Amazon Web Services Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] domain_arn
    #   The ARN of the Amazon OpenSearch Service domain. For more
    #   information, see [Amazon Resource Names (ARNs) and Amazon Web
    #   Services Service Namespaces][1].
    #
    #   Firehose uses either `ClusterEndpoint` or `DomainARN` to send data
    #   to Amazon OpenSearch Service.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] cluster_endpoint
    #   The endpoint to use when communicating with the cluster. Firehose
    #   uses either this `ClusterEndpoint` or the `DomainARN` field to send
    #   data to Amazon OpenSearch Service.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The Elasticsearch index name.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The Elasticsearch type name. This applies to Elasticsearch 6.x and
    #   lower versions. For Elasticsearch 7.x and OpenSearch Service 1.x,
    #   there's no value for `TypeName`.
    #   @return [String]
    #
    # @!attribute [rw] index_rotation_period
    #   The Elasticsearch index rotation period
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering options.
    #   @return [Types::ElasticsearchBufferingHints]
    #
    # @!attribute [rw] retry_options
    #   The Amazon OpenSearch Service retry options.
    #   @return [Types::ElasticsearchRetryOptions]
    #
    # @!attribute [rw] s3_backup_mode
    #   The Amazon S3 backup mode.
    #   @return [String]
    #
    # @!attribute [rw] s3_destination_description
    #   The Amazon S3 destination.
    #   @return [Types::S3DestinationDescription]
    #
    # @!attribute [rw] processing_configuration
    #   The data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The Amazon CloudWatch logging options.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] vpc_configuration_description
    #   The details of the VPC of the Amazon OpenSearch or the Amazon
    #   OpenSearch Serverless destination.
    #   @return [Types::VpcConfigurationDescription]
    #
    # @!attribute [rw] document_id_options
    #   Indicates the method for setting up document ID. The supported
    #   methods are Firehose generated document ID and OpenSearch Service
    #   generated document ID.
    #   @return [Types::DocumentIdOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ElasticsearchDestinationDescription AWS API Documentation
    #
    class ElasticsearchDestinationDescription < Struct.new(
      :role_arn,
      :domain_arn,
      :cluster_endpoint,
      :index_name,
      :type_name,
      :index_rotation_period,
      :buffering_hints,
      :retry_options,
      :s3_backup_mode,
      :s3_destination_description,
      :processing_configuration,
      :cloud_watch_logging_options,
      :vpc_configuration_description,
      :document_id_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an update for a destination in Amazon OpenSearch Service.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to be assumed by
    #   Firehose for calling the Amazon OpenSearch Service Configuration API
    #   and for indexing documents. For more information, see [Grant
    #   Firehose Access to an Amazon S3 Destination][1] and [Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] domain_arn
    #   The ARN of the Amazon OpenSearch Service domain. The IAM role must
    #   have permissions for `DescribeDomain`, `DescribeDomains`, and
    #   `DescribeDomainConfig` after assuming the IAM role specified in
    #   `RoleARN`. For more information, see [Amazon Resource Names (ARNs)
    #   and Amazon Web Services Service Namespaces][1].
    #
    #   Specify either `ClusterEndpoint` or `DomainARN`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] cluster_endpoint
    #   The endpoint to use when communicating with the cluster. Specify
    #   either this `ClusterEndpoint` or the `DomainARN` field.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The Elasticsearch index name.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The Elasticsearch type name. For Elasticsearch 6.x, there can be
    #   only one type per index. If you try to specify a new type for an
    #   existing index that already has another type, Firehose returns an
    #   error during runtime.
    #
    #   If you upgrade Elasticsearch from 6.x to 7.x and don’t update your
    #   Firehose stream, Firehose still delivers data to Elasticsearch with
    #   the old index name and type name. If you want to update your
    #   Firehose stream with a new index name, provide an empty string for
    #   `TypeName`.
    #   @return [String]
    #
    # @!attribute [rw] index_rotation_period
    #   The Elasticsearch index rotation period. Index rotation appends a
    #   timestamp to `IndexName` to facilitate the expiration of old data.
    #   For more information, see [Index Rotation for the Amazon OpenSearch
    #   Service Destination][1]. Default value is `OneDay`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-index-rotation
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering options. If no value is specified,
    #   `ElasticsearchBufferingHints` object default values are used.
    #   @return [Types::ElasticsearchBufferingHints]
    #
    # @!attribute [rw] retry_options
    #   The retry behavior in case Firehose is unable to deliver documents
    #   to Amazon OpenSearch Service. The default value is 300 (5 minutes).
    #   @return [Types::ElasticsearchRetryOptions]
    #
    # @!attribute [rw] s3_update
    #   The Amazon S3 destination.
    #   @return [Types::S3DestinationUpdate]
    #
    # @!attribute [rw] processing_configuration
    #   The data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The CloudWatch logging options for your Firehose stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] document_id_options
    #   Indicates the method for setting up document ID. The supported
    #   methods are Firehose generated document ID and OpenSearch Service
    #   generated document ID.
    #   @return [Types::DocumentIdOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ElasticsearchDestinationUpdate AWS API Documentation
    #
    class ElasticsearchDestinationUpdate < Struct.new(
      :role_arn,
      :domain_arn,
      :cluster_endpoint,
      :index_name,
      :type_name,
      :index_rotation_period,
      :buffering_hints,
      :retry_options,
      :s3_update,
      :processing_configuration,
      :cloud_watch_logging_options,
      :document_id_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures retry behavior in case Firehose is unable to deliver
    # documents to Amazon OpenSearch Service.
    #
    # @!attribute [rw] duration_in_seconds
    #   After an initial failure to deliver to Amazon OpenSearch Service,
    #   the total amount of time during which Firehose retries delivery
    #   (including the first attempt). After this time has elapsed, the
    #   failed documents are written to Amazon S3. Default value is 300
    #   seconds (5 minutes). A value of 0 (zero) results in no retries.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ElasticsearchRetryOptions AWS API Documentation
    #
    class ElasticsearchRetryOptions < Struct.new(
      :duration_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the encryption for a destination in Amazon S3.
    #
    # @!attribute [rw] no_encryption_config
    #   Specifically override existing encryption information to ensure that
    #   no encryption is used.
    #   @return [String]
    #
    # @!attribute [rw] kms_encryption_config
    #   The encryption key.
    #   @return [Types::KMSEncryptionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/EncryptionConfiguration AWS API Documentation
    #
    class EncryptionConfiguration < Struct.new(
      :no_encryption_config,
      :kms_encryption_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of a destination in Amazon S3.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services
    #   credentials. For more information, see [Amazon Resource Names (ARNs)
    #   and Amazon Web Services Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] bucket_arn
    #   The ARN of the S3 bucket. For more information, see [Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The "YYYY/MM/DD/HH" time format prefix is automatically used for
    #   delivered Amazon S3 files. You can also specify a custom prefix, as
    #   described in [Custom Prefixes for Amazon S3 Objects][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html
    #   @return [String]
    #
    # @!attribute [rw] error_output_prefix
    #   A prefix that Firehose evaluates and adds to failed records before
    #   writing them to S3. This prefix appears immediately following the
    #   bucket name. For information about how to specify this prefix, see
    #   [Custom Prefixes for Amazon S3 Objects][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering option.
    #   @return [Types::BufferingHints]
    #
    # @!attribute [rw] compression_format
    #   The compression format. If no value is specified, the default is
    #   UNCOMPRESSED.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration. If no value is specified, the default
    #   is no encryption.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The Amazon CloudWatch logging options for your Firehose stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] processing_configuration
    #   The data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] s3_backup_mode
    #   The Amazon S3 backup mode. After you create a Firehose stream, you
    #   can update it to enable Amazon S3 backup if it is disabled. If
    #   backup is enabled, you can't update the Firehose stream to disable
    #   it.
    #   @return [String]
    #
    # @!attribute [rw] s3_backup_configuration
    #   The configuration for backup in Amazon S3.
    #   @return [Types::S3DestinationConfiguration]
    #
    # @!attribute [rw] data_format_conversion_configuration
    #   The serializer, deserializer, and schema for converting data from
    #   the JSON format to the Parquet or ORC format before writing it to
    #   Amazon S3.
    #   @return [Types::DataFormatConversionConfiguration]
    #
    # @!attribute [rw] dynamic_partitioning_configuration
    #   The configuration of the dynamic partitioning mechanism that creates
    #   smaller data sets from the streaming data by partitioning it based
    #   on partition keys. Currently, dynamic partitioning is only supported
    #   for Amazon S3 destinations.
    #   @return [Types::DynamicPartitioningConfiguration]
    #
    # @!attribute [rw] file_extension
    #   Specify a file extension. It will override the default file
    #   extension
    #   @return [String]
    #
    # @!attribute [rw] custom_time_zone
    #   The time zone you prefer. UTC is the default.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ExtendedS3DestinationConfiguration AWS API Documentation
    #
    class ExtendedS3DestinationConfiguration < Struct.new(
      :role_arn,
      :bucket_arn,
      :prefix,
      :error_output_prefix,
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options,
      :processing_configuration,
      :s3_backup_mode,
      :s3_backup_configuration,
      :data_format_conversion_configuration,
      :dynamic_partitioning_configuration,
      :file_extension,
      :custom_time_zone)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a destination in Amazon S3.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services
    #   credentials. For more information, see [Amazon Resource Names (ARNs)
    #   and Amazon Web Services Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] bucket_arn
    #   The ARN of the S3 bucket. For more information, see [Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The "YYYY/MM/DD/HH" time format prefix is automatically used for
    #   delivered Amazon S3 files. You can also specify a custom prefix, as
    #   described in [Custom Prefixes for Amazon S3 Objects][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html
    #   @return [String]
    #
    # @!attribute [rw] error_output_prefix
    #   A prefix that Firehose evaluates and adds to failed records before
    #   writing them to S3. This prefix appears immediately following the
    #   bucket name. For information about how to specify this prefix, see
    #   [Custom Prefixes for Amazon S3 Objects][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering option.
    #   @return [Types::BufferingHints]
    #
    # @!attribute [rw] compression_format
    #   The compression format. If no value is specified, the default is
    #   `UNCOMPRESSED`.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration. If no value is specified, the default
    #   is no encryption.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The Amazon CloudWatch logging options for your Firehose stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] processing_configuration
    #   The data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] s3_backup_mode
    #   The Amazon S3 backup mode.
    #   @return [String]
    #
    # @!attribute [rw] s3_backup_description
    #   The configuration for backup in Amazon S3.
    #   @return [Types::S3DestinationDescription]
    #
    # @!attribute [rw] data_format_conversion_configuration
    #   The serializer, deserializer, and schema for converting data from
    #   the JSON format to the Parquet or ORC format before writing it to
    #   Amazon S3.
    #   @return [Types::DataFormatConversionConfiguration]
    #
    # @!attribute [rw] dynamic_partitioning_configuration
    #   The configuration of the dynamic partitioning mechanism that creates
    #   smaller data sets from the streaming data by partitioning it based
    #   on partition keys. Currently, dynamic partitioning is only supported
    #   for Amazon S3 destinations.
    #   @return [Types::DynamicPartitioningConfiguration]
    #
    # @!attribute [rw] file_extension
    #   Specify a file extension. It will override the default file
    #   extension
    #   @return [String]
    #
    # @!attribute [rw] custom_time_zone
    #   The time zone you prefer. UTC is the default.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ExtendedS3DestinationDescription AWS API Documentation
    #
    class ExtendedS3DestinationDescription < Struct.new(
      :role_arn,
      :bucket_arn,
      :prefix,
      :error_output_prefix,
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options,
      :processing_configuration,
      :s3_backup_mode,
      :s3_backup_description,
      :data_format_conversion_configuration,
      :dynamic_partitioning_configuration,
      :file_extension,
      :custom_time_zone)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an update for a destination in Amazon S3.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services
    #   credentials. For more information, see [Amazon Resource Names (ARNs)
    #   and Amazon Web Services Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] bucket_arn
    #   The ARN of the S3 bucket. For more information, see [Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The "YYYY/MM/DD/HH" time format prefix is automatically used for
    #   delivered Amazon S3 files. You can also specify a custom prefix, as
    #   described in [Custom Prefixes for Amazon S3 Objects][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html
    #   @return [String]
    #
    # @!attribute [rw] error_output_prefix
    #   A prefix that Firehose evaluates and adds to failed records before
    #   writing them to S3. This prefix appears immediately following the
    #   bucket name. For information about how to specify this prefix, see
    #   [Custom Prefixes for Amazon S3 Objects][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering option.
    #   @return [Types::BufferingHints]
    #
    # @!attribute [rw] compression_format
    #   The compression format. If no value is specified, the default is
    #   `UNCOMPRESSED`.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration. If no value is specified, the default
    #   is no encryption.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The Amazon CloudWatch logging options for your Firehose stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] processing_configuration
    #   The data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] s3_backup_mode
    #   You can update a Firehose stream to enable Amazon S3 backup if it is
    #   disabled. If backup is enabled, you can't update the Firehose
    #   stream to disable it.
    #   @return [String]
    #
    # @!attribute [rw] s3_backup_update
    #   The Amazon S3 destination for backup.
    #   @return [Types::S3DestinationUpdate]
    #
    # @!attribute [rw] data_format_conversion_configuration
    #   The serializer, deserializer, and schema for converting data from
    #   the JSON format to the Parquet or ORC format before writing it to
    #   Amazon S3.
    #   @return [Types::DataFormatConversionConfiguration]
    #
    # @!attribute [rw] dynamic_partitioning_configuration
    #   The configuration of the dynamic partitioning mechanism that creates
    #   smaller data sets from the streaming data by partitioning it based
    #   on partition keys. Currently, dynamic partitioning is only supported
    #   for Amazon S3 destinations.
    #   @return [Types::DynamicPartitioningConfiguration]
    #
    # @!attribute [rw] file_extension
    #   Specify a file extension. It will override the default file
    #   extension
    #   @return [String]
    #
    # @!attribute [rw] custom_time_zone
    #   The time zone you prefer. UTC is the default.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ExtendedS3DestinationUpdate AWS API Documentation
    #
    class ExtendedS3DestinationUpdate < Struct.new(
      :role_arn,
      :bucket_arn,
      :prefix,
      :error_output_prefix,
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options,
      :processing_configuration,
      :s3_backup_mode,
      :s3_backup_update,
      :data_format_conversion_configuration,
      :dynamic_partitioning_configuration,
      :file_extension,
      :custom_time_zone)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details in case one of the following operations fails due to
    # an error related to KMS: CreateDeliveryStream, DeleteDeliveryStream,
    # StartDeliveryStreamEncryption, StopDeliveryStreamEncryption.
    #
    # @!attribute [rw] type
    #   The type of error that caused the failure.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   A message providing details about the error that caused the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/FailureDescription AWS API Documentation
    #
    class FailureDescription < Struct.new(
      :type,
      :details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The native Hive / HCatalog JsonSerDe. Used by Firehose for
    # deserializing data, which means converting it from the JSON format in
    # preparation for serializing it to the Parquet or ORC format. This is
    # one of two deserializers you can choose, depending on which one offers
    # the functionality you need. The other option is the OpenX SerDe.
    #
    # @!attribute [rw] timestamp_formats
    #   Indicates how you want Firehose to parse the date and timestamps
    #   that may be present in your input data JSON. To specify these format
    #   strings, follow the pattern syntax of JodaTime's DateTimeFormat
    #   format strings. For more information, see [Class DateTimeFormat][1].
    #   You can also use the special value `millis` to parse timestamps in
    #   epoch milliseconds. If you don't specify a format, Firehose uses
    #   `java.sql.Timestamp::valueOf` by default.
    #
    #
    #
    #   [1]: https://www.joda.org/joda-time/apidocs/org/joda/time/format/DateTimeFormat.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/HiveJsonSerDe AWS API Documentation
    #
    class HiveJsonSerDe < Struct.new(
      :timestamp_formats)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the buffering options that can be applied before data is
    # delivered to the HTTP endpoint destination. Firehose treats these
    # options as hints, and it might choose to use more optimal values. The
    # `SizeInMBs` and `IntervalInSeconds` parameters are optional. However,
    # if specify a value for one of them, you must also provide a value for
    # the other.
    #
    # @!attribute [rw] size_in_m_bs
    #   Buffer incoming data to the specified size, in MBs, before
    #   delivering it to the destination. The default value is 5.
    #
    #   We recommend setting this parameter to a value greater than the
    #   amount of data you typically ingest into the Firehose stream in 10
    #   seconds. For example, if you typically ingest data at 1 MB/sec, the
    #   value should be 10 MB or higher.
    #   @return [Integer]
    #
    # @!attribute [rw] interval_in_seconds
    #   Buffer incoming data for the specified period of time, in seconds,
    #   before delivering it to the destination. The default value is 300 (5
    #   minutes).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/HttpEndpointBufferingHints AWS API Documentation
    #
    class HttpEndpointBufferingHints < Struct.new(
      :size_in_m_bs,
      :interval_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the metadata that's delivered to the specified HTTP
    # endpoint destination.
    #
    # @!attribute [rw] attribute_name
    #   The name of the HTTP endpoint common attribute.
    #   @return [String]
    #
    # @!attribute [rw] attribute_value
    #   The value of the HTTP endpoint common attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/HttpEndpointCommonAttribute AWS API Documentation
    #
    class HttpEndpointCommonAttribute < Struct.new(
      :attribute_name,
      :attribute_value)
      SENSITIVE = [:attribute_name, :attribute_value]
      include Aws::Structure
    end

    # Describes the configuration of the HTTP endpoint to which Kinesis
    # Firehose delivers data.
    #
    # @!attribute [rw] url
    #   The URL of the HTTP endpoint selected as the destination.
    #
    #   If you choose an HTTP endpoint as your destination, review and
    #   follow the instructions in the [Appendix - HTTP Endpoint Delivery
    #   Request and Response Specifications][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/httpdeliveryrequestresponse.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the HTTP endpoint selected as the destination.
    #   @return [String]
    #
    # @!attribute [rw] access_key
    #   The access key required for Kinesis Firehose to authenticate with
    #   the HTTP endpoint selected as the destination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/HttpEndpointConfiguration AWS API Documentation
    #
    class HttpEndpointConfiguration < Struct.new(
      :url,
      :name,
      :access_key)
      SENSITIVE = [:url, :access_key]
      include Aws::Structure
    end

    # Describes the HTTP endpoint selected as the destination.
    #
    # @!attribute [rw] url
    #   The URL of the HTTP endpoint selected as the destination.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the HTTP endpoint selected as the destination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/HttpEndpointDescription AWS API Documentation
    #
    class HttpEndpointDescription < Struct.new(
      :url,
      :name)
      SENSITIVE = [:url]
      include Aws::Structure
    end

    # Describes the configuration of the HTTP endpoint destination.
    #
    # @!attribute [rw] endpoint_configuration
    #   The configuration of the HTTP endpoint selected as the destination.
    #   @return [Types::HttpEndpointConfiguration]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering options that can be used before data is delivered to
    #   the specified destination. Firehose treats these options as hints,
    #   and it might choose to use more optimal values. The `SizeInMBs` and
    #   `IntervalInSeconds` parameters are optional. However, if you specify
    #   a value for one of them, you must also provide a value for the
    #   other.
    #   @return [Types::HttpEndpointBufferingHints]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   Describes the Amazon CloudWatch logging options for your Firehose
    #   stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] request_configuration
    #   The configuration of the request sent to the HTTP endpoint that is
    #   specified as the destination.
    #   @return [Types::HttpEndpointRequestConfiguration]
    #
    # @!attribute [rw] processing_configuration
    #   Describes a data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] role_arn
    #   Firehose uses this IAM role for all the permissions that the
    #   delivery stream needs.
    #   @return [String]
    #
    # @!attribute [rw] retry_options
    #   Describes the retry behavior in case Firehose is unable to deliver
    #   data to the specified HTTP endpoint destination, or if it doesn't
    #   receive a valid acknowledgment of receipt from the specified HTTP
    #   endpoint destination.
    #   @return [Types::HttpEndpointRetryOptions]
    #
    # @!attribute [rw] s3_backup_mode
    #   Describes the S3 bucket backup options for the data that Firehose
    #   delivers to the HTTP endpoint destination. You can back up all
    #   documents (`AllData`) or only the documents that Firehose could not
    #   deliver to the specified HTTP endpoint destination
    #   (`FailedDataOnly`).
    #   @return [String]
    #
    # @!attribute [rw] s3_configuration
    #   Describes the configuration of a destination in Amazon S3.
    #   @return [Types::S3DestinationConfiguration]
    #
    # @!attribute [rw] secrets_manager_configuration
    #   The configuration that defines how you access secrets for HTTP
    #   Endpoint destination.
    #   @return [Types::SecretsManagerConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/HttpEndpointDestinationConfiguration AWS API Documentation
    #
    class HttpEndpointDestinationConfiguration < Struct.new(
      :endpoint_configuration,
      :buffering_hints,
      :cloud_watch_logging_options,
      :request_configuration,
      :processing_configuration,
      :role_arn,
      :retry_options,
      :s3_backup_mode,
      :s3_configuration,
      :secrets_manager_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the HTTP endpoint destination.
    #
    # @!attribute [rw] endpoint_configuration
    #   The configuration of the specified HTTP endpoint destination.
    #   @return [Types::HttpEndpointDescription]
    #
    # @!attribute [rw] buffering_hints
    #   Describes buffering options that can be applied to the data before
    #   it is delivered to the HTTPS endpoint destination. Firehose teats
    #   these options as hints, and it might choose to use more optimal
    #   values. The `SizeInMBs` and `IntervalInSeconds` parameters are
    #   optional. However, if specify a value for one of them, you must also
    #   provide a value for the other.
    #   @return [Types::HttpEndpointBufferingHints]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   Describes the Amazon CloudWatch logging options for your Firehose
    #   stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] request_configuration
    #   The configuration of request sent to the HTTP endpoint specified as
    #   the destination.
    #   @return [Types::HttpEndpointRequestConfiguration]
    #
    # @!attribute [rw] processing_configuration
    #   Describes a data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] role_arn
    #   Firehose uses this IAM role for all the permissions that the
    #   delivery stream needs.
    #   @return [String]
    #
    # @!attribute [rw] retry_options
    #   Describes the retry behavior in case Firehose is unable to deliver
    #   data to the specified HTTP endpoint destination, or if it doesn't
    #   receive a valid acknowledgment of receipt from the specified HTTP
    #   endpoint destination.
    #   @return [Types::HttpEndpointRetryOptions]
    #
    # @!attribute [rw] s3_backup_mode
    #   Describes the S3 bucket backup options for the data that Kinesis
    #   Firehose delivers to the HTTP endpoint destination. You can back up
    #   all documents (`AllData`) or only the documents that Firehose could
    #   not deliver to the specified HTTP endpoint destination
    #   (`FailedDataOnly`).
    #   @return [String]
    #
    # @!attribute [rw] s3_destination_description
    #   Describes a destination in Amazon S3.
    #   @return [Types::S3DestinationDescription]
    #
    # @!attribute [rw] secrets_manager_configuration
    #   The configuration that defines how you access secrets for HTTP
    #   Endpoint destination.
    #   @return [Types::SecretsManagerConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/HttpEndpointDestinationDescription AWS API Documentation
    #
    class HttpEndpointDestinationDescription < Struct.new(
      :endpoint_configuration,
      :buffering_hints,
      :cloud_watch_logging_options,
      :request_configuration,
      :processing_configuration,
      :role_arn,
      :retry_options,
      :s3_backup_mode,
      :s3_destination_description,
      :secrets_manager_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates the specified HTTP endpoint destination.
    #
    # @!attribute [rw] endpoint_configuration
    #   Describes the configuration of the HTTP endpoint destination.
    #   @return [Types::HttpEndpointConfiguration]
    #
    # @!attribute [rw] buffering_hints
    #   Describes buffering options that can be applied to the data before
    #   it is delivered to the HTTPS endpoint destination. Firehose teats
    #   these options as hints, and it might choose to use more optimal
    #   values. The `SizeInMBs` and `IntervalInSeconds` parameters are
    #   optional. However, if specify a value for one of them, you must also
    #   provide a value for the other.
    #   @return [Types::HttpEndpointBufferingHints]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   Describes the Amazon CloudWatch logging options for your Firehose
    #   stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] request_configuration
    #   The configuration of the request sent to the HTTP endpoint specified
    #   as the destination.
    #   @return [Types::HttpEndpointRequestConfiguration]
    #
    # @!attribute [rw] processing_configuration
    #   Describes a data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] role_arn
    #   Firehose uses this IAM role for all the permissions that the
    #   delivery stream needs.
    #   @return [String]
    #
    # @!attribute [rw] retry_options
    #   Describes the retry behavior in case Firehose is unable to deliver
    #   data to the specified HTTP endpoint destination, or if it doesn't
    #   receive a valid acknowledgment of receipt from the specified HTTP
    #   endpoint destination.
    #   @return [Types::HttpEndpointRetryOptions]
    #
    # @!attribute [rw] s3_backup_mode
    #   Describes the S3 bucket backup options for the data that Kinesis
    #   Firehose delivers to the HTTP endpoint destination. You can back up
    #   all documents (`AllData`) or only the documents that Firehose could
    #   not deliver to the specified HTTP endpoint destination
    #   (`FailedDataOnly`).
    #   @return [String]
    #
    # @!attribute [rw] s3_update
    #   Describes an update for a destination in Amazon S3.
    #   @return [Types::S3DestinationUpdate]
    #
    # @!attribute [rw] secrets_manager_configuration
    #   The configuration that defines how you access secrets for HTTP
    #   Endpoint destination.
    #   @return [Types::SecretsManagerConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/HttpEndpointDestinationUpdate AWS API Documentation
    #
    class HttpEndpointDestinationUpdate < Struct.new(
      :endpoint_configuration,
      :buffering_hints,
      :cloud_watch_logging_options,
      :request_configuration,
      :processing_configuration,
      :role_arn,
      :retry_options,
      :s3_backup_mode,
      :s3_update,
      :secrets_manager_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the HTTP endpoint request.
    #
    # @!attribute [rw] content_encoding
    #   Firehose uses the content encoding to compress the body of a request
    #   before sending the request to the destination. For more information,
    #   see [Content-Encoding][1] in MDN Web Docs, the official Mozilla
    #   documentation.
    #
    #
    #
    #   [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Encoding
    #   @return [String]
    #
    # @!attribute [rw] common_attributes
    #   Describes the metadata sent to the HTTP endpoint destination.
    #   @return [Array<Types::HttpEndpointCommonAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/HttpEndpointRequestConfiguration AWS API Documentation
    #
    class HttpEndpointRequestConfiguration < Struct.new(
      :content_encoding,
      :common_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the retry behavior in case Firehose is unable to deliver
    # data to the specified HTTP endpoint destination, or if it doesn't
    # receive a valid acknowledgment of receipt from the specified HTTP
    # endpoint destination.
    #
    # @!attribute [rw] duration_in_seconds
    #   The total amount of time that Firehose spends on retries. This
    #   duration starts after the initial attempt to send data to the custom
    #   destination via HTTPS endpoint fails. It doesn't include the
    #   periods during which Firehose waits for acknowledgment from the
    #   specified destination after each attempt.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/HttpEndpointRetryOptions AWS API Documentation
    #
    class HttpEndpointRetryOptions < Struct.new(
      :duration_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the destination configure settings for Apache Iceberg Table.
    #
    # @!attribute [rw] destination_table_configuration_list
    #   Provides a list of `DestinationTableConfigurations` which Firehose
    #   uses to deliver data to Apache Iceberg Tables. Firehose will write
    #   data with insert if table specific configuration is not provided
    #   here.
    #   @return [Array<Types::DestinationTableConfiguration>]
    #
    # @!attribute [rw] schema_evolution_configuration
    #   The configuration to enable automatic schema evolution.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Types::SchemaEvolutionConfiguration]
    #
    # @!attribute [rw] table_creation_configuration
    #   The configuration to enable automatic table creation.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Types::TableCreationConfiguration]
    #
    # @!attribute [rw] buffering_hints
    #   Describes hints for the buffering to perform before delivering data
    #   to the destination. These options are treated as hints, and
    #   therefore Firehose might choose to use different values when it is
    #   optimal. The `SizeInMBs` and `IntervalInSeconds` parameters are
    #   optional. However, if specify a value for one of them, you must also
    #   provide a value for the other.
    #   @return [Types::BufferingHints]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   Describes the Amazon CloudWatch logging options for your Firehose
    #   stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] processing_configuration
    #   Describes a data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] s3_backup_mode
    #   Describes how Firehose will backup records. Currently,S3 backup only
    #   supports `FailedDataOnly`.
    #   @return [String]
    #
    # @!attribute [rw] retry_options
    #   The retry behavior in case Firehose is unable to deliver data to a
    #   destination.
    #   @return [Types::RetryOptions]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to be assumed by
    #   Firehose for calling Apache Iceberg Tables.
    #   @return [String]
    #
    # @!attribute [rw] append_only
    #   Describes whether all incoming data for this delivery stream will be
    #   append only (inserts only and not for updates and deletes) for
    #   Iceberg delivery. This feature is only applicable for Apache Iceberg
    #   Tables.
    #
    #   The default value is false. If you set this value to true, Firehose
    #   automatically increases the throughput limit of a stream based on
    #   the throttling levels of the stream. If you set this parameter to
    #   true for a stream with updates and deletes, you will see out of
    #   order delivery.
    #   @return [Boolean]
    #
    # @!attribute [rw] catalog_configuration
    #   Configuration describing where the destination Apache Iceberg Tables
    #   are persisted.
    #   @return [Types::CatalogConfiguration]
    #
    # @!attribute [rw] s3_configuration
    #   Describes the configuration of a destination in Amazon S3.
    #   @return [Types::S3DestinationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/IcebergDestinationConfiguration AWS API Documentation
    #
    class IcebergDestinationConfiguration < Struct.new(
      :destination_table_configuration_list,
      :schema_evolution_configuration,
      :table_creation_configuration,
      :buffering_hints,
      :cloud_watch_logging_options,
      :processing_configuration,
      :s3_backup_mode,
      :retry_options,
      :role_arn,
      :append_only,
      :catalog_configuration,
      :s3_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a destination in Apache Iceberg Tables.
    #
    # @!attribute [rw] destination_table_configuration_list
    #   Provides a list of `DestinationTableConfigurations` which Firehose
    #   uses to deliver data to Apache Iceberg Tables. Firehose will write
    #   data with insert if table specific configuration is not provided
    #   here.
    #   @return [Array<Types::DestinationTableConfiguration>]
    #
    # @!attribute [rw] schema_evolution_configuration
    #   The description of automatic schema evolution configuration.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Types::SchemaEvolutionConfiguration]
    #
    # @!attribute [rw] table_creation_configuration
    #   The description of table creation configuration.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Types::TableCreationConfiguration]
    #
    # @!attribute [rw] buffering_hints
    #   Describes hints for the buffering to perform before delivering data
    #   to the destination. These options are treated as hints, and
    #   therefore Firehose might choose to use different values when it is
    #   optimal. The `SizeInMBs` and `IntervalInSeconds` parameters are
    #   optional. However, if specify a value for one of them, you must also
    #   provide a value for the other.
    #   @return [Types::BufferingHints]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   Describes the Amazon CloudWatch logging options for your Firehose
    #   stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] processing_configuration
    #   Describes a data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] s3_backup_mode
    #   Describes how Firehose will backup records. Currently,Firehose only
    #   supports `FailedDataOnly`.
    #   @return [String]
    #
    # @!attribute [rw] retry_options
    #   The retry behavior in case Firehose is unable to deliver data to a
    #   destination.
    #   @return [Types::RetryOptions]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to be assumed by
    #   Firehose for calling Apache Iceberg Tables.
    #   @return [String]
    #
    # @!attribute [rw] append_only
    #   Describes whether all incoming data for this delivery stream will be
    #   append only (inserts only and not for updates and deletes) for
    #   Iceberg delivery. This feature is only applicable for Apache Iceberg
    #   Tables.
    #
    #   The default value is false. If you set this value to true, Firehose
    #   automatically increases the throughput limit of a stream based on
    #   the throttling levels of the stream. If you set this parameter to
    #   true for a stream with updates and deletes, you will see out of
    #   order delivery.
    #   @return [Boolean]
    #
    # @!attribute [rw] catalog_configuration
    #   Configuration describing where the destination Iceberg tables are
    #   persisted.
    #   @return [Types::CatalogConfiguration]
    #
    # @!attribute [rw] s3_destination_description
    #   Describes a destination in Amazon S3.
    #   @return [Types::S3DestinationDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/IcebergDestinationDescription AWS API Documentation
    #
    class IcebergDestinationDescription < Struct.new(
      :destination_table_configuration_list,
      :schema_evolution_configuration,
      :table_creation_configuration,
      :buffering_hints,
      :cloud_watch_logging_options,
      :processing_configuration,
      :s3_backup_mode,
      :retry_options,
      :role_arn,
      :append_only,
      :catalog_configuration,
      :s3_destination_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an update for a destination in Apache Iceberg Tables.
    #
    # @!attribute [rw] destination_table_configuration_list
    #   Provides a list of `DestinationTableConfigurations` which Firehose
    #   uses to deliver data to Apache Iceberg Tables. Firehose will write
    #   data with insert if table specific configuration is not provided
    #   here.
    #   @return [Array<Types::DestinationTableConfiguration>]
    #
    # @!attribute [rw] schema_evolution_configuration
    #   The configuration to enable automatic schema evolution.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Types::SchemaEvolutionConfiguration]
    #
    # @!attribute [rw] table_creation_configuration
    #   The configuration to enable automatic table creation.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Types::TableCreationConfiguration]
    #
    # @!attribute [rw] buffering_hints
    #   Describes hints for the buffering to perform before delivering data
    #   to the destination. These options are treated as hints, and
    #   therefore Firehose might choose to use different values when it is
    #   optimal. The `SizeInMBs` and `IntervalInSeconds` parameters are
    #   optional. However, if specify a value for one of them, you must also
    #   provide a value for the other.
    #   @return [Types::BufferingHints]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   Describes the Amazon CloudWatch logging options for your Firehose
    #   stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] processing_configuration
    #   Describes a data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] s3_backup_mode
    #   Describes how Firehose will backup records. Currently,Firehose only
    #   supports `FailedDataOnly`.
    #   @return [String]
    #
    # @!attribute [rw] retry_options
    #   The retry behavior in case Firehose is unable to deliver data to a
    #   destination.
    #   @return [Types::RetryOptions]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to be assumed by
    #   Firehose for calling Apache Iceberg Tables.
    #   @return [String]
    #
    # @!attribute [rw] append_only
    #   Describes whether all incoming data for this delivery stream will be
    #   append only (inserts only and not for updates and deletes) for
    #   Iceberg delivery. This feature is only applicable for Apache Iceberg
    #   Tables.
    #
    #   The default value is false. If you set this value to true, Firehose
    #   automatically increases the throughput limit of a stream based on
    #   the throttling levels of the stream. If you set this parameter to
    #   true for a stream with updates and deletes, you will see out of
    #   order delivery.
    #   @return [Boolean]
    #
    # @!attribute [rw] catalog_configuration
    #   Configuration describing where the destination Iceberg tables are
    #   persisted.
    #   @return [Types::CatalogConfiguration]
    #
    # @!attribute [rw] s3_configuration
    #   Describes the configuration of a destination in Amazon S3.
    #   @return [Types::S3DestinationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/IcebergDestinationUpdate AWS API Documentation
    #
    class IcebergDestinationUpdate < Struct.new(
      :destination_table_configuration_list,
      :schema_evolution_configuration,
      :table_creation_configuration,
      :buffering_hints,
      :cloud_watch_logging_options,
      :processing_configuration,
      :s3_backup_mode,
      :retry_options,
      :role_arn,
      :append_only,
      :catalog_configuration,
      :s3_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the deserializer you want to use to convert the format of
    # the input data. This parameter is required if `Enabled` is set to
    # true.
    #
    # @!attribute [rw] deserializer
    #   Specifies which deserializer to use. You can choose either the
    #   Apache Hive JSON SerDe or the OpenX JSON SerDe. If both are
    #   non-null, the server rejects the request.
    #   @return [Types::Deserializer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/InputFormatConfiguration AWS API Documentation
    #
    class InputFormatConfiguration < Struct.new(
      :deserializer)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified input parameter has a value that is not valid.
    #
    # @!attribute [rw] message
    #   A message that provides information about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/InvalidArgumentException AWS API Documentation
    #
    class InvalidArgumentException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Firehose throws this exception when an attempt to put records or to
    # start or stop Firehose stream encryption fails. This happens when the
    # KMS service throws one of the following exception types:
    # `AccessDeniedException`, `InvalidStateException`, `DisabledException`,
    # or `NotFoundException`.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/InvalidKMSResourceException AWS API Documentation
    #
    class InvalidKMSResourceException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Only requests from CloudWatch Logs are supported when CloudWatch Logs
    # decompression is enabled.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/InvalidSourceException AWS API Documentation
    #
    class InvalidSourceException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an encryption key for a destination in Amazon S3.
    #
    # @!attribute [rw] awskms_key_arn
    #   The Amazon Resource Name (ARN) of the encryption key. Must belong to
    #   the same Amazon Web Services Region as the destination Amazon S3
    #   bucket. For more information, see [Amazon Resource Names (ARNs) and
    #   Amazon Web Services Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/KMSEncryptionConfig AWS API Documentation
    #
    class KMSEncryptionConfig < Struct.new(
      :awskms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The stream and role Amazon Resource Names (ARNs) for a Kinesis data
    # stream used as the source for a Firehose stream.
    #
    # @!attribute [rw] kinesis_stream_arn
    #   The ARN of the source Kinesis data stream. For more information, see
    #   [Amazon Kinesis Data Streams ARN Format][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that provides access to the source Kinesis data
    #   stream. For more information, see [Amazon Web Services Identity and
    #   Access Management (IAM) ARN Format][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/KinesisStreamSourceConfiguration AWS API Documentation
    #
    class KinesisStreamSourceConfiguration < Struct.new(
      :kinesis_stream_arn,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a Kinesis data stream used as the source for a Firehose
    # stream.
    #
    # @!attribute [rw] kinesis_stream_arn
    #   The Amazon Resource Name (ARN) of the source Kinesis data stream.
    #   For more information, see [Amazon Kinesis Data Streams ARN
    #   Format][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role used by the source Kinesis data stream. For more
    #   information, see [Amazon Web Services Identity and Access Management
    #   (IAM) ARN Format][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam
    #   @return [String]
    #
    # @!attribute [rw] delivery_start_timestamp
    #   Firehose starts retrieving records from the Kinesis data stream
    #   starting with this timestamp.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/KinesisStreamSourceDescription AWS API Documentation
    #
    class KinesisStreamSourceDescription < Struct.new(
      :kinesis_stream_arn,
      :role_arn,
      :delivery_start_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have already reached the limit for a requested resource.
    #
    # @!attribute [rw] message
    #   A message that provides information about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] limit
    #   The maximum number of Firehose streams to list. The default value is
    #   10.
    #   @return [Integer]
    #
    # @!attribute [rw] delivery_stream_type
    #   The Firehose stream type. This can be one of the following values:
    #
    #   * `DirectPut`: Provider applications access the Firehose stream
    #     directly.
    #
    #   * `KinesisStreamAsSource`: The Firehose stream uses a Kinesis data
    #     stream as a source.
    #
    #   This parameter is optional. If this parameter is omitted, Firehose
    #   streams of all types are returned.
    #   @return [String]
    #
    # @!attribute [rw] exclusive_start_delivery_stream_name
    #   The list of Firehose streams returned by this call to
    #   `ListDeliveryStreams` will start with the Firehose stream whose name
    #   comes alphabetically immediately after the name you specify in
    #   `ExclusiveStartDeliveryStreamName`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ListDeliveryStreamsInput AWS API Documentation
    #
    class ListDeliveryStreamsInput < Struct.new(
      :limit,
      :delivery_stream_type,
      :exclusive_start_delivery_stream_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delivery_stream_names
    #   The names of the Firehose streams.
    #   @return [Array<String>]
    #
    # @!attribute [rw] has_more_delivery_streams
    #   Indicates whether there are more Firehose streams available to list.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ListDeliveryStreamsOutput AWS API Documentation
    #
    class ListDeliveryStreamsOutput < Struct.new(
      :delivery_stream_names,
      :has_more_delivery_streams)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delivery_stream_name
    #   The name of the Firehose stream whose tags you want to list.
    #   @return [String]
    #
    # @!attribute [rw] exclusive_start_tag_key
    #   The key to use as the starting point for the list of tags. If you
    #   set this parameter, `ListTagsForDeliveryStream` gets all tags that
    #   occur after `ExclusiveStartTagKey`.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The number of tags to return. If this number is less than the total
    #   number of tags associated with the Firehose stream, `HasMoreTags` is
    #   set to `true` in the response. To list additional tags, set
    #   `ExclusiveStartTagKey` to the last key in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ListTagsForDeliveryStreamInput AWS API Documentation
    #
    class ListTagsForDeliveryStreamInput < Struct.new(
      :delivery_stream_name,
      :exclusive_start_tag_key,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tags associated with `DeliveryStreamName`, starting with
    #   the first tag after `ExclusiveStartTagKey` and up to the specified
    #   `Limit`.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] has_more_tags
    #   If this is `true` in the response, more tags are available. To list
    #   the remaining tags, set `ExclusiveStartTagKey` to the key of the
    #   last tag returned and call `ListTagsForDeliveryStream` again.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ListTagsForDeliveryStreamOutput AWS API Documentation
    #
    class ListTagsForDeliveryStreamOutput < Struct.new(
      :tags,
      :has_more_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for the Amazon MSK cluster to be used as the source
    # for a delivery stream.
    #
    # @!attribute [rw] msk_cluster_arn
    #   The ARN of the Amazon MSK cluster.
    #   @return [String]
    #
    # @!attribute [rw] topic_name
    #   The topic name within the Amazon MSK cluster.
    #   @return [String]
    #
    # @!attribute [rw] authentication_configuration
    #   The authentication configuration of the Amazon MSK cluster.
    #   @return [Types::AuthenticationConfiguration]
    #
    # @!attribute [rw] read_from_timestamp
    #   The start date and time in UTC for the offset position within your
    #   MSK topic from where Firehose begins to read. By default, this is
    #   set to timestamp when Firehose becomes Active.
    #
    #   If you want to create a Firehose stream with Earliest start position
    #   from SDK or CLI, you need to set the `ReadFromTimestamp` parameter
    #   to Epoch (1970-01-01T00:00:00Z).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/MSKSourceConfiguration AWS API Documentation
    #
    class MSKSourceConfiguration < Struct.new(
      :msk_cluster_arn,
      :topic_name,
      :authentication_configuration,
      :read_from_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the Amazon MSK cluster used as the source for a Firehose
    # stream.
    #
    # @!attribute [rw] msk_cluster_arn
    #   The ARN of the Amazon MSK cluster.
    #   @return [String]
    #
    # @!attribute [rw] topic_name
    #   The topic name within the Amazon MSK cluster.
    #   @return [String]
    #
    # @!attribute [rw] authentication_configuration
    #   The authentication configuration of the Amazon MSK cluster.
    #   @return [Types::AuthenticationConfiguration]
    #
    # @!attribute [rw] delivery_start_timestamp
    #   Firehose starts retrieving records from the topic within the Amazon
    #   MSK cluster starting with this timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] read_from_timestamp
    #   The start date and time in UTC for the offset position within your
    #   MSK topic from where Firehose begins to read. By default, this is
    #   set to timestamp when Firehose becomes Active.
    #
    #   If you want to create a Firehose stream with Earliest start position
    #   from SDK or CLI, you need to set the `ReadFromTimestampUTC`
    #   parameter to Epoch (1970-01-01T00:00:00Z).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/MSKSourceDescription AWS API Documentation
    #
    class MSKSourceDescription < Struct.new(
      :msk_cluster_arn,
      :topic_name,
      :authentication_configuration,
      :delivery_start_timestamp,
      :read_from_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The OpenX SerDe. Used by Firehose for deserializing data, which means
    # converting it from the JSON format in preparation for serializing it
    # to the Parquet or ORC format. This is one of two deserializers you can
    # choose, depending on which one offers the functionality you need. The
    # other option is the native Hive / HCatalog JsonSerDe.
    #
    # @!attribute [rw] convert_dots_in_json_keys_to_underscores
    #   When set to `true`, specifies that the names of the keys include
    #   dots and that you want Firehose to replace them with underscores.
    #   This is useful because Apache Hive does not allow dots in column
    #   names. For example, if the JSON contains a key whose name is
    #   "a.b", you can define the column name to be "a\_b" when using
    #   this option.
    #
    #   The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] case_insensitive
    #   When set to `true`, which is the default, Firehose converts JSON
    #   keys to lowercase before deserializing them.
    #   @return [Boolean]
    #
    # @!attribute [rw] column_to_json_key_mappings
    #   Maps column names to JSON keys that aren't identical to the column
    #   names. This is useful when the JSON contains keys that are Hive
    #   keywords. For example, `timestamp` is a Hive keyword. If you have a
    #   JSON key named `timestamp`, set this parameter to `{"ts":
    #   "timestamp"}` to map this key to a column named `ts`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/OpenXJsonSerDe AWS API Documentation
    #
    class OpenXJsonSerDe < Struct.new(
      :convert_dots_in_json_keys_to_underscores,
      :case_insensitive,
      :column_to_json_key_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # A serializer to use for converting data to the ORC format before
    # storing it in Amazon S3. For more information, see [Apache ORC][1].
    #
    #
    #
    # [1]: https://orc.apache.org/docs/
    #
    # @!attribute [rw] stripe_size_bytes
    #   The number of bytes in each stripe. The default is 64 MiB and the
    #   minimum is 8 MiB.
    #   @return [Integer]
    #
    # @!attribute [rw] block_size_bytes
    #   The Hadoop Distributed File System (HDFS) block size. This is useful
    #   if you intend to copy the data from Amazon S3 to HDFS before
    #   querying. The default is 256 MiB and the minimum is 64 MiB. Firehose
    #   uses this value for padding calculations.
    #   @return [Integer]
    #
    # @!attribute [rw] row_index_stride
    #   The number of rows between index entries. The default is 10,000 and
    #   the minimum is 1,000.
    #   @return [Integer]
    #
    # @!attribute [rw] enable_padding
    #   Set this to `true` to indicate that you want stripes to be padded to
    #   the HDFS block boundaries. This is useful if you intend to copy the
    #   data from Amazon S3 to HDFS before querying. The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] padding_tolerance
    #   A number between 0 and 1 that defines the tolerance for block
    #   padding as a decimal fraction of stripe size. The default value is
    #   0.05, which means 5 percent of stripe size.
    #
    #   For the default values of 64 MiB ORC stripes and 256 MiB HDFS
    #   blocks, the default block padding tolerance of 5 percent reserves a
    #   maximum of 3.2 MiB for padding within the 256 MiB block. In such a
    #   case, if the available size within the block is more than 3.2 MiB, a
    #   new, smaller stripe is inserted to fit within that space. This
    #   ensures that no stripe crosses block boundaries and causes remote
    #   reads within a node-local task.
    #
    #   Firehose ignores this parameter when OrcSerDe$EnablePadding is
    #   `false`.
    #   @return [Float]
    #
    # @!attribute [rw] compression
    #   The compression code to use over data blocks. The default is
    #   `SNAPPY`.
    #   @return [String]
    #
    # @!attribute [rw] bloom_filter_columns
    #   The column names for which you want Firehose to create bloom
    #   filters. The default is `null`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] bloom_filter_false_positive_probability
    #   The Bloom filter false positive probability (FPP). The lower the
    #   FPP, the bigger the Bloom filter. The default value is 0.05, the
    #   minimum is 0, and the maximum is 1.
    #   @return [Float]
    #
    # @!attribute [rw] dictionary_key_threshold
    #   Represents the fraction of the total number of non-null rows. To
    #   turn off dictionary encoding, set this fraction to a number that is
    #   less than the number of distinct keys in a dictionary. To always use
    #   dictionary encoding, set this threshold to 1.
    #   @return [Float]
    #
    # @!attribute [rw] format_version
    #   The version of the file to write. The possible values are `V0_11`
    #   and `V0_12`. The default is `V0_12`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/OrcSerDe AWS API Documentation
    #
    class OrcSerDe < Struct.new(
      :stripe_size_bytes,
      :block_size_bytes,
      :row_index_stride,
      :enable_padding,
      :padding_tolerance,
      :compression,
      :bloom_filter_columns,
      :bloom_filter_false_positive_probability,
      :dictionary_key_threshold,
      :format_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the serializer that you want Firehose to use to convert the
    # format of your data before it writes it to Amazon S3. This parameter
    # is required if `Enabled` is set to true.
    #
    # @!attribute [rw] serializer
    #   Specifies which serializer to use. You can choose either the ORC
    #   SerDe or the Parquet SerDe. If both are non-null, the server rejects
    #   the request.
    #   @return [Types::Serializer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/OutputFormatConfiguration AWS API Documentation
    #
    class OutputFormatConfiguration < Struct.new(
      :serializer)
      SENSITIVE = []
      include Aws::Structure
    end

    # A serializer to use for converting data to the Parquet format before
    # storing it in Amazon S3. For more information, see [Apache
    # Parquet][1].
    #
    #
    #
    # [1]: https://parquet.apache.org/docs/
    #
    # @!attribute [rw] block_size_bytes
    #   The Hadoop Distributed File System (HDFS) block size. This is useful
    #   if you intend to copy the data from Amazon S3 to HDFS before
    #   querying. The default is 256 MiB and the minimum is 64 MiB. Firehose
    #   uses this value for padding calculations.
    #   @return [Integer]
    #
    # @!attribute [rw] page_size_bytes
    #   The Parquet page size. Column chunks are divided into pages. A page
    #   is conceptually an indivisible unit (in terms of compression and
    #   encoding). The minimum value is 64 KiB and the default is 1 MiB.
    #   @return [Integer]
    #
    # @!attribute [rw] compression
    #   The compression code to use over data blocks. The possible values
    #   are `UNCOMPRESSED`, `SNAPPY`, and `GZIP`, with the default being
    #   `SNAPPY`. Use `SNAPPY` for higher decompression speed. Use `GZIP` if
    #   the compression ratio is more important than speed.
    #   @return [String]
    #
    # @!attribute [rw] enable_dictionary_compression
    #   Indicates whether to enable dictionary compression.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_padding_bytes
    #   The maximum amount of padding to apply. This is useful if you intend
    #   to copy the data from Amazon S3 to HDFS before querying. The default
    #   is 0.
    #   @return [Integer]
    #
    # @!attribute [rw] writer_version
    #   Indicates the version of row format to output. The possible values
    #   are `V1` and `V2`. The default is `V1`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ParquetSerDe AWS API Documentation
    #
    class ParquetSerDe < Struct.new(
      :block_size_bytes,
      :page_size_bytes,
      :compression,
      :enable_dictionary_compression,
      :max_padding_bytes,
      :writer_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single field in a `PartitionSpec`.
    #
    # Amazon Data Firehose is in preview release and is subject to change.
    #
    # @!attribute [rw] source_name
    #   The column name to be configured in partition spec.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/PartitionField AWS API Documentation
    #
    class PartitionField < Struct.new(
      :source_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents how to produce partition data for a table. Partition data
    # is produced by transforming columns in a table. Each column transform
    # is represented by a named `PartitionField`.
    #
    # Here is an example of the schema in JSON.
    #
    # `"partitionSpec": { "identity": [ {"sourceName": "column1"},
    # {"sourceName": "column2"}, {"sourceName": "column3"} ] }`
    #
    # Amazon Data Firehose is in preview release and is subject to change.
    #
    # @!attribute [rw] identity
    #   List of identity [transforms][1] that performs an identity
    #   transformation. The transform takes the source value, and does not
    #   modify it. Result type is the source type.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #
    #
    #
    #   [1]: https://iceberg.apache.org/spec/#partition-transforms
    #   @return [Array<Types::PartitionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/PartitionSpec AWS API Documentation
    #
    class PartitionSpec < Struct.new(
      :identity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a data processing configuration.
    #
    # @!attribute [rw] enabled
    #   Enables or disables data processing.
    #   @return [Boolean]
    #
    # @!attribute [rw] processors
    #   The data processors.
    #   @return [Array<Types::Processor>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ProcessingConfiguration AWS API Documentation
    #
    class ProcessingConfiguration < Struct.new(
      :enabled,
      :processors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a data processor.
    #
    # <note markdown="1"> If you want to add a new line delimiter between records in objects
    # that are delivered to Amazon S3, choose `AppendDelimiterToRecord` as a
    # processor type. You don’t have to put a processor parameter when you
    # select `AppendDelimiterToRecord`.
    #
    #  </note>
    #
    # @!attribute [rw] type
    #   The type of processor.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The processor parameters.
    #   @return [Array<Types::ProcessorParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/Processor AWS API Documentation
    #
    class Processor < Struct.new(
      :type,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the processor parameter.
    #
    # @!attribute [rw] parameter_name
    #   The name of the parameter. Currently the following default values
    #   are supported: 3 for `NumberOfRetries` and 60 for the
    #   `BufferIntervalInSeconds`. The `BufferSizeInMBs` ranges between 0.2
    #   MB and up to 3MB. The default buffering hint is 1MB for all
    #   destinations, except Splunk. For Splunk, the default buffering hint
    #   is 256 KB.
    #   @return [String]
    #
    # @!attribute [rw] parameter_value
    #   The parameter value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ProcessorParameter AWS API Documentation
    #
    class ProcessorParameter < Struct.new(
      :parameter_name,
      :parameter_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delivery_stream_name
    #   The name of the Firehose stream.
    #   @return [String]
    #
    # @!attribute [rw] records
    #   One or more records.
    #   @return [Array<Types::Record>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/PutRecordBatchInput AWS API Documentation
    #
    class PutRecordBatchInput < Struct.new(
      :delivery_stream_name,
      :records)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_put_count
    #   The number of records that might have failed processing. This number
    #   might be greater than 0 even if the PutRecordBatch call succeeds.
    #   Check `FailedPutCount` to determine whether there are records that
    #   you need to resend.
    #   @return [Integer]
    #
    # @!attribute [rw] encrypted
    #   Indicates whether server-side encryption (SSE) was enabled during
    #   this operation.
    #   @return [Boolean]
    #
    # @!attribute [rw] request_responses
    #   The results array. For each record, the index of the response
    #   element is the same as the index used in the request array.
    #   @return [Array<Types::PutRecordBatchResponseEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/PutRecordBatchOutput AWS API Documentation
    #
    class PutRecordBatchOutput < Struct.new(
      :failed_put_count,
      :encrypted,
      :request_responses)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the result for an individual record from a PutRecordBatch
    # request. If the record is successfully added to your Firehose stream,
    # it receives a record ID. If the record fails to be added to your
    # Firehose stream, the result includes an error code and an error
    # message.
    #
    # @!attribute [rw] record_id
    #   The ID of the record.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code for an individual record result.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message for an individual record result.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/PutRecordBatchResponseEntry AWS API Documentation
    #
    class PutRecordBatchResponseEntry < Struct.new(
      :record_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delivery_stream_name
    #   The name of the Firehose stream.
    #   @return [String]
    #
    # @!attribute [rw] record
    #   The record.
    #   @return [Types::Record]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/PutRecordInput AWS API Documentation
    #
    class PutRecordInput < Struct.new(
      :delivery_stream_name,
      :record)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] record_id
    #   The ID of the record.
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   Indicates whether server-side encryption (SSE) was enabled during
    #   this operation.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/PutRecordOutput AWS API Documentation
    #
    class PutRecordOutput < Struct.new(
      :record_id,
      :encrypted)
      SENSITIVE = []
      include Aws::Structure
    end

    # The unit of data in a Firehose stream.
    #
    # @!attribute [rw] data
    #   The data blob, which is base64-encoded when the blob is serialized.
    #   The maximum size of the data blob, before base64-encoding, is 1,000
    #   KiB.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/Record AWS API Documentation
    #
    class Record < Struct.new(
      :data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of a destination in Amazon Redshift.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services
    #   credentials. For more information, see [Amazon Resource Names (ARNs)
    #   and Amazon Web Services Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] cluster_jdbc_url
    #   The database connection string.
    #   @return [String]
    #
    # @!attribute [rw] copy_command
    #   The `COPY` command.
    #   @return [Types::CopyCommand]
    #
    # @!attribute [rw] username
    #   The name of the user.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The user password.
    #   @return [String]
    #
    # @!attribute [rw] retry_options
    #   The retry behavior in case Firehose is unable to deliver documents
    #   to Amazon Redshift. Default value is 3600 (60 minutes).
    #   @return [Types::RedshiftRetryOptions]
    #
    # @!attribute [rw] s3_configuration
    #   The configuration for the intermediate Amazon S3 location from which
    #   Amazon Redshift obtains data. Restrictions are described in the
    #   topic for CreateDeliveryStream.
    #
    #   The compression formats `SNAPPY` or `ZIP` cannot be specified in
    #   `RedshiftDestinationConfiguration.S3Configuration` because the
    #   Amazon Redshift `COPY` operation that reads from the S3 bucket
    #   doesn't support these compression formats.
    #   @return [Types::S3DestinationConfiguration]
    #
    # @!attribute [rw] processing_configuration
    #   The data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] s3_backup_mode
    #   The Amazon S3 backup mode. After you create a Firehose stream, you
    #   can update it to enable Amazon S3 backup if it is disabled. If
    #   backup is enabled, you can't update the Firehose stream to disable
    #   it.
    #   @return [String]
    #
    # @!attribute [rw] s3_backup_configuration
    #   The configuration for backup in Amazon S3.
    #   @return [Types::S3DestinationConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The CloudWatch logging options for your Firehose stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] secrets_manager_configuration
    #   The configuration that defines how you access secrets for Amazon
    #   Redshift.
    #   @return [Types::SecretsManagerConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/RedshiftDestinationConfiguration AWS API Documentation
    #
    class RedshiftDestinationConfiguration < Struct.new(
      :role_arn,
      :cluster_jdbc_url,
      :copy_command,
      :username,
      :password,
      :retry_options,
      :s3_configuration,
      :processing_configuration,
      :s3_backup_mode,
      :s3_backup_configuration,
      :cloud_watch_logging_options,
      :secrets_manager_configuration)
      SENSITIVE = [:username, :password]
      include Aws::Structure
    end

    # Describes a destination in Amazon Redshift.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services
    #   credentials. For more information, see [Amazon Resource Names (ARNs)
    #   and Amazon Web Services Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] cluster_jdbc_url
    #   The database connection string.
    #   @return [String]
    #
    # @!attribute [rw] copy_command
    #   The `COPY` command.
    #   @return [Types::CopyCommand]
    #
    # @!attribute [rw] username
    #   The name of the user.
    #   @return [String]
    #
    # @!attribute [rw] retry_options
    #   The retry behavior in case Firehose is unable to deliver documents
    #   to Amazon Redshift. Default value is 3600 (60 minutes).
    #   @return [Types::RedshiftRetryOptions]
    #
    # @!attribute [rw] s3_destination_description
    #   The Amazon S3 destination.
    #   @return [Types::S3DestinationDescription]
    #
    # @!attribute [rw] processing_configuration
    #   The data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] s3_backup_mode
    #   The Amazon S3 backup mode.
    #   @return [String]
    #
    # @!attribute [rw] s3_backup_description
    #   The configuration for backup in Amazon S3.
    #   @return [Types::S3DestinationDescription]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The Amazon CloudWatch logging options for your Firehose stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] secrets_manager_configuration
    #   The configuration that defines how you access secrets for Amazon
    #   Redshift.
    #   @return [Types::SecretsManagerConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/RedshiftDestinationDescription AWS API Documentation
    #
    class RedshiftDestinationDescription < Struct.new(
      :role_arn,
      :cluster_jdbc_url,
      :copy_command,
      :username,
      :retry_options,
      :s3_destination_description,
      :processing_configuration,
      :s3_backup_mode,
      :s3_backup_description,
      :cloud_watch_logging_options,
      :secrets_manager_configuration)
      SENSITIVE = [:username]
      include Aws::Structure
    end

    # Describes an update for a destination in Amazon Redshift.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services
    #   credentials. For more information, see [Amazon Resource Names (ARNs)
    #   and Amazon Web Services Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] cluster_jdbc_url
    #   The database connection string.
    #   @return [String]
    #
    # @!attribute [rw] copy_command
    #   The `COPY` command.
    #   @return [Types::CopyCommand]
    #
    # @!attribute [rw] username
    #   The name of the user.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The user password.
    #   @return [String]
    #
    # @!attribute [rw] retry_options
    #   The retry behavior in case Firehose is unable to deliver documents
    #   to Amazon Redshift. Default value is 3600 (60 minutes).
    #   @return [Types::RedshiftRetryOptions]
    #
    # @!attribute [rw] s3_update
    #   The Amazon S3 destination.
    #
    #   The compression formats `SNAPPY` or `ZIP` cannot be specified in
    #   `RedshiftDestinationUpdate.S3Update` because the Amazon Redshift
    #   `COPY` operation that reads from the S3 bucket doesn't support
    #   these compression formats.
    #   @return [Types::S3DestinationUpdate]
    #
    # @!attribute [rw] processing_configuration
    #   The data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] s3_backup_mode
    #   You can update a Firehose stream to enable Amazon S3 backup if it is
    #   disabled. If backup is enabled, you can't update the Firehose
    #   stream to disable it.
    #   @return [String]
    #
    # @!attribute [rw] s3_backup_update
    #   The Amazon S3 destination for backup.
    #   @return [Types::S3DestinationUpdate]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The Amazon CloudWatch logging options for your Firehose stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] secrets_manager_configuration
    #   The configuration that defines how you access secrets for Amazon
    #   Redshift.
    #   @return [Types::SecretsManagerConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/RedshiftDestinationUpdate AWS API Documentation
    #
    class RedshiftDestinationUpdate < Struct.new(
      :role_arn,
      :cluster_jdbc_url,
      :copy_command,
      :username,
      :password,
      :retry_options,
      :s3_update,
      :processing_configuration,
      :s3_backup_mode,
      :s3_backup_update,
      :cloud_watch_logging_options,
      :secrets_manager_configuration)
      SENSITIVE = [:username, :password]
      include Aws::Structure
    end

    # Configures retry behavior in case Firehose is unable to deliver
    # documents to Amazon Redshift.
    #
    # @!attribute [rw] duration_in_seconds
    #   The length of time during which Firehose retries delivery after a
    #   failure, starting from the initial request and including the first
    #   attempt. The default value is 3600 seconds (60 minutes). Firehose
    #   does not retry if the value of `DurationInSeconds` is 0 (zero) or if
    #   the first delivery attempt takes longer than the current value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/RedshiftRetryOptions AWS API Documentation
    #
    class RedshiftRetryOptions < Struct.new(
      :duration_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource is already in use and not available for this operation.
    #
    # @!attribute [rw] message
    #   A message that provides information about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource could not be found.
    #
    # @!attribute [rw] message
    #   A message that provides information about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The retry behavior in case Firehose is unable to deliver data to a
    # destination.
    #
    # @!attribute [rw] duration_in_seconds
    #   The period of time during which Firehose retries to deliver data to
    #   the specified destination.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/RetryOptions AWS API Documentation
    #
    class RetryOptions < Struct.new(
      :duration_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of a destination in Amazon S3.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services
    #   credentials. For more information, see [Amazon Resource Names (ARNs)
    #   and Amazon Web Services Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] bucket_arn
    #   The ARN of the S3 bucket. For more information, see [Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The "YYYY/MM/DD/HH" time format prefix is automatically used for
    #   delivered Amazon S3 files. You can also specify a custom prefix, as
    #   described in [Custom Prefixes for Amazon S3 Objects][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html
    #   @return [String]
    #
    # @!attribute [rw] error_output_prefix
    #   A prefix that Firehose evaluates and adds to failed records before
    #   writing them to S3. This prefix appears immediately following the
    #   bucket name. For information about how to specify this prefix, see
    #   [Custom Prefixes for Amazon S3 Objects][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering option. If no value is specified, `BufferingHints`
    #   object default values are used.
    #   @return [Types::BufferingHints]
    #
    # @!attribute [rw] compression_format
    #   The compression format. If no value is specified, the default is
    #   `UNCOMPRESSED`.
    #
    #   The compression formats `SNAPPY` or `ZIP` cannot be specified for
    #   Amazon Redshift destinations because they are not supported by the
    #   Amazon Redshift `COPY` operation that reads from the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration. If no value is specified, the default
    #   is no encryption.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The CloudWatch logging options for your Firehose stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/S3DestinationConfiguration AWS API Documentation
    #
    class S3DestinationConfiguration < Struct.new(
      :role_arn,
      :bucket_arn,
      :prefix,
      :error_output_prefix,
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a destination in Amazon S3.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services
    #   credentials. For more information, see [Amazon Resource Names (ARNs)
    #   and Amazon Web Services Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] bucket_arn
    #   The ARN of the S3 bucket. For more information, see [Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The "YYYY/MM/DD/HH" time format prefix is automatically used for
    #   delivered Amazon S3 files. You can also specify a custom prefix, as
    #   described in [Custom Prefixes for Amazon S3 Objects][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html
    #   @return [String]
    #
    # @!attribute [rw] error_output_prefix
    #   A prefix that Firehose evaluates and adds to failed records before
    #   writing them to S3. This prefix appears immediately following the
    #   bucket name. For information about how to specify this prefix, see
    #   [Custom Prefixes for Amazon S3 Objects][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering option. If no value is specified, `BufferingHints`
    #   object default values are used.
    #   @return [Types::BufferingHints]
    #
    # @!attribute [rw] compression_format
    #   The compression format. If no value is specified, the default is
    #   `UNCOMPRESSED`.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration. If no value is specified, the default
    #   is no encryption.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The Amazon CloudWatch logging options for your Firehose stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/S3DestinationDescription AWS API Documentation
    #
    class S3DestinationDescription < Struct.new(
      :role_arn,
      :bucket_arn,
      :prefix,
      :error_output_prefix,
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an update for a destination in Amazon S3.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services
    #   credentials. For more information, see [Amazon Resource Names (ARNs)
    #   and Amazon Web Services Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] bucket_arn
    #   The ARN of the S3 bucket. For more information, see [Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The "YYYY/MM/DD/HH" time format prefix is automatically used for
    #   delivered Amazon S3 files. You can also specify a custom prefix, as
    #   described in [Custom Prefixes for Amazon S3 Objects][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html
    #   @return [String]
    #
    # @!attribute [rw] error_output_prefix
    #   A prefix that Firehose evaluates and adds to failed records before
    #   writing them to S3. This prefix appears immediately following the
    #   bucket name. For information about how to specify this prefix, see
    #   [Custom Prefixes for Amazon S3 Objects][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering option. If no value is specified, `BufferingHints`
    #   object default values are used.
    #   @return [Types::BufferingHints]
    #
    # @!attribute [rw] compression_format
    #   The compression format. If no value is specified, the default is
    #   `UNCOMPRESSED`.
    #
    #   The compression formats `SNAPPY` or `ZIP` cannot be specified for
    #   Amazon Redshift destinations because they are not supported by the
    #   Amazon Redshift `COPY` operation that reads from the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration. If no value is specified, the default
    #   is no encryption.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The CloudWatch logging options for your Firehose stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/S3DestinationUpdate AWS API Documentation
    #
    class S3DestinationUpdate < Struct.new(
      :role_arn,
      :bucket_arn,
      :prefix,
      :error_output_prefix,
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the schema to which you want Firehose to configure your data
    # before it writes it to Amazon S3. This parameter is required if
    # `Enabled` is set to true.
    #
    # @!attribute [rw] role_arn
    #   The role that Firehose can use to access Amazon Web Services Glue.
    #   This role must be in the same account you use for Firehose.
    #   Cross-account roles aren't allowed.
    #
    #   If the `SchemaConfiguration` request parameter is used as part of
    #   invoking the `CreateDeliveryStream` API, then the `RoleARN` property
    #   is required and its value must be specified.
    #   @return [String]
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Amazon Web Services Glue Data Catalog. If you don't
    #   supply this, the Amazon Web Services account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   Specifies the name of the Amazon Web Services Glue database that
    #   contains the schema for the output data.
    #
    #   If the `SchemaConfiguration` request parameter is used as part of
    #   invoking the `CreateDeliveryStream` API, then the `DatabaseName`
    #   property is required and its value must be specified.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   Specifies the Amazon Web Services Glue table that contains the
    #   column information that constitutes your data schema.
    #
    #   If the `SchemaConfiguration` request parameter is used as part of
    #   invoking the `CreateDeliveryStream` API, then the `TableName`
    #   property is required and its value must be specified.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   If you don't specify an Amazon Web Services Region, the default is
    #   the current Region.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   Specifies the table version for the output data schema. If you
    #   don't specify this version ID, or if you set it to `LATEST`,
    #   Firehose uses the most recent version. This means that any updates
    #   to the table are automatically picked up.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/SchemaConfiguration AWS API Documentation
    #
    class SchemaConfiguration < Struct.new(
      :role_arn,
      :catalog_id,
      :database_name,
      :table_name,
      :region,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration to enable schema evolution.
    #
    # Amazon Data Firehose is in preview release and is subject to change.
    #
    # @!attribute [rw] enabled
    #   Specify whether you want to enable schema evolution.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/SchemaEvolutionConfiguration AWS API Documentation
    #
    class SchemaEvolutionConfiguration < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure that defines how Firehose accesses the secret.
    #
    # @!attribute [rw] secret_arn
    #   The ARN of the secret that stores your credentials. It must be in
    #   the same region as the Firehose stream and the role. The secret ARN
    #   can reside in a different account than the Firehose stream and role
    #   as Firehose supports cross-account secret access. This parameter is
    #   required when **Enabled** is set to `True`.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   Specifies the role that Firehose assumes when calling the Secrets
    #   Manager API operation. When you provide the role, it overrides any
    #   destination specific role defined in the destination configuration.
    #   If you do not provide the then we use the destination specific role.
    #   This parameter is required for Splunk.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether you want to use the secrets manager feature. When
    #   set as `True` the secrets manager configuration overwrites the
    #   existing secrets in the destination configuration. When it's set to
    #   `False` Firehose falls back to the credentials in the destination
    #   configuration.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/SecretsManagerConfiguration AWS API Documentation
    #
    class SecretsManagerConfiguration < Struct.new(
      :secret_arn,
      :role_arn,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The serializer that you want Firehose to use to convert data to the
    # target format before writing it to Amazon S3. Firehose supports two
    # types of serializers: the ORC SerDe and the Parquet SerDe.
    #
    # @!attribute [rw] parquet_ser_de
    #   A serializer to use for converting data to the Parquet format before
    #   storing it in Amazon S3. For more information, see [Apache
    #   Parquet][1].
    #
    #
    #
    #   [1]: https://parquet.apache.org/docs/contribution-guidelines/
    #   @return [Types::ParquetSerDe]
    #
    # @!attribute [rw] orc_ser_de
    #   A serializer to use for converting data to the ORC format before
    #   storing it in Amazon S3. For more information, see [Apache ORC][1].
    #
    #
    #
    #   [1]: https://orc.apache.org/docs/
    #   @return [Types::OrcSerDe]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/Serializer AWS API Documentation
    #
    class Serializer < Struct.new(
      :parquet_ser_de,
      :orc_ser_de)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is unavailable. Back off and retry the operation. If you
    # continue to see the exception, throughput limits for the Firehose
    # stream may have been exceeded. For more information about limits and
    # how to request an increase, see [Amazon Firehose Limits][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/firehose/latest/dev/limits.html
    #
    # @!attribute [rw] message
    #   A message that provides information about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the buffering to perform before delivering data to the
    # Snowflake destination. If you do not specify any value, Firehose uses
    # the default values.
    #
    # @!attribute [rw] size_in_m_bs
    #   Buffer incoming data to the specified size, in MBs, before
    #   delivering it to the destination. The default value is 128.
    #   @return [Integer]
    #
    # @!attribute [rw] interval_in_seconds
    #   Buffer incoming data for the specified period of time, in seconds,
    #   before delivering it to the destination. The default value is 0.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/SnowflakeBufferingHints AWS API Documentation
    #
    class SnowflakeBufferingHints < Struct.new(
      :size_in_m_bs,
      :interval_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configure Snowflake destination
    #
    # @!attribute [rw] account_url
    #   URL for accessing your Snowflake account. This URL must include your
    #   [account identifier][1]. Note that the protocol (https://) and port
    #   number are optional.
    #
    #
    #
    #   [1]: https://docs.snowflake.com/en/user-guide/admin-account-identifier
    #   @return [String]
    #
    # @!attribute [rw] private_key
    #   The private key used to encrypt your Snowflake client. For
    #   information, see [Using Key Pair Authentication &amp; Key
    #   Rotation][1].
    #
    #
    #
    #   [1]: https://docs.snowflake.com/en/user-guide/data-load-snowpipe-streaming-configuration#using-key-pair-authentication-key-rotation
    #   @return [String]
    #
    # @!attribute [rw] key_passphrase
    #   Passphrase to decrypt the private key when the key is encrypted. For
    #   information, see [Using Key Pair Authentication &amp; Key
    #   Rotation][1].
    #
    #
    #
    #   [1]: https://docs.snowflake.com/en/user-guide/data-load-snowpipe-streaming-configuration#using-key-pair-authentication-key-rotation
    #   @return [String]
    #
    # @!attribute [rw] user
    #   User login name for the Snowflake account.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   All data in Snowflake is maintained in databases.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   Each database consists of one or more schemas, which are logical
    #   groupings of database objects, such as tables and views
    #   @return [String]
    #
    # @!attribute [rw] table
    #   All data in Snowflake is stored in database tables, logically
    #   structured as collections of columns and rows.
    #   @return [String]
    #
    # @!attribute [rw] snowflake_role_configuration
    #   Optionally configure a Snowflake role. Otherwise the default user
    #   role will be used.
    #   @return [Types::SnowflakeRoleConfiguration]
    #
    # @!attribute [rw] data_loading_option
    #   Choose to load JSON keys mapped to table column names or choose to
    #   split the JSON payload where content is mapped to a record content
    #   column and source metadata is mapped to a record metadata column.
    #   @return [String]
    #
    # @!attribute [rw] meta_data_column_name
    #   Specify a column name in the table, where the metadata information
    #   has to be loaded. When you enable this field, you will see the
    #   following column in the snowflake table, which differs based on the
    #   source type.
    #
    #   For Direct PUT as source
    #
    #   `{ "firehoseDeliveryStreamName" : "streamname", "IngestionTime" :
    #   "timestamp" }`
    #
    #   For Kinesis Data Stream as source
    #
    #   ` "kinesisStreamName" : "streamname", "kinesisShardId" : "Id",
    #   "kinesisPartitionKey" : "key", "kinesisSequenceNumber" : "1234",
    #   "subsequenceNumber" : "2334", "IngestionTime" : "timestamp" }`
    #   @return [String]
    #
    # @!attribute [rw] content_column_name
    #   The name of the record content column.
    #   @return [String]
    #
    # @!attribute [rw] snowflake_vpc_configuration
    #   The VPCE ID for Firehose to privately connect with Snowflake. The ID
    #   format is com.amazonaws.vpce.\[region\].vpce-svc-&lt;\[id\]&gt;. For
    #   more information, see [Amazon PrivateLink &amp; Snowflake][1]
    #
    #
    #
    #   [1]: https://docs.snowflake.com/en/user-guide/admin-security-privatelink
    #   @return [Types::SnowflakeVpcConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   Describes the Amazon CloudWatch logging options for your Firehose
    #   stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] processing_configuration
    #   Describes a data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the Snowflake role
    #   @return [String]
    #
    # @!attribute [rw] retry_options
    #   The time period where Firehose will retry sending data to the chosen
    #   HTTP endpoint.
    #   @return [Types::SnowflakeRetryOptions]
    #
    # @!attribute [rw] s3_backup_mode
    #   Choose an S3 backup mode
    #   @return [String]
    #
    # @!attribute [rw] s3_configuration
    #   Describes the configuration of a destination in Amazon S3.
    #   @return [Types::S3DestinationConfiguration]
    #
    # @!attribute [rw] secrets_manager_configuration
    #   The configuration that defines how you access secrets for Snowflake.
    #   @return [Types::SecretsManagerConfiguration]
    #
    # @!attribute [rw] buffering_hints
    #   Describes the buffering to perform before delivering data to the
    #   Snowflake destination. If you do not specify any value, Firehose
    #   uses the default values.
    #   @return [Types::SnowflakeBufferingHints]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/SnowflakeDestinationConfiguration AWS API Documentation
    #
    class SnowflakeDestinationConfiguration < Struct.new(
      :account_url,
      :private_key,
      :key_passphrase,
      :user,
      :database,
      :schema,
      :table,
      :snowflake_role_configuration,
      :data_loading_option,
      :meta_data_column_name,
      :content_column_name,
      :snowflake_vpc_configuration,
      :cloud_watch_logging_options,
      :processing_configuration,
      :role_arn,
      :retry_options,
      :s3_backup_mode,
      :s3_configuration,
      :secrets_manager_configuration,
      :buffering_hints)
      SENSITIVE = [:account_url, :private_key, :key_passphrase, :user, :database, :schema, :table, :meta_data_column_name, :content_column_name]
      include Aws::Structure
    end

    # Optional Snowflake destination description
    #
    # @!attribute [rw] account_url
    #   URL for accessing your Snowflake account. This URL must include your
    #   [account identifier][1]. Note that the protocol (https://) and port
    #   number are optional.
    #
    #
    #
    #   [1]: https://docs.snowflake.com/en/user-guide/admin-account-identifier
    #   @return [String]
    #
    # @!attribute [rw] user
    #   User login name for the Snowflake account.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   All data in Snowflake is maintained in databases.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   Each database consists of one or more schemas, which are logical
    #   groupings of database objects, such as tables and views
    #   @return [String]
    #
    # @!attribute [rw] table
    #   All data in Snowflake is stored in database tables, logically
    #   structured as collections of columns and rows.
    #   @return [String]
    #
    # @!attribute [rw] snowflake_role_configuration
    #   Optionally configure a Snowflake role. Otherwise the default user
    #   role will be used.
    #   @return [Types::SnowflakeRoleConfiguration]
    #
    # @!attribute [rw] data_loading_option
    #   Choose to load JSON keys mapped to table column names or choose to
    #   split the JSON payload where content is mapped to a record content
    #   column and source metadata is mapped to a record metadata column.
    #   @return [String]
    #
    # @!attribute [rw] meta_data_column_name
    #   The name of the record metadata column
    #   @return [String]
    #
    # @!attribute [rw] content_column_name
    #   The name of the record content column
    #   @return [String]
    #
    # @!attribute [rw] snowflake_vpc_configuration
    #   The VPCE ID for Firehose to privately connect with Snowflake. The ID
    #   format is com.amazonaws.vpce.\[region\].vpce-svc-&lt;\[id\]&gt;. For
    #   more information, see [Amazon PrivateLink &amp; Snowflake][1]
    #
    #
    #
    #   [1]: https://docs.snowflake.com/en/user-guide/admin-security-privatelink
    #   @return [Types::SnowflakeVpcConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   Describes the Amazon CloudWatch logging options for your Firehose
    #   stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] processing_configuration
    #   Describes a data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the Snowflake role
    #   @return [String]
    #
    # @!attribute [rw] retry_options
    #   The time period where Firehose will retry sending data to the chosen
    #   HTTP endpoint.
    #   @return [Types::SnowflakeRetryOptions]
    #
    # @!attribute [rw] s3_backup_mode
    #   Choose an S3 backup mode
    #   @return [String]
    #
    # @!attribute [rw] s3_destination_description
    #   Describes a destination in Amazon S3.
    #   @return [Types::S3DestinationDescription]
    #
    # @!attribute [rw] secrets_manager_configuration
    #   The configuration that defines how you access secrets for Snowflake.
    #   @return [Types::SecretsManagerConfiguration]
    #
    # @!attribute [rw] buffering_hints
    #   Describes the buffering to perform before delivering data to the
    #   Snowflake destination. If you do not specify any value, Firehose
    #   uses the default values.
    #   @return [Types::SnowflakeBufferingHints]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/SnowflakeDestinationDescription AWS API Documentation
    #
    class SnowflakeDestinationDescription < Struct.new(
      :account_url,
      :user,
      :database,
      :schema,
      :table,
      :snowflake_role_configuration,
      :data_loading_option,
      :meta_data_column_name,
      :content_column_name,
      :snowflake_vpc_configuration,
      :cloud_watch_logging_options,
      :processing_configuration,
      :role_arn,
      :retry_options,
      :s3_backup_mode,
      :s3_destination_description,
      :secrets_manager_configuration,
      :buffering_hints)
      SENSITIVE = [:account_url, :user, :database, :schema, :table, :meta_data_column_name, :content_column_name]
      include Aws::Structure
    end

    # Update to configuration settings
    #
    # @!attribute [rw] account_url
    #   URL for accessing your Snowflake account. This URL must include your
    #   [account identifier][1]. Note that the protocol (https://) and port
    #   number are optional.
    #
    #
    #
    #   [1]: https://docs.snowflake.com/en/user-guide/admin-account-identifier
    #   @return [String]
    #
    # @!attribute [rw] private_key
    #   The private key used to encrypt your Snowflake client. For
    #   information, see [Using Key Pair Authentication &amp; Key
    #   Rotation][1].
    #
    #
    #
    #   [1]: https://docs.snowflake.com/en/user-guide/data-load-snowpipe-streaming-configuration#using-key-pair-authentication-key-rotation
    #   @return [String]
    #
    # @!attribute [rw] key_passphrase
    #   Passphrase to decrypt the private key when the key is encrypted. For
    #   information, see [Using Key Pair Authentication &amp; Key
    #   Rotation][1].
    #
    #
    #
    #   [1]: https://docs.snowflake.com/en/user-guide/data-load-snowpipe-streaming-configuration#using-key-pair-authentication-key-rotation
    #   @return [String]
    #
    # @!attribute [rw] user
    #   User login name for the Snowflake account.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   All data in Snowflake is maintained in databases.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   Each database consists of one or more schemas, which are logical
    #   groupings of database objects, such as tables and views
    #   @return [String]
    #
    # @!attribute [rw] table
    #   All data in Snowflake is stored in database tables, logically
    #   structured as collections of columns and rows.
    #   @return [String]
    #
    # @!attribute [rw] snowflake_role_configuration
    #   Optionally configure a Snowflake role. Otherwise the default user
    #   role will be used.
    #   @return [Types::SnowflakeRoleConfiguration]
    #
    # @!attribute [rw] data_loading_option
    #   JSON keys mapped to table column names or choose to split the JSON
    #   payload where content is mapped to a record content column and
    #   source metadata is mapped to a record metadata column.
    #   @return [String]
    #
    # @!attribute [rw] meta_data_column_name
    #   The name of the record metadata column
    #   @return [String]
    #
    # @!attribute [rw] content_column_name
    #   The name of the content metadata column
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   Describes the Amazon CloudWatch logging options for your Firehose
    #   stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] processing_configuration
    #   Describes a data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the Snowflake role
    #   @return [String]
    #
    # @!attribute [rw] retry_options
    #   Specify how long Firehose retries sending data to the New Relic HTTP
    #   endpoint. After sending data, Firehose first waits for an
    #   acknowledgment from the HTTP endpoint. If an error occurs or the
    #   acknowledgment doesn’t arrive within the acknowledgment timeout
    #   period, Firehose starts the retry duration counter. It keeps
    #   retrying until the retry duration expires. After that, Firehose
    #   considers it a data delivery failure and backs up the data to your
    #   Amazon S3 bucket. Every time that Firehose sends data to the HTTP
    #   endpoint (either the initial attempt or a retry), it restarts the
    #   acknowledgement timeout counter and waits for an acknowledgement
    #   from the HTTP endpoint. Even if the retry duration expires, Firehose
    #   still waits for the acknowledgment until it receives it or the
    #   acknowledgement timeout period is reached. If the acknowledgment
    #   times out, Firehose determines whether there's time left in the
    #   retry counter. If there is time left, it retries again and repeats
    #   the logic until it receives an acknowledgment or determines that the
    #   retry time has expired. If you don't want Firehose to retry sending
    #   data, set this value to 0.
    #   @return [Types::SnowflakeRetryOptions]
    #
    # @!attribute [rw] s3_backup_mode
    #   Choose an S3 backup mode. Once you set the mode as `AllData`, you
    #   can not change it to `FailedDataOnly`.
    #   @return [String]
    #
    # @!attribute [rw] s3_update
    #   Describes an update for a destination in Amazon S3.
    #   @return [Types::S3DestinationUpdate]
    #
    # @!attribute [rw] secrets_manager_configuration
    #   Describes the Secrets Manager configuration in Snowflake.
    #   @return [Types::SecretsManagerConfiguration]
    #
    # @!attribute [rw] buffering_hints
    #   Describes the buffering to perform before delivering data to the
    #   Snowflake destination.
    #   @return [Types::SnowflakeBufferingHints]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/SnowflakeDestinationUpdate AWS API Documentation
    #
    class SnowflakeDestinationUpdate < Struct.new(
      :account_url,
      :private_key,
      :key_passphrase,
      :user,
      :database,
      :schema,
      :table,
      :snowflake_role_configuration,
      :data_loading_option,
      :meta_data_column_name,
      :content_column_name,
      :cloud_watch_logging_options,
      :processing_configuration,
      :role_arn,
      :retry_options,
      :s3_backup_mode,
      :s3_update,
      :secrets_manager_configuration,
      :buffering_hints)
      SENSITIVE = [:account_url, :private_key, :key_passphrase, :user, :database, :schema, :table, :meta_data_column_name, :content_column_name]
      include Aws::Structure
    end

    # Specify how long Firehose retries sending data to the New Relic HTTP
    # endpoint. After sending data, Firehose first waits for an
    # acknowledgment from the HTTP endpoint. If an error occurs or the
    # acknowledgment doesn’t arrive within the acknowledgment timeout
    # period, Firehose starts the retry duration counter. It keeps retrying
    # until the retry duration expires. After that, Firehose considers it a
    # data delivery failure and backs up the data to your Amazon S3 bucket.
    # Every time that Firehose sends data to the HTTP endpoint (either the
    # initial attempt or a retry), it restarts the acknowledgement timeout
    # counter and waits for an acknowledgement from the HTTP endpoint. Even
    # if the retry duration expires, Firehose still waits for the
    # acknowledgment until it receives it or the acknowledgement timeout
    # period is reached. If the acknowledgment times out, Firehose
    # determines whether there's time left in the retry counter. If there
    # is time left, it retries again and repeats the logic until it receives
    # an acknowledgment or determines that the retry time has expired. If
    # you don't want Firehose to retry sending data, set this value to 0.
    #
    # @!attribute [rw] duration_in_seconds
    #   the time period where Firehose will retry sending data to the chosen
    #   HTTP endpoint.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/SnowflakeRetryOptions AWS API Documentation
    #
    class SnowflakeRetryOptions < Struct.new(
      :duration_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Optionally configure a Snowflake role. Otherwise the default user role
    # will be used.
    #
    # @!attribute [rw] enabled
    #   Enable Snowflake role
    #   @return [Boolean]
    #
    # @!attribute [rw] snowflake_role
    #   The Snowflake role you wish to configure
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/SnowflakeRoleConfiguration AWS API Documentation
    #
    class SnowflakeRoleConfiguration < Struct.new(
      :enabled,
      :snowflake_role)
      SENSITIVE = [:snowflake_role]
      include Aws::Structure
    end

    # Configure a Snowflake VPC
    #
    # @!attribute [rw] private_link_vpce_id
    #   The VPCE ID for Firehose to privately connect with Snowflake. The ID
    #   format is com.amazonaws.vpce.\[region\].vpce-svc-&lt;\[id\]&gt;. For
    #   more information, see [Amazon PrivateLink &amp; Snowflake][1]
    #
    #
    #
    #   [1]: https://docs.snowflake.com/en/user-guide/admin-security-privatelink
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/SnowflakeVpcConfiguration AWS API Documentation
    #
    class SnowflakeVpcConfiguration < Struct.new(
      :private_link_vpce_id)
      SENSITIVE = [:private_link_vpce_id]
      include Aws::Structure
    end

    # Details about a Kinesis data stream used as the source for a Firehose
    # stream.
    #
    # @!attribute [rw] direct_put_source_description
    #   Details about Direct PUT used as the source for a Firehose stream.
    #   @return [Types::DirectPutSourceDescription]
    #
    # @!attribute [rw] kinesis_stream_source_description
    #   The KinesisStreamSourceDescription value for the source Kinesis data
    #   stream.
    #   @return [Types::KinesisStreamSourceDescription]
    #
    # @!attribute [rw] msk_source_description
    #   The configuration description for the Amazon MSK cluster to be used
    #   as the source for a delivery stream.
    #   @return [Types::MSKSourceDescription]
    #
    # @!attribute [rw] database_source_description
    #   Details about a database used as the source for a Firehose stream.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Types::DatabaseSourceDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/SourceDescription AWS API Documentation
    #
    class SourceDescription < Struct.new(
      :direct_put_source_description,
      :kinesis_stream_source_description,
      :msk_source_description,
      :database_source_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The buffering options. If no value is specified, the default values
    # for Splunk are used.
    #
    # @!attribute [rw] interval_in_seconds
    #   Buffer incoming data for the specified period of time, in seconds,
    #   before delivering it to the destination. The default value is 60 (1
    #   minute).
    #   @return [Integer]
    #
    # @!attribute [rw] size_in_m_bs
    #   Buffer incoming data to the specified size, in MBs, before
    #   delivering it to the destination. The default value is 5.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/SplunkBufferingHints AWS API Documentation
    #
    class SplunkBufferingHints < Struct.new(
      :interval_in_seconds,
      :size_in_m_bs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of a destination in Splunk.
    #
    # @!attribute [rw] hec_endpoint
    #   The HTTP Event Collector (HEC) endpoint to which Firehose sends your
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] hec_endpoint_type
    #   This type can be either "Raw" or "Event."
    #   @return [String]
    #
    # @!attribute [rw] hec_token
    #   This is a GUID that you obtain from your Splunk cluster when you
    #   create a new HEC endpoint.
    #   @return [String]
    #
    # @!attribute [rw] hec_acknowledgment_timeout_in_seconds
    #   The amount of time that Firehose waits to receive an acknowledgment
    #   from Splunk after it sends it data. At the end of the timeout
    #   period, Firehose either tries to send the data again or considers it
    #   an error, based on your retry settings.
    #   @return [Integer]
    #
    # @!attribute [rw] retry_options
    #   The retry behavior in case Firehose is unable to deliver data to
    #   Splunk, or if it doesn't receive an acknowledgment of receipt from
    #   Splunk.
    #   @return [Types::SplunkRetryOptions]
    #
    # @!attribute [rw] s3_backup_mode
    #   Defines how documents should be delivered to Amazon S3. When set to
    #   `FailedEventsOnly`, Firehose writes any data that could not be
    #   indexed to the configured Amazon S3 destination. When set to
    #   `AllEvents`, Firehose delivers all incoming records to Amazon S3,
    #   and also writes failed documents to Amazon S3. The default value is
    #   `FailedEventsOnly`.
    #
    #   You can update this backup mode from `FailedEventsOnly` to
    #   `AllEvents`. You can't update it from `AllEvents` to
    #   `FailedEventsOnly`.
    #   @return [String]
    #
    # @!attribute [rw] s3_configuration
    #   The configuration for the backup Amazon S3 location.
    #   @return [Types::S3DestinationConfiguration]
    #
    # @!attribute [rw] processing_configuration
    #   The data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The Amazon CloudWatch logging options for your Firehose stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering options. If no value is specified, the default values
    #   for Splunk are used.
    #   @return [Types::SplunkBufferingHints]
    #
    # @!attribute [rw] secrets_manager_configuration
    #   The configuration that defines how you access secrets for Splunk.
    #   @return [Types::SecretsManagerConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/SplunkDestinationConfiguration AWS API Documentation
    #
    class SplunkDestinationConfiguration < Struct.new(
      :hec_endpoint,
      :hec_endpoint_type,
      :hec_token,
      :hec_acknowledgment_timeout_in_seconds,
      :retry_options,
      :s3_backup_mode,
      :s3_configuration,
      :processing_configuration,
      :cloud_watch_logging_options,
      :buffering_hints,
      :secrets_manager_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a destination in Splunk.
    #
    # @!attribute [rw] hec_endpoint
    #   The HTTP Event Collector (HEC) endpoint to which Firehose sends your
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] hec_endpoint_type
    #   This type can be either "Raw" or "Event."
    #   @return [String]
    #
    # @!attribute [rw] hec_token
    #   A GUID you obtain from your Splunk cluster when you create a new HEC
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] hec_acknowledgment_timeout_in_seconds
    #   The amount of time that Firehose waits to receive an acknowledgment
    #   from Splunk after it sends it data. At the end of the timeout
    #   period, Firehose either tries to send the data again or considers it
    #   an error, based on your retry settings.
    #   @return [Integer]
    #
    # @!attribute [rw] retry_options
    #   The retry behavior in case Firehose is unable to deliver data to
    #   Splunk or if it doesn't receive an acknowledgment of receipt from
    #   Splunk.
    #   @return [Types::SplunkRetryOptions]
    #
    # @!attribute [rw] s3_backup_mode
    #   Defines how documents should be delivered to Amazon S3. When set to
    #   `FailedDocumentsOnly`, Firehose writes any data that could not be
    #   indexed to the configured Amazon S3 destination. When set to
    #   `AllDocuments`, Firehose delivers all incoming records to Amazon S3,
    #   and also writes failed documents to Amazon S3. Default value is
    #   `FailedDocumentsOnly`.
    #   @return [String]
    #
    # @!attribute [rw] s3_destination_description
    #   The Amazon S3 destination.&gt;
    #   @return [Types::S3DestinationDescription]
    #
    # @!attribute [rw] processing_configuration
    #   The data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The Amazon CloudWatch logging options for your Firehose stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering options. If no value is specified, the default values
    #   for Splunk are used.
    #   @return [Types::SplunkBufferingHints]
    #
    # @!attribute [rw] secrets_manager_configuration
    #   The configuration that defines how you access secrets for Splunk.
    #   @return [Types::SecretsManagerConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/SplunkDestinationDescription AWS API Documentation
    #
    class SplunkDestinationDescription < Struct.new(
      :hec_endpoint,
      :hec_endpoint_type,
      :hec_token,
      :hec_acknowledgment_timeout_in_seconds,
      :retry_options,
      :s3_backup_mode,
      :s3_destination_description,
      :processing_configuration,
      :cloud_watch_logging_options,
      :buffering_hints,
      :secrets_manager_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an update for a destination in Splunk.
    #
    # @!attribute [rw] hec_endpoint
    #   The HTTP Event Collector (HEC) endpoint to which Firehose sends your
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] hec_endpoint_type
    #   This type can be either "Raw" or "Event."
    #   @return [String]
    #
    # @!attribute [rw] hec_token
    #   A GUID that you obtain from your Splunk cluster when you create a
    #   new HEC endpoint.
    #   @return [String]
    #
    # @!attribute [rw] hec_acknowledgment_timeout_in_seconds
    #   The amount of time that Firehose waits to receive an acknowledgment
    #   from Splunk after it sends data. At the end of the timeout period,
    #   Firehose either tries to send the data again or considers it an
    #   error, based on your retry settings.
    #   @return [Integer]
    #
    # @!attribute [rw] retry_options
    #   The retry behavior in case Firehose is unable to deliver data to
    #   Splunk or if it doesn't receive an acknowledgment of receipt from
    #   Splunk.
    #   @return [Types::SplunkRetryOptions]
    #
    # @!attribute [rw] s3_backup_mode
    #   Specifies how you want Firehose to back up documents to Amazon S3.
    #   When set to `FailedDocumentsOnly`, Firehose writes any data that
    #   could not be indexed to the configured Amazon S3 destination. When
    #   set to `AllEvents`, Firehose delivers all incoming records to Amazon
    #   S3, and also writes failed documents to Amazon S3. The default value
    #   is `FailedEventsOnly`.
    #
    #   You can update this backup mode from `FailedEventsOnly` to
    #   `AllEvents`. You can't update it from `AllEvents` to
    #   `FailedEventsOnly`.
    #   @return [String]
    #
    # @!attribute [rw] s3_update
    #   Your update to the configuration of the backup Amazon S3 location.
    #   @return [Types::S3DestinationUpdate]
    #
    # @!attribute [rw] processing_configuration
    #   The data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The Amazon CloudWatch logging options for your Firehose stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering options. If no value is specified, the default values
    #   for Splunk are used.
    #   @return [Types::SplunkBufferingHints]
    #
    # @!attribute [rw] secrets_manager_configuration
    #   The configuration that defines how you access secrets for Splunk.
    #   @return [Types::SecretsManagerConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/SplunkDestinationUpdate AWS API Documentation
    #
    class SplunkDestinationUpdate < Struct.new(
      :hec_endpoint,
      :hec_endpoint_type,
      :hec_token,
      :hec_acknowledgment_timeout_in_seconds,
      :retry_options,
      :s3_backup_mode,
      :s3_update,
      :processing_configuration,
      :cloud_watch_logging_options,
      :buffering_hints,
      :secrets_manager_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures retry behavior in case Firehose is unable to deliver
    # documents to Splunk, or if it doesn't receive an acknowledgment from
    # Splunk.
    #
    # @!attribute [rw] duration_in_seconds
    #   The total amount of time that Firehose spends on retries. This
    #   duration starts after the initial attempt to send data to Splunk
    #   fails. It doesn't include the periods during which Firehose waits
    #   for acknowledgment from Splunk after each attempt.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/SplunkRetryOptions AWS API Documentation
    #
    class SplunkRetryOptions < Struct.new(
      :duration_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delivery_stream_name
    #   The name of the Firehose stream for which you want to enable
    #   server-side encryption (SSE).
    #   @return [String]
    #
    # @!attribute [rw] delivery_stream_encryption_configuration_input
    #   Used to specify the type and Amazon Resource Name (ARN) of the KMS
    #   key needed for Server-Side Encryption (SSE).
    #   @return [Types::DeliveryStreamEncryptionConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/StartDeliveryStreamEncryptionInput AWS API Documentation
    #
    class StartDeliveryStreamEncryptionInput < Struct.new(
      :delivery_stream_name,
      :delivery_stream_encryption_configuration_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/StartDeliveryStreamEncryptionOutput AWS API Documentation
    #
    class StartDeliveryStreamEncryptionOutput < Aws::EmptyStructure; end

    # @!attribute [rw] delivery_stream_name
    #   The name of the Firehose stream for which you want to disable
    #   server-side encryption (SSE).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/StopDeliveryStreamEncryptionInput AWS API Documentation
    #
    class StopDeliveryStreamEncryptionInput < Struct.new(
      :delivery_stream_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/StopDeliveryStreamEncryptionOutput AWS API Documentation
    #
    class StopDeliveryStreamEncryptionOutput < Aws::EmptyStructure; end

    # The configuration to enable automatic table creation.
    #
    # Amazon Data Firehose is in preview release and is subject to change.
    #
    # @!attribute [rw] enabled
    #   Specify whether you want to enable automatic table creation.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/TableCreationConfiguration AWS API Documentation
    #
    class TableCreationConfiguration < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata that you can assign to a Firehose stream, consisting of a
    # key-value pair.
    #
    # @!attribute [rw] key
    #   A unique identifier for the tag. Maximum length: 128 characters.
    #   Valid characters: Unicode letters, digits, white space, \_ . / = + -
    #   % @
    #   @return [String]
    #
    # @!attribute [rw] value
    #   An optional string, which you can use to describe or define the tag.
    #   Maximum length: 256 characters. Valid characters: Unicode letters,
    #   digits, white space, \_ . / = + - % @
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delivery_stream_name
    #   The name of the Firehose stream to which you want to add the tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of key-value pairs to use to create the tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/TagDeliveryStreamInput AWS API Documentation
    #
    class TagDeliveryStreamInput < Struct.new(
      :delivery_stream_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/TagDeliveryStreamOutput AWS API Documentation
    #
    class TagDeliveryStreamOutput < Aws::EmptyStructure; end

    # @!attribute [rw] delivery_stream_name
    #   The name of the Firehose stream.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys. Each corresponding tag is removed from the
    #   delivery stream.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/UntagDeliveryStreamInput AWS API Documentation
    #
    class UntagDeliveryStreamInput < Struct.new(
      :delivery_stream_name,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/UntagDeliveryStreamOutput AWS API Documentation
    #
    class UntagDeliveryStreamOutput < Aws::EmptyStructure; end

    # @!attribute [rw] delivery_stream_name
    #   The name of the Firehose stream.
    #   @return [String]
    #
    # @!attribute [rw] current_delivery_stream_version_id
    #   Obtain this value from the `VersionId` result of
    #   DeliveryStreamDescription. This value is required, and helps the
    #   service perform conditional operations. For example, if there is an
    #   interleaving update and this value is null, then the update
    #   destination fails. After the update is successful, the `VersionId`
    #   value is updated. The service then performs a merge of the old
    #   configuration with the new configuration.
    #   @return [String]
    #
    # @!attribute [rw] destination_id
    #   The ID of the destination.
    #   @return [String]
    #
    # @!attribute [rw] s3_destination_update
    #   \[Deprecated\] Describes an update for a destination in Amazon S3.
    #   @return [Types::S3DestinationUpdate]
    #
    # @!attribute [rw] extended_s3_destination_update
    #   Describes an update for a destination in Amazon S3.
    #   @return [Types::ExtendedS3DestinationUpdate]
    #
    # @!attribute [rw] redshift_destination_update
    #   Describes an update for a destination in Amazon Redshift.
    #   @return [Types::RedshiftDestinationUpdate]
    #
    # @!attribute [rw] elasticsearch_destination_update
    #   Describes an update for a destination in Amazon OpenSearch Service.
    #   @return [Types::ElasticsearchDestinationUpdate]
    #
    # @!attribute [rw] amazonopensearchservice_destination_update
    #   Describes an update for a destination in Amazon OpenSearch Service.
    #   @return [Types::AmazonopensearchserviceDestinationUpdate]
    #
    # @!attribute [rw] splunk_destination_update
    #   Describes an update for a destination in Splunk.
    #   @return [Types::SplunkDestinationUpdate]
    #
    # @!attribute [rw] http_endpoint_destination_update
    #   Describes an update to the specified HTTP endpoint destination.
    #   @return [Types::HttpEndpointDestinationUpdate]
    #
    # @!attribute [rw] amazon_open_search_serverless_destination_update
    #   Describes an update for a destination in the Serverless offering for
    #   Amazon OpenSearch Service.
    #   @return [Types::AmazonOpenSearchServerlessDestinationUpdate]
    #
    # @!attribute [rw] snowflake_destination_update
    #   Update to the Snowflake destination configuration settings.
    #   @return [Types::SnowflakeDestinationUpdate]
    #
    # @!attribute [rw] iceberg_destination_update
    #   Describes an update for a destination in Apache Iceberg Tables.
    #   @return [Types::IcebergDestinationUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/UpdateDestinationInput AWS API Documentation
    #
    class UpdateDestinationInput < Struct.new(
      :delivery_stream_name,
      :current_delivery_stream_version_id,
      :destination_id,
      :s3_destination_update,
      :extended_s3_destination_update,
      :redshift_destination_update,
      :elasticsearch_destination_update,
      :amazonopensearchservice_destination_update,
      :splunk_destination_update,
      :http_endpoint_destination_update,
      :amazon_open_search_serverless_destination_update,
      :snowflake_destination_update,
      :iceberg_destination_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/UpdateDestinationOutput AWS API Documentation
    #
    class UpdateDestinationOutput < Aws::EmptyStructure; end

    # The details of the VPC of the Amazon OpenSearch or Amazon OpenSearch
    # Serverless destination.
    #
    # @!attribute [rw] subnet_ids
    #   The IDs of the subnets that you want Firehose to use to create ENIs
    #   in the VPC of the Amazon OpenSearch Service destination. Make sure
    #   that the routing tables and inbound and outbound rules allow traffic
    #   to flow from the subnets whose IDs are specified here to the subnets
    #   that have the destination Amazon OpenSearch Service endpoints.
    #   Firehose creates at least one ENI in each of the subnets that are
    #   specified here. Do not delete or modify these ENIs.
    #
    #   The number of ENIs that Firehose creates in the subnets specified
    #   here scales up and down automatically based on throughput. To enable
    #   Firehose to scale up the number of ENIs to match throughput, ensure
    #   that you have sufficient quota. To help you calculate the quota you
    #   need, assume that Firehose can create up to three ENIs for this
    #   Firehose stream for each of the subnets specified here. For more
    #   information about ENI quota, see [Network Interfaces ][1] in the
    #   Amazon VPC Quotas topic.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html#vpc-limits-enis
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that you want the Firehose stream to use to
    #   create endpoints in the destination VPC. You can use your existing
    #   Firehose delivery role or you can specify a new role. In either
    #   case, make sure that the role trusts the Firehose service principal
    #   and that it grants the following permissions:
    #
    #   * `ec2:DescribeVpcs`
    #
    #   * `ec2:DescribeVpcAttribute`
    #
    #   * `ec2:DescribeSubnets`
    #
    #   * `ec2:DescribeSecurityGroups`
    #
    #   * `ec2:DescribeNetworkInterfaces`
    #
    #   * `ec2:CreateNetworkInterface`
    #
    #   * `ec2:CreateNetworkInterfacePermission`
    #
    #   * `ec2:DeleteNetworkInterface`
    #
    #   When you specify subnets for delivering data to the destination in a
    #   private VPC, make sure you have enough number of free IP addresses
    #   in chosen subnets. If there is no available free IP address in a
    #   specified subnet, Firehose cannot create or add ENIs for the data
    #   delivery in the private VPC, and the delivery will be degraded or
    #   fail.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The IDs of the security groups that you want Firehose to use when it
    #   creates ENIs in the VPC of the Amazon OpenSearch Service
    #   destination. You can use the same security group that the Amazon
    #   OpenSearch Service domain uses or different ones. If you specify
    #   different security groups here, ensure that they allow outbound
    #   HTTPS traffic to the Amazon OpenSearch Service domain's security
    #   group. Also ensure that the Amazon OpenSearch Service domain's
    #   security group allows HTTPS traffic from the security groups
    #   specified here. If you use the same security group for both your
    #   delivery stream and the Amazon OpenSearch Service domain, make sure
    #   the security group inbound rule allows HTTPS traffic. For more
    #   information about security group rules, see [Security group
    #   rules][1] in the Amazon VPC documentation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html#SecurityGroupRules
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/VpcConfiguration AWS API Documentation
    #
    class VpcConfiguration < Struct.new(
      :subnet_ids,
      :role_arn,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the VPC of the Amazon OpenSearch Service destination.
    #
    # @!attribute [rw] subnet_ids
    #   The IDs of the subnets that Firehose uses to create ENIs in the VPC
    #   of the Amazon OpenSearch Service destination. Make sure that the
    #   routing tables and inbound and outbound rules allow traffic to flow
    #   from the subnets whose IDs are specified here to the subnets that
    #   have the destination Amazon OpenSearch Service endpoints. Firehose
    #   creates at least one ENI in each of the subnets that are specified
    #   here. Do not delete or modify these ENIs.
    #
    #   The number of ENIs that Firehose creates in the subnets specified
    #   here scales up and down automatically based on throughput. To enable
    #   Firehose to scale up the number of ENIs to match throughput, ensure
    #   that you have sufficient quota. To help you calculate the quota you
    #   need, assume that Firehose can create up to three ENIs for this
    #   Firehose stream for each of the subnets specified here. For more
    #   information about ENI quota, see [Network Interfaces ][1] in the
    #   Amazon VPC Quotas topic.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html#vpc-limits-enis
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that the Firehose stream uses to create
    #   endpoints in the destination VPC. You can use your existing Firehose
    #   delivery role or you can specify a new role. In either case, make
    #   sure that the role trusts the Firehose service principal and that it
    #   grants the following permissions:
    #
    #   * `ec2:DescribeVpcs`
    #
    #   * `ec2:DescribeVpcAttribute`
    #
    #   * `ec2:DescribeSubnets`
    #
    #   * `ec2:DescribeSecurityGroups`
    #
    #   * `ec2:DescribeNetworkInterfaces`
    #
    #   * `ec2:CreateNetworkInterface`
    #
    #   * `ec2:CreateNetworkInterfacePermission`
    #
    #   * `ec2:DeleteNetworkInterface`
    #
    #   If you revoke these permissions after you create the Firehose
    #   stream, Firehose can't scale out by creating more ENIs when
    #   necessary. You might therefore see a degradation in performance.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The IDs of the security groups that Firehose uses when it creates
    #   ENIs in the VPC of the Amazon OpenSearch Service destination. You
    #   can use the same security group that the Amazon ES domain uses or
    #   different ones. If you specify different security groups, ensure
    #   that they allow outbound HTTPS traffic to the Amazon OpenSearch
    #   Service domain's security group. Also ensure that the Amazon
    #   OpenSearch Service domain's security group allows HTTPS traffic
    #   from the security groups specified here. If you use the same
    #   security group for both your Firehose stream and the Amazon
    #   OpenSearch Service domain, make sure the security group inbound rule
    #   allows HTTPS traffic. For more information about security group
    #   rules, see [Security group rules][1] in the Amazon VPC
    #   documentation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html#SecurityGroupRules
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the Amazon OpenSearch Service destination's VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/VpcConfigurationDescription AWS API Documentation
    #
    class VpcConfigurationDescription < Struct.new(
      :subnet_ids,
      :role_arn,
      :security_group_ids,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

