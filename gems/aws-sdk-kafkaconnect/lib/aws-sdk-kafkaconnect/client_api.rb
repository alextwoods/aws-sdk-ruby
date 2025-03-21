# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::KafkaConnect
  # @api private
  module ClientApi

    include Seahorse::Model

    ApacheKafkaCluster = Shapes::StructureShape.new(name: 'ApacheKafkaCluster')
    ApacheKafkaClusterDescription = Shapes::StructureShape.new(name: 'ApacheKafkaClusterDescription')
    AutoScaling = Shapes::StructureShape.new(name: 'AutoScaling')
    AutoScalingDescription = Shapes::StructureShape.new(name: 'AutoScalingDescription')
    AutoScalingUpdate = Shapes::StructureShape.new(name: 'AutoScalingUpdate')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    Capacity = Shapes::StructureShape.new(name: 'Capacity')
    CapacityDescription = Shapes::StructureShape.new(name: 'CapacityDescription')
    CapacityUpdate = Shapes::StructureShape.new(name: 'CapacityUpdate')
    CloudWatchLogsLogDelivery = Shapes::StructureShape.new(name: 'CloudWatchLogsLogDelivery')
    CloudWatchLogsLogDeliveryDescription = Shapes::StructureShape.new(name: 'CloudWatchLogsLogDeliveryDescription')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectorConfiguration = Shapes::MapShape.new(name: 'ConnectorConfiguration')
    ConnectorConfigurationUpdate = Shapes::MapShape.new(name: 'ConnectorConfigurationUpdate')
    ConnectorOperationState = Shapes::StringShape.new(name: 'ConnectorOperationState')
    ConnectorOperationStep = Shapes::StructureShape.new(name: 'ConnectorOperationStep')
    ConnectorOperationStepState = Shapes::StringShape.new(name: 'ConnectorOperationStepState')
    ConnectorOperationStepType = Shapes::StringShape.new(name: 'ConnectorOperationStepType')
    ConnectorOperationSummary = Shapes::StructureShape.new(name: 'ConnectorOperationSummary')
    ConnectorOperationType = Shapes::StringShape.new(name: 'ConnectorOperationType')
    ConnectorState = Shapes::StringShape.new(name: 'ConnectorState')
    ConnectorSummary = Shapes::StructureShape.new(name: 'ConnectorSummary')
    CreateConnectorRequest = Shapes::StructureShape.new(name: 'CreateConnectorRequest')
    CreateConnectorResponse = Shapes::StructureShape.new(name: 'CreateConnectorResponse')
    CreateCustomPluginRequest = Shapes::StructureShape.new(name: 'CreateCustomPluginRequest')
    CreateCustomPluginResponse = Shapes::StructureShape.new(name: 'CreateCustomPluginResponse')
    CreateWorkerConfigurationRequest = Shapes::StructureShape.new(name: 'CreateWorkerConfigurationRequest')
    CreateWorkerConfigurationResponse = Shapes::StructureShape.new(name: 'CreateWorkerConfigurationResponse')
    CustomPlugin = Shapes::StructureShape.new(name: 'CustomPlugin')
    CustomPluginContentType = Shapes::StringShape.new(name: 'CustomPluginContentType')
    CustomPluginDescription = Shapes::StructureShape.new(name: 'CustomPluginDescription')
    CustomPluginFileDescription = Shapes::StructureShape.new(name: 'CustomPluginFileDescription')
    CustomPluginLocation = Shapes::StructureShape.new(name: 'CustomPluginLocation')
    CustomPluginLocationDescription = Shapes::StructureShape.new(name: 'CustomPluginLocationDescription')
    CustomPluginRevisionSummary = Shapes::StructureShape.new(name: 'CustomPluginRevisionSummary')
    CustomPluginState = Shapes::StringShape.new(name: 'CustomPluginState')
    CustomPluginSummary = Shapes::StructureShape.new(name: 'CustomPluginSummary')
    DeleteConnectorRequest = Shapes::StructureShape.new(name: 'DeleteConnectorRequest')
    DeleteConnectorResponse = Shapes::StructureShape.new(name: 'DeleteConnectorResponse')
    DeleteCustomPluginRequest = Shapes::StructureShape.new(name: 'DeleteCustomPluginRequest')
    DeleteCustomPluginResponse = Shapes::StructureShape.new(name: 'DeleteCustomPluginResponse')
    DeleteWorkerConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteWorkerConfigurationRequest')
    DeleteWorkerConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteWorkerConfigurationResponse')
    DescribeConnectorOperationRequest = Shapes::StructureShape.new(name: 'DescribeConnectorOperationRequest')
    DescribeConnectorOperationResponse = Shapes::StructureShape.new(name: 'DescribeConnectorOperationResponse')
    DescribeConnectorRequest = Shapes::StructureShape.new(name: 'DescribeConnectorRequest')
    DescribeConnectorResponse = Shapes::StructureShape.new(name: 'DescribeConnectorResponse')
    DescribeCustomPluginRequest = Shapes::StructureShape.new(name: 'DescribeCustomPluginRequest')
    DescribeCustomPluginResponse = Shapes::StructureShape.new(name: 'DescribeCustomPluginResponse')
    DescribeWorkerConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeWorkerConfigurationRequest')
    DescribeWorkerConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeWorkerConfigurationResponse')
    FirehoseLogDelivery = Shapes::StructureShape.new(name: 'FirehoseLogDelivery')
    FirehoseLogDeliveryDescription = Shapes::StructureShape.new(name: 'FirehoseLogDeliveryDescription')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    KafkaCluster = Shapes::StructureShape.new(name: 'KafkaCluster')
    KafkaClusterClientAuthentication = Shapes::StructureShape.new(name: 'KafkaClusterClientAuthentication')
    KafkaClusterClientAuthenticationDescription = Shapes::StructureShape.new(name: 'KafkaClusterClientAuthenticationDescription')
    KafkaClusterClientAuthenticationType = Shapes::StringShape.new(name: 'KafkaClusterClientAuthenticationType')
    KafkaClusterDescription = Shapes::StructureShape.new(name: 'KafkaClusterDescription')
    KafkaClusterEncryptionInTransit = Shapes::StructureShape.new(name: 'KafkaClusterEncryptionInTransit')
    KafkaClusterEncryptionInTransitDescription = Shapes::StructureShape.new(name: 'KafkaClusterEncryptionInTransitDescription')
    KafkaClusterEncryptionInTransitType = Shapes::StringShape.new(name: 'KafkaClusterEncryptionInTransitType')
    ListConnectorOperationsRequest = Shapes::StructureShape.new(name: 'ListConnectorOperationsRequest')
    ListConnectorOperationsResponse = Shapes::StructureShape.new(name: 'ListConnectorOperationsResponse')
    ListConnectorsRequest = Shapes::StructureShape.new(name: 'ListConnectorsRequest')
    ListConnectorsResponse = Shapes::StructureShape.new(name: 'ListConnectorsResponse')
    ListCustomPluginsRequest = Shapes::StructureShape.new(name: 'ListCustomPluginsRequest')
    ListCustomPluginsResponse = Shapes::StructureShape.new(name: 'ListCustomPluginsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListWorkerConfigurationsRequest = Shapes::StructureShape.new(name: 'ListWorkerConfigurationsRequest')
    ListWorkerConfigurationsResponse = Shapes::StructureShape.new(name: 'ListWorkerConfigurationsResponse')
    LogDelivery = Shapes::StructureShape.new(name: 'LogDelivery')
    LogDeliveryDescription = Shapes::StructureShape.new(name: 'LogDeliveryDescription')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    Plugin = Shapes::StructureShape.new(name: 'Plugin')
    PluginDescription = Shapes::StructureShape.new(name: 'PluginDescription')
    ProvisionedCapacity = Shapes::StructureShape.new(name: 'ProvisionedCapacity')
    ProvisionedCapacityDescription = Shapes::StructureShape.new(name: 'ProvisionedCapacityDescription')
    ProvisionedCapacityUpdate = Shapes::StructureShape.new(name: 'ProvisionedCapacityUpdate')
    S3Location = Shapes::StructureShape.new(name: 'S3Location')
    S3LocationDescription = Shapes::StructureShape.new(name: 'S3LocationDescription')
    S3LogDelivery = Shapes::StructureShape.new(name: 'S3LogDelivery')
    S3LogDeliveryDescription = Shapes::StructureShape.new(name: 'S3LogDeliveryDescription')
    ScaleInPolicy = Shapes::StructureShape.new(name: 'ScaleInPolicy')
    ScaleInPolicyDescription = Shapes::StructureShape.new(name: 'ScaleInPolicyDescription')
    ScaleInPolicyUpdate = Shapes::StructureShape.new(name: 'ScaleInPolicyUpdate')
    ScaleOutPolicy = Shapes::StructureShape.new(name: 'ScaleOutPolicy')
    ScaleOutPolicyDescription = Shapes::StructureShape.new(name: 'ScaleOutPolicyDescription')
    ScaleOutPolicyUpdate = Shapes::StructureShape.new(name: 'ScaleOutPolicyUpdate')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    StateDescription = Shapes::StructureShape.new(name: 'StateDescription')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateConnectorRequest = Shapes::StructureShape.new(name: 'UpdateConnectorRequest')
    UpdateConnectorResponse = Shapes::StructureShape.new(name: 'UpdateConnectorResponse')
    Vpc = Shapes::StructureShape.new(name: 'Vpc')
    VpcDescription = Shapes::StructureShape.new(name: 'VpcDescription')
    WorkerConfiguration = Shapes::StructureShape.new(name: 'WorkerConfiguration')
    WorkerConfigurationDescription = Shapes::StructureShape.new(name: 'WorkerConfigurationDescription')
    WorkerConfigurationRevisionDescription = Shapes::StructureShape.new(name: 'WorkerConfigurationRevisionDescription')
    WorkerConfigurationRevisionSummary = Shapes::StructureShape.new(name: 'WorkerConfigurationRevisionSummary')
    WorkerConfigurationState = Shapes::StringShape.new(name: 'WorkerConfigurationState')
    WorkerConfigurationSummary = Shapes::StructureShape.new(name: 'WorkerConfigurationSummary')
    WorkerLogDelivery = Shapes::StructureShape.new(name: 'WorkerLogDelivery')
    WorkerLogDeliveryDescription = Shapes::StructureShape.new(name: 'WorkerLogDeliveryDescription')
    WorkerSetting = Shapes::StructureShape.new(name: 'WorkerSetting')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __integer = Shapes::IntegerShape.new(name: '__integer')
    __integerMin1Max100 = Shapes::IntegerShape.new(name: '__integerMin1Max100')
    __integerMin1Max8 = Shapes::IntegerShape.new(name: '__integerMin1Max8')
    __listOfConnectorOperationStep = Shapes::ListShape.new(name: '__listOfConnectorOperationStep')
    __listOfConnectorOperationSummary = Shapes::ListShape.new(name: '__listOfConnectorOperationSummary')
    __listOfConnectorSummary = Shapes::ListShape.new(name: '__listOfConnectorSummary')
    __listOfCustomPluginSummary = Shapes::ListShape.new(name: '__listOfCustomPluginSummary')
    __listOfPlugin = Shapes::ListShape.new(name: '__listOfPlugin')
    __listOfPluginDescription = Shapes::ListShape.new(name: '__listOfPluginDescription')
    __listOfWorkerConfigurationSummary = Shapes::ListShape.new(name: '__listOfWorkerConfigurationSummary')
    __listOf__string = Shapes::ListShape.new(name: '__listOf__string')
    __long = Shapes::IntegerShape.new(name: '__long')
    __longMin1 = Shapes::IntegerShape.new(name: '__longMin1')
    __sensitiveString = Shapes::StringShape.new(name: '__sensitiveString')
    __string = Shapes::StringShape.new(name: '__string')
    __stringMax1024 = Shapes::StringShape.new(name: '__stringMax1024')
    __stringMin1Max128 = Shapes::StringShape.new(name: '__stringMin1Max128')
    __timestampIso8601 = Shapes::TimestampShape.new(name: '__timestampIso8601', timestampFormat: "iso8601")

    ApacheKafkaCluster.add_member(:bootstrap_servers, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "bootstrapServers"))
    ApacheKafkaCluster.add_member(:vpc, Shapes::ShapeRef.new(shape: Vpc, required: true, location_name: "vpc"))
    ApacheKafkaCluster.struct_class = Types::ApacheKafkaCluster

    ApacheKafkaClusterDescription.add_member(:bootstrap_servers, Shapes::ShapeRef.new(shape: __string, location_name: "bootstrapServers"))
    ApacheKafkaClusterDescription.add_member(:vpc, Shapes::ShapeRef.new(shape: VpcDescription, location_name: "vpc"))
    ApacheKafkaClusterDescription.struct_class = Types::ApacheKafkaClusterDescription

    AutoScaling.add_member(:max_worker_count, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "maxWorkerCount"))
    AutoScaling.add_member(:mcu_count, Shapes::ShapeRef.new(shape: __integerMin1Max8, required: true, location_name: "mcuCount"))
    AutoScaling.add_member(:min_worker_count, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "minWorkerCount"))
    AutoScaling.add_member(:scale_in_policy, Shapes::ShapeRef.new(shape: ScaleInPolicy, location_name: "scaleInPolicy"))
    AutoScaling.add_member(:scale_out_policy, Shapes::ShapeRef.new(shape: ScaleOutPolicy, location_name: "scaleOutPolicy"))
    AutoScaling.struct_class = Types::AutoScaling

    AutoScalingDescription.add_member(:max_worker_count, Shapes::ShapeRef.new(shape: __integer, location_name: "maxWorkerCount"))
    AutoScalingDescription.add_member(:mcu_count, Shapes::ShapeRef.new(shape: __integer, location_name: "mcuCount"))
    AutoScalingDescription.add_member(:min_worker_count, Shapes::ShapeRef.new(shape: __integer, location_name: "minWorkerCount"))
    AutoScalingDescription.add_member(:scale_in_policy, Shapes::ShapeRef.new(shape: ScaleInPolicyDescription, location_name: "scaleInPolicy"))
    AutoScalingDescription.add_member(:scale_out_policy, Shapes::ShapeRef.new(shape: ScaleOutPolicyDescription, location_name: "scaleOutPolicy"))
    AutoScalingDescription.struct_class = Types::AutoScalingDescription

    AutoScalingUpdate.add_member(:max_worker_count, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "maxWorkerCount"))
    AutoScalingUpdate.add_member(:mcu_count, Shapes::ShapeRef.new(shape: __integerMin1Max8, required: true, location_name: "mcuCount"))
    AutoScalingUpdate.add_member(:min_worker_count, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "minWorkerCount"))
    AutoScalingUpdate.add_member(:scale_in_policy, Shapes::ShapeRef.new(shape: ScaleInPolicyUpdate, required: true, location_name: "scaleInPolicy"))
    AutoScalingUpdate.add_member(:scale_out_policy, Shapes::ShapeRef.new(shape: ScaleOutPolicyUpdate, required: true, location_name: "scaleOutPolicy"))
    AutoScalingUpdate.struct_class = Types::AutoScalingUpdate

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

    Capacity.add_member(:auto_scaling, Shapes::ShapeRef.new(shape: AutoScaling, location_name: "autoScaling"))
    Capacity.add_member(:provisioned_capacity, Shapes::ShapeRef.new(shape: ProvisionedCapacity, location_name: "provisionedCapacity"))
    Capacity.struct_class = Types::Capacity

    CapacityDescription.add_member(:auto_scaling, Shapes::ShapeRef.new(shape: AutoScalingDescription, location_name: "autoScaling"))
    CapacityDescription.add_member(:provisioned_capacity, Shapes::ShapeRef.new(shape: ProvisionedCapacityDescription, location_name: "provisionedCapacity"))
    CapacityDescription.struct_class = Types::CapacityDescription

    CapacityUpdate.add_member(:auto_scaling, Shapes::ShapeRef.new(shape: AutoScalingUpdate, location_name: "autoScaling"))
    CapacityUpdate.add_member(:provisioned_capacity, Shapes::ShapeRef.new(shape: ProvisionedCapacityUpdate, location_name: "provisionedCapacity"))
    CapacityUpdate.struct_class = Types::CapacityUpdate

    CloudWatchLogsLogDelivery.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, required: true, location_name: "enabled"))
    CloudWatchLogsLogDelivery.add_member(:log_group, Shapes::ShapeRef.new(shape: __string, location_name: "logGroup"))
    CloudWatchLogsLogDelivery.struct_class = Types::CloudWatchLogsLogDelivery

    CloudWatchLogsLogDeliveryDescription.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "enabled"))
    CloudWatchLogsLogDeliveryDescription.add_member(:log_group, Shapes::ShapeRef.new(shape: __string, location_name: "logGroup"))
    CloudWatchLogsLogDeliveryDescription.struct_class = Types::CloudWatchLogsLogDeliveryDescription

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ConnectorConfiguration.key = Shapes::ShapeRef.new(shape: __string)
    ConnectorConfiguration.value = Shapes::ShapeRef.new(shape: __string)

    ConnectorConfigurationUpdate.key = Shapes::ShapeRef.new(shape: __string)
    ConnectorConfigurationUpdate.value = Shapes::ShapeRef.new(shape: __string)

    ConnectorOperationStep.add_member(:step_type, Shapes::ShapeRef.new(shape: ConnectorOperationStepType, location_name: "stepType"))
    ConnectorOperationStep.add_member(:step_state, Shapes::ShapeRef.new(shape: ConnectorOperationStepState, location_name: "stepState"))
    ConnectorOperationStep.struct_class = Types::ConnectorOperationStep

    ConnectorOperationSummary.add_member(:connector_operation_arn, Shapes::ShapeRef.new(shape: __string, location_name: "connectorOperationArn"))
    ConnectorOperationSummary.add_member(:connector_operation_type, Shapes::ShapeRef.new(shape: ConnectorOperationType, location_name: "connectorOperationType"))
    ConnectorOperationSummary.add_member(:connector_operation_state, Shapes::ShapeRef.new(shape: ConnectorOperationState, location_name: "connectorOperationState"))
    ConnectorOperationSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "creationTime"))
    ConnectorOperationSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "endTime"))
    ConnectorOperationSummary.struct_class = Types::ConnectorOperationSummary

    ConnectorSummary.add_member(:capacity, Shapes::ShapeRef.new(shape: CapacityDescription, location_name: "capacity"))
    ConnectorSummary.add_member(:connector_arn, Shapes::ShapeRef.new(shape: __string, location_name: "connectorArn"))
    ConnectorSummary.add_member(:connector_description, Shapes::ShapeRef.new(shape: __string, location_name: "connectorDescription"))
    ConnectorSummary.add_member(:connector_name, Shapes::ShapeRef.new(shape: __string, location_name: "connectorName"))
    ConnectorSummary.add_member(:connector_state, Shapes::ShapeRef.new(shape: ConnectorState, location_name: "connectorState"))
    ConnectorSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "creationTime"))
    ConnectorSummary.add_member(:current_version, Shapes::ShapeRef.new(shape: __string, location_name: "currentVersion"))
    ConnectorSummary.add_member(:kafka_cluster, Shapes::ShapeRef.new(shape: KafkaClusterDescription, location_name: "kafkaCluster"))
    ConnectorSummary.add_member(:kafka_cluster_client_authentication, Shapes::ShapeRef.new(shape: KafkaClusterClientAuthenticationDescription, location_name: "kafkaClusterClientAuthentication"))
    ConnectorSummary.add_member(:kafka_cluster_encryption_in_transit, Shapes::ShapeRef.new(shape: KafkaClusterEncryptionInTransitDescription, location_name: "kafkaClusterEncryptionInTransit"))
    ConnectorSummary.add_member(:kafka_connect_version, Shapes::ShapeRef.new(shape: __string, location_name: "kafkaConnectVersion"))
    ConnectorSummary.add_member(:log_delivery, Shapes::ShapeRef.new(shape: LogDeliveryDescription, location_name: "logDelivery"))
    ConnectorSummary.add_member(:plugins, Shapes::ShapeRef.new(shape: __listOfPluginDescription, location_name: "plugins"))
    ConnectorSummary.add_member(:service_execution_role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "serviceExecutionRoleArn"))
    ConnectorSummary.add_member(:worker_configuration, Shapes::ShapeRef.new(shape: WorkerConfigurationDescription, location_name: "workerConfiguration"))
    ConnectorSummary.struct_class = Types::ConnectorSummary

    CreateConnectorRequest.add_member(:capacity, Shapes::ShapeRef.new(shape: Capacity, required: true, location_name: "capacity"))
    CreateConnectorRequest.add_member(:connector_configuration, Shapes::ShapeRef.new(shape: ConnectorConfiguration, required: true, location_name: "connectorConfiguration"))
    CreateConnectorRequest.add_member(:connector_description, Shapes::ShapeRef.new(shape: __stringMax1024, location_name: "connectorDescription"))
    CreateConnectorRequest.add_member(:connector_name, Shapes::ShapeRef.new(shape: __stringMin1Max128, required: true, location_name: "connectorName"))
    CreateConnectorRequest.add_member(:kafka_cluster, Shapes::ShapeRef.new(shape: KafkaCluster, required: true, location_name: "kafkaCluster"))
    CreateConnectorRequest.add_member(:kafka_cluster_client_authentication, Shapes::ShapeRef.new(shape: KafkaClusterClientAuthentication, required: true, location_name: "kafkaClusterClientAuthentication"))
    CreateConnectorRequest.add_member(:kafka_cluster_encryption_in_transit, Shapes::ShapeRef.new(shape: KafkaClusterEncryptionInTransit, required: true, location_name: "kafkaClusterEncryptionInTransit"))
    CreateConnectorRequest.add_member(:kafka_connect_version, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "kafkaConnectVersion"))
    CreateConnectorRequest.add_member(:log_delivery, Shapes::ShapeRef.new(shape: LogDelivery, location_name: "logDelivery"))
    CreateConnectorRequest.add_member(:plugins, Shapes::ShapeRef.new(shape: __listOfPlugin, required: true, location_name: "plugins"))
    CreateConnectorRequest.add_member(:service_execution_role_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "serviceExecutionRoleArn"))
    CreateConnectorRequest.add_member(:worker_configuration, Shapes::ShapeRef.new(shape: WorkerConfiguration, location_name: "workerConfiguration"))
    CreateConnectorRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateConnectorRequest.struct_class = Types::CreateConnectorRequest

    CreateConnectorResponse.add_member(:connector_arn, Shapes::ShapeRef.new(shape: __string, location_name: "connectorArn"))
    CreateConnectorResponse.add_member(:connector_name, Shapes::ShapeRef.new(shape: __string, location_name: "connectorName"))
    CreateConnectorResponse.add_member(:connector_state, Shapes::ShapeRef.new(shape: ConnectorState, location_name: "connectorState"))
    CreateConnectorResponse.struct_class = Types::CreateConnectorResponse

    CreateCustomPluginRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: CustomPluginContentType, required: true, location_name: "contentType"))
    CreateCustomPluginRequest.add_member(:description, Shapes::ShapeRef.new(shape: __stringMax1024, location_name: "description"))
    CreateCustomPluginRequest.add_member(:location, Shapes::ShapeRef.new(shape: CustomPluginLocation, required: true, location_name: "location"))
    CreateCustomPluginRequest.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max128, required: true, location_name: "name"))
    CreateCustomPluginRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateCustomPluginRequest.struct_class = Types::CreateCustomPluginRequest

    CreateCustomPluginResponse.add_member(:custom_plugin_arn, Shapes::ShapeRef.new(shape: __string, location_name: "customPluginArn"))
    CreateCustomPluginResponse.add_member(:custom_plugin_state, Shapes::ShapeRef.new(shape: CustomPluginState, location_name: "customPluginState"))
    CreateCustomPluginResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateCustomPluginResponse.add_member(:revision, Shapes::ShapeRef.new(shape: __long, location_name: "revision"))
    CreateCustomPluginResponse.struct_class = Types::CreateCustomPluginResponse

    CreateWorkerConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: __stringMax1024, location_name: "description"))
    CreateWorkerConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max128, required: true, location_name: "name"))
    CreateWorkerConfigurationRequest.add_member(:properties_file_content, Shapes::ShapeRef.new(shape: __sensitiveString, required: true, location_name: "propertiesFileContent"))
    CreateWorkerConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateWorkerConfigurationRequest.struct_class = Types::CreateWorkerConfigurationRequest

    CreateWorkerConfigurationResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "creationTime"))
    CreateWorkerConfigurationResponse.add_member(:latest_revision, Shapes::ShapeRef.new(shape: WorkerConfigurationRevisionSummary, location_name: "latestRevision"))
    CreateWorkerConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateWorkerConfigurationResponse.add_member(:worker_configuration_arn, Shapes::ShapeRef.new(shape: __string, location_name: "workerConfigurationArn"))
    CreateWorkerConfigurationResponse.add_member(:worker_configuration_state, Shapes::ShapeRef.new(shape: WorkerConfigurationState, location_name: "workerConfigurationState"))
    CreateWorkerConfigurationResponse.struct_class = Types::CreateWorkerConfigurationResponse

    CustomPlugin.add_member(:custom_plugin_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "customPluginArn"))
    CustomPlugin.add_member(:revision, Shapes::ShapeRef.new(shape: __longMin1, required: true, location_name: "revision"))
    CustomPlugin.struct_class = Types::CustomPlugin

    CustomPluginDescription.add_member(:custom_plugin_arn, Shapes::ShapeRef.new(shape: __string, location_name: "customPluginArn"))
    CustomPluginDescription.add_member(:revision, Shapes::ShapeRef.new(shape: __long, location_name: "revision"))
    CustomPluginDescription.struct_class = Types::CustomPluginDescription

    CustomPluginFileDescription.add_member(:file_md_5, Shapes::ShapeRef.new(shape: __string, location_name: "fileMd5"))
    CustomPluginFileDescription.add_member(:file_size, Shapes::ShapeRef.new(shape: __long, location_name: "fileSize"))
    CustomPluginFileDescription.struct_class = Types::CustomPluginFileDescription

    CustomPluginLocation.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3Location, required: true, location_name: "s3Location"))
    CustomPluginLocation.struct_class = Types::CustomPluginLocation

    CustomPluginLocationDescription.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3LocationDescription, location_name: "s3Location"))
    CustomPluginLocationDescription.struct_class = Types::CustomPluginLocationDescription

    CustomPluginRevisionSummary.add_member(:content_type, Shapes::ShapeRef.new(shape: CustomPluginContentType, location_name: "contentType"))
    CustomPluginRevisionSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "creationTime"))
    CustomPluginRevisionSummary.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    CustomPluginRevisionSummary.add_member(:file_description, Shapes::ShapeRef.new(shape: CustomPluginFileDescription, location_name: "fileDescription"))
    CustomPluginRevisionSummary.add_member(:location, Shapes::ShapeRef.new(shape: CustomPluginLocationDescription, location_name: "location"))
    CustomPluginRevisionSummary.add_member(:revision, Shapes::ShapeRef.new(shape: __long, location_name: "revision"))
    CustomPluginRevisionSummary.struct_class = Types::CustomPluginRevisionSummary

    CustomPluginSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "creationTime"))
    CustomPluginSummary.add_member(:custom_plugin_arn, Shapes::ShapeRef.new(shape: __string, location_name: "customPluginArn"))
    CustomPluginSummary.add_member(:custom_plugin_state, Shapes::ShapeRef.new(shape: CustomPluginState, location_name: "customPluginState"))
    CustomPluginSummary.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    CustomPluginSummary.add_member(:latest_revision, Shapes::ShapeRef.new(shape: CustomPluginRevisionSummary, location_name: "latestRevision"))
    CustomPluginSummary.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CustomPluginSummary.struct_class = Types::CustomPluginSummary

    DeleteConnectorRequest.add_member(:connector_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "connectorArn"))
    DeleteConnectorRequest.add_member(:current_version, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "currentVersion"))
    DeleteConnectorRequest.struct_class = Types::DeleteConnectorRequest

    DeleteConnectorResponse.add_member(:connector_arn, Shapes::ShapeRef.new(shape: __string, location_name: "connectorArn"))
    DeleteConnectorResponse.add_member(:connector_state, Shapes::ShapeRef.new(shape: ConnectorState, location_name: "connectorState"))
    DeleteConnectorResponse.struct_class = Types::DeleteConnectorResponse

    DeleteCustomPluginRequest.add_member(:custom_plugin_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "customPluginArn"))
    DeleteCustomPluginRequest.struct_class = Types::DeleteCustomPluginRequest

    DeleteCustomPluginResponse.add_member(:custom_plugin_arn, Shapes::ShapeRef.new(shape: __string, location_name: "customPluginArn"))
    DeleteCustomPluginResponse.add_member(:custom_plugin_state, Shapes::ShapeRef.new(shape: CustomPluginState, location_name: "customPluginState"))
    DeleteCustomPluginResponse.struct_class = Types::DeleteCustomPluginResponse

    DeleteWorkerConfigurationRequest.add_member(:worker_configuration_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "workerConfigurationArn"))
    DeleteWorkerConfigurationRequest.struct_class = Types::DeleteWorkerConfigurationRequest

    DeleteWorkerConfigurationResponse.add_member(:worker_configuration_arn, Shapes::ShapeRef.new(shape: __string, location_name: "workerConfigurationArn"))
    DeleteWorkerConfigurationResponse.add_member(:worker_configuration_state, Shapes::ShapeRef.new(shape: WorkerConfigurationState, location_name: "workerConfigurationState"))
    DeleteWorkerConfigurationResponse.struct_class = Types::DeleteWorkerConfigurationResponse

    DescribeConnectorOperationRequest.add_member(:connector_operation_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "connectorOperationArn"))
    DescribeConnectorOperationRequest.struct_class = Types::DescribeConnectorOperationRequest

    DescribeConnectorOperationResponse.add_member(:connector_arn, Shapes::ShapeRef.new(shape: __string, location_name: "connectorArn"))
    DescribeConnectorOperationResponse.add_member(:connector_operation_arn, Shapes::ShapeRef.new(shape: __string, location_name: "connectorOperationArn"))
    DescribeConnectorOperationResponse.add_member(:connector_operation_state, Shapes::ShapeRef.new(shape: ConnectorOperationState, location_name: "connectorOperationState"))
    DescribeConnectorOperationResponse.add_member(:connector_operation_type, Shapes::ShapeRef.new(shape: ConnectorOperationType, location_name: "connectorOperationType"))
    DescribeConnectorOperationResponse.add_member(:operation_steps, Shapes::ShapeRef.new(shape: __listOfConnectorOperationStep, location_name: "operationSteps"))
    DescribeConnectorOperationResponse.add_member(:origin_worker_setting, Shapes::ShapeRef.new(shape: WorkerSetting, location_name: "originWorkerSetting"))
    DescribeConnectorOperationResponse.add_member(:origin_connector_configuration, Shapes::ShapeRef.new(shape: ConnectorConfiguration, location_name: "originConnectorConfiguration"))
    DescribeConnectorOperationResponse.add_member(:target_worker_setting, Shapes::ShapeRef.new(shape: WorkerSetting, location_name: "targetWorkerSetting"))
    DescribeConnectorOperationResponse.add_member(:target_connector_configuration, Shapes::ShapeRef.new(shape: ConnectorConfiguration, location_name: "targetConnectorConfiguration"))
    DescribeConnectorOperationResponse.add_member(:error_info, Shapes::ShapeRef.new(shape: StateDescription, location_name: "errorInfo"))
    DescribeConnectorOperationResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "creationTime"))
    DescribeConnectorOperationResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "endTime"))
    DescribeConnectorOperationResponse.struct_class = Types::DescribeConnectorOperationResponse

    DescribeConnectorRequest.add_member(:connector_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "connectorArn"))
    DescribeConnectorRequest.struct_class = Types::DescribeConnectorRequest

    DescribeConnectorResponse.add_member(:capacity, Shapes::ShapeRef.new(shape: CapacityDescription, location_name: "capacity"))
    DescribeConnectorResponse.add_member(:connector_arn, Shapes::ShapeRef.new(shape: __string, location_name: "connectorArn"))
    DescribeConnectorResponse.add_member(:connector_configuration, Shapes::ShapeRef.new(shape: ConnectorConfiguration, location_name: "connectorConfiguration"))
    DescribeConnectorResponse.add_member(:connector_description, Shapes::ShapeRef.new(shape: __string, location_name: "connectorDescription"))
    DescribeConnectorResponse.add_member(:connector_name, Shapes::ShapeRef.new(shape: __string, location_name: "connectorName"))
    DescribeConnectorResponse.add_member(:connector_state, Shapes::ShapeRef.new(shape: ConnectorState, location_name: "connectorState"))
    DescribeConnectorResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "creationTime"))
    DescribeConnectorResponse.add_member(:current_version, Shapes::ShapeRef.new(shape: __string, location_name: "currentVersion"))
    DescribeConnectorResponse.add_member(:kafka_cluster, Shapes::ShapeRef.new(shape: KafkaClusterDescription, location_name: "kafkaCluster"))
    DescribeConnectorResponse.add_member(:kafka_cluster_client_authentication, Shapes::ShapeRef.new(shape: KafkaClusterClientAuthenticationDescription, location_name: "kafkaClusterClientAuthentication"))
    DescribeConnectorResponse.add_member(:kafka_cluster_encryption_in_transit, Shapes::ShapeRef.new(shape: KafkaClusterEncryptionInTransitDescription, location_name: "kafkaClusterEncryptionInTransit"))
    DescribeConnectorResponse.add_member(:kafka_connect_version, Shapes::ShapeRef.new(shape: __string, location_name: "kafkaConnectVersion"))
    DescribeConnectorResponse.add_member(:log_delivery, Shapes::ShapeRef.new(shape: LogDeliveryDescription, location_name: "logDelivery"))
    DescribeConnectorResponse.add_member(:plugins, Shapes::ShapeRef.new(shape: __listOfPluginDescription, location_name: "plugins"))
    DescribeConnectorResponse.add_member(:service_execution_role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "serviceExecutionRoleArn"))
    DescribeConnectorResponse.add_member(:worker_configuration, Shapes::ShapeRef.new(shape: WorkerConfigurationDescription, location_name: "workerConfiguration"))
    DescribeConnectorResponse.add_member(:state_description, Shapes::ShapeRef.new(shape: StateDescription, location_name: "stateDescription"))
    DescribeConnectorResponse.struct_class = Types::DescribeConnectorResponse

    DescribeCustomPluginRequest.add_member(:custom_plugin_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "customPluginArn"))
    DescribeCustomPluginRequest.struct_class = Types::DescribeCustomPluginRequest

    DescribeCustomPluginResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "creationTime"))
    DescribeCustomPluginResponse.add_member(:custom_plugin_arn, Shapes::ShapeRef.new(shape: __string, location_name: "customPluginArn"))
    DescribeCustomPluginResponse.add_member(:custom_plugin_state, Shapes::ShapeRef.new(shape: CustomPluginState, location_name: "customPluginState"))
    DescribeCustomPluginResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    DescribeCustomPluginResponse.add_member(:latest_revision, Shapes::ShapeRef.new(shape: CustomPluginRevisionSummary, location_name: "latestRevision"))
    DescribeCustomPluginResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeCustomPluginResponse.add_member(:state_description, Shapes::ShapeRef.new(shape: StateDescription, location_name: "stateDescription"))
    DescribeCustomPluginResponse.struct_class = Types::DescribeCustomPluginResponse

    DescribeWorkerConfigurationRequest.add_member(:worker_configuration_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "workerConfigurationArn"))
    DescribeWorkerConfigurationRequest.struct_class = Types::DescribeWorkerConfigurationRequest

    DescribeWorkerConfigurationResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "creationTime"))
    DescribeWorkerConfigurationResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    DescribeWorkerConfigurationResponse.add_member(:latest_revision, Shapes::ShapeRef.new(shape: WorkerConfigurationRevisionDescription, location_name: "latestRevision"))
    DescribeWorkerConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeWorkerConfigurationResponse.add_member(:worker_configuration_arn, Shapes::ShapeRef.new(shape: __string, location_name: "workerConfigurationArn"))
    DescribeWorkerConfigurationResponse.add_member(:worker_configuration_state, Shapes::ShapeRef.new(shape: WorkerConfigurationState, location_name: "workerConfigurationState"))
    DescribeWorkerConfigurationResponse.struct_class = Types::DescribeWorkerConfigurationResponse

    FirehoseLogDelivery.add_member(:delivery_stream, Shapes::ShapeRef.new(shape: __string, location_name: "deliveryStream"))
    FirehoseLogDelivery.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, required: true, location_name: "enabled"))
    FirehoseLogDelivery.struct_class = Types::FirehoseLogDelivery

    FirehoseLogDeliveryDescription.add_member(:delivery_stream, Shapes::ShapeRef.new(shape: __string, location_name: "deliveryStream"))
    FirehoseLogDeliveryDescription.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "enabled"))
    FirehoseLogDeliveryDescription.struct_class = Types::FirehoseLogDeliveryDescription

    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    InternalServerErrorException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    InternalServerErrorException.struct_class = Types::InternalServerErrorException

    KafkaCluster.add_member(:apache_kafka_cluster, Shapes::ShapeRef.new(shape: ApacheKafkaCluster, required: true, location_name: "apacheKafkaCluster"))
    KafkaCluster.struct_class = Types::KafkaCluster

    KafkaClusterClientAuthentication.add_member(:authentication_type, Shapes::ShapeRef.new(shape: KafkaClusterClientAuthenticationType, required: true, location_name: "authenticationType"))
    KafkaClusterClientAuthentication.struct_class = Types::KafkaClusterClientAuthentication

    KafkaClusterClientAuthenticationDescription.add_member(:authentication_type, Shapes::ShapeRef.new(shape: KafkaClusterClientAuthenticationType, location_name: "authenticationType"))
    KafkaClusterClientAuthenticationDescription.struct_class = Types::KafkaClusterClientAuthenticationDescription

    KafkaClusterDescription.add_member(:apache_kafka_cluster, Shapes::ShapeRef.new(shape: ApacheKafkaClusterDescription, location_name: "apacheKafkaCluster"))
    KafkaClusterDescription.struct_class = Types::KafkaClusterDescription

    KafkaClusterEncryptionInTransit.add_member(:encryption_type, Shapes::ShapeRef.new(shape: KafkaClusterEncryptionInTransitType, required: true, location_name: "encryptionType"))
    KafkaClusterEncryptionInTransit.struct_class = Types::KafkaClusterEncryptionInTransit

    KafkaClusterEncryptionInTransitDescription.add_member(:encryption_type, Shapes::ShapeRef.new(shape: KafkaClusterEncryptionInTransitType, location_name: "encryptionType"))
    KafkaClusterEncryptionInTransitDescription.struct_class = Types::KafkaClusterEncryptionInTransitDescription

    ListConnectorOperationsRequest.add_member(:connector_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "connectorArn"))
    ListConnectorOperationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListConnectorOperationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListConnectorOperationsRequest.struct_class = Types::ListConnectorOperationsRequest

    ListConnectorOperationsResponse.add_member(:connector_operations, Shapes::ShapeRef.new(shape: __listOfConnectorOperationSummary, location_name: "connectorOperations"))
    ListConnectorOperationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListConnectorOperationsResponse.struct_class = Types::ListConnectorOperationsResponse

    ListConnectorsRequest.add_member(:connector_name_prefix, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "connectorNamePrefix"))
    ListConnectorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListConnectorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListConnectorsRequest.struct_class = Types::ListConnectorsRequest

    ListConnectorsResponse.add_member(:connectors, Shapes::ShapeRef.new(shape: __listOfConnectorSummary, location_name: "connectors"))
    ListConnectorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListConnectorsResponse.struct_class = Types::ListConnectorsResponse

    ListCustomPluginsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCustomPluginsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListCustomPluginsRequest.add_member(:name_prefix, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "namePrefix"))
    ListCustomPluginsRequest.struct_class = Types::ListCustomPluginsRequest

    ListCustomPluginsResponse.add_member(:custom_plugins, Shapes::ShapeRef.new(shape: __listOfCustomPluginSummary, location_name: "customPlugins"))
    ListCustomPluginsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListCustomPluginsResponse.struct_class = Types::ListCustomPluginsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListWorkerConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListWorkerConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListWorkerConfigurationsRequest.add_member(:name_prefix, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "namePrefix"))
    ListWorkerConfigurationsRequest.struct_class = Types::ListWorkerConfigurationsRequest

    ListWorkerConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListWorkerConfigurationsResponse.add_member(:worker_configurations, Shapes::ShapeRef.new(shape: __listOfWorkerConfigurationSummary, location_name: "workerConfigurations"))
    ListWorkerConfigurationsResponse.struct_class = Types::ListWorkerConfigurationsResponse

    LogDelivery.add_member(:worker_log_delivery, Shapes::ShapeRef.new(shape: WorkerLogDelivery, required: true, location_name: "workerLogDelivery"))
    LogDelivery.struct_class = Types::LogDelivery

    LogDeliveryDescription.add_member(:worker_log_delivery, Shapes::ShapeRef.new(shape: WorkerLogDeliveryDescription, location_name: "workerLogDelivery"))
    LogDeliveryDescription.struct_class = Types::LogDeliveryDescription

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    NotFoundException.struct_class = Types::NotFoundException

    Plugin.add_member(:custom_plugin, Shapes::ShapeRef.new(shape: CustomPlugin, required: true, location_name: "customPlugin"))
    Plugin.struct_class = Types::Plugin

    PluginDescription.add_member(:custom_plugin, Shapes::ShapeRef.new(shape: CustomPluginDescription, location_name: "customPlugin"))
    PluginDescription.struct_class = Types::PluginDescription

    ProvisionedCapacity.add_member(:mcu_count, Shapes::ShapeRef.new(shape: __integerMin1Max8, required: true, location_name: "mcuCount"))
    ProvisionedCapacity.add_member(:worker_count, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "workerCount"))
    ProvisionedCapacity.struct_class = Types::ProvisionedCapacity

    ProvisionedCapacityDescription.add_member(:mcu_count, Shapes::ShapeRef.new(shape: __integer, location_name: "mcuCount"))
    ProvisionedCapacityDescription.add_member(:worker_count, Shapes::ShapeRef.new(shape: __integer, location_name: "workerCount"))
    ProvisionedCapacityDescription.struct_class = Types::ProvisionedCapacityDescription

    ProvisionedCapacityUpdate.add_member(:mcu_count, Shapes::ShapeRef.new(shape: __integerMin1Max8, required: true, location_name: "mcuCount"))
    ProvisionedCapacityUpdate.add_member(:worker_count, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "workerCount"))
    ProvisionedCapacityUpdate.struct_class = Types::ProvisionedCapacityUpdate

    S3Location.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "bucketArn"))
    S3Location.add_member(:file_key, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "fileKey"))
    S3Location.add_member(:object_version, Shapes::ShapeRef.new(shape: __string, location_name: "objectVersion"))
    S3Location.struct_class = Types::S3Location

    S3LocationDescription.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: __string, location_name: "bucketArn"))
    S3LocationDescription.add_member(:file_key, Shapes::ShapeRef.new(shape: __string, location_name: "fileKey"))
    S3LocationDescription.add_member(:object_version, Shapes::ShapeRef.new(shape: __string, location_name: "objectVersion"))
    S3LocationDescription.struct_class = Types::S3LocationDescription

    S3LogDelivery.add_member(:bucket, Shapes::ShapeRef.new(shape: __string, location_name: "bucket"))
    S3LogDelivery.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, required: true, location_name: "enabled"))
    S3LogDelivery.add_member(:prefix, Shapes::ShapeRef.new(shape: __string, location_name: "prefix"))
    S3LogDelivery.struct_class = Types::S3LogDelivery

    S3LogDeliveryDescription.add_member(:bucket, Shapes::ShapeRef.new(shape: __string, location_name: "bucket"))
    S3LogDeliveryDescription.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "enabled"))
    S3LogDeliveryDescription.add_member(:prefix, Shapes::ShapeRef.new(shape: __string, location_name: "prefix"))
    S3LogDeliveryDescription.struct_class = Types::S3LogDeliveryDescription

    ScaleInPolicy.add_member(:cpu_utilization_percentage, Shapes::ShapeRef.new(shape: __integerMin1Max100, required: true, location_name: "cpuUtilizationPercentage"))
    ScaleInPolicy.struct_class = Types::ScaleInPolicy

    ScaleInPolicyDescription.add_member(:cpu_utilization_percentage, Shapes::ShapeRef.new(shape: __integer, location_name: "cpuUtilizationPercentage"))
    ScaleInPolicyDescription.struct_class = Types::ScaleInPolicyDescription

    ScaleInPolicyUpdate.add_member(:cpu_utilization_percentage, Shapes::ShapeRef.new(shape: __integerMin1Max100, required: true, location_name: "cpuUtilizationPercentage"))
    ScaleInPolicyUpdate.struct_class = Types::ScaleInPolicyUpdate

    ScaleOutPolicy.add_member(:cpu_utilization_percentage, Shapes::ShapeRef.new(shape: __integerMin1Max100, required: true, location_name: "cpuUtilizationPercentage"))
    ScaleOutPolicy.struct_class = Types::ScaleOutPolicy

    ScaleOutPolicyDescription.add_member(:cpu_utilization_percentage, Shapes::ShapeRef.new(shape: __integer, location_name: "cpuUtilizationPercentage"))
    ScaleOutPolicyDescription.struct_class = Types::ScaleOutPolicyDescription

    ScaleOutPolicyUpdate.add_member(:cpu_utilization_percentage, Shapes::ShapeRef.new(shape: __integerMin1Max100, required: true, location_name: "cpuUtilizationPercentage"))
    ScaleOutPolicyUpdate.struct_class = Types::ScaleOutPolicyUpdate

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    StateDescription.add_member(:code, Shapes::ShapeRef.new(shape: __string, location_name: "code"))
    StateDescription.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    StateDescription.struct_class = Types::StateDescription

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    UnauthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    UnauthorizedException.struct_class = Types::UnauthorizedException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateConnectorRequest.add_member(:capacity, Shapes::ShapeRef.new(shape: CapacityUpdate, location_name: "capacity"))
    UpdateConnectorRequest.add_member(:connector_configuration, Shapes::ShapeRef.new(shape: ConnectorConfigurationUpdate, location_name: "connectorConfiguration"))
    UpdateConnectorRequest.add_member(:connector_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "connectorArn"))
    UpdateConnectorRequest.add_member(:current_version, Shapes::ShapeRef.new(shape: __string, required: true, location: "querystring", location_name: "currentVersion"))
    UpdateConnectorRequest.struct_class = Types::UpdateConnectorRequest

    UpdateConnectorResponse.add_member(:connector_arn, Shapes::ShapeRef.new(shape: __string, location_name: "connectorArn"))
    UpdateConnectorResponse.add_member(:connector_state, Shapes::ShapeRef.new(shape: ConnectorState, location_name: "connectorState"))
    UpdateConnectorResponse.add_member(:connector_operation_arn, Shapes::ShapeRef.new(shape: __string, location_name: "connectorOperationArn"))
    UpdateConnectorResponse.struct_class = Types::UpdateConnectorResponse

    Vpc.add_member(:security_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "securityGroups"))
    Vpc.add_member(:subnets, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "subnets"))
    Vpc.struct_class = Types::Vpc

    VpcDescription.add_member(:security_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "securityGroups"))
    VpcDescription.add_member(:subnets, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "subnets"))
    VpcDescription.struct_class = Types::VpcDescription

    WorkerConfiguration.add_member(:revision, Shapes::ShapeRef.new(shape: __longMin1, required: true, location_name: "revision"))
    WorkerConfiguration.add_member(:worker_configuration_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "workerConfigurationArn"))
    WorkerConfiguration.struct_class = Types::WorkerConfiguration

    WorkerConfigurationDescription.add_member(:revision, Shapes::ShapeRef.new(shape: __long, location_name: "revision"))
    WorkerConfigurationDescription.add_member(:worker_configuration_arn, Shapes::ShapeRef.new(shape: __string, location_name: "workerConfigurationArn"))
    WorkerConfigurationDescription.struct_class = Types::WorkerConfigurationDescription

    WorkerConfigurationRevisionDescription.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "creationTime"))
    WorkerConfigurationRevisionDescription.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    WorkerConfigurationRevisionDescription.add_member(:properties_file_content, Shapes::ShapeRef.new(shape: __sensitiveString, location_name: "propertiesFileContent"))
    WorkerConfigurationRevisionDescription.add_member(:revision, Shapes::ShapeRef.new(shape: __long, location_name: "revision"))
    WorkerConfigurationRevisionDescription.struct_class = Types::WorkerConfigurationRevisionDescription

    WorkerConfigurationRevisionSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "creationTime"))
    WorkerConfigurationRevisionSummary.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    WorkerConfigurationRevisionSummary.add_member(:revision, Shapes::ShapeRef.new(shape: __long, location_name: "revision"))
    WorkerConfigurationRevisionSummary.struct_class = Types::WorkerConfigurationRevisionSummary

    WorkerConfigurationSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "creationTime"))
    WorkerConfigurationSummary.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    WorkerConfigurationSummary.add_member(:latest_revision, Shapes::ShapeRef.new(shape: WorkerConfigurationRevisionSummary, location_name: "latestRevision"))
    WorkerConfigurationSummary.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    WorkerConfigurationSummary.add_member(:worker_configuration_arn, Shapes::ShapeRef.new(shape: __string, location_name: "workerConfigurationArn"))
    WorkerConfigurationSummary.add_member(:worker_configuration_state, Shapes::ShapeRef.new(shape: WorkerConfigurationState, location_name: "workerConfigurationState"))
    WorkerConfigurationSummary.struct_class = Types::WorkerConfigurationSummary

    WorkerLogDelivery.add_member(:cloud_watch_logs, Shapes::ShapeRef.new(shape: CloudWatchLogsLogDelivery, location_name: "cloudWatchLogs"))
    WorkerLogDelivery.add_member(:firehose, Shapes::ShapeRef.new(shape: FirehoseLogDelivery, location_name: "firehose"))
    WorkerLogDelivery.add_member(:s3, Shapes::ShapeRef.new(shape: S3LogDelivery, location_name: "s3"))
    WorkerLogDelivery.struct_class = Types::WorkerLogDelivery

    WorkerLogDeliveryDescription.add_member(:cloud_watch_logs, Shapes::ShapeRef.new(shape: CloudWatchLogsLogDeliveryDescription, location_name: "cloudWatchLogs"))
    WorkerLogDeliveryDescription.add_member(:firehose, Shapes::ShapeRef.new(shape: FirehoseLogDeliveryDescription, location_name: "firehose"))
    WorkerLogDeliveryDescription.add_member(:s3, Shapes::ShapeRef.new(shape: S3LogDeliveryDescription, location_name: "s3"))
    WorkerLogDeliveryDescription.struct_class = Types::WorkerLogDeliveryDescription

    WorkerSetting.add_member(:capacity, Shapes::ShapeRef.new(shape: CapacityDescription, location_name: "capacity"))
    WorkerSetting.struct_class = Types::WorkerSetting

    __listOfConnectorOperationStep.member = Shapes::ShapeRef.new(shape: ConnectorOperationStep)

    __listOfConnectorOperationSummary.member = Shapes::ShapeRef.new(shape: ConnectorOperationSummary)

    __listOfConnectorSummary.member = Shapes::ShapeRef.new(shape: ConnectorSummary)

    __listOfCustomPluginSummary.member = Shapes::ShapeRef.new(shape: CustomPluginSummary)

    __listOfPlugin.member = Shapes::ShapeRef.new(shape: Plugin)

    __listOfPluginDescription.member = Shapes::ShapeRef.new(shape: PluginDescription)

    __listOfWorkerConfigurationSummary.member = Shapes::ShapeRef.new(shape: WorkerConfigurationSummary)

    __listOf__string.member = Shapes::ShapeRef.new(shape: __string)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-09-14"

      api.metadata = {
        "apiVersion" => "2021-09-14",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "kafkaconnect",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceAbbreviation" => "Kafka Connect",
        "serviceFullName" => "Managed Streaming for Kafka Connect",
        "serviceId" => "KafkaConnect",
        "signatureVersion" => "v4",
        "signingName" => "kafkaconnect",
        "uid" => "kafkaconnect-2021-09-14",
      }

      api.add_operation(:create_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConnector"
        o.http_method = "POST"
        o.http_request_uri = "/v1/connectors"
        o.input = Shapes::ShapeRef.new(shape: CreateConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:create_custom_plugin, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCustomPlugin"
        o.http_method = "POST"
        o.http_request_uri = "/v1/custom-plugins"
        o.input = Shapes::ShapeRef.new(shape: CreateCustomPluginRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCustomPluginResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:create_worker_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkerConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/v1/worker-configurations"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkerConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkerConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:delete_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConnector"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/connectors/{connectorArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:delete_custom_plugin, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCustomPlugin"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/custom-plugins/{customPluginArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCustomPluginRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCustomPluginResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:delete_worker_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkerConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/worker-configurations/{workerConfigurationArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkerConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWorkerConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:describe_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConnector"
        o.http_method = "GET"
        o.http_request_uri = "/v1/connectors/{connectorArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:describe_connector_operation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConnectorOperation"
        o.http_method = "GET"
        o.http_request_uri = "/v1/connectorOperations/{connectorOperationArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeConnectorOperationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConnectorOperationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:describe_custom_plugin, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCustomPlugin"
        o.http_method = "GET"
        o.http_request_uri = "/v1/custom-plugins/{customPluginArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeCustomPluginRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCustomPluginResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:describe_worker_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeWorkerConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/v1/worker-configurations/{workerConfigurationArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeWorkerConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeWorkerConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:list_connector_operations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConnectorOperations"
        o.http_method = "GET"
        o.http_request_uri = "/v1/connectors/{connectorArn}/operations"
        o.input = Shapes::ShapeRef.new(shape: ListConnectorOperationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConnectorOperationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_connectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConnectors"
        o.http_method = "GET"
        o.http_request_uri = "/v1/connectors"
        o.input = Shapes::ShapeRef.new(shape: ListConnectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConnectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_custom_plugins, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCustomPlugins"
        o.http_method = "GET"
        o.http_request_uri = "/v1/custom-plugins"
        o.input = Shapes::ShapeRef.new(shape: ListCustomPluginsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCustomPluginsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/v1/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:list_worker_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkerConfigurations"
        o.http_method = "GET"
        o.http_request_uri = "/v1/worker-configurations"
        o.input = Shapes::ShapeRef.new(shape: ListWorkerConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkerConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/v1/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConnector"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/connectors/{connectorArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)
    end

  end
end
