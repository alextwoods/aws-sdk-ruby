# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CloudHSMV2
  # @api private
  module ClientApi

    include Seahorse::Model

    Backup = Shapes::StructureShape.new(name: 'Backup')
    BackupArn = Shapes::StringShape.new(name: 'BackupArn')
    BackupId = Shapes::StringShape.new(name: 'BackupId')
    BackupPolicy = Shapes::StringShape.new(name: 'BackupPolicy')
    BackupRetentionPolicy = Shapes::StructureShape.new(name: 'BackupRetentionPolicy')
    BackupRetentionType = Shapes::StringShape.new(name: 'BackupRetentionType')
    BackupRetentionValue = Shapes::StringShape.new(name: 'BackupRetentionValue')
    BackupState = Shapes::StringShape.new(name: 'BackupState')
    Backups = Shapes::ListShape.new(name: 'Backups')
    BackupsMaxSize = Shapes::IntegerShape.new(name: 'BackupsMaxSize')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Cert = Shapes::StringShape.new(name: 'Cert')
    Certificates = Shapes::StructureShape.new(name: 'Certificates')
    CloudHsmAccessDeniedException = Shapes::StructureShape.new(name: 'CloudHsmAccessDeniedException')
    CloudHsmArn = Shapes::StringShape.new(name: 'CloudHsmArn')
    CloudHsmInternalFailureException = Shapes::StructureShape.new(name: 'CloudHsmInternalFailureException')
    CloudHsmInvalidRequestException = Shapes::StructureShape.new(name: 'CloudHsmInvalidRequestException')
    CloudHsmResourceLimitExceededException = Shapes::StructureShape.new(name: 'CloudHsmResourceLimitExceededException')
    CloudHsmResourceNotFoundException = Shapes::StructureShape.new(name: 'CloudHsmResourceNotFoundException')
    CloudHsmServiceException = Shapes::StructureShape.new(name: 'CloudHsmServiceException')
    CloudHsmTagException = Shapes::StructureShape.new(name: 'CloudHsmTagException')
    Cluster = Shapes::StructureShape.new(name: 'Cluster')
    ClusterId = Shapes::StringShape.new(name: 'ClusterId')
    ClusterMode = Shapes::StringShape.new(name: 'ClusterMode')
    ClusterState = Shapes::StringShape.new(name: 'ClusterState')
    Clusters = Shapes::ListShape.new(name: 'Clusters')
    ClustersMaxSize = Shapes::IntegerShape.new(name: 'ClustersMaxSize')
    CopyBackupToRegionRequest = Shapes::StructureShape.new(name: 'CopyBackupToRegionRequest')
    CopyBackupToRegionResponse = Shapes::StructureShape.new(name: 'CopyBackupToRegionResponse')
    CreateClusterRequest = Shapes::StructureShape.new(name: 'CreateClusterRequest')
    CreateClusterResponse = Shapes::StructureShape.new(name: 'CreateClusterResponse')
    CreateHsmRequest = Shapes::StructureShape.new(name: 'CreateHsmRequest')
    CreateHsmResponse = Shapes::StructureShape.new(name: 'CreateHsmResponse')
    DeleteBackupRequest = Shapes::StructureShape.new(name: 'DeleteBackupRequest')
    DeleteBackupResponse = Shapes::StructureShape.new(name: 'DeleteBackupResponse')
    DeleteClusterRequest = Shapes::StructureShape.new(name: 'DeleteClusterRequest')
    DeleteClusterResponse = Shapes::StructureShape.new(name: 'DeleteClusterResponse')
    DeleteHsmRequest = Shapes::StructureShape.new(name: 'DeleteHsmRequest')
    DeleteHsmResponse = Shapes::StructureShape.new(name: 'DeleteHsmResponse')
    DeleteResourcePolicyRequest = Shapes::StructureShape.new(name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResponse = Shapes::StructureShape.new(name: 'DeleteResourcePolicyResponse')
    DescribeBackupsRequest = Shapes::StructureShape.new(name: 'DescribeBackupsRequest')
    DescribeBackupsResponse = Shapes::StructureShape.new(name: 'DescribeBackupsResponse')
    DescribeClustersRequest = Shapes::StructureShape.new(name: 'DescribeClustersRequest')
    DescribeClustersResponse = Shapes::StructureShape.new(name: 'DescribeClustersResponse')
    DestinationBackup = Shapes::StructureShape.new(name: 'DestinationBackup')
    EniId = Shapes::StringShape.new(name: 'EniId')
    ExternalAz = Shapes::StringShape.new(name: 'ExternalAz')
    ExternalSubnetMapping = Shapes::MapShape.new(name: 'ExternalSubnetMapping')
    Field = Shapes::StringShape.new(name: 'Field')
    Filters = Shapes::MapShape.new(name: 'Filters')
    GetResourcePolicyRequest = Shapes::StructureShape.new(name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = Shapes::StructureShape.new(name: 'GetResourcePolicyResponse')
    Hsm = Shapes::StructureShape.new(name: 'Hsm')
    HsmId = Shapes::StringShape.new(name: 'HsmId')
    HsmState = Shapes::StringShape.new(name: 'HsmState')
    HsmType = Shapes::StringShape.new(name: 'HsmType')
    Hsms = Shapes::ListShape.new(name: 'Hsms')
    InitializeClusterRequest = Shapes::StructureShape.new(name: 'InitializeClusterRequest')
    InitializeClusterResponse = Shapes::StructureShape.new(name: 'InitializeClusterResponse')
    IpAddress = Shapes::StringShape.new(name: 'IpAddress')
    IpV6Address = Shapes::StringShape.new(name: 'IpV6Address')
    ListTagsRequest = Shapes::StructureShape.new(name: 'ListTagsRequest')
    ListTagsResponse = Shapes::StructureShape.new(name: 'ListTagsResponse')
    MaxSize = Shapes::IntegerShape.new(name: 'MaxSize')
    ModifyBackupAttributesRequest = Shapes::StructureShape.new(name: 'ModifyBackupAttributesRequest')
    ModifyBackupAttributesResponse = Shapes::StructureShape.new(name: 'ModifyBackupAttributesResponse')
    ModifyClusterRequest = Shapes::StructureShape.new(name: 'ModifyClusterRequest')
    ModifyClusterResponse = Shapes::StructureShape.new(name: 'ModifyClusterResponse')
    NetworkType = Shapes::StringShape.new(name: 'NetworkType')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    PreCoPassword = Shapes::StringShape.new(name: 'PreCoPassword')
    PutResourcePolicyRequest = Shapes::StructureShape.new(name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Shapes::StructureShape.new(name: 'PutResourcePolicyResponse')
    Region = Shapes::StringShape.new(name: 'Region')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourcePolicy = Shapes::StringShape.new(name: 'ResourcePolicy')
    RestoreBackupRequest = Shapes::StructureShape.new(name: 'RestoreBackupRequest')
    RestoreBackupResponse = Shapes::StructureShape.new(name: 'RestoreBackupResponse')
    SecurityGroup = Shapes::StringShape.new(name: 'SecurityGroup')
    StateMessage = Shapes::StringShape.new(name: 'StateMessage')
    String = Shapes::StringShape.new(name: 'String')
    Strings = Shapes::ListShape.new(name: 'Strings')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    VpcId = Shapes::StringShape.new(name: 'VpcId')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')

    Backup.add_member(:backup_id, Shapes::ShapeRef.new(shape: BackupId, required: true, location_name: "BackupId"))
    Backup.add_member(:backup_arn, Shapes::ShapeRef.new(shape: BackupArn, location_name: "BackupArn"))
    Backup.add_member(:backup_state, Shapes::ShapeRef.new(shape: BackupState, location_name: "BackupState"))
    Backup.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, location_name: "ClusterId"))
    Backup.add_member(:create_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateTimestamp"))
    Backup.add_member(:copy_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CopyTimestamp"))
    Backup.add_member(:never_expires, Shapes::ShapeRef.new(shape: Boolean, location_name: "NeverExpires"))
    Backup.add_member(:source_region, Shapes::ShapeRef.new(shape: Region, location_name: "SourceRegion"))
    Backup.add_member(:source_backup, Shapes::ShapeRef.new(shape: BackupId, location_name: "SourceBackup"))
    Backup.add_member(:source_cluster, Shapes::ShapeRef.new(shape: ClusterId, location_name: "SourceCluster"))
    Backup.add_member(:delete_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DeleteTimestamp"))
    Backup.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    Backup.add_member(:hsm_type, Shapes::ShapeRef.new(shape: HsmType, location_name: "HsmType"))
    Backup.add_member(:mode, Shapes::ShapeRef.new(shape: ClusterMode, location_name: "Mode"))
    Backup.struct_class = Types::Backup

    BackupRetentionPolicy.add_member(:type, Shapes::ShapeRef.new(shape: BackupRetentionType, location_name: "Type"))
    BackupRetentionPolicy.add_member(:value, Shapes::ShapeRef.new(shape: BackupRetentionValue, location_name: "Value"))
    BackupRetentionPolicy.struct_class = Types::BackupRetentionPolicy

    Backups.member = Shapes::ShapeRef.new(shape: Backup)

    Certificates.add_member(:cluster_csr, Shapes::ShapeRef.new(shape: Cert, location_name: "ClusterCsr"))
    Certificates.add_member(:hsm_certificate, Shapes::ShapeRef.new(shape: Cert, location_name: "HsmCertificate"))
    Certificates.add_member(:aws_hardware_certificate, Shapes::ShapeRef.new(shape: Cert, location_name: "AwsHardwareCertificate"))
    Certificates.add_member(:manufacturer_hardware_certificate, Shapes::ShapeRef.new(shape: Cert, location_name: "ManufacturerHardwareCertificate"))
    Certificates.add_member(:cluster_certificate, Shapes::ShapeRef.new(shape: Cert, location_name: "ClusterCertificate"))
    Certificates.struct_class = Types::Certificates

    CloudHsmAccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "Message"))
    CloudHsmAccessDeniedException.struct_class = Types::CloudHsmAccessDeniedException

    CloudHsmInternalFailureException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "Message"))
    CloudHsmInternalFailureException.struct_class = Types::CloudHsmInternalFailureException

    CloudHsmInvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "Message"))
    CloudHsmInvalidRequestException.struct_class = Types::CloudHsmInvalidRequestException

    CloudHsmResourceLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "Message"))
    CloudHsmResourceLimitExceededException.struct_class = Types::CloudHsmResourceLimitExceededException

    CloudHsmResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "Message"))
    CloudHsmResourceNotFoundException.struct_class = Types::CloudHsmResourceNotFoundException

    CloudHsmServiceException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "Message"))
    CloudHsmServiceException.struct_class = Types::CloudHsmServiceException

    CloudHsmTagException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "Message"))
    CloudHsmTagException.struct_class = Types::CloudHsmTagException

    Cluster.add_member(:backup_policy, Shapes::ShapeRef.new(shape: BackupPolicy, location_name: "BackupPolicy"))
    Cluster.add_member(:backup_retention_policy, Shapes::ShapeRef.new(shape: BackupRetentionPolicy, location_name: "BackupRetentionPolicy"))
    Cluster.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, location_name: "ClusterId"))
    Cluster.add_member(:create_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateTimestamp"))
    Cluster.add_member(:hsms, Shapes::ShapeRef.new(shape: Hsms, location_name: "Hsms"))
    Cluster.add_member(:hsm_type, Shapes::ShapeRef.new(shape: HsmType, location_name: "HsmType"))
    Cluster.add_member(:hsm_type_rollback_expiration, Shapes::ShapeRef.new(shape: Timestamp, location_name: "HsmTypeRollbackExpiration"))
    Cluster.add_member(:pre_co_password, Shapes::ShapeRef.new(shape: PreCoPassword, location_name: "PreCoPassword"))
    Cluster.add_member(:security_group, Shapes::ShapeRef.new(shape: SecurityGroup, location_name: "SecurityGroup"))
    Cluster.add_member(:source_backup_id, Shapes::ShapeRef.new(shape: BackupId, location_name: "SourceBackupId"))
    Cluster.add_member(:state, Shapes::ShapeRef.new(shape: ClusterState, location_name: "State"))
    Cluster.add_member(:state_message, Shapes::ShapeRef.new(shape: StateMessage, location_name: "StateMessage"))
    Cluster.add_member(:subnet_mapping, Shapes::ShapeRef.new(shape: ExternalSubnetMapping, location_name: "SubnetMapping"))
    Cluster.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    Cluster.add_member(:network_type, Shapes::ShapeRef.new(shape: NetworkType, location_name: "NetworkType"))
    Cluster.add_member(:certificates, Shapes::ShapeRef.new(shape: Certificates, location_name: "Certificates"))
    Cluster.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    Cluster.add_member(:mode, Shapes::ShapeRef.new(shape: ClusterMode, location_name: "Mode"))
    Cluster.struct_class = Types::Cluster

    Clusters.member = Shapes::ShapeRef.new(shape: Cluster)

    CopyBackupToRegionRequest.add_member(:destination_region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "DestinationRegion"))
    CopyBackupToRegionRequest.add_member(:backup_id, Shapes::ShapeRef.new(shape: BackupId, required: true, location_name: "BackupId"))
    CopyBackupToRegionRequest.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    CopyBackupToRegionRequest.struct_class = Types::CopyBackupToRegionRequest

    CopyBackupToRegionResponse.add_member(:destination_backup, Shapes::ShapeRef.new(shape: DestinationBackup, location_name: "DestinationBackup"))
    CopyBackupToRegionResponse.struct_class = Types::CopyBackupToRegionResponse

    CreateClusterRequest.add_member(:backup_retention_policy, Shapes::ShapeRef.new(shape: BackupRetentionPolicy, location_name: "BackupRetentionPolicy"))
    CreateClusterRequest.add_member(:hsm_type, Shapes::ShapeRef.new(shape: HsmType, required: true, location_name: "HsmType"))
    CreateClusterRequest.add_member(:source_backup_id, Shapes::ShapeRef.new(shape: BackupArn, location_name: "SourceBackupId"))
    CreateClusterRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "SubnetIds"))
    CreateClusterRequest.add_member(:network_type, Shapes::ShapeRef.new(shape: NetworkType, location_name: "NetworkType"))
    CreateClusterRequest.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    CreateClusterRequest.add_member(:mode, Shapes::ShapeRef.new(shape: ClusterMode, location_name: "Mode"))
    CreateClusterRequest.struct_class = Types::CreateClusterRequest

    CreateClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    CreateClusterResponse.struct_class = Types::CreateClusterResponse

    CreateHsmRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    CreateHsmRequest.add_member(:availability_zone, Shapes::ShapeRef.new(shape: ExternalAz, required: true, location_name: "AvailabilityZone"))
    CreateHsmRequest.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "IpAddress"))
    CreateHsmRequest.struct_class = Types::CreateHsmRequest

    CreateHsmResponse.add_member(:hsm, Shapes::ShapeRef.new(shape: Hsm, location_name: "Hsm"))
    CreateHsmResponse.struct_class = Types::CreateHsmResponse

    DeleteBackupRequest.add_member(:backup_id, Shapes::ShapeRef.new(shape: BackupId, required: true, location_name: "BackupId"))
    DeleteBackupRequest.struct_class = Types::DeleteBackupRequest

    DeleteBackupResponse.add_member(:backup, Shapes::ShapeRef.new(shape: Backup, location_name: "Backup"))
    DeleteBackupResponse.struct_class = Types::DeleteBackupResponse

    DeleteClusterRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    DeleteClusterRequest.struct_class = Types::DeleteClusterRequest

    DeleteClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    DeleteClusterResponse.struct_class = Types::DeleteClusterResponse

    DeleteHsmRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    DeleteHsmRequest.add_member(:hsm_id, Shapes::ShapeRef.new(shape: HsmId, location_name: "HsmId"))
    DeleteHsmRequest.add_member(:eni_id, Shapes::ShapeRef.new(shape: EniId, location_name: "EniId"))
    DeleteHsmRequest.add_member(:eni_ip, Shapes::ShapeRef.new(shape: IpAddress, location_name: "EniIp"))
    DeleteHsmRequest.struct_class = Types::DeleteHsmRequest

    DeleteHsmResponse.add_member(:hsm_id, Shapes::ShapeRef.new(shape: HsmId, location_name: "HsmId"))
    DeleteHsmResponse.struct_class = Types::DeleteHsmResponse

    DeleteResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: CloudHsmArn, location_name: "ResourceArn"))
    DeleteResourcePolicyRequest.struct_class = Types::DeleteResourcePolicyRequest

    DeleteResourcePolicyResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: CloudHsmArn, location_name: "ResourceArn"))
    DeleteResourcePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: "Policy"))
    DeleteResourcePolicyResponse.struct_class = Types::DeleteResourcePolicyResponse

    DescribeBackupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeBackupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BackupsMaxSize, location_name: "MaxResults"))
    DescribeBackupsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    DescribeBackupsRequest.add_member(:shared, Shapes::ShapeRef.new(shape: Boolean, location_name: "Shared"))
    DescribeBackupsRequest.add_member(:sort_ascending, Shapes::ShapeRef.new(shape: Boolean, location_name: "SortAscending"))
    DescribeBackupsRequest.struct_class = Types::DescribeBackupsRequest

    DescribeBackupsResponse.add_member(:backups, Shapes::ShapeRef.new(shape: Backups, location_name: "Backups"))
    DescribeBackupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeBackupsResponse.struct_class = Types::DescribeBackupsResponse

    DescribeClustersRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    DescribeClustersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeClustersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ClustersMaxSize, location_name: "MaxResults"))
    DescribeClustersRequest.struct_class = Types::DescribeClustersRequest

    DescribeClustersResponse.add_member(:clusters, Shapes::ShapeRef.new(shape: Clusters, location_name: "Clusters"))
    DescribeClustersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeClustersResponse.struct_class = Types::DescribeClustersResponse

    DestinationBackup.add_member(:create_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateTimestamp"))
    DestinationBackup.add_member(:source_region, Shapes::ShapeRef.new(shape: Region, location_name: "SourceRegion"))
    DestinationBackup.add_member(:source_backup, Shapes::ShapeRef.new(shape: BackupId, location_name: "SourceBackup"))
    DestinationBackup.add_member(:source_cluster, Shapes::ShapeRef.new(shape: ClusterId, location_name: "SourceCluster"))
    DestinationBackup.struct_class = Types::DestinationBackup

    ExternalSubnetMapping.key = Shapes::ShapeRef.new(shape: ExternalAz)
    ExternalSubnetMapping.value = Shapes::ShapeRef.new(shape: SubnetId)

    Filters.key = Shapes::ShapeRef.new(shape: Field)
    Filters.value = Shapes::ShapeRef.new(shape: Strings)

    GetResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: CloudHsmArn, location_name: "ResourceArn"))
    GetResourcePolicyRequest.struct_class = Types::GetResourcePolicyRequest

    GetResourcePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: "Policy"))
    GetResourcePolicyResponse.struct_class = Types::GetResourcePolicyResponse

    Hsm.add_member(:availability_zone, Shapes::ShapeRef.new(shape: ExternalAz, location_name: "AvailabilityZone"))
    Hsm.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, location_name: "ClusterId"))
    Hsm.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId"))
    Hsm.add_member(:eni_id, Shapes::ShapeRef.new(shape: EniId, location_name: "EniId"))
    Hsm.add_member(:eni_ip, Shapes::ShapeRef.new(shape: IpAddress, location_name: "EniIp"))
    Hsm.add_member(:eni_ip_v6, Shapes::ShapeRef.new(shape: IpV6Address, location_name: "EniIpV6"))
    Hsm.add_member(:hsm_id, Shapes::ShapeRef.new(shape: HsmId, required: true, location_name: "HsmId"))
    Hsm.add_member(:hsm_type, Shapes::ShapeRef.new(shape: HsmType, location_name: "HsmType"))
    Hsm.add_member(:state, Shapes::ShapeRef.new(shape: HsmState, location_name: "State"))
    Hsm.add_member(:state_message, Shapes::ShapeRef.new(shape: String, location_name: "StateMessage"))
    Hsm.struct_class = Types::Hsm

    Hsms.member = Shapes::ShapeRef.new(shape: Hsm)

    InitializeClusterRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    InitializeClusterRequest.add_member(:signed_cert, Shapes::ShapeRef.new(shape: Cert, required: true, location_name: "SignedCert"))
    InitializeClusterRequest.add_member(:trust_anchor, Shapes::ShapeRef.new(shape: Cert, required: true, location_name: "TrustAnchor"))
    InitializeClusterRequest.struct_class = Types::InitializeClusterRequest

    InitializeClusterResponse.add_member(:state, Shapes::ShapeRef.new(shape: ClusterState, location_name: "State"))
    InitializeClusterResponse.add_member(:state_message, Shapes::ShapeRef.new(shape: StateMessage, location_name: "StateMessage"))
    InitializeClusterResponse.struct_class = Types::InitializeClusterResponse

    ListTagsRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    ListTagsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSize, location_name: "MaxResults"))
    ListTagsRequest.struct_class = Types::ListTagsRequest

    ListTagsResponse.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "TagList"))
    ListTagsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsResponse.struct_class = Types::ListTagsResponse

    ModifyBackupAttributesRequest.add_member(:backup_id, Shapes::ShapeRef.new(shape: BackupId, required: true, location_name: "BackupId"))
    ModifyBackupAttributesRequest.add_member(:never_expires, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "NeverExpires"))
    ModifyBackupAttributesRequest.struct_class = Types::ModifyBackupAttributesRequest

    ModifyBackupAttributesResponse.add_member(:backup, Shapes::ShapeRef.new(shape: Backup, location_name: "Backup"))
    ModifyBackupAttributesResponse.struct_class = Types::ModifyBackupAttributesResponse

    ModifyClusterRequest.add_member(:hsm_type, Shapes::ShapeRef.new(shape: HsmType, location_name: "HsmType"))
    ModifyClusterRequest.add_member(:backup_retention_policy, Shapes::ShapeRef.new(shape: BackupRetentionPolicy, location_name: "BackupRetentionPolicy"))
    ModifyClusterRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    ModifyClusterRequest.struct_class = Types::ModifyClusterRequest

    ModifyClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    ModifyClusterResponse.struct_class = Types::ModifyClusterResponse

    PutResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: CloudHsmArn, location_name: "ResourceArn"))
    PutResourcePolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: "Policy"))
    PutResourcePolicyRequest.struct_class = Types::PutResourcePolicyRequest

    PutResourcePolicyResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: CloudHsmArn, location_name: "ResourceArn"))
    PutResourcePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: "Policy"))
    PutResourcePolicyResponse.struct_class = Types::PutResourcePolicyResponse

    RestoreBackupRequest.add_member(:backup_id, Shapes::ShapeRef.new(shape: BackupId, required: true, location_name: "BackupId"))
    RestoreBackupRequest.struct_class = Types::RestoreBackupRequest

    RestoreBackupResponse.add_member(:backup, Shapes::ShapeRef.new(shape: Backup, location_name: "Backup"))
    RestoreBackupResponse.struct_class = Types::RestoreBackupResponse

    Strings.member = Shapes::ShapeRef.new(shape: String)

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    TagResourceRequest.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "TagList"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    UntagResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    UntagResourceRequest.add_member(:tag_key_list, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeyList"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-04-28"

      api.metadata = {
        "apiVersion" => "2017-04-28",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "cloudhsmv2",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceAbbreviation" => "CloudHSM V2",
        "serviceFullName" => "AWS CloudHSM V2",
        "serviceId" => "CloudHSM V2",
        "signatureVersion" => "v4",
        "signingName" => "cloudhsm",
        "targetPrefix" => "BaldrApiService",
        "uid" => "cloudhsmv2-2017-04-28",
      }

      api.add_operation(:copy_backup_to_region, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CopyBackupToRegion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CopyBackupToRegionRequest)
        o.output = Shapes::ShapeRef.new(shape: CopyBackupToRegionResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmTagException)
      end)

      api.add_operation(:create_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmTagException)
      end)

      api.add_operation(:create_hsm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateHsm"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateHsmRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateHsmResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
      end)

      api.add_operation(:delete_backup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBackup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteBackupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBackupResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
      end)

      api.add_operation(:delete_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmTagException)
      end)

      api.add_operation(:delete_hsm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteHsm"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteHsmRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteHsmResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
      end)

      api.add_operation(:delete_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
      end)

      api.add_operation(:describe_backups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBackups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeBackupsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeBackupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmTagException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeClusters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeClustersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeClustersResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmTagException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
      end)

      api.add_operation(:initialize_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InitializeCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: InitializeClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: InitializeClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
      end)

      api.add_operation(:list_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmTagException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:modify_backup_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyBackupAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyBackupAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: ModifyBackupAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
      end)

      api.add_operation(:modify_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: ModifyClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
      end)

      api.add_operation(:put_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
      end)

      api.add_operation(:restore_backup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreBackup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreBackupRequest)
        o.output = Shapes::ShapeRef.new(shape: RestoreBackupResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmTagException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmTagException)
      end)
    end

  end
end
