# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Firehose
  # @api private
  module ClientApi

    include Seahorse::Model

    AWSKMSKeyARN = Shapes::StringShape.new(name: 'AWSKMSKeyARN')
    AmazonOpenSearchServerlessBufferingHints = Shapes::StructureShape.new(name: 'AmazonOpenSearchServerlessBufferingHints')
    AmazonOpenSearchServerlessBufferingIntervalInSeconds = Shapes::IntegerShape.new(name: 'AmazonOpenSearchServerlessBufferingIntervalInSeconds')
    AmazonOpenSearchServerlessBufferingSizeInMBs = Shapes::IntegerShape.new(name: 'AmazonOpenSearchServerlessBufferingSizeInMBs')
    AmazonOpenSearchServerlessCollectionEndpoint = Shapes::StringShape.new(name: 'AmazonOpenSearchServerlessCollectionEndpoint')
    AmazonOpenSearchServerlessDestinationConfiguration = Shapes::StructureShape.new(name: 'AmazonOpenSearchServerlessDestinationConfiguration')
    AmazonOpenSearchServerlessDestinationDescription = Shapes::StructureShape.new(name: 'AmazonOpenSearchServerlessDestinationDescription')
    AmazonOpenSearchServerlessDestinationUpdate = Shapes::StructureShape.new(name: 'AmazonOpenSearchServerlessDestinationUpdate')
    AmazonOpenSearchServerlessIndexName = Shapes::StringShape.new(name: 'AmazonOpenSearchServerlessIndexName')
    AmazonOpenSearchServerlessRetryDurationInSeconds = Shapes::IntegerShape.new(name: 'AmazonOpenSearchServerlessRetryDurationInSeconds')
    AmazonOpenSearchServerlessRetryOptions = Shapes::StructureShape.new(name: 'AmazonOpenSearchServerlessRetryOptions')
    AmazonOpenSearchServerlessS3BackupMode = Shapes::StringShape.new(name: 'AmazonOpenSearchServerlessS3BackupMode')
    AmazonopensearchserviceBufferingHints = Shapes::StructureShape.new(name: 'AmazonopensearchserviceBufferingHints')
    AmazonopensearchserviceBufferingIntervalInSeconds = Shapes::IntegerShape.new(name: 'AmazonopensearchserviceBufferingIntervalInSeconds')
    AmazonopensearchserviceBufferingSizeInMBs = Shapes::IntegerShape.new(name: 'AmazonopensearchserviceBufferingSizeInMBs')
    AmazonopensearchserviceClusterEndpoint = Shapes::StringShape.new(name: 'AmazonopensearchserviceClusterEndpoint')
    AmazonopensearchserviceDestinationConfiguration = Shapes::StructureShape.new(name: 'AmazonopensearchserviceDestinationConfiguration')
    AmazonopensearchserviceDestinationDescription = Shapes::StructureShape.new(name: 'AmazonopensearchserviceDestinationDescription')
    AmazonopensearchserviceDestinationUpdate = Shapes::StructureShape.new(name: 'AmazonopensearchserviceDestinationUpdate')
    AmazonopensearchserviceDomainARN = Shapes::StringShape.new(name: 'AmazonopensearchserviceDomainARN')
    AmazonopensearchserviceIndexName = Shapes::StringShape.new(name: 'AmazonopensearchserviceIndexName')
    AmazonopensearchserviceIndexRotationPeriod = Shapes::StringShape.new(name: 'AmazonopensearchserviceIndexRotationPeriod')
    AmazonopensearchserviceRetryDurationInSeconds = Shapes::IntegerShape.new(name: 'AmazonopensearchserviceRetryDurationInSeconds')
    AmazonopensearchserviceRetryOptions = Shapes::StructureShape.new(name: 'AmazonopensearchserviceRetryOptions')
    AmazonopensearchserviceS3BackupMode = Shapes::StringShape.new(name: 'AmazonopensearchserviceS3BackupMode')
    AmazonopensearchserviceTypeName = Shapes::StringShape.new(name: 'AmazonopensearchserviceTypeName')
    AuthenticationConfiguration = Shapes::StructureShape.new(name: 'AuthenticationConfiguration')
    BlockSizeBytes = Shapes::IntegerShape.new(name: 'BlockSizeBytes')
    BooleanObject = Shapes::BooleanShape.new(name: 'BooleanObject')
    BucketARN = Shapes::StringShape.new(name: 'BucketARN')
    BufferingHints = Shapes::StructureShape.new(name: 'BufferingHints')
    CatalogConfiguration = Shapes::StructureShape.new(name: 'CatalogConfiguration')
    CloudWatchLoggingOptions = Shapes::StructureShape.new(name: 'CloudWatchLoggingOptions')
    ClusterJDBCURL = Shapes::StringShape.new(name: 'ClusterJDBCURL')
    ColumnToJsonKeyMappings = Shapes::MapShape.new(name: 'ColumnToJsonKeyMappings')
    CompressionFormat = Shapes::StringShape.new(name: 'CompressionFormat')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    Connectivity = Shapes::StringShape.new(name: 'Connectivity')
    ContentEncoding = Shapes::StringShape.new(name: 'ContentEncoding')
    CopyCommand = Shapes::StructureShape.new(name: 'CopyCommand')
    CopyOptions = Shapes::StringShape.new(name: 'CopyOptions')
    CreateDeliveryStreamInput = Shapes::StructureShape.new(name: 'CreateDeliveryStreamInput')
    CreateDeliveryStreamOutput = Shapes::StructureShape.new(name: 'CreateDeliveryStreamOutput')
    CustomTimeZone = Shapes::StringShape.new(name: 'CustomTimeZone')
    Data = Shapes::BlobShape.new(name: 'Data')
    DataFormatConversionConfiguration = Shapes::StructureShape.new(name: 'DataFormatConversionConfiguration')
    DataTableColumns = Shapes::StringShape.new(name: 'DataTableColumns')
    DataTableName = Shapes::StringShape.new(name: 'DataTableName')
    DatabaseColumnIncludeOrExcludeList = Shapes::ListShape.new(name: 'DatabaseColumnIncludeOrExcludeList')
    DatabaseColumnList = Shapes::StructureShape.new(name: 'DatabaseColumnList')
    DatabaseColumnName = Shapes::StringShape.new(name: 'DatabaseColumnName')
    DatabaseEndpoint = Shapes::StringShape.new(name: 'DatabaseEndpoint')
    DatabaseIncludeOrExcludeList = Shapes::ListShape.new(name: 'DatabaseIncludeOrExcludeList')
    DatabaseList = Shapes::StructureShape.new(name: 'DatabaseList')
    DatabaseName = Shapes::StringShape.new(name: 'DatabaseName')
    DatabasePort = Shapes::IntegerShape.new(name: 'DatabasePort')
    DatabaseSnapshotInfo = Shapes::StructureShape.new(name: 'DatabaseSnapshotInfo')
    DatabaseSnapshotInfoList = Shapes::ListShape.new(name: 'DatabaseSnapshotInfoList')
    DatabaseSourceAuthenticationConfiguration = Shapes::StructureShape.new(name: 'DatabaseSourceAuthenticationConfiguration')
    DatabaseSourceConfiguration = Shapes::StructureShape.new(name: 'DatabaseSourceConfiguration')
    DatabaseSourceDescription = Shapes::StructureShape.new(name: 'DatabaseSourceDescription')
    DatabaseSourceVPCConfiguration = Shapes::StructureShape.new(name: 'DatabaseSourceVPCConfiguration')
    DatabaseSurrogateKeyList = Shapes::ListShape.new(name: 'DatabaseSurrogateKeyList')
    DatabaseTableIncludeOrExcludeList = Shapes::ListShape.new(name: 'DatabaseTableIncludeOrExcludeList')
    DatabaseTableList = Shapes::StructureShape.new(name: 'DatabaseTableList')
    DatabaseTableName = Shapes::StringShape.new(name: 'DatabaseTableName')
    DatabaseType = Shapes::StringShape.new(name: 'DatabaseType')
    DefaultDocumentIdFormat = Shapes::StringShape.new(name: 'DefaultDocumentIdFormat')
    DeleteDeliveryStreamInput = Shapes::StructureShape.new(name: 'DeleteDeliveryStreamInput')
    DeleteDeliveryStreamOutput = Shapes::StructureShape.new(name: 'DeleteDeliveryStreamOutput')
    DeliveryStartTimestamp = Shapes::TimestampShape.new(name: 'DeliveryStartTimestamp')
    DeliveryStreamARN = Shapes::StringShape.new(name: 'DeliveryStreamARN')
    DeliveryStreamDescription = Shapes::StructureShape.new(name: 'DeliveryStreamDescription')
    DeliveryStreamEncryptionConfiguration = Shapes::StructureShape.new(name: 'DeliveryStreamEncryptionConfiguration')
    DeliveryStreamEncryptionConfigurationInput = Shapes::StructureShape.new(name: 'DeliveryStreamEncryptionConfigurationInput')
    DeliveryStreamEncryptionStatus = Shapes::StringShape.new(name: 'DeliveryStreamEncryptionStatus')
    DeliveryStreamFailureType = Shapes::StringShape.new(name: 'DeliveryStreamFailureType')
    DeliveryStreamName = Shapes::StringShape.new(name: 'DeliveryStreamName')
    DeliveryStreamNameList = Shapes::ListShape.new(name: 'DeliveryStreamNameList')
    DeliveryStreamStatus = Shapes::StringShape.new(name: 'DeliveryStreamStatus')
    DeliveryStreamType = Shapes::StringShape.new(name: 'DeliveryStreamType')
    DeliveryStreamVersionId = Shapes::StringShape.new(name: 'DeliveryStreamVersionId')
    DescribeDeliveryStreamInput = Shapes::StructureShape.new(name: 'DescribeDeliveryStreamInput')
    DescribeDeliveryStreamInputLimit = Shapes::IntegerShape.new(name: 'DescribeDeliveryStreamInputLimit')
    DescribeDeliveryStreamOutput = Shapes::StructureShape.new(name: 'DescribeDeliveryStreamOutput')
    Deserializer = Shapes::StructureShape.new(name: 'Deserializer')
    DestinationDescription = Shapes::StructureShape.new(name: 'DestinationDescription')
    DestinationDescriptionList = Shapes::ListShape.new(name: 'DestinationDescriptionList')
    DestinationId = Shapes::StringShape.new(name: 'DestinationId')
    DestinationTableConfiguration = Shapes::StructureShape.new(name: 'DestinationTableConfiguration')
    DestinationTableConfigurationList = Shapes::ListShape.new(name: 'DestinationTableConfigurationList')
    DirectPutSourceConfiguration = Shapes::StructureShape.new(name: 'DirectPutSourceConfiguration')
    DirectPutSourceDescription = Shapes::StructureShape.new(name: 'DirectPutSourceDescription')
    DocumentIdOptions = Shapes::StructureShape.new(name: 'DocumentIdOptions')
    DynamicPartitioningConfiguration = Shapes::StructureShape.new(name: 'DynamicPartitioningConfiguration')
    ElasticsearchBufferingHints = Shapes::StructureShape.new(name: 'ElasticsearchBufferingHints')
    ElasticsearchBufferingIntervalInSeconds = Shapes::IntegerShape.new(name: 'ElasticsearchBufferingIntervalInSeconds')
    ElasticsearchBufferingSizeInMBs = Shapes::IntegerShape.new(name: 'ElasticsearchBufferingSizeInMBs')
    ElasticsearchClusterEndpoint = Shapes::StringShape.new(name: 'ElasticsearchClusterEndpoint')
    ElasticsearchDestinationConfiguration = Shapes::StructureShape.new(name: 'ElasticsearchDestinationConfiguration')
    ElasticsearchDestinationDescription = Shapes::StructureShape.new(name: 'ElasticsearchDestinationDescription')
    ElasticsearchDestinationUpdate = Shapes::StructureShape.new(name: 'ElasticsearchDestinationUpdate')
    ElasticsearchDomainARN = Shapes::StringShape.new(name: 'ElasticsearchDomainARN')
    ElasticsearchIndexName = Shapes::StringShape.new(name: 'ElasticsearchIndexName')
    ElasticsearchIndexRotationPeriod = Shapes::StringShape.new(name: 'ElasticsearchIndexRotationPeriod')
    ElasticsearchRetryDurationInSeconds = Shapes::IntegerShape.new(name: 'ElasticsearchRetryDurationInSeconds')
    ElasticsearchRetryOptions = Shapes::StructureShape.new(name: 'ElasticsearchRetryOptions')
    ElasticsearchS3BackupMode = Shapes::StringShape.new(name: 'ElasticsearchS3BackupMode')
    ElasticsearchTypeName = Shapes::StringShape.new(name: 'ElasticsearchTypeName')
    EncryptionConfiguration = Shapes::StructureShape.new(name: 'EncryptionConfiguration')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ErrorOutputPrefix = Shapes::StringShape.new(name: 'ErrorOutputPrefix')
    ExtendedS3DestinationConfiguration = Shapes::StructureShape.new(name: 'ExtendedS3DestinationConfiguration')
    ExtendedS3DestinationDescription = Shapes::StructureShape.new(name: 'ExtendedS3DestinationDescription')
    ExtendedS3DestinationUpdate = Shapes::StructureShape.new(name: 'ExtendedS3DestinationUpdate')
    FailureDescription = Shapes::StructureShape.new(name: 'FailureDescription')
    FileExtension = Shapes::StringShape.new(name: 'FileExtension')
    GlueDataCatalogARN = Shapes::StringShape.new(name: 'GlueDataCatalogARN')
    HECAcknowledgmentTimeoutInSeconds = Shapes::IntegerShape.new(name: 'HECAcknowledgmentTimeoutInSeconds')
    HECEndpoint = Shapes::StringShape.new(name: 'HECEndpoint')
    HECEndpointType = Shapes::StringShape.new(name: 'HECEndpointType')
    HECToken = Shapes::StringShape.new(name: 'HECToken')
    HiveJsonSerDe = Shapes::StructureShape.new(name: 'HiveJsonSerDe')
    HttpEndpointAccessKey = Shapes::StringShape.new(name: 'HttpEndpointAccessKey')
    HttpEndpointAttributeName = Shapes::StringShape.new(name: 'HttpEndpointAttributeName')
    HttpEndpointAttributeValue = Shapes::StringShape.new(name: 'HttpEndpointAttributeValue')
    HttpEndpointBufferingHints = Shapes::StructureShape.new(name: 'HttpEndpointBufferingHints')
    HttpEndpointBufferingIntervalInSeconds = Shapes::IntegerShape.new(name: 'HttpEndpointBufferingIntervalInSeconds')
    HttpEndpointBufferingSizeInMBs = Shapes::IntegerShape.new(name: 'HttpEndpointBufferingSizeInMBs')
    HttpEndpointCommonAttribute = Shapes::StructureShape.new(name: 'HttpEndpointCommonAttribute')
    HttpEndpointCommonAttributesList = Shapes::ListShape.new(name: 'HttpEndpointCommonAttributesList')
    HttpEndpointConfiguration = Shapes::StructureShape.new(name: 'HttpEndpointConfiguration')
    HttpEndpointDescription = Shapes::StructureShape.new(name: 'HttpEndpointDescription')
    HttpEndpointDestinationConfiguration = Shapes::StructureShape.new(name: 'HttpEndpointDestinationConfiguration')
    HttpEndpointDestinationDescription = Shapes::StructureShape.new(name: 'HttpEndpointDestinationDescription')
    HttpEndpointDestinationUpdate = Shapes::StructureShape.new(name: 'HttpEndpointDestinationUpdate')
    HttpEndpointName = Shapes::StringShape.new(name: 'HttpEndpointName')
    HttpEndpointRequestConfiguration = Shapes::StructureShape.new(name: 'HttpEndpointRequestConfiguration')
    HttpEndpointRetryDurationInSeconds = Shapes::IntegerShape.new(name: 'HttpEndpointRetryDurationInSeconds')
    HttpEndpointRetryOptions = Shapes::StructureShape.new(name: 'HttpEndpointRetryOptions')
    HttpEndpointS3BackupMode = Shapes::StringShape.new(name: 'HttpEndpointS3BackupMode')
    HttpEndpointUrl = Shapes::StringShape.new(name: 'HttpEndpointUrl')
    IcebergDestinationConfiguration = Shapes::StructureShape.new(name: 'IcebergDestinationConfiguration')
    IcebergDestinationDescription = Shapes::StructureShape.new(name: 'IcebergDestinationDescription')
    IcebergDestinationUpdate = Shapes::StructureShape.new(name: 'IcebergDestinationUpdate')
    IcebergS3BackupMode = Shapes::StringShape.new(name: 'IcebergS3BackupMode')
    InputFormatConfiguration = Shapes::StructureShape.new(name: 'InputFormatConfiguration')
    IntervalInSeconds = Shapes::IntegerShape.new(name: 'IntervalInSeconds')
    InvalidArgumentException = Shapes::StructureShape.new(name: 'InvalidArgumentException')
    InvalidKMSResourceException = Shapes::StructureShape.new(name: 'InvalidKMSResourceException')
    InvalidSourceException = Shapes::StructureShape.new(name: 'InvalidSourceException')
    KMSEncryptionConfig = Shapes::StructureShape.new(name: 'KMSEncryptionConfig')
    KeyType = Shapes::StringShape.new(name: 'KeyType')
    KinesisStreamARN = Shapes::StringShape.new(name: 'KinesisStreamARN')
    KinesisStreamSourceConfiguration = Shapes::StructureShape.new(name: 'KinesisStreamSourceConfiguration')
    KinesisStreamSourceDescription = Shapes::StructureShape.new(name: 'KinesisStreamSourceDescription')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListDeliveryStreamsInput = Shapes::StructureShape.new(name: 'ListDeliveryStreamsInput')
    ListDeliveryStreamsInputLimit = Shapes::IntegerShape.new(name: 'ListDeliveryStreamsInputLimit')
    ListDeliveryStreamsOutput = Shapes::StructureShape.new(name: 'ListDeliveryStreamsOutput')
    ListOfNonEmptyStrings = Shapes::ListShape.new(name: 'ListOfNonEmptyStrings')
    ListOfNonEmptyStringsWithoutWhitespace = Shapes::ListShape.new(name: 'ListOfNonEmptyStringsWithoutWhitespace')
    ListTagsForDeliveryStreamInput = Shapes::StructureShape.new(name: 'ListTagsForDeliveryStreamInput')
    ListTagsForDeliveryStreamInputLimit = Shapes::IntegerShape.new(name: 'ListTagsForDeliveryStreamInputLimit')
    ListTagsForDeliveryStreamOutput = Shapes::StructureShape.new(name: 'ListTagsForDeliveryStreamOutput')
    ListTagsForDeliveryStreamOutputTagList = Shapes::ListShape.new(name: 'ListTagsForDeliveryStreamOutputTagList')
    LogGroupName = Shapes::StringShape.new(name: 'LogGroupName')
    LogStreamName = Shapes::StringShape.new(name: 'LogStreamName')
    MSKClusterARN = Shapes::StringShape.new(name: 'MSKClusterARN')
    MSKSourceConfiguration = Shapes::StructureShape.new(name: 'MSKSourceConfiguration')
    MSKSourceDescription = Shapes::StructureShape.new(name: 'MSKSourceDescription')
    NoEncryptionConfig = Shapes::StringShape.new(name: 'NoEncryptionConfig')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NonEmptyStringWithoutWhitespace = Shapes::StringShape.new(name: 'NonEmptyStringWithoutWhitespace')
    NonNegativeIntegerObject = Shapes::IntegerShape.new(name: 'NonNegativeIntegerObject')
    OpenXJsonSerDe = Shapes::StructureShape.new(name: 'OpenXJsonSerDe')
    OrcCompression = Shapes::StringShape.new(name: 'OrcCompression')
    OrcFormatVersion = Shapes::StringShape.new(name: 'OrcFormatVersion')
    OrcRowIndexStride = Shapes::IntegerShape.new(name: 'OrcRowIndexStride')
    OrcSerDe = Shapes::StructureShape.new(name: 'OrcSerDe')
    OrcStripeSizeBytes = Shapes::IntegerShape.new(name: 'OrcStripeSizeBytes')
    OutputFormatConfiguration = Shapes::StructureShape.new(name: 'OutputFormatConfiguration')
    ParquetCompression = Shapes::StringShape.new(name: 'ParquetCompression')
    ParquetPageSizeBytes = Shapes::IntegerShape.new(name: 'ParquetPageSizeBytes')
    ParquetSerDe = Shapes::StructureShape.new(name: 'ParquetSerDe')
    ParquetWriterVersion = Shapes::StringShape.new(name: 'ParquetWriterVersion')
    PartitionField = Shapes::StructureShape.new(name: 'PartitionField')
    PartitionFields = Shapes::ListShape.new(name: 'PartitionFields')
    PartitionSpec = Shapes::StructureShape.new(name: 'PartitionSpec')
    Password = Shapes::StringShape.new(name: 'Password')
    Prefix = Shapes::StringShape.new(name: 'Prefix')
    ProcessingConfiguration = Shapes::StructureShape.new(name: 'ProcessingConfiguration')
    Processor = Shapes::StructureShape.new(name: 'Processor')
    ProcessorList = Shapes::ListShape.new(name: 'ProcessorList')
    ProcessorParameter = Shapes::StructureShape.new(name: 'ProcessorParameter')
    ProcessorParameterList = Shapes::ListShape.new(name: 'ProcessorParameterList')
    ProcessorParameterName = Shapes::StringShape.new(name: 'ProcessorParameterName')
    ProcessorParameterValue = Shapes::StringShape.new(name: 'ProcessorParameterValue')
    ProcessorType = Shapes::StringShape.new(name: 'ProcessorType')
    Proportion = Shapes::FloatShape.new(name: 'Proportion')
    PutRecordBatchInput = Shapes::StructureShape.new(name: 'PutRecordBatchInput')
    PutRecordBatchOutput = Shapes::StructureShape.new(name: 'PutRecordBatchOutput')
    PutRecordBatchRequestEntryList = Shapes::ListShape.new(name: 'PutRecordBatchRequestEntryList')
    PutRecordBatchResponseEntry = Shapes::StructureShape.new(name: 'PutRecordBatchResponseEntry')
    PutRecordBatchResponseEntryList = Shapes::ListShape.new(name: 'PutRecordBatchResponseEntryList')
    PutRecordInput = Shapes::StructureShape.new(name: 'PutRecordInput')
    PutRecordOutput = Shapes::StructureShape.new(name: 'PutRecordOutput')
    PutResponseRecordId = Shapes::StringShape.new(name: 'PutResponseRecordId')
    ReadFromTimestamp = Shapes::TimestampShape.new(name: 'ReadFromTimestamp')
    Record = Shapes::StructureShape.new(name: 'Record')
    RedshiftDestinationConfiguration = Shapes::StructureShape.new(name: 'RedshiftDestinationConfiguration')
    RedshiftDestinationDescription = Shapes::StructureShape.new(name: 'RedshiftDestinationDescription')
    RedshiftDestinationUpdate = Shapes::StructureShape.new(name: 'RedshiftDestinationUpdate')
    RedshiftRetryDurationInSeconds = Shapes::IntegerShape.new(name: 'RedshiftRetryDurationInSeconds')
    RedshiftRetryOptions = Shapes::StructureShape.new(name: 'RedshiftRetryOptions')
    RedshiftS3BackupMode = Shapes::StringShape.new(name: 'RedshiftS3BackupMode')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RetryDurationInSeconds = Shapes::IntegerShape.new(name: 'RetryDurationInSeconds')
    RetryOptions = Shapes::StructureShape.new(name: 'RetryOptions')
    RoleARN = Shapes::StringShape.new(name: 'RoleARN')
    S3BackupMode = Shapes::StringShape.new(name: 'S3BackupMode')
    S3DestinationConfiguration = Shapes::StructureShape.new(name: 'S3DestinationConfiguration')
    S3DestinationDescription = Shapes::StructureShape.new(name: 'S3DestinationDescription')
    S3DestinationUpdate = Shapes::StructureShape.new(name: 'S3DestinationUpdate')
    SSLMode = Shapes::StringShape.new(name: 'SSLMode')
    SchemaConfiguration = Shapes::StructureShape.new(name: 'SchemaConfiguration')
    SchemaEvolutionConfiguration = Shapes::StructureShape.new(name: 'SchemaEvolutionConfiguration')
    SecretARN = Shapes::StringShape.new(name: 'SecretARN')
    SecretsManagerConfiguration = Shapes::StructureShape.new(name: 'SecretsManagerConfiguration')
    SecurityGroupIdList = Shapes::ListShape.new(name: 'SecurityGroupIdList')
    Serializer = Shapes::StructureShape.new(name: 'Serializer')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SizeInMBs = Shapes::IntegerShape.new(name: 'SizeInMBs')
    SnapshotRequestedBy = Shapes::StringShape.new(name: 'SnapshotRequestedBy')
    SnapshotStatus = Shapes::StringShape.new(name: 'SnapshotStatus')
    SnowflakeAccountUrl = Shapes::StringShape.new(name: 'SnowflakeAccountUrl')
    SnowflakeBufferingHints = Shapes::StructureShape.new(name: 'SnowflakeBufferingHints')
    SnowflakeBufferingIntervalInSeconds = Shapes::IntegerShape.new(name: 'SnowflakeBufferingIntervalInSeconds')
    SnowflakeBufferingSizeInMBs = Shapes::IntegerShape.new(name: 'SnowflakeBufferingSizeInMBs')
    SnowflakeContentColumnName = Shapes::StringShape.new(name: 'SnowflakeContentColumnName')
    SnowflakeDataLoadingOption = Shapes::StringShape.new(name: 'SnowflakeDataLoadingOption')
    SnowflakeDatabase = Shapes::StringShape.new(name: 'SnowflakeDatabase')
    SnowflakeDestinationConfiguration = Shapes::StructureShape.new(name: 'SnowflakeDestinationConfiguration')
    SnowflakeDestinationDescription = Shapes::StructureShape.new(name: 'SnowflakeDestinationDescription')
    SnowflakeDestinationUpdate = Shapes::StructureShape.new(name: 'SnowflakeDestinationUpdate')
    SnowflakeKeyPassphrase = Shapes::StringShape.new(name: 'SnowflakeKeyPassphrase')
    SnowflakeMetaDataColumnName = Shapes::StringShape.new(name: 'SnowflakeMetaDataColumnName')
    SnowflakePrivateKey = Shapes::StringShape.new(name: 'SnowflakePrivateKey')
    SnowflakePrivateLinkVpceId = Shapes::StringShape.new(name: 'SnowflakePrivateLinkVpceId')
    SnowflakeRetryDurationInSeconds = Shapes::IntegerShape.new(name: 'SnowflakeRetryDurationInSeconds')
    SnowflakeRetryOptions = Shapes::StructureShape.new(name: 'SnowflakeRetryOptions')
    SnowflakeRole = Shapes::StringShape.new(name: 'SnowflakeRole')
    SnowflakeRoleConfiguration = Shapes::StructureShape.new(name: 'SnowflakeRoleConfiguration')
    SnowflakeS3BackupMode = Shapes::StringShape.new(name: 'SnowflakeS3BackupMode')
    SnowflakeSchema = Shapes::StringShape.new(name: 'SnowflakeSchema')
    SnowflakeTable = Shapes::StringShape.new(name: 'SnowflakeTable')
    SnowflakeUser = Shapes::StringShape.new(name: 'SnowflakeUser')
    SnowflakeVpcConfiguration = Shapes::StructureShape.new(name: 'SnowflakeVpcConfiguration')
    SourceDescription = Shapes::StructureShape.new(name: 'SourceDescription')
    SplunkBufferingHints = Shapes::StructureShape.new(name: 'SplunkBufferingHints')
    SplunkBufferingIntervalInSeconds = Shapes::IntegerShape.new(name: 'SplunkBufferingIntervalInSeconds')
    SplunkBufferingSizeInMBs = Shapes::IntegerShape.new(name: 'SplunkBufferingSizeInMBs')
    SplunkDestinationConfiguration = Shapes::StructureShape.new(name: 'SplunkDestinationConfiguration')
    SplunkDestinationDescription = Shapes::StructureShape.new(name: 'SplunkDestinationDescription')
    SplunkDestinationUpdate = Shapes::StructureShape.new(name: 'SplunkDestinationUpdate')
    SplunkRetryDurationInSeconds = Shapes::IntegerShape.new(name: 'SplunkRetryDurationInSeconds')
    SplunkRetryOptions = Shapes::StructureShape.new(name: 'SplunkRetryOptions')
    SplunkS3BackupMode = Shapes::StringShape.new(name: 'SplunkS3BackupMode')
    StartDeliveryStreamEncryptionInput = Shapes::StructureShape.new(name: 'StartDeliveryStreamEncryptionInput')
    StartDeliveryStreamEncryptionOutput = Shapes::StructureShape.new(name: 'StartDeliveryStreamEncryptionOutput')
    StopDeliveryStreamEncryptionInput = Shapes::StructureShape.new(name: 'StopDeliveryStreamEncryptionInput')
    StopDeliveryStreamEncryptionOutput = Shapes::StructureShape.new(name: 'StopDeliveryStreamEncryptionOutput')
    StringWithLettersDigitsUnderscoresDots = Shapes::StringShape.new(name: 'StringWithLettersDigitsUnderscoresDots')
    SubnetIdList = Shapes::ListShape.new(name: 'SubnetIdList')
    TableCreationConfiguration = Shapes::StructureShape.new(name: 'TableCreationConfiguration')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagDeliveryStreamInput = Shapes::StructureShape.new(name: 'TagDeliveryStreamInput')
    TagDeliveryStreamInputTagList = Shapes::ListShape.new(name: 'TagDeliveryStreamInputTagList')
    TagDeliveryStreamOutput = Shapes::StructureShape.new(name: 'TagDeliveryStreamOutput')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThroughputHintInMBs = Shapes::IntegerShape.new(name: 'ThroughputHintInMBs')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TopicName = Shapes::StringShape.new(name: 'TopicName')
    UntagDeliveryStreamInput = Shapes::StructureShape.new(name: 'UntagDeliveryStreamInput')
    UntagDeliveryStreamOutput = Shapes::StructureShape.new(name: 'UntagDeliveryStreamOutput')
    UpdateDestinationInput = Shapes::StructureShape.new(name: 'UpdateDestinationInput')
    UpdateDestinationOutput = Shapes::StructureShape.new(name: 'UpdateDestinationOutput')
    Username = Shapes::StringShape.new(name: 'Username')
    VpcConfiguration = Shapes::StructureShape.new(name: 'VpcConfiguration')
    VpcConfigurationDescription = Shapes::StructureShape.new(name: 'VpcConfigurationDescription')
    VpcEndpointServiceName = Shapes::StringShape.new(name: 'VpcEndpointServiceName')
    WarehouseLocation = Shapes::StringShape.new(name: 'WarehouseLocation')

    AmazonOpenSearchServerlessBufferingHints.add_member(:interval_in_seconds, Shapes::ShapeRef.new(shape: AmazonOpenSearchServerlessBufferingIntervalInSeconds, location_name: "IntervalInSeconds"))
    AmazonOpenSearchServerlessBufferingHints.add_member(:size_in_m_bs, Shapes::ShapeRef.new(shape: AmazonOpenSearchServerlessBufferingSizeInMBs, location_name: "SizeInMBs"))
    AmazonOpenSearchServerlessBufferingHints.struct_class = Types::AmazonOpenSearchServerlessBufferingHints

    AmazonOpenSearchServerlessDestinationConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    AmazonOpenSearchServerlessDestinationConfiguration.add_member(:collection_endpoint, Shapes::ShapeRef.new(shape: AmazonOpenSearchServerlessCollectionEndpoint, location_name: "CollectionEndpoint"))
    AmazonOpenSearchServerlessDestinationConfiguration.add_member(:index_name, Shapes::ShapeRef.new(shape: AmazonOpenSearchServerlessIndexName, required: true, location_name: "IndexName"))
    AmazonOpenSearchServerlessDestinationConfiguration.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: AmazonOpenSearchServerlessBufferingHints, location_name: "BufferingHints"))
    AmazonOpenSearchServerlessDestinationConfiguration.add_member(:retry_options, Shapes::ShapeRef.new(shape: AmazonOpenSearchServerlessRetryOptions, location_name: "RetryOptions"))
    AmazonOpenSearchServerlessDestinationConfiguration.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: AmazonOpenSearchServerlessS3BackupMode, location_name: "S3BackupMode"))
    AmazonOpenSearchServerlessDestinationConfiguration.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: S3DestinationConfiguration, required: true, location_name: "S3Configuration"))
    AmazonOpenSearchServerlessDestinationConfiguration.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    AmazonOpenSearchServerlessDestinationConfiguration.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    AmazonOpenSearchServerlessDestinationConfiguration.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: "VpcConfiguration"))
    AmazonOpenSearchServerlessDestinationConfiguration.struct_class = Types::AmazonOpenSearchServerlessDestinationConfiguration

    AmazonOpenSearchServerlessDestinationDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    AmazonOpenSearchServerlessDestinationDescription.add_member(:collection_endpoint, Shapes::ShapeRef.new(shape: AmazonOpenSearchServerlessCollectionEndpoint, location_name: "CollectionEndpoint"))
    AmazonOpenSearchServerlessDestinationDescription.add_member(:index_name, Shapes::ShapeRef.new(shape: AmazonOpenSearchServerlessIndexName, location_name: "IndexName"))
    AmazonOpenSearchServerlessDestinationDescription.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: AmazonOpenSearchServerlessBufferingHints, location_name: "BufferingHints"))
    AmazonOpenSearchServerlessDestinationDescription.add_member(:retry_options, Shapes::ShapeRef.new(shape: AmazonOpenSearchServerlessRetryOptions, location_name: "RetryOptions"))
    AmazonOpenSearchServerlessDestinationDescription.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: AmazonOpenSearchServerlessS3BackupMode, location_name: "S3BackupMode"))
    AmazonOpenSearchServerlessDestinationDescription.add_member(:s3_destination_description, Shapes::ShapeRef.new(shape: S3DestinationDescription, location_name: "S3DestinationDescription"))
    AmazonOpenSearchServerlessDestinationDescription.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    AmazonOpenSearchServerlessDestinationDescription.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    AmazonOpenSearchServerlessDestinationDescription.add_member(:vpc_configuration_description, Shapes::ShapeRef.new(shape: VpcConfigurationDescription, location_name: "VpcConfigurationDescription"))
    AmazonOpenSearchServerlessDestinationDescription.struct_class = Types::AmazonOpenSearchServerlessDestinationDescription

    AmazonOpenSearchServerlessDestinationUpdate.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    AmazonOpenSearchServerlessDestinationUpdate.add_member(:collection_endpoint, Shapes::ShapeRef.new(shape: AmazonOpenSearchServerlessCollectionEndpoint, location_name: "CollectionEndpoint"))
    AmazonOpenSearchServerlessDestinationUpdate.add_member(:index_name, Shapes::ShapeRef.new(shape: AmazonOpenSearchServerlessIndexName, location_name: "IndexName"))
    AmazonOpenSearchServerlessDestinationUpdate.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: AmazonOpenSearchServerlessBufferingHints, location_name: "BufferingHints"))
    AmazonOpenSearchServerlessDestinationUpdate.add_member(:retry_options, Shapes::ShapeRef.new(shape: AmazonOpenSearchServerlessRetryOptions, location_name: "RetryOptions"))
    AmazonOpenSearchServerlessDestinationUpdate.add_member(:s3_update, Shapes::ShapeRef.new(shape: S3DestinationUpdate, location_name: "S3Update"))
    AmazonOpenSearchServerlessDestinationUpdate.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    AmazonOpenSearchServerlessDestinationUpdate.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    AmazonOpenSearchServerlessDestinationUpdate.struct_class = Types::AmazonOpenSearchServerlessDestinationUpdate

    AmazonOpenSearchServerlessRetryOptions.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: AmazonOpenSearchServerlessRetryDurationInSeconds, location_name: "DurationInSeconds"))
    AmazonOpenSearchServerlessRetryOptions.struct_class = Types::AmazonOpenSearchServerlessRetryOptions

    AmazonopensearchserviceBufferingHints.add_member(:interval_in_seconds, Shapes::ShapeRef.new(shape: AmazonopensearchserviceBufferingIntervalInSeconds, location_name: "IntervalInSeconds"))
    AmazonopensearchserviceBufferingHints.add_member(:size_in_m_bs, Shapes::ShapeRef.new(shape: AmazonopensearchserviceBufferingSizeInMBs, location_name: "SizeInMBs"))
    AmazonopensearchserviceBufferingHints.struct_class = Types::AmazonopensearchserviceBufferingHints

    AmazonopensearchserviceDestinationConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    AmazonopensearchserviceDestinationConfiguration.add_member(:domain_arn, Shapes::ShapeRef.new(shape: AmazonopensearchserviceDomainARN, location_name: "DomainARN"))
    AmazonopensearchserviceDestinationConfiguration.add_member(:cluster_endpoint, Shapes::ShapeRef.new(shape: AmazonopensearchserviceClusterEndpoint, location_name: "ClusterEndpoint"))
    AmazonopensearchserviceDestinationConfiguration.add_member(:index_name, Shapes::ShapeRef.new(shape: AmazonopensearchserviceIndexName, required: true, location_name: "IndexName"))
    AmazonopensearchserviceDestinationConfiguration.add_member(:type_name, Shapes::ShapeRef.new(shape: AmazonopensearchserviceTypeName, location_name: "TypeName"))
    AmazonopensearchserviceDestinationConfiguration.add_member(:index_rotation_period, Shapes::ShapeRef.new(shape: AmazonopensearchserviceIndexRotationPeriod, location_name: "IndexRotationPeriod"))
    AmazonopensearchserviceDestinationConfiguration.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: AmazonopensearchserviceBufferingHints, location_name: "BufferingHints"))
    AmazonopensearchserviceDestinationConfiguration.add_member(:retry_options, Shapes::ShapeRef.new(shape: AmazonopensearchserviceRetryOptions, location_name: "RetryOptions"))
    AmazonopensearchserviceDestinationConfiguration.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: AmazonopensearchserviceS3BackupMode, location_name: "S3BackupMode"))
    AmazonopensearchserviceDestinationConfiguration.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: S3DestinationConfiguration, required: true, location_name: "S3Configuration"))
    AmazonopensearchserviceDestinationConfiguration.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    AmazonopensearchserviceDestinationConfiguration.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    AmazonopensearchserviceDestinationConfiguration.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: "VpcConfiguration"))
    AmazonopensearchserviceDestinationConfiguration.add_member(:document_id_options, Shapes::ShapeRef.new(shape: DocumentIdOptions, location_name: "DocumentIdOptions"))
    AmazonopensearchserviceDestinationConfiguration.struct_class = Types::AmazonopensearchserviceDestinationConfiguration

    AmazonopensearchserviceDestinationDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    AmazonopensearchserviceDestinationDescription.add_member(:domain_arn, Shapes::ShapeRef.new(shape: AmazonopensearchserviceDomainARN, location_name: "DomainARN"))
    AmazonopensearchserviceDestinationDescription.add_member(:cluster_endpoint, Shapes::ShapeRef.new(shape: AmazonopensearchserviceClusterEndpoint, location_name: "ClusterEndpoint"))
    AmazonopensearchserviceDestinationDescription.add_member(:index_name, Shapes::ShapeRef.new(shape: AmazonopensearchserviceIndexName, location_name: "IndexName"))
    AmazonopensearchserviceDestinationDescription.add_member(:type_name, Shapes::ShapeRef.new(shape: AmazonopensearchserviceTypeName, location_name: "TypeName"))
    AmazonopensearchserviceDestinationDescription.add_member(:index_rotation_period, Shapes::ShapeRef.new(shape: AmazonopensearchserviceIndexRotationPeriod, location_name: "IndexRotationPeriod"))
    AmazonopensearchserviceDestinationDescription.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: AmazonopensearchserviceBufferingHints, location_name: "BufferingHints"))
    AmazonopensearchserviceDestinationDescription.add_member(:retry_options, Shapes::ShapeRef.new(shape: AmazonopensearchserviceRetryOptions, location_name: "RetryOptions"))
    AmazonopensearchserviceDestinationDescription.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: AmazonopensearchserviceS3BackupMode, location_name: "S3BackupMode"))
    AmazonopensearchserviceDestinationDescription.add_member(:s3_destination_description, Shapes::ShapeRef.new(shape: S3DestinationDescription, location_name: "S3DestinationDescription"))
    AmazonopensearchserviceDestinationDescription.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    AmazonopensearchserviceDestinationDescription.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    AmazonopensearchserviceDestinationDescription.add_member(:vpc_configuration_description, Shapes::ShapeRef.new(shape: VpcConfigurationDescription, location_name: "VpcConfigurationDescription"))
    AmazonopensearchserviceDestinationDescription.add_member(:document_id_options, Shapes::ShapeRef.new(shape: DocumentIdOptions, location_name: "DocumentIdOptions"))
    AmazonopensearchserviceDestinationDescription.struct_class = Types::AmazonopensearchserviceDestinationDescription

    AmazonopensearchserviceDestinationUpdate.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    AmazonopensearchserviceDestinationUpdate.add_member(:domain_arn, Shapes::ShapeRef.new(shape: AmazonopensearchserviceDomainARN, location_name: "DomainARN"))
    AmazonopensearchserviceDestinationUpdate.add_member(:cluster_endpoint, Shapes::ShapeRef.new(shape: AmazonopensearchserviceClusterEndpoint, location_name: "ClusterEndpoint"))
    AmazonopensearchserviceDestinationUpdate.add_member(:index_name, Shapes::ShapeRef.new(shape: AmazonopensearchserviceIndexName, location_name: "IndexName"))
    AmazonopensearchserviceDestinationUpdate.add_member(:type_name, Shapes::ShapeRef.new(shape: AmazonopensearchserviceTypeName, location_name: "TypeName"))
    AmazonopensearchserviceDestinationUpdate.add_member(:index_rotation_period, Shapes::ShapeRef.new(shape: AmazonopensearchserviceIndexRotationPeriod, location_name: "IndexRotationPeriod"))
    AmazonopensearchserviceDestinationUpdate.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: AmazonopensearchserviceBufferingHints, location_name: "BufferingHints"))
    AmazonopensearchserviceDestinationUpdate.add_member(:retry_options, Shapes::ShapeRef.new(shape: AmazonopensearchserviceRetryOptions, location_name: "RetryOptions"))
    AmazonopensearchserviceDestinationUpdate.add_member(:s3_update, Shapes::ShapeRef.new(shape: S3DestinationUpdate, location_name: "S3Update"))
    AmazonopensearchserviceDestinationUpdate.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    AmazonopensearchserviceDestinationUpdate.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    AmazonopensearchserviceDestinationUpdate.add_member(:document_id_options, Shapes::ShapeRef.new(shape: DocumentIdOptions, location_name: "DocumentIdOptions"))
    AmazonopensearchserviceDestinationUpdate.struct_class = Types::AmazonopensearchserviceDestinationUpdate

    AmazonopensearchserviceRetryOptions.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: AmazonopensearchserviceRetryDurationInSeconds, location_name: "DurationInSeconds"))
    AmazonopensearchserviceRetryOptions.struct_class = Types::AmazonopensearchserviceRetryOptions

    AuthenticationConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    AuthenticationConfiguration.add_member(:connectivity, Shapes::ShapeRef.new(shape: Connectivity, required: true, location_name: "Connectivity"))
    AuthenticationConfiguration.struct_class = Types::AuthenticationConfiguration

    BufferingHints.add_member(:size_in_m_bs, Shapes::ShapeRef.new(shape: SizeInMBs, location_name: "SizeInMBs"))
    BufferingHints.add_member(:interval_in_seconds, Shapes::ShapeRef.new(shape: IntervalInSeconds, location_name: "IntervalInSeconds"))
    BufferingHints.struct_class = Types::BufferingHints

    CatalogConfiguration.add_member(:catalog_arn, Shapes::ShapeRef.new(shape: GlueDataCatalogARN, location_name: "CatalogARN"))
    CatalogConfiguration.add_member(:warehouse_location, Shapes::ShapeRef.new(shape: WarehouseLocation, location_name: "WarehouseLocation"))
    CatalogConfiguration.struct_class = Types::CatalogConfiguration

    CloudWatchLoggingOptions.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "Enabled"))
    CloudWatchLoggingOptions.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "LogGroupName"))
    CloudWatchLoggingOptions.add_member(:log_stream_name, Shapes::ShapeRef.new(shape: LogStreamName, location_name: "LogStreamName"))
    CloudWatchLoggingOptions.struct_class = Types::CloudWatchLoggingOptions

    ColumnToJsonKeyMappings.key = Shapes::ShapeRef.new(shape: NonEmptyStringWithoutWhitespace)
    ColumnToJsonKeyMappings.value = Shapes::ShapeRef.new(shape: NonEmptyString)

    ConcurrentModificationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    CopyCommand.add_member(:data_table_name, Shapes::ShapeRef.new(shape: DataTableName, required: true, location_name: "DataTableName"))
    CopyCommand.add_member(:data_table_columns, Shapes::ShapeRef.new(shape: DataTableColumns, location_name: "DataTableColumns"))
    CopyCommand.add_member(:copy_options, Shapes::ShapeRef.new(shape: CopyOptions, location_name: "CopyOptions"))
    CopyCommand.struct_class = Types::CopyCommand

    CreateDeliveryStreamInput.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "DeliveryStreamName"))
    CreateDeliveryStreamInput.add_member(:delivery_stream_type, Shapes::ShapeRef.new(shape: DeliveryStreamType, location_name: "DeliveryStreamType"))
    CreateDeliveryStreamInput.add_member(:direct_put_source_configuration, Shapes::ShapeRef.new(shape: DirectPutSourceConfiguration, location_name: "DirectPutSourceConfiguration"))
    CreateDeliveryStreamInput.add_member(:kinesis_stream_source_configuration, Shapes::ShapeRef.new(shape: KinesisStreamSourceConfiguration, location_name: "KinesisStreamSourceConfiguration"))
    CreateDeliveryStreamInput.add_member(:delivery_stream_encryption_configuration_input, Shapes::ShapeRef.new(shape: DeliveryStreamEncryptionConfigurationInput, location_name: "DeliveryStreamEncryptionConfigurationInput"))
    CreateDeliveryStreamInput.add_member(:s3_destination_configuration, Shapes::ShapeRef.new(shape: S3DestinationConfiguration, deprecated: true, location_name: "S3DestinationConfiguration"))
    CreateDeliveryStreamInput.add_member(:extended_s3_destination_configuration, Shapes::ShapeRef.new(shape: ExtendedS3DestinationConfiguration, location_name: "ExtendedS3DestinationConfiguration"))
    CreateDeliveryStreamInput.add_member(:redshift_destination_configuration, Shapes::ShapeRef.new(shape: RedshiftDestinationConfiguration, location_name: "RedshiftDestinationConfiguration"))
    CreateDeliveryStreamInput.add_member(:elasticsearch_destination_configuration, Shapes::ShapeRef.new(shape: ElasticsearchDestinationConfiguration, location_name: "ElasticsearchDestinationConfiguration"))
    CreateDeliveryStreamInput.add_member(:amazonopensearchservice_destination_configuration, Shapes::ShapeRef.new(shape: AmazonopensearchserviceDestinationConfiguration, location_name: "AmazonopensearchserviceDestinationConfiguration"))
    CreateDeliveryStreamInput.add_member(:splunk_destination_configuration, Shapes::ShapeRef.new(shape: SplunkDestinationConfiguration, location_name: "SplunkDestinationConfiguration"))
    CreateDeliveryStreamInput.add_member(:http_endpoint_destination_configuration, Shapes::ShapeRef.new(shape: HttpEndpointDestinationConfiguration, location_name: "HttpEndpointDestinationConfiguration"))
    CreateDeliveryStreamInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagDeliveryStreamInputTagList, location_name: "Tags"))
    CreateDeliveryStreamInput.add_member(:amazon_open_search_serverless_destination_configuration, Shapes::ShapeRef.new(shape: AmazonOpenSearchServerlessDestinationConfiguration, location_name: "AmazonOpenSearchServerlessDestinationConfiguration"))
    CreateDeliveryStreamInput.add_member(:msk_source_configuration, Shapes::ShapeRef.new(shape: MSKSourceConfiguration, location_name: "MSKSourceConfiguration"))
    CreateDeliveryStreamInput.add_member(:snowflake_destination_configuration, Shapes::ShapeRef.new(shape: SnowflakeDestinationConfiguration, location_name: "SnowflakeDestinationConfiguration"))
    CreateDeliveryStreamInput.add_member(:iceberg_destination_configuration, Shapes::ShapeRef.new(shape: IcebergDestinationConfiguration, location_name: "IcebergDestinationConfiguration"))
    CreateDeliveryStreamInput.add_member(:database_source_configuration, Shapes::ShapeRef.new(shape: DatabaseSourceConfiguration, location_name: "DatabaseSourceConfiguration"))
    CreateDeliveryStreamInput.struct_class = Types::CreateDeliveryStreamInput

    CreateDeliveryStreamOutput.add_member(:delivery_stream_arn, Shapes::ShapeRef.new(shape: DeliveryStreamARN, location_name: "DeliveryStreamARN"))
    CreateDeliveryStreamOutput.struct_class = Types::CreateDeliveryStreamOutput

    DataFormatConversionConfiguration.add_member(:schema_configuration, Shapes::ShapeRef.new(shape: SchemaConfiguration, location_name: "SchemaConfiguration"))
    DataFormatConversionConfiguration.add_member(:input_format_configuration, Shapes::ShapeRef.new(shape: InputFormatConfiguration, location_name: "InputFormatConfiguration"))
    DataFormatConversionConfiguration.add_member(:output_format_configuration, Shapes::ShapeRef.new(shape: OutputFormatConfiguration, location_name: "OutputFormatConfiguration"))
    DataFormatConversionConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "Enabled"))
    DataFormatConversionConfiguration.struct_class = Types::DataFormatConversionConfiguration

    DatabaseColumnIncludeOrExcludeList.member = Shapes::ShapeRef.new(shape: DatabaseColumnName)

    DatabaseColumnList.add_member(:include, Shapes::ShapeRef.new(shape: DatabaseColumnIncludeOrExcludeList, location_name: "Include"))
    DatabaseColumnList.add_member(:exclude, Shapes::ShapeRef.new(shape: DatabaseColumnIncludeOrExcludeList, location_name: "Exclude"))
    DatabaseColumnList.struct_class = Types::DatabaseColumnList

    DatabaseIncludeOrExcludeList.member = Shapes::ShapeRef.new(shape: DatabaseName)

    DatabaseList.add_member(:include, Shapes::ShapeRef.new(shape: DatabaseIncludeOrExcludeList, location_name: "Include"))
    DatabaseList.add_member(:exclude, Shapes::ShapeRef.new(shape: DatabaseIncludeOrExcludeList, location_name: "Exclude"))
    DatabaseList.struct_class = Types::DatabaseList

    DatabaseSnapshotInfo.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyStringWithoutWhitespace, required: true, location_name: "Id"))
    DatabaseSnapshotInfo.add_member(:table, Shapes::ShapeRef.new(shape: DatabaseTableName, required: true, location_name: "Table"))
    DatabaseSnapshotInfo.add_member(:request_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "RequestTimestamp"))
    DatabaseSnapshotInfo.add_member(:requested_by, Shapes::ShapeRef.new(shape: SnapshotRequestedBy, required: true, location_name: "RequestedBy"))
    DatabaseSnapshotInfo.add_member(:status, Shapes::ShapeRef.new(shape: SnapshotStatus, required: true, location_name: "Status"))
    DatabaseSnapshotInfo.add_member(:failure_description, Shapes::ShapeRef.new(shape: FailureDescription, location_name: "FailureDescription"))
    DatabaseSnapshotInfo.struct_class = Types::DatabaseSnapshotInfo

    DatabaseSnapshotInfoList.member = Shapes::ShapeRef.new(shape: DatabaseSnapshotInfo)

    DatabaseSourceAuthenticationConfiguration.add_member(:secrets_manager_configuration, Shapes::ShapeRef.new(shape: SecretsManagerConfiguration, required: true, location_name: "SecretsManagerConfiguration"))
    DatabaseSourceAuthenticationConfiguration.struct_class = Types::DatabaseSourceAuthenticationConfiguration

    DatabaseSourceConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: DatabaseType, required: true, location_name: "Type"))
    DatabaseSourceConfiguration.add_member(:endpoint, Shapes::ShapeRef.new(shape: DatabaseEndpoint, required: true, location_name: "Endpoint"))
    DatabaseSourceConfiguration.add_member(:port, Shapes::ShapeRef.new(shape: DatabasePort, required: true, location_name: "Port"))
    DatabaseSourceConfiguration.add_member(:ssl_mode, Shapes::ShapeRef.new(shape: SSLMode, location_name: "SSLMode"))
    DatabaseSourceConfiguration.add_member(:databases, Shapes::ShapeRef.new(shape: DatabaseList, required: true, location_name: "Databases"))
    DatabaseSourceConfiguration.add_member(:tables, Shapes::ShapeRef.new(shape: DatabaseTableList, required: true, location_name: "Tables"))
    DatabaseSourceConfiguration.add_member(:columns, Shapes::ShapeRef.new(shape: DatabaseColumnList, location_name: "Columns"))
    DatabaseSourceConfiguration.add_member(:surrogate_keys, Shapes::ShapeRef.new(shape: DatabaseSurrogateKeyList, location_name: "SurrogateKeys"))
    DatabaseSourceConfiguration.add_member(:snapshot_watermark_table, Shapes::ShapeRef.new(shape: DatabaseTableName, required: true, location_name: "SnapshotWatermarkTable"))
    DatabaseSourceConfiguration.add_member(:database_source_authentication_configuration, Shapes::ShapeRef.new(shape: DatabaseSourceAuthenticationConfiguration, required: true, location_name: "DatabaseSourceAuthenticationConfiguration"))
    DatabaseSourceConfiguration.add_member(:database_source_vpc_configuration, Shapes::ShapeRef.new(shape: DatabaseSourceVPCConfiguration, required: true, location_name: "DatabaseSourceVPCConfiguration"))
    DatabaseSourceConfiguration.struct_class = Types::DatabaseSourceConfiguration

    DatabaseSourceDescription.add_member(:type, Shapes::ShapeRef.new(shape: DatabaseType, location_name: "Type"))
    DatabaseSourceDescription.add_member(:endpoint, Shapes::ShapeRef.new(shape: DatabaseEndpoint, location_name: "Endpoint"))
    DatabaseSourceDescription.add_member(:port, Shapes::ShapeRef.new(shape: DatabasePort, location_name: "Port"))
    DatabaseSourceDescription.add_member(:ssl_mode, Shapes::ShapeRef.new(shape: SSLMode, location_name: "SSLMode"))
    DatabaseSourceDescription.add_member(:databases, Shapes::ShapeRef.new(shape: DatabaseList, location_name: "Databases"))
    DatabaseSourceDescription.add_member(:tables, Shapes::ShapeRef.new(shape: DatabaseTableList, location_name: "Tables"))
    DatabaseSourceDescription.add_member(:columns, Shapes::ShapeRef.new(shape: DatabaseColumnList, location_name: "Columns"))
    DatabaseSourceDescription.add_member(:surrogate_keys, Shapes::ShapeRef.new(shape: DatabaseColumnIncludeOrExcludeList, location_name: "SurrogateKeys"))
    DatabaseSourceDescription.add_member(:snapshot_watermark_table, Shapes::ShapeRef.new(shape: DatabaseTableName, location_name: "SnapshotWatermarkTable"))
    DatabaseSourceDescription.add_member(:snapshot_info, Shapes::ShapeRef.new(shape: DatabaseSnapshotInfoList, location_name: "SnapshotInfo"))
    DatabaseSourceDescription.add_member(:database_source_authentication_configuration, Shapes::ShapeRef.new(shape: DatabaseSourceAuthenticationConfiguration, location_name: "DatabaseSourceAuthenticationConfiguration"))
    DatabaseSourceDescription.add_member(:database_source_vpc_configuration, Shapes::ShapeRef.new(shape: DatabaseSourceVPCConfiguration, location_name: "DatabaseSourceVPCConfiguration"))
    DatabaseSourceDescription.struct_class = Types::DatabaseSourceDescription

    DatabaseSourceVPCConfiguration.add_member(:vpc_endpoint_service_name, Shapes::ShapeRef.new(shape: VpcEndpointServiceName, required: true, location_name: "VpcEndpointServiceName"))
    DatabaseSourceVPCConfiguration.struct_class = Types::DatabaseSourceVPCConfiguration

    DatabaseSurrogateKeyList.member = Shapes::ShapeRef.new(shape: NonEmptyStringWithoutWhitespace)

    DatabaseTableIncludeOrExcludeList.member = Shapes::ShapeRef.new(shape: DatabaseTableName)

    DatabaseTableList.add_member(:include, Shapes::ShapeRef.new(shape: DatabaseTableIncludeOrExcludeList, location_name: "Include"))
    DatabaseTableList.add_member(:exclude, Shapes::ShapeRef.new(shape: DatabaseTableIncludeOrExcludeList, location_name: "Exclude"))
    DatabaseTableList.struct_class = Types::DatabaseTableList

    DeleteDeliveryStreamInput.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "DeliveryStreamName"))
    DeleteDeliveryStreamInput.add_member(:allow_force_delete, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "AllowForceDelete"))
    DeleteDeliveryStreamInput.struct_class = Types::DeleteDeliveryStreamInput

    DeleteDeliveryStreamOutput.struct_class = Types::DeleteDeliveryStreamOutput

    DeliveryStreamDescription.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "DeliveryStreamName"))
    DeliveryStreamDescription.add_member(:delivery_stream_arn, Shapes::ShapeRef.new(shape: DeliveryStreamARN, required: true, location_name: "DeliveryStreamARN"))
    DeliveryStreamDescription.add_member(:delivery_stream_status, Shapes::ShapeRef.new(shape: DeliveryStreamStatus, required: true, location_name: "DeliveryStreamStatus"))
    DeliveryStreamDescription.add_member(:failure_description, Shapes::ShapeRef.new(shape: FailureDescription, location_name: "FailureDescription"))
    DeliveryStreamDescription.add_member(:delivery_stream_encryption_configuration, Shapes::ShapeRef.new(shape: DeliveryStreamEncryptionConfiguration, location_name: "DeliveryStreamEncryptionConfiguration"))
    DeliveryStreamDescription.add_member(:delivery_stream_type, Shapes::ShapeRef.new(shape: DeliveryStreamType, required: true, location_name: "DeliveryStreamType"))
    DeliveryStreamDescription.add_member(:version_id, Shapes::ShapeRef.new(shape: DeliveryStreamVersionId, required: true, location_name: "VersionId"))
    DeliveryStreamDescription.add_member(:create_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateTimestamp"))
    DeliveryStreamDescription.add_member(:last_update_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdateTimestamp"))
    DeliveryStreamDescription.add_member(:source, Shapes::ShapeRef.new(shape: SourceDescription, location_name: "Source"))
    DeliveryStreamDescription.add_member(:destinations, Shapes::ShapeRef.new(shape: DestinationDescriptionList, required: true, location_name: "Destinations"))
    DeliveryStreamDescription.add_member(:has_more_destinations, Shapes::ShapeRef.new(shape: BooleanObject, required: true, location_name: "HasMoreDestinations"))
    DeliveryStreamDescription.struct_class = Types::DeliveryStreamDescription

    DeliveryStreamEncryptionConfiguration.add_member(:key_arn, Shapes::ShapeRef.new(shape: AWSKMSKeyARN, location_name: "KeyARN"))
    DeliveryStreamEncryptionConfiguration.add_member(:key_type, Shapes::ShapeRef.new(shape: KeyType, location_name: "KeyType"))
    DeliveryStreamEncryptionConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: DeliveryStreamEncryptionStatus, location_name: "Status"))
    DeliveryStreamEncryptionConfiguration.add_member(:failure_description, Shapes::ShapeRef.new(shape: FailureDescription, location_name: "FailureDescription"))
    DeliveryStreamEncryptionConfiguration.struct_class = Types::DeliveryStreamEncryptionConfiguration

    DeliveryStreamEncryptionConfigurationInput.add_member(:key_arn, Shapes::ShapeRef.new(shape: AWSKMSKeyARN, location_name: "KeyARN"))
    DeliveryStreamEncryptionConfigurationInput.add_member(:key_type, Shapes::ShapeRef.new(shape: KeyType, required: true, location_name: "KeyType"))
    DeliveryStreamEncryptionConfigurationInput.struct_class = Types::DeliveryStreamEncryptionConfigurationInput

    DeliveryStreamNameList.member = Shapes::ShapeRef.new(shape: DeliveryStreamName)

    DescribeDeliveryStreamInput.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "DeliveryStreamName"))
    DescribeDeliveryStreamInput.add_member(:limit, Shapes::ShapeRef.new(shape: DescribeDeliveryStreamInputLimit, location_name: "Limit"))
    DescribeDeliveryStreamInput.add_member(:exclusive_start_destination_id, Shapes::ShapeRef.new(shape: DestinationId, location_name: "ExclusiveStartDestinationId"))
    DescribeDeliveryStreamInput.struct_class = Types::DescribeDeliveryStreamInput

    DescribeDeliveryStreamOutput.add_member(:delivery_stream_description, Shapes::ShapeRef.new(shape: DeliveryStreamDescription, required: true, location_name: "DeliveryStreamDescription"))
    DescribeDeliveryStreamOutput.struct_class = Types::DescribeDeliveryStreamOutput

    Deserializer.add_member(:open_x_json_ser_de, Shapes::ShapeRef.new(shape: OpenXJsonSerDe, location_name: "OpenXJsonSerDe"))
    Deserializer.add_member(:hive_json_ser_de, Shapes::ShapeRef.new(shape: HiveJsonSerDe, location_name: "HiveJsonSerDe"))
    Deserializer.struct_class = Types::Deserializer

    DestinationDescription.add_member(:destination_id, Shapes::ShapeRef.new(shape: DestinationId, required: true, location_name: "DestinationId"))
    DestinationDescription.add_member(:s3_destination_description, Shapes::ShapeRef.new(shape: S3DestinationDescription, location_name: "S3DestinationDescription"))
    DestinationDescription.add_member(:extended_s3_destination_description, Shapes::ShapeRef.new(shape: ExtendedS3DestinationDescription, location_name: "ExtendedS3DestinationDescription"))
    DestinationDescription.add_member(:redshift_destination_description, Shapes::ShapeRef.new(shape: RedshiftDestinationDescription, location_name: "RedshiftDestinationDescription"))
    DestinationDescription.add_member(:elasticsearch_destination_description, Shapes::ShapeRef.new(shape: ElasticsearchDestinationDescription, location_name: "ElasticsearchDestinationDescription"))
    DestinationDescription.add_member(:amazonopensearchservice_destination_description, Shapes::ShapeRef.new(shape: AmazonopensearchserviceDestinationDescription, location_name: "AmazonopensearchserviceDestinationDescription"))
    DestinationDescription.add_member(:splunk_destination_description, Shapes::ShapeRef.new(shape: SplunkDestinationDescription, location_name: "SplunkDestinationDescription"))
    DestinationDescription.add_member(:http_endpoint_destination_description, Shapes::ShapeRef.new(shape: HttpEndpointDestinationDescription, location_name: "HttpEndpointDestinationDescription"))
    DestinationDescription.add_member(:snowflake_destination_description, Shapes::ShapeRef.new(shape: SnowflakeDestinationDescription, location_name: "SnowflakeDestinationDescription"))
    DestinationDescription.add_member(:amazon_open_search_serverless_destination_description, Shapes::ShapeRef.new(shape: AmazonOpenSearchServerlessDestinationDescription, location_name: "AmazonOpenSearchServerlessDestinationDescription"))
    DestinationDescription.add_member(:iceberg_destination_description, Shapes::ShapeRef.new(shape: IcebergDestinationDescription, location_name: "IcebergDestinationDescription"))
    DestinationDescription.struct_class = Types::DestinationDescription

    DestinationDescriptionList.member = Shapes::ShapeRef.new(shape: DestinationDescription)

    DestinationTableConfiguration.add_member(:destination_table_name, Shapes::ShapeRef.new(shape: StringWithLettersDigitsUnderscoresDots, required: true, location_name: "DestinationTableName"))
    DestinationTableConfiguration.add_member(:destination_database_name, Shapes::ShapeRef.new(shape: StringWithLettersDigitsUnderscoresDots, required: true, location_name: "DestinationDatabaseName"))
    DestinationTableConfiguration.add_member(:unique_keys, Shapes::ShapeRef.new(shape: ListOfNonEmptyStringsWithoutWhitespace, location_name: "UniqueKeys"))
    DestinationTableConfiguration.add_member(:partition_spec, Shapes::ShapeRef.new(shape: PartitionSpec, location_name: "PartitionSpec"))
    DestinationTableConfiguration.add_member(:s3_error_output_prefix, Shapes::ShapeRef.new(shape: ErrorOutputPrefix, location_name: "S3ErrorOutputPrefix"))
    DestinationTableConfiguration.struct_class = Types::DestinationTableConfiguration

    DestinationTableConfigurationList.member = Shapes::ShapeRef.new(shape: DestinationTableConfiguration)

    DirectPutSourceConfiguration.add_member(:throughput_hint_in_m_bs, Shapes::ShapeRef.new(shape: ThroughputHintInMBs, required: true, location_name: "ThroughputHintInMBs"))
    DirectPutSourceConfiguration.struct_class = Types::DirectPutSourceConfiguration

    DirectPutSourceDescription.add_member(:throughput_hint_in_m_bs, Shapes::ShapeRef.new(shape: ThroughputHintInMBs, location_name: "ThroughputHintInMBs"))
    DirectPutSourceDescription.struct_class = Types::DirectPutSourceDescription

    DocumentIdOptions.add_member(:default_document_id_format, Shapes::ShapeRef.new(shape: DefaultDocumentIdFormat, required: true, location_name: "DefaultDocumentIdFormat"))
    DocumentIdOptions.struct_class = Types::DocumentIdOptions

    DynamicPartitioningConfiguration.add_member(:retry_options, Shapes::ShapeRef.new(shape: RetryOptions, location_name: "RetryOptions"))
    DynamicPartitioningConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "Enabled"))
    DynamicPartitioningConfiguration.struct_class = Types::DynamicPartitioningConfiguration

    ElasticsearchBufferingHints.add_member(:interval_in_seconds, Shapes::ShapeRef.new(shape: ElasticsearchBufferingIntervalInSeconds, location_name: "IntervalInSeconds"))
    ElasticsearchBufferingHints.add_member(:size_in_m_bs, Shapes::ShapeRef.new(shape: ElasticsearchBufferingSizeInMBs, location_name: "SizeInMBs"))
    ElasticsearchBufferingHints.struct_class = Types::ElasticsearchBufferingHints

    ElasticsearchDestinationConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    ElasticsearchDestinationConfiguration.add_member(:domain_arn, Shapes::ShapeRef.new(shape: ElasticsearchDomainARN, location_name: "DomainARN"))
    ElasticsearchDestinationConfiguration.add_member(:cluster_endpoint, Shapes::ShapeRef.new(shape: ElasticsearchClusterEndpoint, location_name: "ClusterEndpoint"))
    ElasticsearchDestinationConfiguration.add_member(:index_name, Shapes::ShapeRef.new(shape: ElasticsearchIndexName, required: true, location_name: "IndexName"))
    ElasticsearchDestinationConfiguration.add_member(:type_name, Shapes::ShapeRef.new(shape: ElasticsearchTypeName, location_name: "TypeName"))
    ElasticsearchDestinationConfiguration.add_member(:index_rotation_period, Shapes::ShapeRef.new(shape: ElasticsearchIndexRotationPeriod, location_name: "IndexRotationPeriod"))
    ElasticsearchDestinationConfiguration.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: ElasticsearchBufferingHints, location_name: "BufferingHints"))
    ElasticsearchDestinationConfiguration.add_member(:retry_options, Shapes::ShapeRef.new(shape: ElasticsearchRetryOptions, location_name: "RetryOptions"))
    ElasticsearchDestinationConfiguration.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: ElasticsearchS3BackupMode, location_name: "S3BackupMode"))
    ElasticsearchDestinationConfiguration.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: S3DestinationConfiguration, required: true, location_name: "S3Configuration"))
    ElasticsearchDestinationConfiguration.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    ElasticsearchDestinationConfiguration.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    ElasticsearchDestinationConfiguration.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: "VpcConfiguration"))
    ElasticsearchDestinationConfiguration.add_member(:document_id_options, Shapes::ShapeRef.new(shape: DocumentIdOptions, location_name: "DocumentIdOptions"))
    ElasticsearchDestinationConfiguration.struct_class = Types::ElasticsearchDestinationConfiguration

    ElasticsearchDestinationDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    ElasticsearchDestinationDescription.add_member(:domain_arn, Shapes::ShapeRef.new(shape: ElasticsearchDomainARN, location_name: "DomainARN"))
    ElasticsearchDestinationDescription.add_member(:cluster_endpoint, Shapes::ShapeRef.new(shape: ElasticsearchClusterEndpoint, location_name: "ClusterEndpoint"))
    ElasticsearchDestinationDescription.add_member(:index_name, Shapes::ShapeRef.new(shape: ElasticsearchIndexName, location_name: "IndexName"))
    ElasticsearchDestinationDescription.add_member(:type_name, Shapes::ShapeRef.new(shape: ElasticsearchTypeName, location_name: "TypeName"))
    ElasticsearchDestinationDescription.add_member(:index_rotation_period, Shapes::ShapeRef.new(shape: ElasticsearchIndexRotationPeriod, location_name: "IndexRotationPeriod"))
    ElasticsearchDestinationDescription.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: ElasticsearchBufferingHints, location_name: "BufferingHints"))
    ElasticsearchDestinationDescription.add_member(:retry_options, Shapes::ShapeRef.new(shape: ElasticsearchRetryOptions, location_name: "RetryOptions"))
    ElasticsearchDestinationDescription.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: ElasticsearchS3BackupMode, location_name: "S3BackupMode"))
    ElasticsearchDestinationDescription.add_member(:s3_destination_description, Shapes::ShapeRef.new(shape: S3DestinationDescription, location_name: "S3DestinationDescription"))
    ElasticsearchDestinationDescription.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    ElasticsearchDestinationDescription.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    ElasticsearchDestinationDescription.add_member(:vpc_configuration_description, Shapes::ShapeRef.new(shape: VpcConfigurationDescription, location_name: "VpcConfigurationDescription"))
    ElasticsearchDestinationDescription.add_member(:document_id_options, Shapes::ShapeRef.new(shape: DocumentIdOptions, location_name: "DocumentIdOptions"))
    ElasticsearchDestinationDescription.struct_class = Types::ElasticsearchDestinationDescription

    ElasticsearchDestinationUpdate.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    ElasticsearchDestinationUpdate.add_member(:domain_arn, Shapes::ShapeRef.new(shape: ElasticsearchDomainARN, location_name: "DomainARN"))
    ElasticsearchDestinationUpdate.add_member(:cluster_endpoint, Shapes::ShapeRef.new(shape: ElasticsearchClusterEndpoint, location_name: "ClusterEndpoint"))
    ElasticsearchDestinationUpdate.add_member(:index_name, Shapes::ShapeRef.new(shape: ElasticsearchIndexName, location_name: "IndexName"))
    ElasticsearchDestinationUpdate.add_member(:type_name, Shapes::ShapeRef.new(shape: ElasticsearchTypeName, location_name: "TypeName"))
    ElasticsearchDestinationUpdate.add_member(:index_rotation_period, Shapes::ShapeRef.new(shape: ElasticsearchIndexRotationPeriod, location_name: "IndexRotationPeriod"))
    ElasticsearchDestinationUpdate.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: ElasticsearchBufferingHints, location_name: "BufferingHints"))
    ElasticsearchDestinationUpdate.add_member(:retry_options, Shapes::ShapeRef.new(shape: ElasticsearchRetryOptions, location_name: "RetryOptions"))
    ElasticsearchDestinationUpdate.add_member(:s3_update, Shapes::ShapeRef.new(shape: S3DestinationUpdate, location_name: "S3Update"))
    ElasticsearchDestinationUpdate.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    ElasticsearchDestinationUpdate.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    ElasticsearchDestinationUpdate.add_member(:document_id_options, Shapes::ShapeRef.new(shape: DocumentIdOptions, location_name: "DocumentIdOptions"))
    ElasticsearchDestinationUpdate.struct_class = Types::ElasticsearchDestinationUpdate

    ElasticsearchRetryOptions.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: ElasticsearchRetryDurationInSeconds, location_name: "DurationInSeconds"))
    ElasticsearchRetryOptions.struct_class = Types::ElasticsearchRetryOptions

    EncryptionConfiguration.add_member(:no_encryption_config, Shapes::ShapeRef.new(shape: NoEncryptionConfig, location_name: "NoEncryptionConfig"))
    EncryptionConfiguration.add_member(:kms_encryption_config, Shapes::ShapeRef.new(shape: KMSEncryptionConfig, location_name: "KMSEncryptionConfig"))
    EncryptionConfiguration.struct_class = Types::EncryptionConfiguration

    ExtendedS3DestinationConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    ExtendedS3DestinationConfiguration.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: BucketARN, required: true, location_name: "BucketARN"))
    ExtendedS3DestinationConfiguration.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, location_name: "Prefix"))
    ExtendedS3DestinationConfiguration.add_member(:error_output_prefix, Shapes::ShapeRef.new(shape: ErrorOutputPrefix, location_name: "ErrorOutputPrefix"))
    ExtendedS3DestinationConfiguration.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: BufferingHints, location_name: "BufferingHints"))
    ExtendedS3DestinationConfiguration.add_member(:compression_format, Shapes::ShapeRef.new(shape: CompressionFormat, location_name: "CompressionFormat"))
    ExtendedS3DestinationConfiguration.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    ExtendedS3DestinationConfiguration.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    ExtendedS3DestinationConfiguration.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    ExtendedS3DestinationConfiguration.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: S3BackupMode, location_name: "S3BackupMode"))
    ExtendedS3DestinationConfiguration.add_member(:s3_backup_configuration, Shapes::ShapeRef.new(shape: S3DestinationConfiguration, location_name: "S3BackupConfiguration"))
    ExtendedS3DestinationConfiguration.add_member(:data_format_conversion_configuration, Shapes::ShapeRef.new(shape: DataFormatConversionConfiguration, location_name: "DataFormatConversionConfiguration"))
    ExtendedS3DestinationConfiguration.add_member(:dynamic_partitioning_configuration, Shapes::ShapeRef.new(shape: DynamicPartitioningConfiguration, location_name: "DynamicPartitioningConfiguration"))
    ExtendedS3DestinationConfiguration.add_member(:file_extension, Shapes::ShapeRef.new(shape: FileExtension, location_name: "FileExtension"))
    ExtendedS3DestinationConfiguration.add_member(:custom_time_zone, Shapes::ShapeRef.new(shape: CustomTimeZone, location_name: "CustomTimeZone"))
    ExtendedS3DestinationConfiguration.struct_class = Types::ExtendedS3DestinationConfiguration

    ExtendedS3DestinationDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    ExtendedS3DestinationDescription.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: BucketARN, required: true, location_name: "BucketARN"))
    ExtendedS3DestinationDescription.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, location_name: "Prefix"))
    ExtendedS3DestinationDescription.add_member(:error_output_prefix, Shapes::ShapeRef.new(shape: ErrorOutputPrefix, location_name: "ErrorOutputPrefix"))
    ExtendedS3DestinationDescription.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: BufferingHints, required: true, location_name: "BufferingHints"))
    ExtendedS3DestinationDescription.add_member(:compression_format, Shapes::ShapeRef.new(shape: CompressionFormat, required: true, location_name: "CompressionFormat"))
    ExtendedS3DestinationDescription.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, required: true, location_name: "EncryptionConfiguration"))
    ExtendedS3DestinationDescription.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    ExtendedS3DestinationDescription.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    ExtendedS3DestinationDescription.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: S3BackupMode, location_name: "S3BackupMode"))
    ExtendedS3DestinationDescription.add_member(:s3_backup_description, Shapes::ShapeRef.new(shape: S3DestinationDescription, location_name: "S3BackupDescription"))
    ExtendedS3DestinationDescription.add_member(:data_format_conversion_configuration, Shapes::ShapeRef.new(shape: DataFormatConversionConfiguration, location_name: "DataFormatConversionConfiguration"))
    ExtendedS3DestinationDescription.add_member(:dynamic_partitioning_configuration, Shapes::ShapeRef.new(shape: DynamicPartitioningConfiguration, location_name: "DynamicPartitioningConfiguration"))
    ExtendedS3DestinationDescription.add_member(:file_extension, Shapes::ShapeRef.new(shape: FileExtension, location_name: "FileExtension"))
    ExtendedS3DestinationDescription.add_member(:custom_time_zone, Shapes::ShapeRef.new(shape: CustomTimeZone, location_name: "CustomTimeZone"))
    ExtendedS3DestinationDescription.struct_class = Types::ExtendedS3DestinationDescription

    ExtendedS3DestinationUpdate.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    ExtendedS3DestinationUpdate.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: BucketARN, location_name: "BucketARN"))
    ExtendedS3DestinationUpdate.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, location_name: "Prefix"))
    ExtendedS3DestinationUpdate.add_member(:error_output_prefix, Shapes::ShapeRef.new(shape: ErrorOutputPrefix, location_name: "ErrorOutputPrefix"))
    ExtendedS3DestinationUpdate.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: BufferingHints, location_name: "BufferingHints"))
    ExtendedS3DestinationUpdate.add_member(:compression_format, Shapes::ShapeRef.new(shape: CompressionFormat, location_name: "CompressionFormat"))
    ExtendedS3DestinationUpdate.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    ExtendedS3DestinationUpdate.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    ExtendedS3DestinationUpdate.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    ExtendedS3DestinationUpdate.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: S3BackupMode, location_name: "S3BackupMode"))
    ExtendedS3DestinationUpdate.add_member(:s3_backup_update, Shapes::ShapeRef.new(shape: S3DestinationUpdate, location_name: "S3BackupUpdate"))
    ExtendedS3DestinationUpdate.add_member(:data_format_conversion_configuration, Shapes::ShapeRef.new(shape: DataFormatConversionConfiguration, location_name: "DataFormatConversionConfiguration"))
    ExtendedS3DestinationUpdate.add_member(:dynamic_partitioning_configuration, Shapes::ShapeRef.new(shape: DynamicPartitioningConfiguration, location_name: "DynamicPartitioningConfiguration"))
    ExtendedS3DestinationUpdate.add_member(:file_extension, Shapes::ShapeRef.new(shape: FileExtension, location_name: "FileExtension"))
    ExtendedS3DestinationUpdate.add_member(:custom_time_zone, Shapes::ShapeRef.new(shape: CustomTimeZone, location_name: "CustomTimeZone"))
    ExtendedS3DestinationUpdate.struct_class = Types::ExtendedS3DestinationUpdate

    FailureDescription.add_member(:type, Shapes::ShapeRef.new(shape: DeliveryStreamFailureType, required: true, location_name: "Type"))
    FailureDescription.add_member(:details, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Details"))
    FailureDescription.struct_class = Types::FailureDescription

    HiveJsonSerDe.add_member(:timestamp_formats, Shapes::ShapeRef.new(shape: ListOfNonEmptyStrings, location_name: "TimestampFormats"))
    HiveJsonSerDe.struct_class = Types::HiveJsonSerDe

    HttpEndpointBufferingHints.add_member(:size_in_m_bs, Shapes::ShapeRef.new(shape: HttpEndpointBufferingSizeInMBs, location_name: "SizeInMBs"))
    HttpEndpointBufferingHints.add_member(:interval_in_seconds, Shapes::ShapeRef.new(shape: HttpEndpointBufferingIntervalInSeconds, location_name: "IntervalInSeconds"))
    HttpEndpointBufferingHints.struct_class = Types::HttpEndpointBufferingHints

    HttpEndpointCommonAttribute.add_member(:attribute_name, Shapes::ShapeRef.new(shape: HttpEndpointAttributeName, required: true, location_name: "AttributeName"))
    HttpEndpointCommonAttribute.add_member(:attribute_value, Shapes::ShapeRef.new(shape: HttpEndpointAttributeValue, required: true, location_name: "AttributeValue"))
    HttpEndpointCommonAttribute.struct_class = Types::HttpEndpointCommonAttribute

    HttpEndpointCommonAttributesList.member = Shapes::ShapeRef.new(shape: HttpEndpointCommonAttribute)

    HttpEndpointConfiguration.add_member(:url, Shapes::ShapeRef.new(shape: HttpEndpointUrl, required: true, location_name: "Url"))
    HttpEndpointConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: HttpEndpointName, location_name: "Name"))
    HttpEndpointConfiguration.add_member(:access_key, Shapes::ShapeRef.new(shape: HttpEndpointAccessKey, location_name: "AccessKey"))
    HttpEndpointConfiguration.struct_class = Types::HttpEndpointConfiguration

    HttpEndpointDescription.add_member(:url, Shapes::ShapeRef.new(shape: HttpEndpointUrl, location_name: "Url"))
    HttpEndpointDescription.add_member(:name, Shapes::ShapeRef.new(shape: HttpEndpointName, location_name: "Name"))
    HttpEndpointDescription.struct_class = Types::HttpEndpointDescription

    HttpEndpointDestinationConfiguration.add_member(:endpoint_configuration, Shapes::ShapeRef.new(shape: HttpEndpointConfiguration, required: true, location_name: "EndpointConfiguration"))
    HttpEndpointDestinationConfiguration.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: HttpEndpointBufferingHints, location_name: "BufferingHints"))
    HttpEndpointDestinationConfiguration.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    HttpEndpointDestinationConfiguration.add_member(:request_configuration, Shapes::ShapeRef.new(shape: HttpEndpointRequestConfiguration, location_name: "RequestConfiguration"))
    HttpEndpointDestinationConfiguration.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    HttpEndpointDestinationConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    HttpEndpointDestinationConfiguration.add_member(:retry_options, Shapes::ShapeRef.new(shape: HttpEndpointRetryOptions, location_name: "RetryOptions"))
    HttpEndpointDestinationConfiguration.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: HttpEndpointS3BackupMode, location_name: "S3BackupMode"))
    HttpEndpointDestinationConfiguration.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: S3DestinationConfiguration, required: true, location_name: "S3Configuration"))
    HttpEndpointDestinationConfiguration.add_member(:secrets_manager_configuration, Shapes::ShapeRef.new(shape: SecretsManagerConfiguration, location_name: "SecretsManagerConfiguration"))
    HttpEndpointDestinationConfiguration.struct_class = Types::HttpEndpointDestinationConfiguration

    HttpEndpointDestinationDescription.add_member(:endpoint_configuration, Shapes::ShapeRef.new(shape: HttpEndpointDescription, location_name: "EndpointConfiguration"))
    HttpEndpointDestinationDescription.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: HttpEndpointBufferingHints, location_name: "BufferingHints"))
    HttpEndpointDestinationDescription.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    HttpEndpointDestinationDescription.add_member(:request_configuration, Shapes::ShapeRef.new(shape: HttpEndpointRequestConfiguration, location_name: "RequestConfiguration"))
    HttpEndpointDestinationDescription.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    HttpEndpointDestinationDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    HttpEndpointDestinationDescription.add_member(:retry_options, Shapes::ShapeRef.new(shape: HttpEndpointRetryOptions, location_name: "RetryOptions"))
    HttpEndpointDestinationDescription.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: HttpEndpointS3BackupMode, location_name: "S3BackupMode"))
    HttpEndpointDestinationDescription.add_member(:s3_destination_description, Shapes::ShapeRef.new(shape: S3DestinationDescription, location_name: "S3DestinationDescription"))
    HttpEndpointDestinationDescription.add_member(:secrets_manager_configuration, Shapes::ShapeRef.new(shape: SecretsManagerConfiguration, location_name: "SecretsManagerConfiguration"))
    HttpEndpointDestinationDescription.struct_class = Types::HttpEndpointDestinationDescription

    HttpEndpointDestinationUpdate.add_member(:endpoint_configuration, Shapes::ShapeRef.new(shape: HttpEndpointConfiguration, location_name: "EndpointConfiguration"))
    HttpEndpointDestinationUpdate.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: HttpEndpointBufferingHints, location_name: "BufferingHints"))
    HttpEndpointDestinationUpdate.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    HttpEndpointDestinationUpdate.add_member(:request_configuration, Shapes::ShapeRef.new(shape: HttpEndpointRequestConfiguration, location_name: "RequestConfiguration"))
    HttpEndpointDestinationUpdate.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    HttpEndpointDestinationUpdate.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    HttpEndpointDestinationUpdate.add_member(:retry_options, Shapes::ShapeRef.new(shape: HttpEndpointRetryOptions, location_name: "RetryOptions"))
    HttpEndpointDestinationUpdate.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: HttpEndpointS3BackupMode, location_name: "S3BackupMode"))
    HttpEndpointDestinationUpdate.add_member(:s3_update, Shapes::ShapeRef.new(shape: S3DestinationUpdate, location_name: "S3Update"))
    HttpEndpointDestinationUpdate.add_member(:secrets_manager_configuration, Shapes::ShapeRef.new(shape: SecretsManagerConfiguration, location_name: "SecretsManagerConfiguration"))
    HttpEndpointDestinationUpdate.struct_class = Types::HttpEndpointDestinationUpdate

    HttpEndpointRequestConfiguration.add_member(:content_encoding, Shapes::ShapeRef.new(shape: ContentEncoding, location_name: "ContentEncoding"))
    HttpEndpointRequestConfiguration.add_member(:common_attributes, Shapes::ShapeRef.new(shape: HttpEndpointCommonAttributesList, location_name: "CommonAttributes"))
    HttpEndpointRequestConfiguration.struct_class = Types::HttpEndpointRequestConfiguration

    HttpEndpointRetryOptions.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: HttpEndpointRetryDurationInSeconds, location_name: "DurationInSeconds"))
    HttpEndpointRetryOptions.struct_class = Types::HttpEndpointRetryOptions

    IcebergDestinationConfiguration.add_member(:destination_table_configuration_list, Shapes::ShapeRef.new(shape: DestinationTableConfigurationList, location_name: "DestinationTableConfigurationList"))
    IcebergDestinationConfiguration.add_member(:schema_evolution_configuration, Shapes::ShapeRef.new(shape: SchemaEvolutionConfiguration, location_name: "SchemaEvolutionConfiguration"))
    IcebergDestinationConfiguration.add_member(:table_creation_configuration, Shapes::ShapeRef.new(shape: TableCreationConfiguration, location_name: "TableCreationConfiguration"))
    IcebergDestinationConfiguration.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: BufferingHints, location_name: "BufferingHints"))
    IcebergDestinationConfiguration.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    IcebergDestinationConfiguration.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    IcebergDestinationConfiguration.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: IcebergS3BackupMode, location_name: "S3BackupMode"))
    IcebergDestinationConfiguration.add_member(:retry_options, Shapes::ShapeRef.new(shape: RetryOptions, location_name: "RetryOptions"))
    IcebergDestinationConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    IcebergDestinationConfiguration.add_member(:append_only, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "AppendOnly"))
    IcebergDestinationConfiguration.add_member(:catalog_configuration, Shapes::ShapeRef.new(shape: CatalogConfiguration, required: true, location_name: "CatalogConfiguration"))
    IcebergDestinationConfiguration.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: S3DestinationConfiguration, required: true, location_name: "S3Configuration"))
    IcebergDestinationConfiguration.struct_class = Types::IcebergDestinationConfiguration

    IcebergDestinationDescription.add_member(:destination_table_configuration_list, Shapes::ShapeRef.new(shape: DestinationTableConfigurationList, location_name: "DestinationTableConfigurationList"))
    IcebergDestinationDescription.add_member(:schema_evolution_configuration, Shapes::ShapeRef.new(shape: SchemaEvolutionConfiguration, location_name: "SchemaEvolutionConfiguration"))
    IcebergDestinationDescription.add_member(:table_creation_configuration, Shapes::ShapeRef.new(shape: TableCreationConfiguration, location_name: "TableCreationConfiguration"))
    IcebergDestinationDescription.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: BufferingHints, location_name: "BufferingHints"))
    IcebergDestinationDescription.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    IcebergDestinationDescription.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    IcebergDestinationDescription.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: IcebergS3BackupMode, location_name: "S3BackupMode"))
    IcebergDestinationDescription.add_member(:retry_options, Shapes::ShapeRef.new(shape: RetryOptions, location_name: "RetryOptions"))
    IcebergDestinationDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    IcebergDestinationDescription.add_member(:append_only, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "AppendOnly"))
    IcebergDestinationDescription.add_member(:catalog_configuration, Shapes::ShapeRef.new(shape: CatalogConfiguration, location_name: "CatalogConfiguration"))
    IcebergDestinationDescription.add_member(:s3_destination_description, Shapes::ShapeRef.new(shape: S3DestinationDescription, location_name: "S3DestinationDescription"))
    IcebergDestinationDescription.struct_class = Types::IcebergDestinationDescription

    IcebergDestinationUpdate.add_member(:destination_table_configuration_list, Shapes::ShapeRef.new(shape: DestinationTableConfigurationList, location_name: "DestinationTableConfigurationList"))
    IcebergDestinationUpdate.add_member(:schema_evolution_configuration, Shapes::ShapeRef.new(shape: SchemaEvolutionConfiguration, location_name: "SchemaEvolutionConfiguration"))
    IcebergDestinationUpdate.add_member(:table_creation_configuration, Shapes::ShapeRef.new(shape: TableCreationConfiguration, location_name: "TableCreationConfiguration"))
    IcebergDestinationUpdate.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: BufferingHints, location_name: "BufferingHints"))
    IcebergDestinationUpdate.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    IcebergDestinationUpdate.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    IcebergDestinationUpdate.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: IcebergS3BackupMode, location_name: "S3BackupMode"))
    IcebergDestinationUpdate.add_member(:retry_options, Shapes::ShapeRef.new(shape: RetryOptions, location_name: "RetryOptions"))
    IcebergDestinationUpdate.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    IcebergDestinationUpdate.add_member(:append_only, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "AppendOnly"))
    IcebergDestinationUpdate.add_member(:catalog_configuration, Shapes::ShapeRef.new(shape: CatalogConfiguration, location_name: "CatalogConfiguration"))
    IcebergDestinationUpdate.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: S3DestinationConfiguration, location_name: "S3Configuration"))
    IcebergDestinationUpdate.struct_class = Types::IcebergDestinationUpdate

    InputFormatConfiguration.add_member(:deserializer, Shapes::ShapeRef.new(shape: Deserializer, location_name: "Deserializer"))
    InputFormatConfiguration.struct_class = Types::InputFormatConfiguration

    InvalidArgumentException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidArgumentException.struct_class = Types::InvalidArgumentException

    InvalidKMSResourceException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "code"))
    InvalidKMSResourceException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidKMSResourceException.struct_class = Types::InvalidKMSResourceException

    InvalidSourceException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "code"))
    InvalidSourceException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidSourceException.struct_class = Types::InvalidSourceException

    KMSEncryptionConfig.add_member(:awskms_key_arn, Shapes::ShapeRef.new(shape: AWSKMSKeyARN, required: true, location_name: "AWSKMSKeyARN"))
    KMSEncryptionConfig.struct_class = Types::KMSEncryptionConfig

    KinesisStreamSourceConfiguration.add_member(:kinesis_stream_arn, Shapes::ShapeRef.new(shape: KinesisStreamARN, required: true, location_name: "KinesisStreamARN"))
    KinesisStreamSourceConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    KinesisStreamSourceConfiguration.struct_class = Types::KinesisStreamSourceConfiguration

    KinesisStreamSourceDescription.add_member(:kinesis_stream_arn, Shapes::ShapeRef.new(shape: KinesisStreamARN, location_name: "KinesisStreamARN"))
    KinesisStreamSourceDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    KinesisStreamSourceDescription.add_member(:delivery_start_timestamp, Shapes::ShapeRef.new(shape: DeliveryStartTimestamp, location_name: "DeliveryStartTimestamp"))
    KinesisStreamSourceDescription.struct_class = Types::KinesisStreamSourceDescription

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListDeliveryStreamsInput.add_member(:limit, Shapes::ShapeRef.new(shape: ListDeliveryStreamsInputLimit, location_name: "Limit"))
    ListDeliveryStreamsInput.add_member(:delivery_stream_type, Shapes::ShapeRef.new(shape: DeliveryStreamType, location_name: "DeliveryStreamType"))
    ListDeliveryStreamsInput.add_member(:exclusive_start_delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, location_name: "ExclusiveStartDeliveryStreamName"))
    ListDeliveryStreamsInput.struct_class = Types::ListDeliveryStreamsInput

    ListDeliveryStreamsOutput.add_member(:delivery_stream_names, Shapes::ShapeRef.new(shape: DeliveryStreamNameList, required: true, location_name: "DeliveryStreamNames"))
    ListDeliveryStreamsOutput.add_member(:has_more_delivery_streams, Shapes::ShapeRef.new(shape: BooleanObject, required: true, location_name: "HasMoreDeliveryStreams"))
    ListDeliveryStreamsOutput.struct_class = Types::ListDeliveryStreamsOutput

    ListOfNonEmptyStrings.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    ListOfNonEmptyStringsWithoutWhitespace.member = Shapes::ShapeRef.new(shape: NonEmptyStringWithoutWhitespace)

    ListTagsForDeliveryStreamInput.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "DeliveryStreamName"))
    ListTagsForDeliveryStreamInput.add_member(:exclusive_start_tag_key, Shapes::ShapeRef.new(shape: TagKey, location_name: "ExclusiveStartTagKey"))
    ListTagsForDeliveryStreamInput.add_member(:limit, Shapes::ShapeRef.new(shape: ListTagsForDeliveryStreamInputLimit, location_name: "Limit"))
    ListTagsForDeliveryStreamInput.struct_class = Types::ListTagsForDeliveryStreamInput

    ListTagsForDeliveryStreamOutput.add_member(:tags, Shapes::ShapeRef.new(shape: ListTagsForDeliveryStreamOutputTagList, required: true, location_name: "Tags"))
    ListTagsForDeliveryStreamOutput.add_member(:has_more_tags, Shapes::ShapeRef.new(shape: BooleanObject, required: true, location_name: "HasMoreTags"))
    ListTagsForDeliveryStreamOutput.struct_class = Types::ListTagsForDeliveryStreamOutput

    ListTagsForDeliveryStreamOutputTagList.member = Shapes::ShapeRef.new(shape: Tag)

    MSKSourceConfiguration.add_member(:msk_cluster_arn, Shapes::ShapeRef.new(shape: MSKClusterARN, required: true, location_name: "MSKClusterARN"))
    MSKSourceConfiguration.add_member(:topic_name, Shapes::ShapeRef.new(shape: TopicName, required: true, location_name: "TopicName"))
    MSKSourceConfiguration.add_member(:authentication_configuration, Shapes::ShapeRef.new(shape: AuthenticationConfiguration, required: true, location_name: "AuthenticationConfiguration"))
    MSKSourceConfiguration.add_member(:read_from_timestamp, Shapes::ShapeRef.new(shape: ReadFromTimestamp, location_name: "ReadFromTimestamp"))
    MSKSourceConfiguration.struct_class = Types::MSKSourceConfiguration

    MSKSourceDescription.add_member(:msk_cluster_arn, Shapes::ShapeRef.new(shape: MSKClusterARN, location_name: "MSKClusterARN"))
    MSKSourceDescription.add_member(:topic_name, Shapes::ShapeRef.new(shape: TopicName, location_name: "TopicName"))
    MSKSourceDescription.add_member(:authentication_configuration, Shapes::ShapeRef.new(shape: AuthenticationConfiguration, location_name: "AuthenticationConfiguration"))
    MSKSourceDescription.add_member(:delivery_start_timestamp, Shapes::ShapeRef.new(shape: DeliveryStartTimestamp, location_name: "DeliveryStartTimestamp"))
    MSKSourceDescription.add_member(:read_from_timestamp, Shapes::ShapeRef.new(shape: ReadFromTimestamp, location_name: "ReadFromTimestamp"))
    MSKSourceDescription.struct_class = Types::MSKSourceDescription

    OpenXJsonSerDe.add_member(:convert_dots_in_json_keys_to_underscores, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "ConvertDotsInJsonKeysToUnderscores"))
    OpenXJsonSerDe.add_member(:case_insensitive, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "CaseInsensitive"))
    OpenXJsonSerDe.add_member(:column_to_json_key_mappings, Shapes::ShapeRef.new(shape: ColumnToJsonKeyMappings, location_name: "ColumnToJsonKeyMappings"))
    OpenXJsonSerDe.struct_class = Types::OpenXJsonSerDe

    OrcSerDe.add_member(:stripe_size_bytes, Shapes::ShapeRef.new(shape: OrcStripeSizeBytes, location_name: "StripeSizeBytes"))
    OrcSerDe.add_member(:block_size_bytes, Shapes::ShapeRef.new(shape: BlockSizeBytes, location_name: "BlockSizeBytes"))
    OrcSerDe.add_member(:row_index_stride, Shapes::ShapeRef.new(shape: OrcRowIndexStride, location_name: "RowIndexStride"))
    OrcSerDe.add_member(:enable_padding, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnablePadding"))
    OrcSerDe.add_member(:padding_tolerance, Shapes::ShapeRef.new(shape: Proportion, location_name: "PaddingTolerance"))
    OrcSerDe.add_member(:compression, Shapes::ShapeRef.new(shape: OrcCompression, location_name: "Compression"))
    OrcSerDe.add_member(:bloom_filter_columns, Shapes::ShapeRef.new(shape: ListOfNonEmptyStringsWithoutWhitespace, location_name: "BloomFilterColumns"))
    OrcSerDe.add_member(:bloom_filter_false_positive_probability, Shapes::ShapeRef.new(shape: Proportion, location_name: "BloomFilterFalsePositiveProbability"))
    OrcSerDe.add_member(:dictionary_key_threshold, Shapes::ShapeRef.new(shape: Proportion, location_name: "DictionaryKeyThreshold"))
    OrcSerDe.add_member(:format_version, Shapes::ShapeRef.new(shape: OrcFormatVersion, location_name: "FormatVersion"))
    OrcSerDe.struct_class = Types::OrcSerDe

    OutputFormatConfiguration.add_member(:serializer, Shapes::ShapeRef.new(shape: Serializer, location_name: "Serializer"))
    OutputFormatConfiguration.struct_class = Types::OutputFormatConfiguration

    ParquetSerDe.add_member(:block_size_bytes, Shapes::ShapeRef.new(shape: BlockSizeBytes, location_name: "BlockSizeBytes"))
    ParquetSerDe.add_member(:page_size_bytes, Shapes::ShapeRef.new(shape: ParquetPageSizeBytes, location_name: "PageSizeBytes"))
    ParquetSerDe.add_member(:compression, Shapes::ShapeRef.new(shape: ParquetCompression, location_name: "Compression"))
    ParquetSerDe.add_member(:enable_dictionary_compression, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableDictionaryCompression"))
    ParquetSerDe.add_member(:max_padding_bytes, Shapes::ShapeRef.new(shape: NonNegativeIntegerObject, location_name: "MaxPaddingBytes"))
    ParquetSerDe.add_member(:writer_version, Shapes::ShapeRef.new(shape: ParquetWriterVersion, location_name: "WriterVersion"))
    ParquetSerDe.struct_class = Types::ParquetSerDe

    PartitionField.add_member(:source_name, Shapes::ShapeRef.new(shape: NonEmptyStringWithoutWhitespace, required: true, location_name: "SourceName"))
    PartitionField.struct_class = Types::PartitionField

    PartitionFields.member = Shapes::ShapeRef.new(shape: PartitionField)

    PartitionSpec.add_member(:identity, Shapes::ShapeRef.new(shape: PartitionFields, location_name: "Identity"))
    PartitionSpec.struct_class = Types::PartitionSpec

    ProcessingConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "Enabled"))
    ProcessingConfiguration.add_member(:processors, Shapes::ShapeRef.new(shape: ProcessorList, location_name: "Processors"))
    ProcessingConfiguration.struct_class = Types::ProcessingConfiguration

    Processor.add_member(:type, Shapes::ShapeRef.new(shape: ProcessorType, required: true, location_name: "Type"))
    Processor.add_member(:parameters, Shapes::ShapeRef.new(shape: ProcessorParameterList, location_name: "Parameters"))
    Processor.struct_class = Types::Processor

    ProcessorList.member = Shapes::ShapeRef.new(shape: Processor)

    ProcessorParameter.add_member(:parameter_name, Shapes::ShapeRef.new(shape: ProcessorParameterName, required: true, location_name: "ParameterName"))
    ProcessorParameter.add_member(:parameter_value, Shapes::ShapeRef.new(shape: ProcessorParameterValue, required: true, location_name: "ParameterValue"))
    ProcessorParameter.struct_class = Types::ProcessorParameter

    ProcessorParameterList.member = Shapes::ShapeRef.new(shape: ProcessorParameter)

    PutRecordBatchInput.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "DeliveryStreamName"))
    PutRecordBatchInput.add_member(:records, Shapes::ShapeRef.new(shape: PutRecordBatchRequestEntryList, required: true, location_name: "Records"))
    PutRecordBatchInput.struct_class = Types::PutRecordBatchInput

    PutRecordBatchOutput.add_member(:failed_put_count, Shapes::ShapeRef.new(shape: NonNegativeIntegerObject, required: true, location_name: "FailedPutCount"))
    PutRecordBatchOutput.add_member(:encrypted, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "Encrypted"))
    PutRecordBatchOutput.add_member(:request_responses, Shapes::ShapeRef.new(shape: PutRecordBatchResponseEntryList, required: true, location_name: "RequestResponses"))
    PutRecordBatchOutput.struct_class = Types::PutRecordBatchOutput

    PutRecordBatchRequestEntryList.member = Shapes::ShapeRef.new(shape: Record)

    PutRecordBatchResponseEntry.add_member(:record_id, Shapes::ShapeRef.new(shape: PutResponseRecordId, location_name: "RecordId"))
    PutRecordBatchResponseEntry.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    PutRecordBatchResponseEntry.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    PutRecordBatchResponseEntry.struct_class = Types::PutRecordBatchResponseEntry

    PutRecordBatchResponseEntryList.member = Shapes::ShapeRef.new(shape: PutRecordBatchResponseEntry)

    PutRecordInput.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "DeliveryStreamName"))
    PutRecordInput.add_member(:record, Shapes::ShapeRef.new(shape: Record, required: true, location_name: "Record"))
    PutRecordInput.struct_class = Types::PutRecordInput

    PutRecordOutput.add_member(:record_id, Shapes::ShapeRef.new(shape: PutResponseRecordId, required: true, location_name: "RecordId"))
    PutRecordOutput.add_member(:encrypted, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "Encrypted"))
    PutRecordOutput.struct_class = Types::PutRecordOutput

    Record.add_member(:data, Shapes::ShapeRef.new(shape: Data, required: true, location_name: "Data"))
    Record.struct_class = Types::Record

    RedshiftDestinationConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    RedshiftDestinationConfiguration.add_member(:cluster_jdbc_url, Shapes::ShapeRef.new(shape: ClusterJDBCURL, required: true, location_name: "ClusterJDBCURL"))
    RedshiftDestinationConfiguration.add_member(:copy_command, Shapes::ShapeRef.new(shape: CopyCommand, required: true, location_name: "CopyCommand"))
    RedshiftDestinationConfiguration.add_member(:username, Shapes::ShapeRef.new(shape: Username, location_name: "Username"))
    RedshiftDestinationConfiguration.add_member(:password, Shapes::ShapeRef.new(shape: Password, location_name: "Password"))
    RedshiftDestinationConfiguration.add_member(:retry_options, Shapes::ShapeRef.new(shape: RedshiftRetryOptions, location_name: "RetryOptions"))
    RedshiftDestinationConfiguration.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: S3DestinationConfiguration, required: true, location_name: "S3Configuration"))
    RedshiftDestinationConfiguration.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    RedshiftDestinationConfiguration.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: RedshiftS3BackupMode, location_name: "S3BackupMode"))
    RedshiftDestinationConfiguration.add_member(:s3_backup_configuration, Shapes::ShapeRef.new(shape: S3DestinationConfiguration, location_name: "S3BackupConfiguration"))
    RedshiftDestinationConfiguration.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    RedshiftDestinationConfiguration.add_member(:secrets_manager_configuration, Shapes::ShapeRef.new(shape: SecretsManagerConfiguration, location_name: "SecretsManagerConfiguration"))
    RedshiftDestinationConfiguration.struct_class = Types::RedshiftDestinationConfiguration

    RedshiftDestinationDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    RedshiftDestinationDescription.add_member(:cluster_jdbc_url, Shapes::ShapeRef.new(shape: ClusterJDBCURL, required: true, location_name: "ClusterJDBCURL"))
    RedshiftDestinationDescription.add_member(:copy_command, Shapes::ShapeRef.new(shape: CopyCommand, required: true, location_name: "CopyCommand"))
    RedshiftDestinationDescription.add_member(:username, Shapes::ShapeRef.new(shape: Username, location_name: "Username"))
    RedshiftDestinationDescription.add_member(:retry_options, Shapes::ShapeRef.new(shape: RedshiftRetryOptions, location_name: "RetryOptions"))
    RedshiftDestinationDescription.add_member(:s3_destination_description, Shapes::ShapeRef.new(shape: S3DestinationDescription, required: true, location_name: "S3DestinationDescription"))
    RedshiftDestinationDescription.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    RedshiftDestinationDescription.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: RedshiftS3BackupMode, location_name: "S3BackupMode"))
    RedshiftDestinationDescription.add_member(:s3_backup_description, Shapes::ShapeRef.new(shape: S3DestinationDescription, location_name: "S3BackupDescription"))
    RedshiftDestinationDescription.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    RedshiftDestinationDescription.add_member(:secrets_manager_configuration, Shapes::ShapeRef.new(shape: SecretsManagerConfiguration, location_name: "SecretsManagerConfiguration"))
    RedshiftDestinationDescription.struct_class = Types::RedshiftDestinationDescription

    RedshiftDestinationUpdate.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    RedshiftDestinationUpdate.add_member(:cluster_jdbc_url, Shapes::ShapeRef.new(shape: ClusterJDBCURL, location_name: "ClusterJDBCURL"))
    RedshiftDestinationUpdate.add_member(:copy_command, Shapes::ShapeRef.new(shape: CopyCommand, location_name: "CopyCommand"))
    RedshiftDestinationUpdate.add_member(:username, Shapes::ShapeRef.new(shape: Username, location_name: "Username"))
    RedshiftDestinationUpdate.add_member(:password, Shapes::ShapeRef.new(shape: Password, location_name: "Password"))
    RedshiftDestinationUpdate.add_member(:retry_options, Shapes::ShapeRef.new(shape: RedshiftRetryOptions, location_name: "RetryOptions"))
    RedshiftDestinationUpdate.add_member(:s3_update, Shapes::ShapeRef.new(shape: S3DestinationUpdate, location_name: "S3Update"))
    RedshiftDestinationUpdate.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    RedshiftDestinationUpdate.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: RedshiftS3BackupMode, location_name: "S3BackupMode"))
    RedshiftDestinationUpdate.add_member(:s3_backup_update, Shapes::ShapeRef.new(shape: S3DestinationUpdate, location_name: "S3BackupUpdate"))
    RedshiftDestinationUpdate.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    RedshiftDestinationUpdate.add_member(:secrets_manager_configuration, Shapes::ShapeRef.new(shape: SecretsManagerConfiguration, location_name: "SecretsManagerConfiguration"))
    RedshiftDestinationUpdate.struct_class = Types::RedshiftDestinationUpdate

    RedshiftRetryOptions.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: RedshiftRetryDurationInSeconds, location_name: "DurationInSeconds"))
    RedshiftRetryOptions.struct_class = Types::RedshiftRetryOptions

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RetryOptions.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: RetryDurationInSeconds, location_name: "DurationInSeconds"))
    RetryOptions.struct_class = Types::RetryOptions

    S3DestinationConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    S3DestinationConfiguration.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: BucketARN, required: true, location_name: "BucketARN"))
    S3DestinationConfiguration.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, location_name: "Prefix"))
    S3DestinationConfiguration.add_member(:error_output_prefix, Shapes::ShapeRef.new(shape: ErrorOutputPrefix, location_name: "ErrorOutputPrefix"))
    S3DestinationConfiguration.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: BufferingHints, location_name: "BufferingHints"))
    S3DestinationConfiguration.add_member(:compression_format, Shapes::ShapeRef.new(shape: CompressionFormat, location_name: "CompressionFormat"))
    S3DestinationConfiguration.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    S3DestinationConfiguration.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    S3DestinationConfiguration.struct_class = Types::S3DestinationConfiguration

    S3DestinationDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    S3DestinationDescription.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: BucketARN, required: true, location_name: "BucketARN"))
    S3DestinationDescription.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, location_name: "Prefix"))
    S3DestinationDescription.add_member(:error_output_prefix, Shapes::ShapeRef.new(shape: ErrorOutputPrefix, location_name: "ErrorOutputPrefix"))
    S3DestinationDescription.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: BufferingHints, required: true, location_name: "BufferingHints"))
    S3DestinationDescription.add_member(:compression_format, Shapes::ShapeRef.new(shape: CompressionFormat, required: true, location_name: "CompressionFormat"))
    S3DestinationDescription.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, required: true, location_name: "EncryptionConfiguration"))
    S3DestinationDescription.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    S3DestinationDescription.struct_class = Types::S3DestinationDescription

    S3DestinationUpdate.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    S3DestinationUpdate.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: BucketARN, location_name: "BucketARN"))
    S3DestinationUpdate.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, location_name: "Prefix"))
    S3DestinationUpdate.add_member(:error_output_prefix, Shapes::ShapeRef.new(shape: ErrorOutputPrefix, location_name: "ErrorOutputPrefix"))
    S3DestinationUpdate.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: BufferingHints, location_name: "BufferingHints"))
    S3DestinationUpdate.add_member(:compression_format, Shapes::ShapeRef.new(shape: CompressionFormat, location_name: "CompressionFormat"))
    S3DestinationUpdate.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    S3DestinationUpdate.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    S3DestinationUpdate.struct_class = Types::S3DestinationUpdate

    SchemaConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: NonEmptyStringWithoutWhitespace, location_name: "RoleARN"))
    SchemaConfiguration.add_member(:catalog_id, Shapes::ShapeRef.new(shape: NonEmptyStringWithoutWhitespace, location_name: "CatalogId"))
    SchemaConfiguration.add_member(:database_name, Shapes::ShapeRef.new(shape: NonEmptyStringWithoutWhitespace, location_name: "DatabaseName"))
    SchemaConfiguration.add_member(:table_name, Shapes::ShapeRef.new(shape: NonEmptyStringWithoutWhitespace, location_name: "TableName"))
    SchemaConfiguration.add_member(:region, Shapes::ShapeRef.new(shape: NonEmptyStringWithoutWhitespace, location_name: "Region"))
    SchemaConfiguration.add_member(:version_id, Shapes::ShapeRef.new(shape: NonEmptyStringWithoutWhitespace, location_name: "VersionId"))
    SchemaConfiguration.struct_class = Types::SchemaConfiguration

    SchemaEvolutionConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanObject, required: true, location_name: "Enabled"))
    SchemaEvolutionConfiguration.struct_class = Types::SchemaEvolutionConfiguration

    SecretsManagerConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretARN, location_name: "SecretARN"))
    SecretsManagerConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    SecretsManagerConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanObject, required: true, location_name: "Enabled"))
    SecretsManagerConfiguration.struct_class = Types::SecretsManagerConfiguration

    SecurityGroupIdList.member = Shapes::ShapeRef.new(shape: NonEmptyStringWithoutWhitespace)

    Serializer.add_member(:parquet_ser_de, Shapes::ShapeRef.new(shape: ParquetSerDe, location_name: "ParquetSerDe"))
    Serializer.add_member(:orc_ser_de, Shapes::ShapeRef.new(shape: OrcSerDe, location_name: "OrcSerDe"))
    Serializer.struct_class = Types::Serializer

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    SnowflakeBufferingHints.add_member(:size_in_m_bs, Shapes::ShapeRef.new(shape: SnowflakeBufferingSizeInMBs, location_name: "SizeInMBs"))
    SnowflakeBufferingHints.add_member(:interval_in_seconds, Shapes::ShapeRef.new(shape: SnowflakeBufferingIntervalInSeconds, location_name: "IntervalInSeconds"))
    SnowflakeBufferingHints.struct_class = Types::SnowflakeBufferingHints

    SnowflakeDestinationConfiguration.add_member(:account_url, Shapes::ShapeRef.new(shape: SnowflakeAccountUrl, required: true, location_name: "AccountUrl"))
    SnowflakeDestinationConfiguration.add_member(:private_key, Shapes::ShapeRef.new(shape: SnowflakePrivateKey, location_name: "PrivateKey"))
    SnowflakeDestinationConfiguration.add_member(:key_passphrase, Shapes::ShapeRef.new(shape: SnowflakeKeyPassphrase, location_name: "KeyPassphrase"))
    SnowflakeDestinationConfiguration.add_member(:user, Shapes::ShapeRef.new(shape: SnowflakeUser, location_name: "User"))
    SnowflakeDestinationConfiguration.add_member(:database, Shapes::ShapeRef.new(shape: SnowflakeDatabase, required: true, location_name: "Database"))
    SnowflakeDestinationConfiguration.add_member(:schema, Shapes::ShapeRef.new(shape: SnowflakeSchema, required: true, location_name: "Schema"))
    SnowflakeDestinationConfiguration.add_member(:table, Shapes::ShapeRef.new(shape: SnowflakeTable, required: true, location_name: "Table"))
    SnowflakeDestinationConfiguration.add_member(:snowflake_role_configuration, Shapes::ShapeRef.new(shape: SnowflakeRoleConfiguration, location_name: "SnowflakeRoleConfiguration"))
    SnowflakeDestinationConfiguration.add_member(:data_loading_option, Shapes::ShapeRef.new(shape: SnowflakeDataLoadingOption, location_name: "DataLoadingOption"))
    SnowflakeDestinationConfiguration.add_member(:meta_data_column_name, Shapes::ShapeRef.new(shape: SnowflakeMetaDataColumnName, location_name: "MetaDataColumnName"))
    SnowflakeDestinationConfiguration.add_member(:content_column_name, Shapes::ShapeRef.new(shape: SnowflakeContentColumnName, location_name: "ContentColumnName"))
    SnowflakeDestinationConfiguration.add_member(:snowflake_vpc_configuration, Shapes::ShapeRef.new(shape: SnowflakeVpcConfiguration, location_name: "SnowflakeVpcConfiguration"))
    SnowflakeDestinationConfiguration.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    SnowflakeDestinationConfiguration.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    SnowflakeDestinationConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    SnowflakeDestinationConfiguration.add_member(:retry_options, Shapes::ShapeRef.new(shape: SnowflakeRetryOptions, location_name: "RetryOptions"))
    SnowflakeDestinationConfiguration.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: SnowflakeS3BackupMode, location_name: "S3BackupMode"))
    SnowflakeDestinationConfiguration.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: S3DestinationConfiguration, required: true, location_name: "S3Configuration"))
    SnowflakeDestinationConfiguration.add_member(:secrets_manager_configuration, Shapes::ShapeRef.new(shape: SecretsManagerConfiguration, location_name: "SecretsManagerConfiguration"))
    SnowflakeDestinationConfiguration.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: SnowflakeBufferingHints, location_name: "BufferingHints"))
    SnowflakeDestinationConfiguration.struct_class = Types::SnowflakeDestinationConfiguration

    SnowflakeDestinationDescription.add_member(:account_url, Shapes::ShapeRef.new(shape: SnowflakeAccountUrl, location_name: "AccountUrl"))
    SnowflakeDestinationDescription.add_member(:user, Shapes::ShapeRef.new(shape: SnowflakeUser, location_name: "User"))
    SnowflakeDestinationDescription.add_member(:database, Shapes::ShapeRef.new(shape: SnowflakeDatabase, location_name: "Database"))
    SnowflakeDestinationDescription.add_member(:schema, Shapes::ShapeRef.new(shape: SnowflakeSchema, location_name: "Schema"))
    SnowflakeDestinationDescription.add_member(:table, Shapes::ShapeRef.new(shape: SnowflakeTable, location_name: "Table"))
    SnowflakeDestinationDescription.add_member(:snowflake_role_configuration, Shapes::ShapeRef.new(shape: SnowflakeRoleConfiguration, location_name: "SnowflakeRoleConfiguration"))
    SnowflakeDestinationDescription.add_member(:data_loading_option, Shapes::ShapeRef.new(shape: SnowflakeDataLoadingOption, location_name: "DataLoadingOption"))
    SnowflakeDestinationDescription.add_member(:meta_data_column_name, Shapes::ShapeRef.new(shape: SnowflakeMetaDataColumnName, location_name: "MetaDataColumnName"))
    SnowflakeDestinationDescription.add_member(:content_column_name, Shapes::ShapeRef.new(shape: SnowflakeContentColumnName, location_name: "ContentColumnName"))
    SnowflakeDestinationDescription.add_member(:snowflake_vpc_configuration, Shapes::ShapeRef.new(shape: SnowflakeVpcConfiguration, location_name: "SnowflakeVpcConfiguration"))
    SnowflakeDestinationDescription.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    SnowflakeDestinationDescription.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    SnowflakeDestinationDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    SnowflakeDestinationDescription.add_member(:retry_options, Shapes::ShapeRef.new(shape: SnowflakeRetryOptions, location_name: "RetryOptions"))
    SnowflakeDestinationDescription.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: SnowflakeS3BackupMode, location_name: "S3BackupMode"))
    SnowflakeDestinationDescription.add_member(:s3_destination_description, Shapes::ShapeRef.new(shape: S3DestinationDescription, location_name: "S3DestinationDescription"))
    SnowflakeDestinationDescription.add_member(:secrets_manager_configuration, Shapes::ShapeRef.new(shape: SecretsManagerConfiguration, location_name: "SecretsManagerConfiguration"))
    SnowflakeDestinationDescription.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: SnowflakeBufferingHints, location_name: "BufferingHints"))
    SnowflakeDestinationDescription.struct_class = Types::SnowflakeDestinationDescription

    SnowflakeDestinationUpdate.add_member(:account_url, Shapes::ShapeRef.new(shape: SnowflakeAccountUrl, location_name: "AccountUrl"))
    SnowflakeDestinationUpdate.add_member(:private_key, Shapes::ShapeRef.new(shape: SnowflakePrivateKey, location_name: "PrivateKey"))
    SnowflakeDestinationUpdate.add_member(:key_passphrase, Shapes::ShapeRef.new(shape: SnowflakeKeyPassphrase, location_name: "KeyPassphrase"))
    SnowflakeDestinationUpdate.add_member(:user, Shapes::ShapeRef.new(shape: SnowflakeUser, location_name: "User"))
    SnowflakeDestinationUpdate.add_member(:database, Shapes::ShapeRef.new(shape: SnowflakeDatabase, location_name: "Database"))
    SnowflakeDestinationUpdate.add_member(:schema, Shapes::ShapeRef.new(shape: SnowflakeSchema, location_name: "Schema"))
    SnowflakeDestinationUpdate.add_member(:table, Shapes::ShapeRef.new(shape: SnowflakeTable, location_name: "Table"))
    SnowflakeDestinationUpdate.add_member(:snowflake_role_configuration, Shapes::ShapeRef.new(shape: SnowflakeRoleConfiguration, location_name: "SnowflakeRoleConfiguration"))
    SnowflakeDestinationUpdate.add_member(:data_loading_option, Shapes::ShapeRef.new(shape: SnowflakeDataLoadingOption, location_name: "DataLoadingOption"))
    SnowflakeDestinationUpdate.add_member(:meta_data_column_name, Shapes::ShapeRef.new(shape: SnowflakeMetaDataColumnName, location_name: "MetaDataColumnName"))
    SnowflakeDestinationUpdate.add_member(:content_column_name, Shapes::ShapeRef.new(shape: SnowflakeContentColumnName, location_name: "ContentColumnName"))
    SnowflakeDestinationUpdate.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    SnowflakeDestinationUpdate.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    SnowflakeDestinationUpdate.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    SnowflakeDestinationUpdate.add_member(:retry_options, Shapes::ShapeRef.new(shape: SnowflakeRetryOptions, location_name: "RetryOptions"))
    SnowflakeDestinationUpdate.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: SnowflakeS3BackupMode, location_name: "S3BackupMode"))
    SnowflakeDestinationUpdate.add_member(:s3_update, Shapes::ShapeRef.new(shape: S3DestinationUpdate, location_name: "S3Update"))
    SnowflakeDestinationUpdate.add_member(:secrets_manager_configuration, Shapes::ShapeRef.new(shape: SecretsManagerConfiguration, location_name: "SecretsManagerConfiguration"))
    SnowflakeDestinationUpdate.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: SnowflakeBufferingHints, location_name: "BufferingHints"))
    SnowflakeDestinationUpdate.struct_class = Types::SnowflakeDestinationUpdate

    SnowflakeRetryOptions.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: SnowflakeRetryDurationInSeconds, location_name: "DurationInSeconds"))
    SnowflakeRetryOptions.struct_class = Types::SnowflakeRetryOptions

    SnowflakeRoleConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "Enabled"))
    SnowflakeRoleConfiguration.add_member(:snowflake_role, Shapes::ShapeRef.new(shape: SnowflakeRole, location_name: "SnowflakeRole"))
    SnowflakeRoleConfiguration.struct_class = Types::SnowflakeRoleConfiguration

    SnowflakeVpcConfiguration.add_member(:private_link_vpce_id, Shapes::ShapeRef.new(shape: SnowflakePrivateLinkVpceId, required: true, location_name: "PrivateLinkVpceId"))
    SnowflakeVpcConfiguration.struct_class = Types::SnowflakeVpcConfiguration

    SourceDescription.add_member(:direct_put_source_description, Shapes::ShapeRef.new(shape: DirectPutSourceDescription, location_name: "DirectPutSourceDescription"))
    SourceDescription.add_member(:kinesis_stream_source_description, Shapes::ShapeRef.new(shape: KinesisStreamSourceDescription, location_name: "KinesisStreamSourceDescription"))
    SourceDescription.add_member(:msk_source_description, Shapes::ShapeRef.new(shape: MSKSourceDescription, location_name: "MSKSourceDescription"))
    SourceDescription.add_member(:database_source_description, Shapes::ShapeRef.new(shape: DatabaseSourceDescription, location_name: "DatabaseSourceDescription"))
    SourceDescription.struct_class = Types::SourceDescription

    SplunkBufferingHints.add_member(:interval_in_seconds, Shapes::ShapeRef.new(shape: SplunkBufferingIntervalInSeconds, location_name: "IntervalInSeconds"))
    SplunkBufferingHints.add_member(:size_in_m_bs, Shapes::ShapeRef.new(shape: SplunkBufferingSizeInMBs, location_name: "SizeInMBs"))
    SplunkBufferingHints.struct_class = Types::SplunkBufferingHints

    SplunkDestinationConfiguration.add_member(:hec_endpoint, Shapes::ShapeRef.new(shape: HECEndpoint, required: true, location_name: "HECEndpoint"))
    SplunkDestinationConfiguration.add_member(:hec_endpoint_type, Shapes::ShapeRef.new(shape: HECEndpointType, required: true, location_name: "HECEndpointType"))
    SplunkDestinationConfiguration.add_member(:hec_token, Shapes::ShapeRef.new(shape: HECToken, location_name: "HECToken"))
    SplunkDestinationConfiguration.add_member(:hec_acknowledgment_timeout_in_seconds, Shapes::ShapeRef.new(shape: HECAcknowledgmentTimeoutInSeconds, location_name: "HECAcknowledgmentTimeoutInSeconds"))
    SplunkDestinationConfiguration.add_member(:retry_options, Shapes::ShapeRef.new(shape: SplunkRetryOptions, location_name: "RetryOptions"))
    SplunkDestinationConfiguration.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: SplunkS3BackupMode, location_name: "S3BackupMode"))
    SplunkDestinationConfiguration.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: S3DestinationConfiguration, required: true, location_name: "S3Configuration"))
    SplunkDestinationConfiguration.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    SplunkDestinationConfiguration.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    SplunkDestinationConfiguration.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: SplunkBufferingHints, location_name: "BufferingHints"))
    SplunkDestinationConfiguration.add_member(:secrets_manager_configuration, Shapes::ShapeRef.new(shape: SecretsManagerConfiguration, location_name: "SecretsManagerConfiguration"))
    SplunkDestinationConfiguration.struct_class = Types::SplunkDestinationConfiguration

    SplunkDestinationDescription.add_member(:hec_endpoint, Shapes::ShapeRef.new(shape: HECEndpoint, location_name: "HECEndpoint"))
    SplunkDestinationDescription.add_member(:hec_endpoint_type, Shapes::ShapeRef.new(shape: HECEndpointType, location_name: "HECEndpointType"))
    SplunkDestinationDescription.add_member(:hec_token, Shapes::ShapeRef.new(shape: HECToken, location_name: "HECToken"))
    SplunkDestinationDescription.add_member(:hec_acknowledgment_timeout_in_seconds, Shapes::ShapeRef.new(shape: HECAcknowledgmentTimeoutInSeconds, location_name: "HECAcknowledgmentTimeoutInSeconds"))
    SplunkDestinationDescription.add_member(:retry_options, Shapes::ShapeRef.new(shape: SplunkRetryOptions, location_name: "RetryOptions"))
    SplunkDestinationDescription.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: SplunkS3BackupMode, location_name: "S3BackupMode"))
    SplunkDestinationDescription.add_member(:s3_destination_description, Shapes::ShapeRef.new(shape: S3DestinationDescription, location_name: "S3DestinationDescription"))
    SplunkDestinationDescription.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    SplunkDestinationDescription.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    SplunkDestinationDescription.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: SplunkBufferingHints, location_name: "BufferingHints"))
    SplunkDestinationDescription.add_member(:secrets_manager_configuration, Shapes::ShapeRef.new(shape: SecretsManagerConfiguration, location_name: "SecretsManagerConfiguration"))
    SplunkDestinationDescription.struct_class = Types::SplunkDestinationDescription

    SplunkDestinationUpdate.add_member(:hec_endpoint, Shapes::ShapeRef.new(shape: HECEndpoint, location_name: "HECEndpoint"))
    SplunkDestinationUpdate.add_member(:hec_endpoint_type, Shapes::ShapeRef.new(shape: HECEndpointType, location_name: "HECEndpointType"))
    SplunkDestinationUpdate.add_member(:hec_token, Shapes::ShapeRef.new(shape: HECToken, location_name: "HECToken"))
    SplunkDestinationUpdate.add_member(:hec_acknowledgment_timeout_in_seconds, Shapes::ShapeRef.new(shape: HECAcknowledgmentTimeoutInSeconds, location_name: "HECAcknowledgmentTimeoutInSeconds"))
    SplunkDestinationUpdate.add_member(:retry_options, Shapes::ShapeRef.new(shape: SplunkRetryOptions, location_name: "RetryOptions"))
    SplunkDestinationUpdate.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: SplunkS3BackupMode, location_name: "S3BackupMode"))
    SplunkDestinationUpdate.add_member(:s3_update, Shapes::ShapeRef.new(shape: S3DestinationUpdate, location_name: "S3Update"))
    SplunkDestinationUpdate.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    SplunkDestinationUpdate.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    SplunkDestinationUpdate.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: SplunkBufferingHints, location_name: "BufferingHints"))
    SplunkDestinationUpdate.add_member(:secrets_manager_configuration, Shapes::ShapeRef.new(shape: SecretsManagerConfiguration, location_name: "SecretsManagerConfiguration"))
    SplunkDestinationUpdate.struct_class = Types::SplunkDestinationUpdate

    SplunkRetryOptions.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: SplunkRetryDurationInSeconds, location_name: "DurationInSeconds"))
    SplunkRetryOptions.struct_class = Types::SplunkRetryOptions

    StartDeliveryStreamEncryptionInput.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "DeliveryStreamName"))
    StartDeliveryStreamEncryptionInput.add_member(:delivery_stream_encryption_configuration_input, Shapes::ShapeRef.new(shape: DeliveryStreamEncryptionConfigurationInput, location_name: "DeliveryStreamEncryptionConfigurationInput"))
    StartDeliveryStreamEncryptionInput.struct_class = Types::StartDeliveryStreamEncryptionInput

    StartDeliveryStreamEncryptionOutput.struct_class = Types::StartDeliveryStreamEncryptionOutput

    StopDeliveryStreamEncryptionInput.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "DeliveryStreamName"))
    StopDeliveryStreamEncryptionInput.struct_class = Types::StopDeliveryStreamEncryptionInput

    StopDeliveryStreamEncryptionOutput.struct_class = Types::StopDeliveryStreamEncryptionOutput

    SubnetIdList.member = Shapes::ShapeRef.new(shape: NonEmptyStringWithoutWhitespace)

    TableCreationConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanObject, required: true, location_name: "Enabled"))
    TableCreationConfiguration.struct_class = Types::TableCreationConfiguration

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagDeliveryStreamInput.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "DeliveryStreamName"))
    TagDeliveryStreamInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagDeliveryStreamInputTagList, required: true, location_name: "Tags"))
    TagDeliveryStreamInput.struct_class = Types::TagDeliveryStreamInput

    TagDeliveryStreamInputTagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagDeliveryStreamOutput.struct_class = Types::TagDeliveryStreamOutput

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    UntagDeliveryStreamInput.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "DeliveryStreamName"))
    UntagDeliveryStreamInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagDeliveryStreamInput.struct_class = Types::UntagDeliveryStreamInput

    UntagDeliveryStreamOutput.struct_class = Types::UntagDeliveryStreamOutput

    UpdateDestinationInput.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "DeliveryStreamName"))
    UpdateDestinationInput.add_member(:current_delivery_stream_version_id, Shapes::ShapeRef.new(shape: DeliveryStreamVersionId, required: true, location_name: "CurrentDeliveryStreamVersionId"))
    UpdateDestinationInput.add_member(:destination_id, Shapes::ShapeRef.new(shape: DestinationId, required: true, location_name: "DestinationId"))
    UpdateDestinationInput.add_member(:s3_destination_update, Shapes::ShapeRef.new(shape: S3DestinationUpdate, deprecated: true, location_name: "S3DestinationUpdate"))
    UpdateDestinationInput.add_member(:extended_s3_destination_update, Shapes::ShapeRef.new(shape: ExtendedS3DestinationUpdate, location_name: "ExtendedS3DestinationUpdate"))
    UpdateDestinationInput.add_member(:redshift_destination_update, Shapes::ShapeRef.new(shape: RedshiftDestinationUpdate, location_name: "RedshiftDestinationUpdate"))
    UpdateDestinationInput.add_member(:elasticsearch_destination_update, Shapes::ShapeRef.new(shape: ElasticsearchDestinationUpdate, location_name: "ElasticsearchDestinationUpdate"))
    UpdateDestinationInput.add_member(:amazonopensearchservice_destination_update, Shapes::ShapeRef.new(shape: AmazonopensearchserviceDestinationUpdate, location_name: "AmazonopensearchserviceDestinationUpdate"))
    UpdateDestinationInput.add_member(:splunk_destination_update, Shapes::ShapeRef.new(shape: SplunkDestinationUpdate, location_name: "SplunkDestinationUpdate"))
    UpdateDestinationInput.add_member(:http_endpoint_destination_update, Shapes::ShapeRef.new(shape: HttpEndpointDestinationUpdate, location_name: "HttpEndpointDestinationUpdate"))
    UpdateDestinationInput.add_member(:amazon_open_search_serverless_destination_update, Shapes::ShapeRef.new(shape: AmazonOpenSearchServerlessDestinationUpdate, location_name: "AmazonOpenSearchServerlessDestinationUpdate"))
    UpdateDestinationInput.add_member(:snowflake_destination_update, Shapes::ShapeRef.new(shape: SnowflakeDestinationUpdate, location_name: "SnowflakeDestinationUpdate"))
    UpdateDestinationInput.add_member(:iceberg_destination_update, Shapes::ShapeRef.new(shape: IcebergDestinationUpdate, location_name: "IcebergDestinationUpdate"))
    UpdateDestinationInput.struct_class = Types::UpdateDestinationInput

    UpdateDestinationOutput.struct_class = Types::UpdateDestinationOutput

    VpcConfiguration.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, required: true, location_name: "SubnetIds"))
    VpcConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    VpcConfiguration.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, required: true, location_name: "SecurityGroupIds"))
    VpcConfiguration.struct_class = Types::VpcConfiguration

    VpcConfigurationDescription.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, required: true, location_name: "SubnetIds"))
    VpcConfigurationDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    VpcConfigurationDescription.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, required: true, location_name: "SecurityGroupIds"))
    VpcConfigurationDescription.add_member(:vpc_id, Shapes::ShapeRef.new(shape: NonEmptyStringWithoutWhitespace, required: true, location_name: "VpcId"))
    VpcConfigurationDescription.struct_class = Types::VpcConfigurationDescription


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-08-04"

      api.metadata = {
        "apiVersion" => "2015-08-04",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "firehose",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceAbbreviation" => "Firehose",
        "serviceFullName" => "Amazon Kinesis Firehose",
        "serviceId" => "Firehose",
        "signatureVersion" => "v4",
        "targetPrefix" => "Firehose_20150804",
        "uid" => "firehose-2015-08-04",
      }

      api.add_operation(:create_delivery_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDeliveryStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDeliveryStreamInput)
        o.output = Shapes::ShapeRef.new(shape: CreateDeliveryStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKMSResourceException)
      end)

      api.add_operation(:delete_delivery_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDeliveryStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDeliveryStreamInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteDeliveryStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_delivery_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDeliveryStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDeliveryStreamInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeDeliveryStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_delivery_streams, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeliveryStreams"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDeliveryStreamsInput)
        o.output = Shapes::ShapeRef.new(shape: ListDeliveryStreamsOutput)
      end)

      api.add_operation(:list_tags_for_delivery_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForDeliveryStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForDeliveryStreamInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForDeliveryStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:put_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRecord"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutRecordInput)
        o.output = Shapes::ShapeRef.new(shape: PutRecordOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKMSResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSourceException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:put_record_batch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRecordBatch"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutRecordBatchInput)
        o.output = Shapes::ShapeRef.new(shape: PutRecordBatchOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKMSResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSourceException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:start_delivery_stream_encryption, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDeliveryStreamEncryption"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartDeliveryStreamEncryptionInput)
        o.output = Shapes::ShapeRef.new(shape: StartDeliveryStreamEncryptionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKMSResourceException)
      end)

      api.add_operation(:stop_delivery_stream_encryption, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopDeliveryStreamEncryption"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopDeliveryStreamEncryptionInput)
        o.output = Shapes::ShapeRef.new(shape: StopDeliveryStreamEncryptionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:tag_delivery_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagDeliveryStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagDeliveryStreamInput)
        o.output = Shapes::ShapeRef.new(shape: TagDeliveryStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:untag_delivery_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagDeliveryStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagDeliveryStreamInput)
        o.output = Shapes::ShapeRef.new(shape: UntagDeliveryStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:update_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDestination"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDestinationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateDestinationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)
    end

  end
end
