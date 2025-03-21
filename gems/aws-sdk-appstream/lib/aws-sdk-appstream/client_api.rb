# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AppStream
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessEndpoint = Shapes::StructureShape.new(name: 'AccessEndpoint')
    AccessEndpointList = Shapes::ListShape.new(name: 'AccessEndpointList')
    AccessEndpointType = Shapes::StringShape.new(name: 'AccessEndpointType')
    AccountName = Shapes::StringShape.new(name: 'AccountName')
    AccountPassword = Shapes::StringShape.new(name: 'AccountPassword')
    Action = Shapes::StringShape.new(name: 'Action')
    AppBlock = Shapes::StructureShape.new(name: 'AppBlock')
    AppBlockBuilder = Shapes::StructureShape.new(name: 'AppBlockBuilder')
    AppBlockBuilderAppBlockAssociation = Shapes::StructureShape.new(name: 'AppBlockBuilderAppBlockAssociation')
    AppBlockBuilderAppBlockAssociationsList = Shapes::ListShape.new(name: 'AppBlockBuilderAppBlockAssociationsList')
    AppBlockBuilderAttribute = Shapes::StringShape.new(name: 'AppBlockBuilderAttribute')
    AppBlockBuilderAttributes = Shapes::ListShape.new(name: 'AppBlockBuilderAttributes')
    AppBlockBuilderList = Shapes::ListShape.new(name: 'AppBlockBuilderList')
    AppBlockBuilderPlatformType = Shapes::StringShape.new(name: 'AppBlockBuilderPlatformType')
    AppBlockBuilderState = Shapes::StringShape.new(name: 'AppBlockBuilderState')
    AppBlockBuilderStateChangeReason = Shapes::StructureShape.new(name: 'AppBlockBuilderStateChangeReason')
    AppBlockBuilderStateChangeReasonCode = Shapes::StringShape.new(name: 'AppBlockBuilderStateChangeReasonCode')
    AppBlockState = Shapes::StringShape.new(name: 'AppBlockState')
    AppBlocks = Shapes::ListShape.new(name: 'AppBlocks')
    AppVisibility = Shapes::StringShape.new(name: 'AppVisibility')
    Application = Shapes::StructureShape.new(name: 'Application')
    ApplicationAttribute = Shapes::StringShape.new(name: 'ApplicationAttribute')
    ApplicationAttributes = Shapes::ListShape.new(name: 'ApplicationAttributes')
    ApplicationFleetAssociation = Shapes::StructureShape.new(name: 'ApplicationFleetAssociation')
    ApplicationFleetAssociationList = Shapes::ListShape.new(name: 'ApplicationFleetAssociationList')
    ApplicationSettings = Shapes::StructureShape.new(name: 'ApplicationSettings')
    ApplicationSettingsResponse = Shapes::StructureShape.new(name: 'ApplicationSettingsResponse')
    Applications = Shapes::ListShape.new(name: 'Applications')
    AppstreamAgentVersion = Shapes::StringShape.new(name: 'AppstreamAgentVersion')
    Arn = Shapes::StringShape.new(name: 'Arn')
    ArnList = Shapes::ListShape.new(name: 'ArnList')
    AssociateAppBlockBuilderAppBlockRequest = Shapes::StructureShape.new(name: 'AssociateAppBlockBuilderAppBlockRequest')
    AssociateAppBlockBuilderAppBlockResult = Shapes::StructureShape.new(name: 'AssociateAppBlockBuilderAppBlockResult')
    AssociateApplicationFleetRequest = Shapes::StructureShape.new(name: 'AssociateApplicationFleetRequest')
    AssociateApplicationFleetResult = Shapes::StructureShape.new(name: 'AssociateApplicationFleetResult')
    AssociateApplicationToEntitlementRequest = Shapes::StructureShape.new(name: 'AssociateApplicationToEntitlementRequest')
    AssociateApplicationToEntitlementResult = Shapes::StructureShape.new(name: 'AssociateApplicationToEntitlementResult')
    AssociateFleetRequest = Shapes::StructureShape.new(name: 'AssociateFleetRequest')
    AssociateFleetResult = Shapes::StructureShape.new(name: 'AssociateFleetResult')
    AuthenticationType = Shapes::StringShape.new(name: 'AuthenticationType')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    AwsAccountIdList = Shapes::ListShape.new(name: 'AwsAccountIdList')
    BatchAssociateUserStackRequest = Shapes::StructureShape.new(name: 'BatchAssociateUserStackRequest')
    BatchAssociateUserStackResult = Shapes::StructureShape.new(name: 'BatchAssociateUserStackResult')
    BatchDisassociateUserStackRequest = Shapes::StructureShape.new(name: 'BatchDisassociateUserStackRequest')
    BatchDisassociateUserStackResult = Shapes::StructureShape.new(name: 'BatchDisassociateUserStackResult')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BooleanObject = Shapes::BooleanShape.new(name: 'BooleanObject')
    CertificateBasedAuthProperties = Shapes::StructureShape.new(name: 'CertificateBasedAuthProperties')
    CertificateBasedAuthStatus = Shapes::StringShape.new(name: 'CertificateBasedAuthStatus')
    ComputeCapacity = Shapes::StructureShape.new(name: 'ComputeCapacity')
    ComputeCapacityStatus = Shapes::StructureShape.new(name: 'ComputeCapacityStatus')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    CopyImageRequest = Shapes::StructureShape.new(name: 'CopyImageRequest')
    CopyImageResponse = Shapes::StructureShape.new(name: 'CopyImageResponse')
    CreateAppBlockBuilderRequest = Shapes::StructureShape.new(name: 'CreateAppBlockBuilderRequest')
    CreateAppBlockBuilderResult = Shapes::StructureShape.new(name: 'CreateAppBlockBuilderResult')
    CreateAppBlockBuilderStreamingURLRequest = Shapes::StructureShape.new(name: 'CreateAppBlockBuilderStreamingURLRequest')
    CreateAppBlockBuilderStreamingURLResult = Shapes::StructureShape.new(name: 'CreateAppBlockBuilderStreamingURLResult')
    CreateAppBlockRequest = Shapes::StructureShape.new(name: 'CreateAppBlockRequest')
    CreateAppBlockResult = Shapes::StructureShape.new(name: 'CreateAppBlockResult')
    CreateApplicationRequest = Shapes::StructureShape.new(name: 'CreateApplicationRequest')
    CreateApplicationResult = Shapes::StructureShape.new(name: 'CreateApplicationResult')
    CreateDirectoryConfigRequest = Shapes::StructureShape.new(name: 'CreateDirectoryConfigRequest')
    CreateDirectoryConfigResult = Shapes::StructureShape.new(name: 'CreateDirectoryConfigResult')
    CreateEntitlementRequest = Shapes::StructureShape.new(name: 'CreateEntitlementRequest')
    CreateEntitlementResult = Shapes::StructureShape.new(name: 'CreateEntitlementResult')
    CreateFleetRequest = Shapes::StructureShape.new(name: 'CreateFleetRequest')
    CreateFleetResult = Shapes::StructureShape.new(name: 'CreateFleetResult')
    CreateImageBuilderRequest = Shapes::StructureShape.new(name: 'CreateImageBuilderRequest')
    CreateImageBuilderResult = Shapes::StructureShape.new(name: 'CreateImageBuilderResult')
    CreateImageBuilderStreamingURLRequest = Shapes::StructureShape.new(name: 'CreateImageBuilderStreamingURLRequest')
    CreateImageBuilderStreamingURLResult = Shapes::StructureShape.new(name: 'CreateImageBuilderStreamingURLResult')
    CreateStackRequest = Shapes::StructureShape.new(name: 'CreateStackRequest')
    CreateStackResult = Shapes::StructureShape.new(name: 'CreateStackResult')
    CreateStreamingURLRequest = Shapes::StructureShape.new(name: 'CreateStreamingURLRequest')
    CreateStreamingURLResult = Shapes::StructureShape.new(name: 'CreateStreamingURLResult')
    CreateThemeForStackRequest = Shapes::StructureShape.new(name: 'CreateThemeForStackRequest')
    CreateThemeForStackResult = Shapes::StructureShape.new(name: 'CreateThemeForStackResult')
    CreateUpdatedImageRequest = Shapes::StructureShape.new(name: 'CreateUpdatedImageRequest')
    CreateUpdatedImageResult = Shapes::StructureShape.new(name: 'CreateUpdatedImageResult')
    CreateUsageReportSubscriptionRequest = Shapes::StructureShape.new(name: 'CreateUsageReportSubscriptionRequest')
    CreateUsageReportSubscriptionResult = Shapes::StructureShape.new(name: 'CreateUsageReportSubscriptionResult')
    CreateUserRequest = Shapes::StructureShape.new(name: 'CreateUserRequest')
    CreateUserResult = Shapes::StructureShape.new(name: 'CreateUserResult')
    DeleteAppBlockBuilderRequest = Shapes::StructureShape.new(name: 'DeleteAppBlockBuilderRequest')
    DeleteAppBlockBuilderResult = Shapes::StructureShape.new(name: 'DeleteAppBlockBuilderResult')
    DeleteAppBlockRequest = Shapes::StructureShape.new(name: 'DeleteAppBlockRequest')
    DeleteAppBlockResult = Shapes::StructureShape.new(name: 'DeleteAppBlockResult')
    DeleteApplicationRequest = Shapes::StructureShape.new(name: 'DeleteApplicationRequest')
    DeleteApplicationResult = Shapes::StructureShape.new(name: 'DeleteApplicationResult')
    DeleteDirectoryConfigRequest = Shapes::StructureShape.new(name: 'DeleteDirectoryConfigRequest')
    DeleteDirectoryConfigResult = Shapes::StructureShape.new(name: 'DeleteDirectoryConfigResult')
    DeleteEntitlementRequest = Shapes::StructureShape.new(name: 'DeleteEntitlementRequest')
    DeleteEntitlementResult = Shapes::StructureShape.new(name: 'DeleteEntitlementResult')
    DeleteFleetRequest = Shapes::StructureShape.new(name: 'DeleteFleetRequest')
    DeleteFleetResult = Shapes::StructureShape.new(name: 'DeleteFleetResult')
    DeleteImageBuilderRequest = Shapes::StructureShape.new(name: 'DeleteImageBuilderRequest')
    DeleteImageBuilderResult = Shapes::StructureShape.new(name: 'DeleteImageBuilderResult')
    DeleteImagePermissionsRequest = Shapes::StructureShape.new(name: 'DeleteImagePermissionsRequest')
    DeleteImagePermissionsResult = Shapes::StructureShape.new(name: 'DeleteImagePermissionsResult')
    DeleteImageRequest = Shapes::StructureShape.new(name: 'DeleteImageRequest')
    DeleteImageResult = Shapes::StructureShape.new(name: 'DeleteImageResult')
    DeleteStackRequest = Shapes::StructureShape.new(name: 'DeleteStackRequest')
    DeleteStackResult = Shapes::StructureShape.new(name: 'DeleteStackResult')
    DeleteThemeForStackRequest = Shapes::StructureShape.new(name: 'DeleteThemeForStackRequest')
    DeleteThemeForStackResult = Shapes::StructureShape.new(name: 'DeleteThemeForStackResult')
    DeleteUsageReportSubscriptionRequest = Shapes::StructureShape.new(name: 'DeleteUsageReportSubscriptionRequest')
    DeleteUsageReportSubscriptionResult = Shapes::StructureShape.new(name: 'DeleteUsageReportSubscriptionResult')
    DeleteUserRequest = Shapes::StructureShape.new(name: 'DeleteUserRequest')
    DeleteUserResult = Shapes::StructureShape.new(name: 'DeleteUserResult')
    DescribeAppBlockBuilderAppBlockAssociationsRequest = Shapes::StructureShape.new(name: 'DescribeAppBlockBuilderAppBlockAssociationsRequest')
    DescribeAppBlockBuilderAppBlockAssociationsResult = Shapes::StructureShape.new(name: 'DescribeAppBlockBuilderAppBlockAssociationsResult')
    DescribeAppBlockBuildersRequest = Shapes::StructureShape.new(name: 'DescribeAppBlockBuildersRequest')
    DescribeAppBlockBuildersResult = Shapes::StructureShape.new(name: 'DescribeAppBlockBuildersResult')
    DescribeAppBlocksRequest = Shapes::StructureShape.new(name: 'DescribeAppBlocksRequest')
    DescribeAppBlocksResult = Shapes::StructureShape.new(name: 'DescribeAppBlocksResult')
    DescribeApplicationFleetAssociationsRequest = Shapes::StructureShape.new(name: 'DescribeApplicationFleetAssociationsRequest')
    DescribeApplicationFleetAssociationsResult = Shapes::StructureShape.new(name: 'DescribeApplicationFleetAssociationsResult')
    DescribeApplicationsRequest = Shapes::StructureShape.new(name: 'DescribeApplicationsRequest')
    DescribeApplicationsResult = Shapes::StructureShape.new(name: 'DescribeApplicationsResult')
    DescribeDirectoryConfigsRequest = Shapes::StructureShape.new(name: 'DescribeDirectoryConfigsRequest')
    DescribeDirectoryConfigsResult = Shapes::StructureShape.new(name: 'DescribeDirectoryConfigsResult')
    DescribeEntitlementsRequest = Shapes::StructureShape.new(name: 'DescribeEntitlementsRequest')
    DescribeEntitlementsResult = Shapes::StructureShape.new(name: 'DescribeEntitlementsResult')
    DescribeFleetsRequest = Shapes::StructureShape.new(name: 'DescribeFleetsRequest')
    DescribeFleetsResult = Shapes::StructureShape.new(name: 'DescribeFleetsResult')
    DescribeImageBuildersRequest = Shapes::StructureShape.new(name: 'DescribeImageBuildersRequest')
    DescribeImageBuildersResult = Shapes::StructureShape.new(name: 'DescribeImageBuildersResult')
    DescribeImagePermissionsRequest = Shapes::StructureShape.new(name: 'DescribeImagePermissionsRequest')
    DescribeImagePermissionsResult = Shapes::StructureShape.new(name: 'DescribeImagePermissionsResult')
    DescribeImagesMaxResults = Shapes::IntegerShape.new(name: 'DescribeImagesMaxResults')
    DescribeImagesRequest = Shapes::StructureShape.new(name: 'DescribeImagesRequest')
    DescribeImagesResult = Shapes::StructureShape.new(name: 'DescribeImagesResult')
    DescribeSessionsRequest = Shapes::StructureShape.new(name: 'DescribeSessionsRequest')
    DescribeSessionsResult = Shapes::StructureShape.new(name: 'DescribeSessionsResult')
    DescribeStacksRequest = Shapes::StructureShape.new(name: 'DescribeStacksRequest')
    DescribeStacksResult = Shapes::StructureShape.new(name: 'DescribeStacksResult')
    DescribeThemeForStackRequest = Shapes::StructureShape.new(name: 'DescribeThemeForStackRequest')
    DescribeThemeForStackResult = Shapes::StructureShape.new(name: 'DescribeThemeForStackResult')
    DescribeUsageReportSubscriptionsRequest = Shapes::StructureShape.new(name: 'DescribeUsageReportSubscriptionsRequest')
    DescribeUsageReportSubscriptionsResult = Shapes::StructureShape.new(name: 'DescribeUsageReportSubscriptionsResult')
    DescribeUserStackAssociationsRequest = Shapes::StructureShape.new(name: 'DescribeUserStackAssociationsRequest')
    DescribeUserStackAssociationsResult = Shapes::StructureShape.new(name: 'DescribeUserStackAssociationsResult')
    DescribeUsersRequest = Shapes::StructureShape.new(name: 'DescribeUsersRequest')
    DescribeUsersResult = Shapes::StructureShape.new(name: 'DescribeUsersResult')
    Description = Shapes::StringShape.new(name: 'Description')
    DirectoryConfig = Shapes::StructureShape.new(name: 'DirectoryConfig')
    DirectoryConfigList = Shapes::ListShape.new(name: 'DirectoryConfigList')
    DirectoryName = Shapes::StringShape.new(name: 'DirectoryName')
    DirectoryNameList = Shapes::ListShape.new(name: 'DirectoryNameList')
    DisableUserRequest = Shapes::StructureShape.new(name: 'DisableUserRequest')
    DisableUserResult = Shapes::StructureShape.new(name: 'DisableUserResult')
    DisassociateAppBlockBuilderAppBlockRequest = Shapes::StructureShape.new(name: 'DisassociateAppBlockBuilderAppBlockRequest')
    DisassociateAppBlockBuilderAppBlockResult = Shapes::StructureShape.new(name: 'DisassociateAppBlockBuilderAppBlockResult')
    DisassociateApplicationFleetRequest = Shapes::StructureShape.new(name: 'DisassociateApplicationFleetRequest')
    DisassociateApplicationFleetResult = Shapes::StructureShape.new(name: 'DisassociateApplicationFleetResult')
    DisassociateApplicationFromEntitlementRequest = Shapes::StructureShape.new(name: 'DisassociateApplicationFromEntitlementRequest')
    DisassociateApplicationFromEntitlementResult = Shapes::StructureShape.new(name: 'DisassociateApplicationFromEntitlementResult')
    DisassociateFleetRequest = Shapes::StructureShape.new(name: 'DisassociateFleetRequest')
    DisassociateFleetResult = Shapes::StructureShape.new(name: 'DisassociateFleetResult')
    DisplayName = Shapes::StringShape.new(name: 'DisplayName')
    Domain = Shapes::StringShape.new(name: 'Domain')
    DomainJoinInfo = Shapes::StructureShape.new(name: 'DomainJoinInfo')
    DomainList = Shapes::ListShape.new(name: 'DomainList')
    DynamicAppProvidersEnabled = Shapes::StringShape.new(name: 'DynamicAppProvidersEnabled')
    EmbedHostDomain = Shapes::StringShape.new(name: 'EmbedHostDomain')
    EmbedHostDomains = Shapes::ListShape.new(name: 'EmbedHostDomains')
    EnableUserRequest = Shapes::StructureShape.new(name: 'EnableUserRequest')
    EnableUserResult = Shapes::StructureShape.new(name: 'EnableUserResult')
    EntitledApplication = Shapes::StructureShape.new(name: 'EntitledApplication')
    EntitledApplicationList = Shapes::ListShape.new(name: 'EntitledApplicationList')
    Entitlement = Shapes::StructureShape.new(name: 'Entitlement')
    EntitlementAlreadyExistsException = Shapes::StructureShape.new(name: 'EntitlementAlreadyExistsException')
    EntitlementAttribute = Shapes::StructureShape.new(name: 'EntitlementAttribute')
    EntitlementAttributeList = Shapes::ListShape.new(name: 'EntitlementAttributeList')
    EntitlementList = Shapes::ListShape.new(name: 'EntitlementList')
    EntitlementNotFoundException = Shapes::StructureShape.new(name: 'EntitlementNotFoundException')
    ErrorDetails = Shapes::StructureShape.new(name: 'ErrorDetails')
    ErrorDetailsList = Shapes::ListShape.new(name: 'ErrorDetailsList')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExpireSessionRequest = Shapes::StructureShape.new(name: 'ExpireSessionRequest')
    ExpireSessionResult = Shapes::StructureShape.new(name: 'ExpireSessionResult')
    FeedbackURL = Shapes::StringShape.new(name: 'FeedbackURL')
    Fleet = Shapes::StructureShape.new(name: 'Fleet')
    FleetAttribute = Shapes::StringShape.new(name: 'FleetAttribute')
    FleetAttributes = Shapes::ListShape.new(name: 'FleetAttributes')
    FleetError = Shapes::StructureShape.new(name: 'FleetError')
    FleetErrorCode = Shapes::StringShape.new(name: 'FleetErrorCode')
    FleetErrors = Shapes::ListShape.new(name: 'FleetErrors')
    FleetList = Shapes::ListShape.new(name: 'FleetList')
    FleetState = Shapes::StringShape.new(name: 'FleetState')
    FleetType = Shapes::StringShape.new(name: 'FleetType')
    Image = Shapes::StructureShape.new(name: 'Image')
    ImageBuilder = Shapes::StructureShape.new(name: 'ImageBuilder')
    ImageBuilderList = Shapes::ListShape.new(name: 'ImageBuilderList')
    ImageBuilderState = Shapes::StringShape.new(name: 'ImageBuilderState')
    ImageBuilderStateChangeReason = Shapes::StructureShape.new(name: 'ImageBuilderStateChangeReason')
    ImageBuilderStateChangeReasonCode = Shapes::StringShape.new(name: 'ImageBuilderStateChangeReasonCode')
    ImageList = Shapes::ListShape.new(name: 'ImageList')
    ImagePermissions = Shapes::StructureShape.new(name: 'ImagePermissions')
    ImageSharedWithOthers = Shapes::StringShape.new(name: 'ImageSharedWithOthers')
    ImageState = Shapes::StringShape.new(name: 'ImageState')
    ImageStateChangeReason = Shapes::StructureShape.new(name: 'ImageStateChangeReason')
    ImageStateChangeReasonCode = Shapes::StringShape.new(name: 'ImageStateChangeReasonCode')
    IncompatibleImageException = Shapes::StructureShape.new(name: 'IncompatibleImageException')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InvalidAccountStatusException = Shapes::StructureShape.new(name: 'InvalidAccountStatusException')
    InvalidParameterCombinationException = Shapes::StructureShape.new(name: 'InvalidParameterCombinationException')
    InvalidRoleException = Shapes::StructureShape.new(name: 'InvalidRoleException')
    LastReportGenerationExecutionError = Shapes::StructureShape.new(name: 'LastReportGenerationExecutionError')
    LastReportGenerationExecutionErrors = Shapes::ListShape.new(name: 'LastReportGenerationExecutionErrors')
    LatestAppstreamAgentVersion = Shapes::StringShape.new(name: 'LatestAppstreamAgentVersion')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListAssociatedFleetsRequest = Shapes::StructureShape.new(name: 'ListAssociatedFleetsRequest')
    ListAssociatedFleetsResult = Shapes::StructureShape.new(name: 'ListAssociatedFleetsResult')
    ListAssociatedStacksRequest = Shapes::StructureShape.new(name: 'ListAssociatedStacksRequest')
    ListAssociatedStacksResult = Shapes::StructureShape.new(name: 'ListAssociatedStacksResult')
    ListEntitledApplicationsRequest = Shapes::StructureShape.new(name: 'ListEntitledApplicationsRequest')
    ListEntitledApplicationsResult = Shapes::StructureShape.new(name: 'ListEntitledApplicationsResult')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MessageAction = Shapes::StringShape.new(name: 'MessageAction')
    Metadata = Shapes::MapShape.new(name: 'Metadata')
    Name = Shapes::StringShape.new(name: 'Name')
    NetworkAccessConfiguration = Shapes::StructureShape.new(name: 'NetworkAccessConfiguration')
    OperationNotPermittedException = Shapes::StructureShape.new(name: 'OperationNotPermittedException')
    OrganizationalUnitDistinguishedName = Shapes::StringShape.new(name: 'OrganizationalUnitDistinguishedName')
    OrganizationalUnitDistinguishedNamesList = Shapes::ListShape.new(name: 'OrganizationalUnitDistinguishedNamesList')
    PackagingType = Shapes::StringShape.new(name: 'PackagingType')
    Permission = Shapes::StringShape.new(name: 'Permission')
    PlatformType = Shapes::StringShape.new(name: 'PlatformType')
    Platforms = Shapes::ListShape.new(name: 'Platforms')
    PreferredProtocol = Shapes::StringShape.new(name: 'PreferredProtocol')
    RedirectURL = Shapes::StringShape.new(name: 'RedirectURL')
    RegionName = Shapes::StringShape.new(name: 'RegionName')
    RequestLimitExceededException = Shapes::StructureShape.new(name: 'RequestLimitExceededException')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceError = Shapes::StructureShape.new(name: 'ResourceError')
    ResourceErrors = Shapes::ListShape.new(name: 'ResourceErrors')
    ResourceIdentifier = Shapes::StringShape.new(name: 'ResourceIdentifier')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotAvailableException = Shapes::StructureShape.new(name: 'ResourceNotAvailableException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    S3Location = Shapes::StructureShape.new(name: 'S3Location')
    ScriptDetails = Shapes::StructureShape.new(name: 'ScriptDetails')
    SecurityGroupIdList = Shapes::ListShape.new(name: 'SecurityGroupIdList')
    ServiceAccountCredentials = Shapes::StructureShape.new(name: 'ServiceAccountCredentials')
    Session = Shapes::StructureShape.new(name: 'Session')
    SessionConnectionState = Shapes::StringShape.new(name: 'SessionConnectionState')
    SessionList = Shapes::ListShape.new(name: 'SessionList')
    SessionState = Shapes::StringShape.new(name: 'SessionState')
    SettingsGroup = Shapes::StringShape.new(name: 'SettingsGroup')
    SharedImagePermissions = Shapes::StructureShape.new(name: 'SharedImagePermissions')
    SharedImagePermissionsList = Shapes::ListShape.new(name: 'SharedImagePermissionsList')
    Stack = Shapes::StructureShape.new(name: 'Stack')
    StackAttribute = Shapes::StringShape.new(name: 'StackAttribute')
    StackAttributes = Shapes::ListShape.new(name: 'StackAttributes')
    StackError = Shapes::StructureShape.new(name: 'StackError')
    StackErrorCode = Shapes::StringShape.new(name: 'StackErrorCode')
    StackErrors = Shapes::ListShape.new(name: 'StackErrors')
    StackList = Shapes::ListShape.new(name: 'StackList')
    StartAppBlockBuilderRequest = Shapes::StructureShape.new(name: 'StartAppBlockBuilderRequest')
    StartAppBlockBuilderResult = Shapes::StructureShape.new(name: 'StartAppBlockBuilderResult')
    StartFleetRequest = Shapes::StructureShape.new(name: 'StartFleetRequest')
    StartFleetResult = Shapes::StructureShape.new(name: 'StartFleetResult')
    StartImageBuilderRequest = Shapes::StructureShape.new(name: 'StartImageBuilderRequest')
    StartImageBuilderResult = Shapes::StructureShape.new(name: 'StartImageBuilderResult')
    StopAppBlockBuilderRequest = Shapes::StructureShape.new(name: 'StopAppBlockBuilderRequest')
    StopAppBlockBuilderResult = Shapes::StructureShape.new(name: 'StopAppBlockBuilderResult')
    StopFleetRequest = Shapes::StructureShape.new(name: 'StopFleetRequest')
    StopFleetResult = Shapes::StructureShape.new(name: 'StopFleetResult')
    StopImageBuilderRequest = Shapes::StructureShape.new(name: 'StopImageBuilderRequest')
    StopImageBuilderResult = Shapes::StructureShape.new(name: 'StopImageBuilderResult')
    StorageConnector = Shapes::StructureShape.new(name: 'StorageConnector')
    StorageConnectorList = Shapes::ListShape.new(name: 'StorageConnectorList')
    StorageConnectorType = Shapes::StringShape.new(name: 'StorageConnectorType')
    StreamView = Shapes::StringShape.new(name: 'StreamView')
    StreamingExperienceSettings = Shapes::StructureShape.new(name: 'StreamingExperienceSettings')
    StreamingUrlUserId = Shapes::StringShape.new(name: 'StreamingUrlUserId')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SubnetIdList = Shapes::ListShape.new(name: 'SubnetIdList')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    Theme = Shapes::StructureShape.new(name: 'Theme')
    ThemeAttribute = Shapes::StringShape.new(name: 'ThemeAttribute')
    ThemeAttributes = Shapes::ListShape.new(name: 'ThemeAttributes')
    ThemeFooterLink = Shapes::StructureShape.new(name: 'ThemeFooterLink')
    ThemeFooterLinkDisplayName = Shapes::StringShape.new(name: 'ThemeFooterLinkDisplayName')
    ThemeFooterLinkURL = Shapes::StringShape.new(name: 'ThemeFooterLinkURL')
    ThemeFooterLinks = Shapes::ListShape.new(name: 'ThemeFooterLinks')
    ThemeState = Shapes::StringShape.new(name: 'ThemeState')
    ThemeStyling = Shapes::StringShape.new(name: 'ThemeStyling')
    ThemeTitleText = Shapes::StringShape.new(name: 'ThemeTitleText')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAppBlockBuilderRequest = Shapes::StructureShape.new(name: 'UpdateAppBlockBuilderRequest')
    UpdateAppBlockBuilderResult = Shapes::StructureShape.new(name: 'UpdateAppBlockBuilderResult')
    UpdateApplicationRequest = Shapes::StructureShape.new(name: 'UpdateApplicationRequest')
    UpdateApplicationResult = Shapes::StructureShape.new(name: 'UpdateApplicationResult')
    UpdateDirectoryConfigRequest = Shapes::StructureShape.new(name: 'UpdateDirectoryConfigRequest')
    UpdateDirectoryConfigResult = Shapes::StructureShape.new(name: 'UpdateDirectoryConfigResult')
    UpdateEntitlementRequest = Shapes::StructureShape.new(name: 'UpdateEntitlementRequest')
    UpdateEntitlementResult = Shapes::StructureShape.new(name: 'UpdateEntitlementResult')
    UpdateFleetRequest = Shapes::StructureShape.new(name: 'UpdateFleetRequest')
    UpdateFleetResult = Shapes::StructureShape.new(name: 'UpdateFleetResult')
    UpdateImagePermissionsRequest = Shapes::StructureShape.new(name: 'UpdateImagePermissionsRequest')
    UpdateImagePermissionsResult = Shapes::StructureShape.new(name: 'UpdateImagePermissionsResult')
    UpdateStackRequest = Shapes::StructureShape.new(name: 'UpdateStackRequest')
    UpdateStackResult = Shapes::StructureShape.new(name: 'UpdateStackResult')
    UpdateThemeForStackRequest = Shapes::StructureShape.new(name: 'UpdateThemeForStackRequest')
    UpdateThemeForStackResult = Shapes::StructureShape.new(name: 'UpdateThemeForStackResult')
    UsageReportExecutionErrorCode = Shapes::StringShape.new(name: 'UsageReportExecutionErrorCode')
    UsageReportSchedule = Shapes::StringShape.new(name: 'UsageReportSchedule')
    UsageReportSubscription = Shapes::StructureShape.new(name: 'UsageReportSubscription')
    UsageReportSubscriptionList = Shapes::ListShape.new(name: 'UsageReportSubscriptionList')
    UsbDeviceFilterString = Shapes::StringShape.new(name: 'UsbDeviceFilterString')
    UsbDeviceFilterStrings = Shapes::ListShape.new(name: 'UsbDeviceFilterStrings')
    User = Shapes::StructureShape.new(name: 'User')
    UserAttributeValue = Shapes::StringShape.new(name: 'UserAttributeValue')
    UserId = Shapes::StringShape.new(name: 'UserId')
    UserList = Shapes::ListShape.new(name: 'UserList')
    UserSetting = Shapes::StructureShape.new(name: 'UserSetting')
    UserSettingList = Shapes::ListShape.new(name: 'UserSettingList')
    UserStackAssociation = Shapes::StructureShape.new(name: 'UserStackAssociation')
    UserStackAssociationError = Shapes::StructureShape.new(name: 'UserStackAssociationError')
    UserStackAssociationErrorCode = Shapes::StringShape.new(name: 'UserStackAssociationErrorCode')
    UserStackAssociationErrorList = Shapes::ListShape.new(name: 'UserStackAssociationErrorList')
    UserStackAssociationList = Shapes::ListShape.new(name: 'UserStackAssociationList')
    Username = Shapes::StringShape.new(name: 'Username')
    VisibilityType = Shapes::StringShape.new(name: 'VisibilityType')
    VpcConfig = Shapes::StructureShape.new(name: 'VpcConfig')

    AccessEndpoint.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: AccessEndpointType, required: true, location_name: "EndpointType"))
    AccessEndpoint.add_member(:vpce_id, Shapes::ShapeRef.new(shape: String, location_name: "VpceId"))
    AccessEndpoint.struct_class = Types::AccessEndpoint

    AccessEndpointList.member = Shapes::ShapeRef.new(shape: AccessEndpoint)

    AppBlock.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    AppBlock.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    AppBlock.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    AppBlock.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "DisplayName"))
    AppBlock.add_member(:source_s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "SourceS3Location"))
    AppBlock.add_member(:setup_script_details, Shapes::ShapeRef.new(shape: ScriptDetails, location_name: "SetupScriptDetails"))
    AppBlock.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    AppBlock.add_member(:post_setup_script_details, Shapes::ShapeRef.new(shape: ScriptDetails, location_name: "PostSetupScriptDetails"))
    AppBlock.add_member(:packaging_type, Shapes::ShapeRef.new(shape: PackagingType, location_name: "PackagingType"))
    AppBlock.add_member(:state, Shapes::ShapeRef.new(shape: AppBlockState, location_name: "State"))
    AppBlock.add_member(:app_block_errors, Shapes::ShapeRef.new(shape: ErrorDetailsList, location_name: "AppBlockErrors"))
    AppBlock.struct_class = Types::AppBlock

    AppBlockBuilder.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    AppBlockBuilder.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    AppBlockBuilder.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "DisplayName"))
    AppBlockBuilder.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    AppBlockBuilder.add_member(:platform, Shapes::ShapeRef.new(shape: AppBlockBuilderPlatformType, required: true, location_name: "Platform"))
    AppBlockBuilder.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceType"))
    AppBlockBuilder.add_member(:enable_default_internet_access, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableDefaultInternetAccess"))
    AppBlockBuilder.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "IamRoleArn"))
    AppBlockBuilder.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, required: true, location_name: "VpcConfig"))
    AppBlockBuilder.add_member(:state, Shapes::ShapeRef.new(shape: AppBlockBuilderState, required: true, location_name: "State"))
    AppBlockBuilder.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    AppBlockBuilder.add_member(:app_block_builder_errors, Shapes::ShapeRef.new(shape: ResourceErrors, location_name: "AppBlockBuilderErrors"))
    AppBlockBuilder.add_member(:state_change_reason, Shapes::ShapeRef.new(shape: AppBlockBuilderStateChangeReason, location_name: "StateChangeReason"))
    AppBlockBuilder.add_member(:access_endpoints, Shapes::ShapeRef.new(shape: AccessEndpointList, location_name: "AccessEndpoints"))
    AppBlockBuilder.struct_class = Types::AppBlockBuilder

    AppBlockBuilderAppBlockAssociation.add_member(:app_block_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AppBlockArn"))
    AppBlockBuilderAppBlockAssociation.add_member(:app_block_builder_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "AppBlockBuilderName"))
    AppBlockBuilderAppBlockAssociation.struct_class = Types::AppBlockBuilderAppBlockAssociation

    AppBlockBuilderAppBlockAssociationsList.member = Shapes::ShapeRef.new(shape: AppBlockBuilderAppBlockAssociation)

    AppBlockBuilderAttributes.member = Shapes::ShapeRef.new(shape: AppBlockBuilderAttribute)

    AppBlockBuilderList.member = Shapes::ShapeRef.new(shape: AppBlockBuilder)

    AppBlockBuilderStateChangeReason.add_member(:code, Shapes::ShapeRef.new(shape: AppBlockBuilderStateChangeReasonCode, location_name: "Code"))
    AppBlockBuilderStateChangeReason.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AppBlockBuilderStateChangeReason.struct_class = Types::AppBlockBuilderStateChangeReason

    AppBlocks.member = Shapes::ShapeRef.new(shape: AppBlock)

    Application.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Application.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "DisplayName"))
    Application.add_member(:icon_url, Shapes::ShapeRef.new(shape: String, location_name: "IconURL"))
    Application.add_member(:launch_path, Shapes::ShapeRef.new(shape: String, location_name: "LaunchPath"))
    Application.add_member(:launch_parameters, Shapes::ShapeRef.new(shape: String, location_name: "LaunchParameters"))
    Application.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    Application.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    Application.add_member(:working_directory, Shapes::ShapeRef.new(shape: String, location_name: "WorkingDirectory"))
    Application.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    Application.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    Application.add_member(:app_block_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AppBlockArn"))
    Application.add_member(:icon_s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "IconS3Location"))
    Application.add_member(:platforms, Shapes::ShapeRef.new(shape: Platforms, location_name: "Platforms"))
    Application.add_member(:instance_families, Shapes::ShapeRef.new(shape: StringList, location_name: "InstanceFamilies"))
    Application.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    Application.struct_class = Types::Application

    ApplicationAttributes.member = Shapes::ShapeRef.new(shape: ApplicationAttribute)

    ApplicationFleetAssociation.add_member(:fleet_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "FleetName"))
    ApplicationFleetAssociation.add_member(:application_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ApplicationArn"))
    ApplicationFleetAssociation.struct_class = Types::ApplicationFleetAssociation

    ApplicationFleetAssociationList.member = Shapes::ShapeRef.new(shape: ApplicationFleetAssociation)

    ApplicationSettings.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "Enabled"))
    ApplicationSettings.add_member(:settings_group, Shapes::ShapeRef.new(shape: SettingsGroup, location_name: "SettingsGroup"))
    ApplicationSettings.struct_class = Types::ApplicationSettings

    ApplicationSettingsResponse.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    ApplicationSettingsResponse.add_member(:settings_group, Shapes::ShapeRef.new(shape: SettingsGroup, location_name: "SettingsGroup"))
    ApplicationSettingsResponse.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: String, location_name: "S3BucketName"))
    ApplicationSettingsResponse.struct_class = Types::ApplicationSettingsResponse

    Applications.member = Shapes::ShapeRef.new(shape: Application)

    ArnList.member = Shapes::ShapeRef.new(shape: Arn)

    AssociateAppBlockBuilderAppBlockRequest.add_member(:app_block_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AppBlockArn"))
    AssociateAppBlockBuilderAppBlockRequest.add_member(:app_block_builder_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "AppBlockBuilderName"))
    AssociateAppBlockBuilderAppBlockRequest.struct_class = Types::AssociateAppBlockBuilderAppBlockRequest

    AssociateAppBlockBuilderAppBlockResult.add_member(:app_block_builder_app_block_association, Shapes::ShapeRef.new(shape: AppBlockBuilderAppBlockAssociation, location_name: "AppBlockBuilderAppBlockAssociation"))
    AssociateAppBlockBuilderAppBlockResult.struct_class = Types::AssociateAppBlockBuilderAppBlockResult

    AssociateApplicationFleetRequest.add_member(:fleet_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "FleetName"))
    AssociateApplicationFleetRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ApplicationArn"))
    AssociateApplicationFleetRequest.struct_class = Types::AssociateApplicationFleetRequest

    AssociateApplicationFleetResult.add_member(:application_fleet_association, Shapes::ShapeRef.new(shape: ApplicationFleetAssociation, location_name: "ApplicationFleetAssociation"))
    AssociateApplicationFleetResult.struct_class = Types::AssociateApplicationFleetResult

    AssociateApplicationToEntitlementRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "StackName"))
    AssociateApplicationToEntitlementRequest.add_member(:entitlement_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "EntitlementName"))
    AssociateApplicationToEntitlementRequest.add_member(:application_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ApplicationIdentifier"))
    AssociateApplicationToEntitlementRequest.struct_class = Types::AssociateApplicationToEntitlementRequest

    AssociateApplicationToEntitlementResult.struct_class = Types::AssociateApplicationToEntitlementResult

    AssociateFleetRequest.add_member(:fleet_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "FleetName"))
    AssociateFleetRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackName"))
    AssociateFleetRequest.struct_class = Types::AssociateFleetRequest

    AssociateFleetResult.struct_class = Types::AssociateFleetResult

    AwsAccountIdList.member = Shapes::ShapeRef.new(shape: AwsAccountId)

    BatchAssociateUserStackRequest.add_member(:user_stack_associations, Shapes::ShapeRef.new(shape: UserStackAssociationList, required: true, location_name: "UserStackAssociations"))
    BatchAssociateUserStackRequest.struct_class = Types::BatchAssociateUserStackRequest

    BatchAssociateUserStackResult.add_member(:errors, Shapes::ShapeRef.new(shape: UserStackAssociationErrorList, location_name: "errors"))
    BatchAssociateUserStackResult.struct_class = Types::BatchAssociateUserStackResult

    BatchDisassociateUserStackRequest.add_member(:user_stack_associations, Shapes::ShapeRef.new(shape: UserStackAssociationList, required: true, location_name: "UserStackAssociations"))
    BatchDisassociateUserStackRequest.struct_class = Types::BatchDisassociateUserStackRequest

    BatchDisassociateUserStackResult.add_member(:errors, Shapes::ShapeRef.new(shape: UserStackAssociationErrorList, location_name: "errors"))
    BatchDisassociateUserStackResult.struct_class = Types::BatchDisassociateUserStackResult

    CertificateBasedAuthProperties.add_member(:status, Shapes::ShapeRef.new(shape: CertificateBasedAuthStatus, location_name: "Status"))
    CertificateBasedAuthProperties.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CertificateAuthorityArn"))
    CertificateBasedAuthProperties.struct_class = Types::CertificateBasedAuthProperties

    ComputeCapacity.add_member(:desired_instances, Shapes::ShapeRef.new(shape: Integer, location_name: "DesiredInstances"))
    ComputeCapacity.add_member(:desired_sessions, Shapes::ShapeRef.new(shape: Integer, location_name: "DesiredSessions"))
    ComputeCapacity.struct_class = Types::ComputeCapacity

    ComputeCapacityStatus.add_member(:desired, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "Desired"))
    ComputeCapacityStatus.add_member(:running, Shapes::ShapeRef.new(shape: Integer, location_name: "Running"))
    ComputeCapacityStatus.add_member(:in_use, Shapes::ShapeRef.new(shape: Integer, location_name: "InUse"))
    ComputeCapacityStatus.add_member(:available, Shapes::ShapeRef.new(shape: Integer, location_name: "Available"))
    ComputeCapacityStatus.add_member(:desired_user_sessions, Shapes::ShapeRef.new(shape: Integer, location_name: "DesiredUserSessions"))
    ComputeCapacityStatus.add_member(:available_user_sessions, Shapes::ShapeRef.new(shape: Integer, location_name: "AvailableUserSessions"))
    ComputeCapacityStatus.add_member(:active_user_sessions, Shapes::ShapeRef.new(shape: Integer, location_name: "ActiveUserSessions"))
    ComputeCapacityStatus.add_member(:actual_user_sessions, Shapes::ShapeRef.new(shape: Integer, location_name: "ActualUserSessions"))
    ComputeCapacityStatus.struct_class = Types::ComputeCapacityStatus

    ConcurrentModificationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    CopyImageRequest.add_member(:source_image_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "SourceImageName"))
    CopyImageRequest.add_member(:destination_image_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "DestinationImageName"))
    CopyImageRequest.add_member(:destination_region, Shapes::ShapeRef.new(shape: RegionName, required: true, location_name: "DestinationRegion"))
    CopyImageRequest.add_member(:destination_image_description, Shapes::ShapeRef.new(shape: Description, location_name: "DestinationImageDescription"))
    CopyImageRequest.struct_class = Types::CopyImageRequest

    CopyImageResponse.add_member(:destination_image_name, Shapes::ShapeRef.new(shape: Name, location_name: "DestinationImageName"))
    CopyImageResponse.struct_class = Types::CopyImageResponse

    CreateAppBlockBuilderRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CreateAppBlockBuilderRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateAppBlockBuilderRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    CreateAppBlockBuilderRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateAppBlockBuilderRequest.add_member(:platform, Shapes::ShapeRef.new(shape: AppBlockBuilderPlatformType, required: true, location_name: "Platform"))
    CreateAppBlockBuilderRequest.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceType"))
    CreateAppBlockBuilderRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, required: true, location_name: "VpcConfig"))
    CreateAppBlockBuilderRequest.add_member(:enable_default_internet_access, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableDefaultInternetAccess"))
    CreateAppBlockBuilderRequest.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "IamRoleArn"))
    CreateAppBlockBuilderRequest.add_member(:access_endpoints, Shapes::ShapeRef.new(shape: AccessEndpointList, location_name: "AccessEndpoints"))
    CreateAppBlockBuilderRequest.struct_class = Types::CreateAppBlockBuilderRequest

    CreateAppBlockBuilderResult.add_member(:app_block_builder, Shapes::ShapeRef.new(shape: AppBlockBuilder, location_name: "AppBlockBuilder"))
    CreateAppBlockBuilderResult.struct_class = Types::CreateAppBlockBuilderResult

    CreateAppBlockBuilderStreamingURLRequest.add_member(:app_block_builder_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "AppBlockBuilderName"))
    CreateAppBlockBuilderStreamingURLRequest.add_member(:validity, Shapes::ShapeRef.new(shape: Long, location_name: "Validity"))
    CreateAppBlockBuilderStreamingURLRequest.struct_class = Types::CreateAppBlockBuilderStreamingURLRequest

    CreateAppBlockBuilderStreamingURLResult.add_member(:streaming_url, Shapes::ShapeRef.new(shape: String, location_name: "StreamingURL"))
    CreateAppBlockBuilderStreamingURLResult.add_member(:expires, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Expires"))
    CreateAppBlockBuilderStreamingURLResult.struct_class = Types::CreateAppBlockBuilderStreamingURLResult

    CreateAppBlockRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CreateAppBlockRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateAppBlockRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    CreateAppBlockRequest.add_member(:source_s3_location, Shapes::ShapeRef.new(shape: S3Location, required: true, location_name: "SourceS3Location"))
    CreateAppBlockRequest.add_member(:setup_script_details, Shapes::ShapeRef.new(shape: ScriptDetails, location_name: "SetupScriptDetails"))
    CreateAppBlockRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateAppBlockRequest.add_member(:post_setup_script_details, Shapes::ShapeRef.new(shape: ScriptDetails, location_name: "PostSetupScriptDetails"))
    CreateAppBlockRequest.add_member(:packaging_type, Shapes::ShapeRef.new(shape: PackagingType, location_name: "PackagingType"))
    CreateAppBlockRequest.struct_class = Types::CreateAppBlockRequest

    CreateAppBlockResult.add_member(:app_block, Shapes::ShapeRef.new(shape: AppBlock, location_name: "AppBlock"))
    CreateAppBlockResult.struct_class = Types::CreateAppBlockResult

    CreateApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CreateApplicationRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    CreateApplicationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateApplicationRequest.add_member(:icon_s3_location, Shapes::ShapeRef.new(shape: S3Location, required: true, location_name: "IconS3Location"))
    CreateApplicationRequest.add_member(:launch_path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LaunchPath"))
    CreateApplicationRequest.add_member(:working_directory, Shapes::ShapeRef.new(shape: String, location_name: "WorkingDirectory"))
    CreateApplicationRequest.add_member(:launch_parameters, Shapes::ShapeRef.new(shape: String, location_name: "LaunchParameters"))
    CreateApplicationRequest.add_member(:platforms, Shapes::ShapeRef.new(shape: Platforms, required: true, location_name: "Platforms"))
    CreateApplicationRequest.add_member(:instance_families, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "InstanceFamilies"))
    CreateApplicationRequest.add_member(:app_block_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AppBlockArn"))
    CreateApplicationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateApplicationRequest.struct_class = Types::CreateApplicationRequest

    CreateApplicationResult.add_member(:application, Shapes::ShapeRef.new(shape: Application, location_name: "Application"))
    CreateApplicationResult.struct_class = Types::CreateApplicationResult

    CreateDirectoryConfigRequest.add_member(:directory_name, Shapes::ShapeRef.new(shape: DirectoryName, required: true, location_name: "DirectoryName"))
    CreateDirectoryConfigRequest.add_member(:organizational_unit_distinguished_names, Shapes::ShapeRef.new(shape: OrganizationalUnitDistinguishedNamesList, required: true, location_name: "OrganizationalUnitDistinguishedNames"))
    CreateDirectoryConfigRequest.add_member(:service_account_credentials, Shapes::ShapeRef.new(shape: ServiceAccountCredentials, location_name: "ServiceAccountCredentials"))
    CreateDirectoryConfigRequest.add_member(:certificate_based_auth_properties, Shapes::ShapeRef.new(shape: CertificateBasedAuthProperties, location_name: "CertificateBasedAuthProperties"))
    CreateDirectoryConfigRequest.struct_class = Types::CreateDirectoryConfigRequest

    CreateDirectoryConfigResult.add_member(:directory_config, Shapes::ShapeRef.new(shape: DirectoryConfig, location_name: "DirectoryConfig"))
    CreateDirectoryConfigResult.struct_class = Types::CreateDirectoryConfigResult

    CreateEntitlementRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CreateEntitlementRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "StackName"))
    CreateEntitlementRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateEntitlementRequest.add_member(:app_visibility, Shapes::ShapeRef.new(shape: AppVisibility, required: true, location_name: "AppVisibility"))
    CreateEntitlementRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: EntitlementAttributeList, required: true, location_name: "Attributes"))
    CreateEntitlementRequest.struct_class = Types::CreateEntitlementRequest

    CreateEntitlementResult.add_member(:entitlement, Shapes::ShapeRef.new(shape: Entitlement, location_name: "Entitlement"))
    CreateEntitlementResult.struct_class = Types::CreateEntitlementResult

    CreateFleetRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CreateFleetRequest.add_member(:image_name, Shapes::ShapeRef.new(shape: Name, location_name: "ImageName"))
    CreateFleetRequest.add_member(:image_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ImageArn"))
    CreateFleetRequest.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceType"))
    CreateFleetRequest.add_member(:fleet_type, Shapes::ShapeRef.new(shape: FleetType, location_name: "FleetType"))
    CreateFleetRequest.add_member(:compute_capacity, Shapes::ShapeRef.new(shape: ComputeCapacity, location_name: "ComputeCapacity"))
    CreateFleetRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    CreateFleetRequest.add_member(:max_user_duration_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxUserDurationInSeconds"))
    CreateFleetRequest.add_member(:disconnect_timeout_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "DisconnectTimeoutInSeconds"))
    CreateFleetRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateFleetRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    CreateFleetRequest.add_member(:enable_default_internet_access, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableDefaultInternetAccess"))
    CreateFleetRequest.add_member(:domain_join_info, Shapes::ShapeRef.new(shape: DomainJoinInfo, location_name: "DomainJoinInfo"))
    CreateFleetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateFleetRequest.add_member(:idle_disconnect_timeout_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "IdleDisconnectTimeoutInSeconds"))
    CreateFleetRequest.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "IamRoleArn"))
    CreateFleetRequest.add_member(:stream_view, Shapes::ShapeRef.new(shape: StreamView, location_name: "StreamView"))
    CreateFleetRequest.add_member(:platform, Shapes::ShapeRef.new(shape: PlatformType, location_name: "Platform"))
    CreateFleetRequest.add_member(:max_concurrent_sessions, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxConcurrentSessions"))
    CreateFleetRequest.add_member(:usb_device_filter_strings, Shapes::ShapeRef.new(shape: UsbDeviceFilterStrings, location_name: "UsbDeviceFilterStrings"))
    CreateFleetRequest.add_member(:session_script_s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "SessionScriptS3Location"))
    CreateFleetRequest.add_member(:max_sessions_per_instance, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxSessionsPerInstance"))
    CreateFleetRequest.struct_class = Types::CreateFleetRequest

    CreateFleetResult.add_member(:fleet, Shapes::ShapeRef.new(shape: Fleet, location_name: "Fleet"))
    CreateFleetResult.struct_class = Types::CreateFleetResult

    CreateImageBuilderRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CreateImageBuilderRequest.add_member(:image_name, Shapes::ShapeRef.new(shape: String, location_name: "ImageName"))
    CreateImageBuilderRequest.add_member(:image_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ImageArn"))
    CreateImageBuilderRequest.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceType"))
    CreateImageBuilderRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateImageBuilderRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    CreateImageBuilderRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    CreateImageBuilderRequest.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "IamRoleArn"))
    CreateImageBuilderRequest.add_member(:enable_default_internet_access, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableDefaultInternetAccess"))
    CreateImageBuilderRequest.add_member(:domain_join_info, Shapes::ShapeRef.new(shape: DomainJoinInfo, location_name: "DomainJoinInfo"))
    CreateImageBuilderRequest.add_member(:appstream_agent_version, Shapes::ShapeRef.new(shape: AppstreamAgentVersion, location_name: "AppstreamAgentVersion"))
    CreateImageBuilderRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateImageBuilderRequest.add_member(:access_endpoints, Shapes::ShapeRef.new(shape: AccessEndpointList, location_name: "AccessEndpoints"))
    CreateImageBuilderRequest.struct_class = Types::CreateImageBuilderRequest

    CreateImageBuilderResult.add_member(:image_builder, Shapes::ShapeRef.new(shape: ImageBuilder, location_name: "ImageBuilder"))
    CreateImageBuilderResult.struct_class = Types::CreateImageBuilderResult

    CreateImageBuilderStreamingURLRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    CreateImageBuilderStreamingURLRequest.add_member(:validity, Shapes::ShapeRef.new(shape: Long, location_name: "Validity"))
    CreateImageBuilderStreamingURLRequest.struct_class = Types::CreateImageBuilderStreamingURLRequest

    CreateImageBuilderStreamingURLResult.add_member(:streaming_url, Shapes::ShapeRef.new(shape: String, location_name: "StreamingURL"))
    CreateImageBuilderStreamingURLResult.add_member(:expires, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Expires"))
    CreateImageBuilderStreamingURLResult.struct_class = Types::CreateImageBuilderStreamingURLResult

    CreateStackRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CreateStackRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateStackRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    CreateStackRequest.add_member(:storage_connectors, Shapes::ShapeRef.new(shape: StorageConnectorList, location_name: "StorageConnectors"))
    CreateStackRequest.add_member(:redirect_url, Shapes::ShapeRef.new(shape: RedirectURL, location_name: "RedirectURL"))
    CreateStackRequest.add_member(:feedback_url, Shapes::ShapeRef.new(shape: FeedbackURL, location_name: "FeedbackURL"))
    CreateStackRequest.add_member(:user_settings, Shapes::ShapeRef.new(shape: UserSettingList, location_name: "UserSettings"))
    CreateStackRequest.add_member(:application_settings, Shapes::ShapeRef.new(shape: ApplicationSettings, location_name: "ApplicationSettings"))
    CreateStackRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateStackRequest.add_member(:access_endpoints, Shapes::ShapeRef.new(shape: AccessEndpointList, location_name: "AccessEndpoints"))
    CreateStackRequest.add_member(:embed_host_domains, Shapes::ShapeRef.new(shape: EmbedHostDomains, location_name: "EmbedHostDomains"))
    CreateStackRequest.add_member(:streaming_experience_settings, Shapes::ShapeRef.new(shape: StreamingExperienceSettings, location_name: "StreamingExperienceSettings"))
    CreateStackRequest.struct_class = Types::CreateStackRequest

    CreateStackResult.add_member(:stack, Shapes::ShapeRef.new(shape: Stack, location_name: "Stack"))
    CreateStackResult.struct_class = Types::CreateStackResult

    CreateStreamingURLRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackName"))
    CreateStreamingURLRequest.add_member(:fleet_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "FleetName"))
    CreateStreamingURLRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: StreamingUrlUserId, required: true, location_name: "UserId"))
    CreateStreamingURLRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: String, location_name: "ApplicationId"))
    CreateStreamingURLRequest.add_member(:validity, Shapes::ShapeRef.new(shape: Long, location_name: "Validity"))
    CreateStreamingURLRequest.add_member(:session_context, Shapes::ShapeRef.new(shape: String, location_name: "SessionContext"))
    CreateStreamingURLRequest.struct_class = Types::CreateStreamingURLRequest

    CreateStreamingURLResult.add_member(:streaming_url, Shapes::ShapeRef.new(shape: String, location_name: "StreamingURL"))
    CreateStreamingURLResult.add_member(:expires, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Expires"))
    CreateStreamingURLResult.struct_class = Types::CreateStreamingURLResult

    CreateThemeForStackRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "StackName"))
    CreateThemeForStackRequest.add_member(:footer_links, Shapes::ShapeRef.new(shape: ThemeFooterLinks, location_name: "FooterLinks"))
    CreateThemeForStackRequest.add_member(:title_text, Shapes::ShapeRef.new(shape: ThemeTitleText, required: true, location_name: "TitleText"))
    CreateThemeForStackRequest.add_member(:theme_styling, Shapes::ShapeRef.new(shape: ThemeStyling, required: true, location_name: "ThemeStyling"))
    CreateThemeForStackRequest.add_member(:organization_logo_s3_location, Shapes::ShapeRef.new(shape: S3Location, required: true, location_name: "OrganizationLogoS3Location"))
    CreateThemeForStackRequest.add_member(:favicon_s3_location, Shapes::ShapeRef.new(shape: S3Location, required: true, location_name: "FaviconS3Location"))
    CreateThemeForStackRequest.struct_class = Types::CreateThemeForStackRequest

    CreateThemeForStackResult.add_member(:theme, Shapes::ShapeRef.new(shape: Theme, location_name: "Theme"))
    CreateThemeForStackResult.struct_class = Types::CreateThemeForStackResult

    CreateUpdatedImageRequest.add_member(:existing_image_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "existingImageName"))
    CreateUpdatedImageRequest.add_member(:new_image_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "newImageName"))
    CreateUpdatedImageRequest.add_member(:new_image_description, Shapes::ShapeRef.new(shape: Description, location_name: "newImageDescription"))
    CreateUpdatedImageRequest.add_member(:new_image_display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "newImageDisplayName"))
    CreateUpdatedImageRequest.add_member(:new_image_tags, Shapes::ShapeRef.new(shape: Tags, location_name: "newImageTags"))
    CreateUpdatedImageRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: Boolean, location_name: "dryRun"))
    CreateUpdatedImageRequest.struct_class = Types::CreateUpdatedImageRequest

    CreateUpdatedImageResult.add_member(:image, Shapes::ShapeRef.new(shape: Image, location_name: "image"))
    CreateUpdatedImageResult.add_member(:can_update_image, Shapes::ShapeRef.new(shape: Boolean, location_name: "canUpdateImage"))
    CreateUpdatedImageResult.struct_class = Types::CreateUpdatedImageResult

    CreateUsageReportSubscriptionRequest.struct_class = Types::CreateUsageReportSubscriptionRequest

    CreateUsageReportSubscriptionResult.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: String, location_name: "S3BucketName"))
    CreateUsageReportSubscriptionResult.add_member(:schedule, Shapes::ShapeRef.new(shape: UsageReportSchedule, location_name: "Schedule"))
    CreateUsageReportSubscriptionResult.struct_class = Types::CreateUsageReportSubscriptionResult

    CreateUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: Username, required: true, location_name: "UserName"))
    CreateUserRequest.add_member(:message_action, Shapes::ShapeRef.new(shape: MessageAction, location_name: "MessageAction"))
    CreateUserRequest.add_member(:first_name, Shapes::ShapeRef.new(shape: UserAttributeValue, location_name: "FirstName"))
    CreateUserRequest.add_member(:last_name, Shapes::ShapeRef.new(shape: UserAttributeValue, location_name: "LastName"))
    CreateUserRequest.add_member(:authentication_type, Shapes::ShapeRef.new(shape: AuthenticationType, required: true, location_name: "AuthenticationType"))
    CreateUserRequest.struct_class = Types::CreateUserRequest

    CreateUserResult.struct_class = Types::CreateUserResult

    DeleteAppBlockBuilderRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    DeleteAppBlockBuilderRequest.struct_class = Types::DeleteAppBlockBuilderRequest

    DeleteAppBlockBuilderResult.struct_class = Types::DeleteAppBlockBuilderResult

    DeleteAppBlockRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    DeleteAppBlockRequest.struct_class = Types::DeleteAppBlockRequest

    DeleteAppBlockResult.struct_class = Types::DeleteAppBlockResult

    DeleteApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    DeleteApplicationRequest.struct_class = Types::DeleteApplicationRequest

    DeleteApplicationResult.struct_class = Types::DeleteApplicationResult

    DeleteDirectoryConfigRequest.add_member(:directory_name, Shapes::ShapeRef.new(shape: DirectoryName, required: true, location_name: "DirectoryName"))
    DeleteDirectoryConfigRequest.struct_class = Types::DeleteDirectoryConfigRequest

    DeleteDirectoryConfigResult.struct_class = Types::DeleteDirectoryConfigResult

    DeleteEntitlementRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    DeleteEntitlementRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "StackName"))
    DeleteEntitlementRequest.struct_class = Types::DeleteEntitlementRequest

    DeleteEntitlementResult.struct_class = Types::DeleteEntitlementResult

    DeleteFleetRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    DeleteFleetRequest.struct_class = Types::DeleteFleetRequest

    DeleteFleetResult.struct_class = Types::DeleteFleetResult

    DeleteImageBuilderRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    DeleteImageBuilderRequest.struct_class = Types::DeleteImageBuilderRequest

    DeleteImageBuilderResult.add_member(:image_builder, Shapes::ShapeRef.new(shape: ImageBuilder, location_name: "ImageBuilder"))
    DeleteImageBuilderResult.struct_class = Types::DeleteImageBuilderResult

    DeleteImagePermissionsRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    DeleteImagePermissionsRequest.add_member(:shared_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "SharedAccountId"))
    DeleteImagePermissionsRequest.struct_class = Types::DeleteImagePermissionsRequest

    DeleteImagePermissionsResult.struct_class = Types::DeleteImagePermissionsResult

    DeleteImageRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    DeleteImageRequest.struct_class = Types::DeleteImageRequest

    DeleteImageResult.add_member(:image, Shapes::ShapeRef.new(shape: Image, location_name: "Image"))
    DeleteImageResult.struct_class = Types::DeleteImageResult

    DeleteStackRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    DeleteStackRequest.struct_class = Types::DeleteStackRequest

    DeleteStackResult.struct_class = Types::DeleteStackResult

    DeleteThemeForStackRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "StackName"))
    DeleteThemeForStackRequest.struct_class = Types::DeleteThemeForStackRequest

    DeleteThemeForStackResult.struct_class = Types::DeleteThemeForStackResult

    DeleteUsageReportSubscriptionRequest.struct_class = Types::DeleteUsageReportSubscriptionRequest

    DeleteUsageReportSubscriptionResult.struct_class = Types::DeleteUsageReportSubscriptionResult

    DeleteUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: Username, required: true, location_name: "UserName"))
    DeleteUserRequest.add_member(:authentication_type, Shapes::ShapeRef.new(shape: AuthenticationType, required: true, location_name: "AuthenticationType"))
    DeleteUserRequest.struct_class = Types::DeleteUserRequest

    DeleteUserResult.struct_class = Types::DeleteUserResult

    DescribeAppBlockBuilderAppBlockAssociationsRequest.add_member(:app_block_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AppBlockArn"))
    DescribeAppBlockBuilderAppBlockAssociationsRequest.add_member(:app_block_builder_name, Shapes::ShapeRef.new(shape: Name, location_name: "AppBlockBuilderName"))
    DescribeAppBlockBuilderAppBlockAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxResults"))
    DescribeAppBlockBuilderAppBlockAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeAppBlockBuilderAppBlockAssociationsRequest.struct_class = Types::DescribeAppBlockBuilderAppBlockAssociationsRequest

    DescribeAppBlockBuilderAppBlockAssociationsResult.add_member(:app_block_builder_app_block_associations, Shapes::ShapeRef.new(shape: AppBlockBuilderAppBlockAssociationsList, location_name: "AppBlockBuilderAppBlockAssociations"))
    DescribeAppBlockBuilderAppBlockAssociationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeAppBlockBuilderAppBlockAssociationsResult.struct_class = Types::DescribeAppBlockBuilderAppBlockAssociationsResult

    DescribeAppBlockBuildersRequest.add_member(:names, Shapes::ShapeRef.new(shape: StringList, location_name: "Names"))
    DescribeAppBlockBuildersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeAppBlockBuildersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxResults"))
    DescribeAppBlockBuildersRequest.struct_class = Types::DescribeAppBlockBuildersRequest

    DescribeAppBlockBuildersResult.add_member(:app_block_builders, Shapes::ShapeRef.new(shape: AppBlockBuilderList, location_name: "AppBlockBuilders"))
    DescribeAppBlockBuildersResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeAppBlockBuildersResult.struct_class = Types::DescribeAppBlockBuildersResult

    DescribeAppBlocksRequest.add_member(:arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "Arns"))
    DescribeAppBlocksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeAppBlocksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxResults"))
    DescribeAppBlocksRequest.struct_class = Types::DescribeAppBlocksRequest

    DescribeAppBlocksResult.add_member(:app_blocks, Shapes::ShapeRef.new(shape: AppBlocks, location_name: "AppBlocks"))
    DescribeAppBlocksResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeAppBlocksResult.struct_class = Types::DescribeAppBlocksResult

    DescribeApplicationFleetAssociationsRequest.add_member(:fleet_name, Shapes::ShapeRef.new(shape: Name, location_name: "FleetName"))
    DescribeApplicationFleetAssociationsRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ApplicationArn"))
    DescribeApplicationFleetAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxResults"))
    DescribeApplicationFleetAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeApplicationFleetAssociationsRequest.struct_class = Types::DescribeApplicationFleetAssociationsRequest

    DescribeApplicationFleetAssociationsResult.add_member(:application_fleet_associations, Shapes::ShapeRef.new(shape: ApplicationFleetAssociationList, location_name: "ApplicationFleetAssociations"))
    DescribeApplicationFleetAssociationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeApplicationFleetAssociationsResult.struct_class = Types::DescribeApplicationFleetAssociationsResult

    DescribeApplicationsRequest.add_member(:arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "Arns"))
    DescribeApplicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeApplicationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxResults"))
    DescribeApplicationsRequest.struct_class = Types::DescribeApplicationsRequest

    DescribeApplicationsResult.add_member(:applications, Shapes::ShapeRef.new(shape: Applications, location_name: "Applications"))
    DescribeApplicationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeApplicationsResult.struct_class = Types::DescribeApplicationsResult

    DescribeDirectoryConfigsRequest.add_member(:directory_names, Shapes::ShapeRef.new(shape: DirectoryNameList, location_name: "DirectoryNames"))
    DescribeDirectoryConfigsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxResults"))
    DescribeDirectoryConfigsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeDirectoryConfigsRequest.struct_class = Types::DescribeDirectoryConfigsRequest

    DescribeDirectoryConfigsResult.add_member(:directory_configs, Shapes::ShapeRef.new(shape: DirectoryConfigList, location_name: "DirectoryConfigs"))
    DescribeDirectoryConfigsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeDirectoryConfigsResult.struct_class = Types::DescribeDirectoryConfigsResult

    DescribeEntitlementsRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    DescribeEntitlementsRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "StackName"))
    DescribeEntitlementsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeEntitlementsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxResults"))
    DescribeEntitlementsRequest.struct_class = Types::DescribeEntitlementsRequest

    DescribeEntitlementsResult.add_member(:entitlements, Shapes::ShapeRef.new(shape: EntitlementList, location_name: "Entitlements"))
    DescribeEntitlementsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeEntitlementsResult.struct_class = Types::DescribeEntitlementsResult

    DescribeFleetsRequest.add_member(:names, Shapes::ShapeRef.new(shape: StringList, location_name: "Names"))
    DescribeFleetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeFleetsRequest.struct_class = Types::DescribeFleetsRequest

    DescribeFleetsResult.add_member(:fleets, Shapes::ShapeRef.new(shape: FleetList, location_name: "Fleets"))
    DescribeFleetsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeFleetsResult.struct_class = Types::DescribeFleetsResult

    DescribeImageBuildersRequest.add_member(:names, Shapes::ShapeRef.new(shape: StringList, location_name: "Names"))
    DescribeImageBuildersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxResults"))
    DescribeImageBuildersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeImageBuildersRequest.struct_class = Types::DescribeImageBuildersRequest

    DescribeImageBuildersResult.add_member(:image_builders, Shapes::ShapeRef.new(shape: ImageBuilderList, location_name: "ImageBuilders"))
    DescribeImageBuildersResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeImageBuildersResult.struct_class = Types::DescribeImageBuildersResult

    DescribeImagePermissionsRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    DescribeImagePermissionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeImagePermissionsRequest.add_member(:shared_aws_account_ids, Shapes::ShapeRef.new(shape: AwsAccountIdList, location_name: "SharedAwsAccountIds"))
    DescribeImagePermissionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeImagePermissionsRequest.struct_class = Types::DescribeImagePermissionsRequest

    DescribeImagePermissionsResult.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    DescribeImagePermissionsResult.add_member(:shared_image_permissions_list, Shapes::ShapeRef.new(shape: SharedImagePermissionsList, location_name: "SharedImagePermissionsList"))
    DescribeImagePermissionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeImagePermissionsResult.struct_class = Types::DescribeImagePermissionsResult

    DescribeImagesRequest.add_member(:names, Shapes::ShapeRef.new(shape: StringList, location_name: "Names"))
    DescribeImagesRequest.add_member(:arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "Arns"))
    DescribeImagesRequest.add_member(:type, Shapes::ShapeRef.new(shape: VisibilityType, location_name: "Type"))
    DescribeImagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeImagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DescribeImagesMaxResults, location_name: "MaxResults"))
    DescribeImagesRequest.struct_class = Types::DescribeImagesRequest

    DescribeImagesResult.add_member(:images, Shapes::ShapeRef.new(shape: ImageList, location_name: "Images"))
    DescribeImagesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeImagesResult.struct_class = Types::DescribeImagesResult

    DescribeSessionsRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "StackName"))
    DescribeSessionsRequest.add_member(:fleet_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "FleetName"))
    DescribeSessionsRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    DescribeSessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeSessionsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Integer, location_name: "Limit"))
    DescribeSessionsRequest.add_member(:authentication_type, Shapes::ShapeRef.new(shape: AuthenticationType, location_name: "AuthenticationType"))
    DescribeSessionsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "InstanceId"))
    DescribeSessionsRequest.struct_class = Types::DescribeSessionsRequest

    DescribeSessionsResult.add_member(:sessions, Shapes::ShapeRef.new(shape: SessionList, location_name: "Sessions"))
    DescribeSessionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeSessionsResult.struct_class = Types::DescribeSessionsResult

    DescribeStacksRequest.add_member(:names, Shapes::ShapeRef.new(shape: StringList, location_name: "Names"))
    DescribeStacksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeStacksRequest.struct_class = Types::DescribeStacksRequest

    DescribeStacksResult.add_member(:stacks, Shapes::ShapeRef.new(shape: StackList, location_name: "Stacks"))
    DescribeStacksResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeStacksResult.struct_class = Types::DescribeStacksResult

    DescribeThemeForStackRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "StackName"))
    DescribeThemeForStackRequest.struct_class = Types::DescribeThemeForStackRequest

    DescribeThemeForStackResult.add_member(:theme, Shapes::ShapeRef.new(shape: Theme, location_name: "Theme"))
    DescribeThemeForStackResult.struct_class = Types::DescribeThemeForStackResult

    DescribeUsageReportSubscriptionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxResults"))
    DescribeUsageReportSubscriptionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeUsageReportSubscriptionsRequest.struct_class = Types::DescribeUsageReportSubscriptionsRequest

    DescribeUsageReportSubscriptionsResult.add_member(:usage_report_subscriptions, Shapes::ShapeRef.new(shape: UsageReportSubscriptionList, location_name: "UsageReportSubscriptions"))
    DescribeUsageReportSubscriptionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeUsageReportSubscriptionsResult.struct_class = Types::DescribeUsageReportSubscriptionsResult

    DescribeUserStackAssociationsRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: String, location_name: "StackName"))
    DescribeUserStackAssociationsRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: Username, location_name: "UserName"))
    DescribeUserStackAssociationsRequest.add_member(:authentication_type, Shapes::ShapeRef.new(shape: AuthenticationType, location_name: "AuthenticationType"))
    DescribeUserStackAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeUserStackAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeUserStackAssociationsRequest.struct_class = Types::DescribeUserStackAssociationsRequest

    DescribeUserStackAssociationsResult.add_member(:user_stack_associations, Shapes::ShapeRef.new(shape: UserStackAssociationList, location_name: "UserStackAssociations"))
    DescribeUserStackAssociationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeUserStackAssociationsResult.struct_class = Types::DescribeUserStackAssociationsResult

    DescribeUsersRequest.add_member(:authentication_type, Shapes::ShapeRef.new(shape: AuthenticationType, required: true, location_name: "AuthenticationType"))
    DescribeUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxResults"))
    DescribeUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeUsersRequest.struct_class = Types::DescribeUsersRequest

    DescribeUsersResult.add_member(:users, Shapes::ShapeRef.new(shape: UserList, location_name: "Users"))
    DescribeUsersResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeUsersResult.struct_class = Types::DescribeUsersResult

    DirectoryConfig.add_member(:directory_name, Shapes::ShapeRef.new(shape: DirectoryName, required: true, location_name: "DirectoryName"))
    DirectoryConfig.add_member(:organizational_unit_distinguished_names, Shapes::ShapeRef.new(shape: OrganizationalUnitDistinguishedNamesList, location_name: "OrganizationalUnitDistinguishedNames"))
    DirectoryConfig.add_member(:service_account_credentials, Shapes::ShapeRef.new(shape: ServiceAccountCredentials, location_name: "ServiceAccountCredentials"))
    DirectoryConfig.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    DirectoryConfig.add_member(:certificate_based_auth_properties, Shapes::ShapeRef.new(shape: CertificateBasedAuthProperties, location_name: "CertificateBasedAuthProperties"))
    DirectoryConfig.struct_class = Types::DirectoryConfig

    DirectoryConfigList.member = Shapes::ShapeRef.new(shape: DirectoryConfig)

    DirectoryNameList.member = Shapes::ShapeRef.new(shape: DirectoryName)

    DisableUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: Username, required: true, location_name: "UserName"))
    DisableUserRequest.add_member(:authentication_type, Shapes::ShapeRef.new(shape: AuthenticationType, required: true, location_name: "AuthenticationType"))
    DisableUserRequest.struct_class = Types::DisableUserRequest

    DisableUserResult.struct_class = Types::DisableUserResult

    DisassociateAppBlockBuilderAppBlockRequest.add_member(:app_block_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AppBlockArn"))
    DisassociateAppBlockBuilderAppBlockRequest.add_member(:app_block_builder_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "AppBlockBuilderName"))
    DisassociateAppBlockBuilderAppBlockRequest.struct_class = Types::DisassociateAppBlockBuilderAppBlockRequest

    DisassociateAppBlockBuilderAppBlockResult.struct_class = Types::DisassociateAppBlockBuilderAppBlockResult

    DisassociateApplicationFleetRequest.add_member(:fleet_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "FleetName"))
    DisassociateApplicationFleetRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ApplicationArn"))
    DisassociateApplicationFleetRequest.struct_class = Types::DisassociateApplicationFleetRequest

    DisassociateApplicationFleetResult.struct_class = Types::DisassociateApplicationFleetResult

    DisassociateApplicationFromEntitlementRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "StackName"))
    DisassociateApplicationFromEntitlementRequest.add_member(:entitlement_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "EntitlementName"))
    DisassociateApplicationFromEntitlementRequest.add_member(:application_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ApplicationIdentifier"))
    DisassociateApplicationFromEntitlementRequest.struct_class = Types::DisassociateApplicationFromEntitlementRequest

    DisassociateApplicationFromEntitlementResult.struct_class = Types::DisassociateApplicationFromEntitlementResult

    DisassociateFleetRequest.add_member(:fleet_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "FleetName"))
    DisassociateFleetRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackName"))
    DisassociateFleetRequest.struct_class = Types::DisassociateFleetRequest

    DisassociateFleetResult.struct_class = Types::DisassociateFleetResult

    DomainJoinInfo.add_member(:directory_name, Shapes::ShapeRef.new(shape: DirectoryName, location_name: "DirectoryName"))
    DomainJoinInfo.add_member(:organizational_unit_distinguished_name, Shapes::ShapeRef.new(shape: OrganizationalUnitDistinguishedName, location_name: "OrganizationalUnitDistinguishedName"))
    DomainJoinInfo.struct_class = Types::DomainJoinInfo

    DomainList.member = Shapes::ShapeRef.new(shape: Domain)

    EmbedHostDomains.member = Shapes::ShapeRef.new(shape: EmbedHostDomain)

    EnableUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: Username, required: true, location_name: "UserName"))
    EnableUserRequest.add_member(:authentication_type, Shapes::ShapeRef.new(shape: AuthenticationType, required: true, location_name: "AuthenticationType"))
    EnableUserRequest.struct_class = Types::EnableUserRequest

    EnableUserResult.struct_class = Types::EnableUserResult

    EntitledApplication.add_member(:application_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ApplicationIdentifier"))
    EntitledApplication.struct_class = Types::EntitledApplication

    EntitledApplicationList.member = Shapes::ShapeRef.new(shape: EntitledApplication)

    Entitlement.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    Entitlement.add_member(:stack_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "StackName"))
    Entitlement.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Entitlement.add_member(:app_visibility, Shapes::ShapeRef.new(shape: AppVisibility, required: true, location_name: "AppVisibility"))
    Entitlement.add_member(:attributes, Shapes::ShapeRef.new(shape: EntitlementAttributeList, required: true, location_name: "Attributes"))
    Entitlement.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    Entitlement.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    Entitlement.struct_class = Types::Entitlement

    EntitlementAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    EntitlementAlreadyExistsException.struct_class = Types::EntitlementAlreadyExistsException

    EntitlementAttribute.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    EntitlementAttribute.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    EntitlementAttribute.struct_class = Types::EntitlementAttribute

    EntitlementAttributeList.member = Shapes::ShapeRef.new(shape: EntitlementAttribute)

    EntitlementList.member = Shapes::ShapeRef.new(shape: Entitlement)

    EntitlementNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    EntitlementNotFoundException.struct_class = Types::EntitlementNotFoundException

    ErrorDetails.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    ErrorDetails.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    ErrorDetails.struct_class = Types::ErrorDetails

    ErrorDetailsList.member = Shapes::ShapeRef.new(shape: ErrorDetails)

    ExpireSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SessionId"))
    ExpireSessionRequest.struct_class = Types::ExpireSessionRequest

    ExpireSessionResult.struct_class = Types::ExpireSessionResult

    Fleet.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    Fleet.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    Fleet.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "DisplayName"))
    Fleet.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    Fleet.add_member(:image_name, Shapes::ShapeRef.new(shape: String, location_name: "ImageName"))
    Fleet.add_member(:image_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ImageArn"))
    Fleet.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceType"))
    Fleet.add_member(:fleet_type, Shapes::ShapeRef.new(shape: FleetType, location_name: "FleetType"))
    Fleet.add_member(:compute_capacity_status, Shapes::ShapeRef.new(shape: ComputeCapacityStatus, required: true, location_name: "ComputeCapacityStatus"))
    Fleet.add_member(:max_user_duration_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxUserDurationInSeconds"))
    Fleet.add_member(:disconnect_timeout_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "DisconnectTimeoutInSeconds"))
    Fleet.add_member(:state, Shapes::ShapeRef.new(shape: FleetState, required: true, location_name: "State"))
    Fleet.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    Fleet.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    Fleet.add_member(:fleet_errors, Shapes::ShapeRef.new(shape: FleetErrors, location_name: "FleetErrors"))
    Fleet.add_member(:enable_default_internet_access, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableDefaultInternetAccess"))
    Fleet.add_member(:domain_join_info, Shapes::ShapeRef.new(shape: DomainJoinInfo, location_name: "DomainJoinInfo"))
    Fleet.add_member(:idle_disconnect_timeout_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "IdleDisconnectTimeoutInSeconds"))
    Fleet.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "IamRoleArn"))
    Fleet.add_member(:stream_view, Shapes::ShapeRef.new(shape: StreamView, location_name: "StreamView"))
    Fleet.add_member(:platform, Shapes::ShapeRef.new(shape: PlatformType, location_name: "Platform"))
    Fleet.add_member(:max_concurrent_sessions, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxConcurrentSessions"))
    Fleet.add_member(:usb_device_filter_strings, Shapes::ShapeRef.new(shape: UsbDeviceFilterStrings, location_name: "UsbDeviceFilterStrings"))
    Fleet.add_member(:session_script_s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "SessionScriptS3Location"))
    Fleet.add_member(:max_sessions_per_instance, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxSessionsPerInstance"))
    Fleet.struct_class = Types::Fleet

    FleetAttributes.member = Shapes::ShapeRef.new(shape: FleetAttribute)

    FleetError.add_member(:error_code, Shapes::ShapeRef.new(shape: FleetErrorCode, location_name: "ErrorCode"))
    FleetError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    FleetError.struct_class = Types::FleetError

    FleetErrors.member = Shapes::ShapeRef.new(shape: FleetError)

    FleetList.member = Shapes::ShapeRef.new(shape: Fleet)

    Image.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    Image.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    Image.add_member(:base_image_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "BaseImageArn"))
    Image.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "DisplayName"))
    Image.add_member(:state, Shapes::ShapeRef.new(shape: ImageState, location_name: "State"))
    Image.add_member(:visibility, Shapes::ShapeRef.new(shape: VisibilityType, location_name: "Visibility"))
    Image.add_member(:image_builder_supported, Shapes::ShapeRef.new(shape: Boolean, location_name: "ImageBuilderSupported"))
    Image.add_member(:image_builder_name, Shapes::ShapeRef.new(shape: String, location_name: "ImageBuilderName"))
    Image.add_member(:platform, Shapes::ShapeRef.new(shape: PlatformType, location_name: "Platform"))
    Image.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    Image.add_member(:state_change_reason, Shapes::ShapeRef.new(shape: ImageStateChangeReason, location_name: "StateChangeReason"))
    Image.add_member(:applications, Shapes::ShapeRef.new(shape: Applications, location_name: "Applications"))
    Image.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    Image.add_member(:public_base_image_released_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "PublicBaseImageReleasedDate"))
    Image.add_member(:appstream_agent_version, Shapes::ShapeRef.new(shape: AppstreamAgentVersion, location_name: "AppstreamAgentVersion"))
    Image.add_member(:image_permissions, Shapes::ShapeRef.new(shape: ImagePermissions, location_name: "ImagePermissions"))
    Image.add_member(:image_errors, Shapes::ShapeRef.new(shape: ResourceErrors, location_name: "ImageErrors"))
    Image.add_member(:latest_appstream_agent_version, Shapes::ShapeRef.new(shape: LatestAppstreamAgentVersion, location_name: "LatestAppstreamAgentVersion"))
    Image.add_member(:supported_instance_families, Shapes::ShapeRef.new(shape: StringList, location_name: "SupportedInstanceFamilies"))
    Image.add_member(:dynamic_app_providers_enabled, Shapes::ShapeRef.new(shape: DynamicAppProvidersEnabled, location_name: "DynamicAppProvidersEnabled"))
    Image.add_member(:image_shared_with_others, Shapes::ShapeRef.new(shape: ImageSharedWithOthers, location_name: "ImageSharedWithOthers"))
    Image.struct_class = Types::Image

    ImageBuilder.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ImageBuilder.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    ImageBuilder.add_member(:image_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ImageArn"))
    ImageBuilder.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ImageBuilder.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "DisplayName"))
    ImageBuilder.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    ImageBuilder.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "InstanceType"))
    ImageBuilder.add_member(:platform, Shapes::ShapeRef.new(shape: PlatformType, location_name: "Platform"))
    ImageBuilder.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "IamRoleArn"))
    ImageBuilder.add_member(:state, Shapes::ShapeRef.new(shape: ImageBuilderState, location_name: "State"))
    ImageBuilder.add_member(:state_change_reason, Shapes::ShapeRef.new(shape: ImageBuilderStateChangeReason, location_name: "StateChangeReason"))
    ImageBuilder.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    ImageBuilder.add_member(:enable_default_internet_access, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableDefaultInternetAccess"))
    ImageBuilder.add_member(:domain_join_info, Shapes::ShapeRef.new(shape: DomainJoinInfo, location_name: "DomainJoinInfo"))
    ImageBuilder.add_member(:network_access_configuration, Shapes::ShapeRef.new(shape: NetworkAccessConfiguration, location_name: "NetworkAccessConfiguration"))
    ImageBuilder.add_member(:image_builder_errors, Shapes::ShapeRef.new(shape: ResourceErrors, location_name: "ImageBuilderErrors"))
    ImageBuilder.add_member(:appstream_agent_version, Shapes::ShapeRef.new(shape: AppstreamAgentVersion, location_name: "AppstreamAgentVersion"))
    ImageBuilder.add_member(:access_endpoints, Shapes::ShapeRef.new(shape: AccessEndpointList, location_name: "AccessEndpoints"))
    ImageBuilder.add_member(:latest_appstream_agent_version, Shapes::ShapeRef.new(shape: LatestAppstreamAgentVersion, location_name: "LatestAppstreamAgentVersion"))
    ImageBuilder.struct_class = Types::ImageBuilder

    ImageBuilderList.member = Shapes::ShapeRef.new(shape: ImageBuilder)

    ImageBuilderStateChangeReason.add_member(:code, Shapes::ShapeRef.new(shape: ImageBuilderStateChangeReasonCode, location_name: "Code"))
    ImageBuilderStateChangeReason.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ImageBuilderStateChangeReason.struct_class = Types::ImageBuilderStateChangeReason

    ImageList.member = Shapes::ShapeRef.new(shape: Image)

    ImagePermissions.add_member(:allow_fleet, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "allowFleet"))
    ImagePermissions.add_member(:allow_image_builder, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "allowImageBuilder"))
    ImagePermissions.struct_class = Types::ImagePermissions

    ImageStateChangeReason.add_member(:code, Shapes::ShapeRef.new(shape: ImageStateChangeReasonCode, location_name: "Code"))
    ImageStateChangeReason.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ImageStateChangeReason.struct_class = Types::ImageStateChangeReason

    IncompatibleImageException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    IncompatibleImageException.struct_class = Types::IncompatibleImageException

    InvalidAccountStatusException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidAccountStatusException.struct_class = Types::InvalidAccountStatusException

    InvalidParameterCombinationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidParameterCombinationException.struct_class = Types::InvalidParameterCombinationException

    InvalidRoleException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidRoleException.struct_class = Types::InvalidRoleException

    LastReportGenerationExecutionError.add_member(:error_code, Shapes::ShapeRef.new(shape: UsageReportExecutionErrorCode, location_name: "ErrorCode"))
    LastReportGenerationExecutionError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    LastReportGenerationExecutionError.struct_class = Types::LastReportGenerationExecutionError

    LastReportGenerationExecutionErrors.member = Shapes::ShapeRef.new(shape: LastReportGenerationExecutionError)

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListAssociatedFleetsRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackName"))
    ListAssociatedFleetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAssociatedFleetsRequest.struct_class = Types::ListAssociatedFleetsRequest

    ListAssociatedFleetsResult.add_member(:names, Shapes::ShapeRef.new(shape: StringList, location_name: "Names"))
    ListAssociatedFleetsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAssociatedFleetsResult.struct_class = Types::ListAssociatedFleetsResult

    ListAssociatedStacksRequest.add_member(:fleet_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "FleetName"))
    ListAssociatedStacksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAssociatedStacksRequest.struct_class = Types::ListAssociatedStacksRequest

    ListAssociatedStacksResult.add_member(:names, Shapes::ShapeRef.new(shape: StringList, location_name: "Names"))
    ListAssociatedStacksResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAssociatedStacksResult.struct_class = Types::ListAssociatedStacksResult

    ListEntitledApplicationsRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "StackName"))
    ListEntitledApplicationsRequest.add_member(:entitlement_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "EntitlementName"))
    ListEntitledApplicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListEntitledApplicationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxResults"))
    ListEntitledApplicationsRequest.struct_class = Types::ListEntitledApplicationsRequest

    ListEntitledApplicationsResult.add_member(:entitled_applications, Shapes::ShapeRef.new(shape: EntitledApplicationList, location_name: "EntitledApplications"))
    ListEntitledApplicationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListEntitledApplicationsResult.struct_class = Types::ListEntitledApplicationsResult

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    Metadata.key = Shapes::ShapeRef.new(shape: String)
    Metadata.value = Shapes::ShapeRef.new(shape: String)

    NetworkAccessConfiguration.add_member(:eni_private_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "EniPrivateIpAddress"))
    NetworkAccessConfiguration.add_member(:eni_id, Shapes::ShapeRef.new(shape: String, location_name: "EniId"))
    NetworkAccessConfiguration.struct_class = Types::NetworkAccessConfiguration

    OperationNotPermittedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    OperationNotPermittedException.struct_class = Types::OperationNotPermittedException

    OrganizationalUnitDistinguishedNamesList.member = Shapes::ShapeRef.new(shape: OrganizationalUnitDistinguishedName)

    Platforms.member = Shapes::ShapeRef.new(shape: PlatformType)

    RequestLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    RequestLimitExceededException.struct_class = Types::RequestLimitExceededException

    ResourceAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceError.add_member(:error_code, Shapes::ShapeRef.new(shape: FleetErrorCode, location_name: "ErrorCode"))
    ResourceError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    ResourceError.add_member(:error_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ErrorTimestamp"))
    ResourceError.struct_class = Types::ResourceError

    ResourceErrors.member = Shapes::ShapeRef.new(shape: ResourceError)

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotAvailableException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotAvailableException.struct_class = Types::ResourceNotAvailableException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3Location.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "S3Bucket"))
    S3Location.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3Key, location_name: "S3Key"))
    S3Location.struct_class = Types::S3Location

    ScriptDetails.add_member(:script_s3_location, Shapes::ShapeRef.new(shape: S3Location, required: true, location_name: "ScriptS3Location"))
    ScriptDetails.add_member(:executable_path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ExecutablePath"))
    ScriptDetails.add_member(:executable_parameters, Shapes::ShapeRef.new(shape: String, location_name: "ExecutableParameters"))
    ScriptDetails.add_member(:timeout_in_seconds, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "TimeoutInSeconds"))
    ScriptDetails.struct_class = Types::ScriptDetails

    SecurityGroupIdList.member = Shapes::ShapeRef.new(shape: String)

    ServiceAccountCredentials.add_member(:account_name, Shapes::ShapeRef.new(shape: AccountName, required: true, location_name: "AccountName"))
    ServiceAccountCredentials.add_member(:account_password, Shapes::ShapeRef.new(shape: AccountPassword, required: true, location_name: "AccountPassword"))
    ServiceAccountCredentials.struct_class = Types::ServiceAccountCredentials

    Session.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Id"))
    Session.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location_name: "UserId"))
    Session.add_member(:stack_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackName"))
    Session.add_member(:fleet_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "FleetName"))
    Session.add_member(:state, Shapes::ShapeRef.new(shape: SessionState, required: true, location_name: "State"))
    Session.add_member(:connection_state, Shapes::ShapeRef.new(shape: SessionConnectionState, location_name: "ConnectionState"))
    Session.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    Session.add_member(:max_expiration_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "MaxExpirationTime"))
    Session.add_member(:authentication_type, Shapes::ShapeRef.new(shape: AuthenticationType, location_name: "AuthenticationType"))
    Session.add_member(:network_access_configuration, Shapes::ShapeRef.new(shape: NetworkAccessConfiguration, location_name: "NetworkAccessConfiguration"))
    Session.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "InstanceId"))
    Session.struct_class = Types::Session

    SessionList.member = Shapes::ShapeRef.new(shape: Session)

    SharedImagePermissions.add_member(:shared_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "sharedAccountId"))
    SharedImagePermissions.add_member(:image_permissions, Shapes::ShapeRef.new(shape: ImagePermissions, required: true, location_name: "imagePermissions"))
    SharedImagePermissions.struct_class = Types::SharedImagePermissions

    SharedImagePermissionsList.member = Shapes::ShapeRef.new(shape: SharedImagePermissions)

    Stack.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    Stack.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    Stack.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    Stack.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "DisplayName"))
    Stack.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    Stack.add_member(:storage_connectors, Shapes::ShapeRef.new(shape: StorageConnectorList, location_name: "StorageConnectors"))
    Stack.add_member(:redirect_url, Shapes::ShapeRef.new(shape: RedirectURL, location_name: "RedirectURL"))
    Stack.add_member(:feedback_url, Shapes::ShapeRef.new(shape: FeedbackURL, location_name: "FeedbackURL"))
    Stack.add_member(:stack_errors, Shapes::ShapeRef.new(shape: StackErrors, location_name: "StackErrors"))
    Stack.add_member(:user_settings, Shapes::ShapeRef.new(shape: UserSettingList, location_name: "UserSettings"))
    Stack.add_member(:application_settings, Shapes::ShapeRef.new(shape: ApplicationSettingsResponse, location_name: "ApplicationSettings"))
    Stack.add_member(:access_endpoints, Shapes::ShapeRef.new(shape: AccessEndpointList, location_name: "AccessEndpoints"))
    Stack.add_member(:embed_host_domains, Shapes::ShapeRef.new(shape: EmbedHostDomains, location_name: "EmbedHostDomains"))
    Stack.add_member(:streaming_experience_settings, Shapes::ShapeRef.new(shape: StreamingExperienceSettings, location_name: "StreamingExperienceSettings"))
    Stack.struct_class = Types::Stack

    StackAttributes.member = Shapes::ShapeRef.new(shape: StackAttribute)

    StackError.add_member(:error_code, Shapes::ShapeRef.new(shape: StackErrorCode, location_name: "ErrorCode"))
    StackError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    StackError.struct_class = Types::StackError

    StackErrors.member = Shapes::ShapeRef.new(shape: StackError)

    StackList.member = Shapes::ShapeRef.new(shape: Stack)

    StartAppBlockBuilderRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    StartAppBlockBuilderRequest.struct_class = Types::StartAppBlockBuilderRequest

    StartAppBlockBuilderResult.add_member(:app_block_builder, Shapes::ShapeRef.new(shape: AppBlockBuilder, location_name: "AppBlockBuilder"))
    StartAppBlockBuilderResult.struct_class = Types::StartAppBlockBuilderResult

    StartFleetRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    StartFleetRequest.struct_class = Types::StartFleetRequest

    StartFleetResult.struct_class = Types::StartFleetResult

    StartImageBuilderRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    StartImageBuilderRequest.add_member(:appstream_agent_version, Shapes::ShapeRef.new(shape: AppstreamAgentVersion, location_name: "AppstreamAgentVersion"))
    StartImageBuilderRequest.struct_class = Types::StartImageBuilderRequest

    StartImageBuilderResult.add_member(:image_builder, Shapes::ShapeRef.new(shape: ImageBuilder, location_name: "ImageBuilder"))
    StartImageBuilderResult.struct_class = Types::StartImageBuilderResult

    StopAppBlockBuilderRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    StopAppBlockBuilderRequest.struct_class = Types::StopAppBlockBuilderRequest

    StopAppBlockBuilderResult.add_member(:app_block_builder, Shapes::ShapeRef.new(shape: AppBlockBuilder, location_name: "AppBlockBuilder"))
    StopAppBlockBuilderResult.struct_class = Types::StopAppBlockBuilderResult

    StopFleetRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    StopFleetRequest.struct_class = Types::StopFleetRequest

    StopFleetResult.struct_class = Types::StopFleetResult

    StopImageBuilderRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    StopImageBuilderRequest.struct_class = Types::StopImageBuilderRequest

    StopImageBuilderResult.add_member(:image_builder, Shapes::ShapeRef.new(shape: ImageBuilder, location_name: "ImageBuilder"))
    StopImageBuilderResult.struct_class = Types::StopImageBuilderResult

    StorageConnector.add_member(:connector_type, Shapes::ShapeRef.new(shape: StorageConnectorType, required: true, location_name: "ConnectorType"))
    StorageConnector.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: "ResourceIdentifier"))
    StorageConnector.add_member(:domains, Shapes::ShapeRef.new(shape: DomainList, location_name: "Domains"))
    StorageConnector.add_member(:domains_require_admin_consent, Shapes::ShapeRef.new(shape: DomainList, location_name: "DomainsRequireAdminConsent"))
    StorageConnector.struct_class = Types::StorageConnector

    StorageConnectorList.member = Shapes::ShapeRef.new(shape: StorageConnector)

    StreamingExperienceSettings.add_member(:preferred_protocol, Shapes::ShapeRef.new(shape: PreferredProtocol, location_name: "PreferredProtocol"))
    StreamingExperienceSettings.struct_class = Types::StreamingExperienceSettings

    StringList.member = Shapes::ShapeRef.new(shape: String)

    SubnetIdList.member = Shapes::ShapeRef.new(shape: String)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    Theme.add_member(:stack_name, Shapes::ShapeRef.new(shape: Name, location_name: "StackName"))
    Theme.add_member(:state, Shapes::ShapeRef.new(shape: ThemeState, location_name: "State"))
    Theme.add_member(:theme_title_text, Shapes::ShapeRef.new(shape: ThemeTitleText, location_name: "ThemeTitleText"))
    Theme.add_member(:theme_styling, Shapes::ShapeRef.new(shape: ThemeStyling, location_name: "ThemeStyling"))
    Theme.add_member(:theme_footer_links, Shapes::ShapeRef.new(shape: ThemeFooterLinks, location_name: "ThemeFooterLinks"))
    Theme.add_member(:theme_organization_logo_url, Shapes::ShapeRef.new(shape: String, location_name: "ThemeOrganizationLogoURL"))
    Theme.add_member(:theme_favicon_url, Shapes::ShapeRef.new(shape: String, location_name: "ThemeFaviconURL"))
    Theme.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    Theme.struct_class = Types::Theme

    ThemeAttributes.member = Shapes::ShapeRef.new(shape: ThemeAttribute)

    ThemeFooterLink.add_member(:display_name, Shapes::ShapeRef.new(shape: ThemeFooterLinkDisplayName, location_name: "DisplayName"))
    ThemeFooterLink.add_member(:footer_link_url, Shapes::ShapeRef.new(shape: ThemeFooterLinkURL, location_name: "FooterLinkURL"))
    ThemeFooterLink.struct_class = Types::ThemeFooterLink

    ThemeFooterLinks.member = Shapes::ShapeRef.new(shape: ThemeFooterLink)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAppBlockBuilderRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    UpdateAppBlockBuilderRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateAppBlockBuilderRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    UpdateAppBlockBuilderRequest.add_member(:platform, Shapes::ShapeRef.new(shape: PlatformType, location_name: "Platform"))
    UpdateAppBlockBuilderRequest.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "InstanceType"))
    UpdateAppBlockBuilderRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    UpdateAppBlockBuilderRequest.add_member(:enable_default_internet_access, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableDefaultInternetAccess"))
    UpdateAppBlockBuilderRequest.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "IamRoleArn"))
    UpdateAppBlockBuilderRequest.add_member(:access_endpoints, Shapes::ShapeRef.new(shape: AccessEndpointList, location_name: "AccessEndpoints"))
    UpdateAppBlockBuilderRequest.add_member(:attributes_to_delete, Shapes::ShapeRef.new(shape: AppBlockBuilderAttributes, location_name: "AttributesToDelete"))
    UpdateAppBlockBuilderRequest.struct_class = Types::UpdateAppBlockBuilderRequest

    UpdateAppBlockBuilderResult.add_member(:app_block_builder, Shapes::ShapeRef.new(shape: AppBlockBuilder, location_name: "AppBlockBuilder"))
    UpdateAppBlockBuilderResult.struct_class = Types::UpdateAppBlockBuilderResult

    UpdateApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    UpdateApplicationRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    UpdateApplicationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateApplicationRequest.add_member(:icon_s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "IconS3Location"))
    UpdateApplicationRequest.add_member(:launch_path, Shapes::ShapeRef.new(shape: String, location_name: "LaunchPath"))
    UpdateApplicationRequest.add_member(:working_directory, Shapes::ShapeRef.new(shape: String, location_name: "WorkingDirectory"))
    UpdateApplicationRequest.add_member(:launch_parameters, Shapes::ShapeRef.new(shape: String, location_name: "LaunchParameters"))
    UpdateApplicationRequest.add_member(:app_block_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AppBlockArn"))
    UpdateApplicationRequest.add_member(:attributes_to_delete, Shapes::ShapeRef.new(shape: ApplicationAttributes, location_name: "AttributesToDelete"))
    UpdateApplicationRequest.struct_class = Types::UpdateApplicationRequest

    UpdateApplicationResult.add_member(:application, Shapes::ShapeRef.new(shape: Application, location_name: "Application"))
    UpdateApplicationResult.struct_class = Types::UpdateApplicationResult

    UpdateDirectoryConfigRequest.add_member(:directory_name, Shapes::ShapeRef.new(shape: DirectoryName, required: true, location_name: "DirectoryName"))
    UpdateDirectoryConfigRequest.add_member(:organizational_unit_distinguished_names, Shapes::ShapeRef.new(shape: OrganizationalUnitDistinguishedNamesList, location_name: "OrganizationalUnitDistinguishedNames"))
    UpdateDirectoryConfigRequest.add_member(:service_account_credentials, Shapes::ShapeRef.new(shape: ServiceAccountCredentials, location_name: "ServiceAccountCredentials"))
    UpdateDirectoryConfigRequest.add_member(:certificate_based_auth_properties, Shapes::ShapeRef.new(shape: CertificateBasedAuthProperties, location_name: "CertificateBasedAuthProperties"))
    UpdateDirectoryConfigRequest.struct_class = Types::UpdateDirectoryConfigRequest

    UpdateDirectoryConfigResult.add_member(:directory_config, Shapes::ShapeRef.new(shape: DirectoryConfig, location_name: "DirectoryConfig"))
    UpdateDirectoryConfigResult.struct_class = Types::UpdateDirectoryConfigResult

    UpdateEntitlementRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    UpdateEntitlementRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "StackName"))
    UpdateEntitlementRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateEntitlementRequest.add_member(:app_visibility, Shapes::ShapeRef.new(shape: AppVisibility, location_name: "AppVisibility"))
    UpdateEntitlementRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: EntitlementAttributeList, location_name: "Attributes"))
    UpdateEntitlementRequest.struct_class = Types::UpdateEntitlementRequest

    UpdateEntitlementResult.add_member(:entitlement, Shapes::ShapeRef.new(shape: Entitlement, location_name: "Entitlement"))
    UpdateEntitlementResult.struct_class = Types::UpdateEntitlementResult

    UpdateFleetRequest.add_member(:image_name, Shapes::ShapeRef.new(shape: String, location_name: "ImageName"))
    UpdateFleetRequest.add_member(:image_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ImageArn"))
    UpdateFleetRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    UpdateFleetRequest.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "InstanceType"))
    UpdateFleetRequest.add_member(:compute_capacity, Shapes::ShapeRef.new(shape: ComputeCapacity, location_name: "ComputeCapacity"))
    UpdateFleetRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    UpdateFleetRequest.add_member(:max_user_duration_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxUserDurationInSeconds"))
    UpdateFleetRequest.add_member(:disconnect_timeout_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "DisconnectTimeoutInSeconds"))
    UpdateFleetRequest.add_member(:delete_vpc_config, Shapes::ShapeRef.new(shape: Boolean, deprecated: true, location_name: "DeleteVpcConfig"))
    UpdateFleetRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateFleetRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    UpdateFleetRequest.add_member(:enable_default_internet_access, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableDefaultInternetAccess"))
    UpdateFleetRequest.add_member(:domain_join_info, Shapes::ShapeRef.new(shape: DomainJoinInfo, location_name: "DomainJoinInfo"))
    UpdateFleetRequest.add_member(:idle_disconnect_timeout_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "IdleDisconnectTimeoutInSeconds"))
    UpdateFleetRequest.add_member(:attributes_to_delete, Shapes::ShapeRef.new(shape: FleetAttributes, location_name: "AttributesToDelete"))
    UpdateFleetRequest.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "IamRoleArn"))
    UpdateFleetRequest.add_member(:stream_view, Shapes::ShapeRef.new(shape: StreamView, location_name: "StreamView"))
    UpdateFleetRequest.add_member(:platform, Shapes::ShapeRef.new(shape: PlatformType, location_name: "Platform"))
    UpdateFleetRequest.add_member(:max_concurrent_sessions, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxConcurrentSessions"))
    UpdateFleetRequest.add_member(:usb_device_filter_strings, Shapes::ShapeRef.new(shape: UsbDeviceFilterStrings, location_name: "UsbDeviceFilterStrings"))
    UpdateFleetRequest.add_member(:session_script_s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "SessionScriptS3Location"))
    UpdateFleetRequest.add_member(:max_sessions_per_instance, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxSessionsPerInstance"))
    UpdateFleetRequest.struct_class = Types::UpdateFleetRequest

    UpdateFleetResult.add_member(:fleet, Shapes::ShapeRef.new(shape: Fleet, location_name: "Fleet"))
    UpdateFleetResult.struct_class = Types::UpdateFleetResult

    UpdateImagePermissionsRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    UpdateImagePermissionsRequest.add_member(:shared_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "SharedAccountId"))
    UpdateImagePermissionsRequest.add_member(:image_permissions, Shapes::ShapeRef.new(shape: ImagePermissions, required: true, location_name: "ImagePermissions"))
    UpdateImagePermissionsRequest.struct_class = Types::UpdateImagePermissionsRequest

    UpdateImagePermissionsResult.struct_class = Types::UpdateImagePermissionsResult

    UpdateStackRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    UpdateStackRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateStackRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    UpdateStackRequest.add_member(:storage_connectors, Shapes::ShapeRef.new(shape: StorageConnectorList, location_name: "StorageConnectors"))
    UpdateStackRequest.add_member(:delete_storage_connectors, Shapes::ShapeRef.new(shape: Boolean, deprecated: true, location_name: "DeleteStorageConnectors"))
    UpdateStackRequest.add_member(:redirect_url, Shapes::ShapeRef.new(shape: RedirectURL, location_name: "RedirectURL"))
    UpdateStackRequest.add_member(:feedback_url, Shapes::ShapeRef.new(shape: FeedbackURL, location_name: "FeedbackURL"))
    UpdateStackRequest.add_member(:attributes_to_delete, Shapes::ShapeRef.new(shape: StackAttributes, location_name: "AttributesToDelete"))
    UpdateStackRequest.add_member(:user_settings, Shapes::ShapeRef.new(shape: UserSettingList, location_name: "UserSettings"))
    UpdateStackRequest.add_member(:application_settings, Shapes::ShapeRef.new(shape: ApplicationSettings, location_name: "ApplicationSettings"))
    UpdateStackRequest.add_member(:access_endpoints, Shapes::ShapeRef.new(shape: AccessEndpointList, location_name: "AccessEndpoints"))
    UpdateStackRequest.add_member(:embed_host_domains, Shapes::ShapeRef.new(shape: EmbedHostDomains, location_name: "EmbedHostDomains"))
    UpdateStackRequest.add_member(:streaming_experience_settings, Shapes::ShapeRef.new(shape: StreamingExperienceSettings, location_name: "StreamingExperienceSettings"))
    UpdateStackRequest.struct_class = Types::UpdateStackRequest

    UpdateStackResult.add_member(:stack, Shapes::ShapeRef.new(shape: Stack, location_name: "Stack"))
    UpdateStackResult.struct_class = Types::UpdateStackResult

    UpdateThemeForStackRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "StackName"))
    UpdateThemeForStackRequest.add_member(:footer_links, Shapes::ShapeRef.new(shape: ThemeFooterLinks, location_name: "FooterLinks"))
    UpdateThemeForStackRequest.add_member(:title_text, Shapes::ShapeRef.new(shape: ThemeTitleText, location_name: "TitleText"))
    UpdateThemeForStackRequest.add_member(:theme_styling, Shapes::ShapeRef.new(shape: ThemeStyling, location_name: "ThemeStyling"))
    UpdateThemeForStackRequest.add_member(:organization_logo_s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "OrganizationLogoS3Location"))
    UpdateThemeForStackRequest.add_member(:favicon_s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "FaviconS3Location"))
    UpdateThemeForStackRequest.add_member(:state, Shapes::ShapeRef.new(shape: ThemeState, location_name: "State"))
    UpdateThemeForStackRequest.add_member(:attributes_to_delete, Shapes::ShapeRef.new(shape: ThemeAttributes, location_name: "AttributesToDelete"))
    UpdateThemeForStackRequest.struct_class = Types::UpdateThemeForStackRequest

    UpdateThemeForStackResult.add_member(:theme, Shapes::ShapeRef.new(shape: Theme, location_name: "Theme"))
    UpdateThemeForStackResult.struct_class = Types::UpdateThemeForStackResult

    UsageReportSubscription.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: String, location_name: "S3BucketName"))
    UsageReportSubscription.add_member(:schedule, Shapes::ShapeRef.new(shape: UsageReportSchedule, location_name: "Schedule"))
    UsageReportSubscription.add_member(:last_generated_report_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastGeneratedReportDate"))
    UsageReportSubscription.add_member(:subscription_errors, Shapes::ShapeRef.new(shape: LastReportGenerationExecutionErrors, location_name: "SubscriptionErrors"))
    UsageReportSubscription.struct_class = Types::UsageReportSubscription

    UsageReportSubscriptionList.member = Shapes::ShapeRef.new(shape: UsageReportSubscription)

    UsbDeviceFilterStrings.member = Shapes::ShapeRef.new(shape: UsbDeviceFilterString)

    User.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    User.add_member(:user_name, Shapes::ShapeRef.new(shape: Username, location_name: "UserName"))
    User.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    User.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    User.add_member(:first_name, Shapes::ShapeRef.new(shape: UserAttributeValue, location_name: "FirstName"))
    User.add_member(:last_name, Shapes::ShapeRef.new(shape: UserAttributeValue, location_name: "LastName"))
    User.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    User.add_member(:authentication_type, Shapes::ShapeRef.new(shape: AuthenticationType, required: true, location_name: "AuthenticationType"))
    User.struct_class = Types::User

    UserList.member = Shapes::ShapeRef.new(shape: User)

    UserSetting.add_member(:action, Shapes::ShapeRef.new(shape: Action, required: true, location_name: "Action"))
    UserSetting.add_member(:permission, Shapes::ShapeRef.new(shape: Permission, required: true, location_name: "Permission"))
    UserSetting.add_member(:maximum_length, Shapes::ShapeRef.new(shape: Integer, location_name: "MaximumLength"))
    UserSetting.struct_class = Types::UserSetting

    UserSettingList.member = Shapes::ShapeRef.new(shape: UserSetting)

    UserStackAssociation.add_member(:stack_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackName"))
    UserStackAssociation.add_member(:user_name, Shapes::ShapeRef.new(shape: Username, required: true, location_name: "UserName"))
    UserStackAssociation.add_member(:authentication_type, Shapes::ShapeRef.new(shape: AuthenticationType, required: true, location_name: "AuthenticationType"))
    UserStackAssociation.add_member(:send_email_notification, Shapes::ShapeRef.new(shape: Boolean, location_name: "SendEmailNotification"))
    UserStackAssociation.struct_class = Types::UserStackAssociation

    UserStackAssociationError.add_member(:user_stack_association, Shapes::ShapeRef.new(shape: UserStackAssociation, location_name: "UserStackAssociation"))
    UserStackAssociationError.add_member(:error_code, Shapes::ShapeRef.new(shape: UserStackAssociationErrorCode, location_name: "ErrorCode"))
    UserStackAssociationError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    UserStackAssociationError.struct_class = Types::UserStackAssociationError

    UserStackAssociationErrorList.member = Shapes::ShapeRef.new(shape: UserStackAssociationError)

    UserStackAssociationList.member = Shapes::ShapeRef.new(shape: UserStackAssociation)

    VpcConfig.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, location_name: "SubnetIds"))
    VpcConfig.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: "SecurityGroupIds"))
    VpcConfig.struct_class = Types::VpcConfig


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-12-01"

      api.metadata = {
        "apiVersion" => "2016-12-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "appstream2",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "Amazon AppStream",
        "serviceId" => "AppStream",
        "signatureVersion" => "v4",
        "signingName" => "appstream",
        "targetPrefix" => "PhotonAdminProxyService",
        "uid" => "appstream-2016-12-01",
      }

      api.add_operation(:associate_app_block_builder_app_block, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateAppBlockBuilderAppBlock"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateAppBlockBuilderAppBlockRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateAppBlockBuilderAppBlockResult)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:associate_application_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateApplicationFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateApplicationFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateApplicationFleetResult)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:associate_application_to_entitlement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateApplicationToEntitlement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateApplicationToEntitlementRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateApplicationToEntitlementResult)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EntitlementNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:associate_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateFleetResult)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleImageException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:batch_associate_user_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchAssociateUserStack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchAssociateUserStackRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchAssociateUserStackResult)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:batch_disassociate_user_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDisassociateUserStack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchDisassociateUserStackRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDisassociateUserStackResult)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:copy_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CopyImage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CopyImageRequest)
        o.output = Shapes::ShapeRef.new(shape: CopyImageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleImageException)
      end)

      api.add_operation(:create_app_block, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAppBlock"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAppBlockRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAppBlockResult)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
      end)

      api.add_operation(:create_app_block_builder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAppBlockBuilder"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAppBlockBuilderRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAppBlockBuilderResult)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: RequestLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRoleException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:create_app_block_builder_streaming_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAppBlockBuilderStreamingURL"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAppBlockBuilderStreamingURLRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAppBlockBuilderStreamingURLResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:create_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApplicationResult)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_directory_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDirectoryConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDirectoryConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDirectoryConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRoleException)
      end)

      api.add_operation(:create_entitlement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEntitlement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEntitlementRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEntitlementResult)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: EntitlementAlreadyExistsException)
      end)

      api.add_operation(:create_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFleetResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: RequestLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRoleException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleImageException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:create_image_builder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateImageBuilder"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateImageBuilderRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateImageBuilderResult)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: RequestLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRoleException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleImageException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:create_image_builder_streaming_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateImageBuilderStreamingURL"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateImageBuilderStreamingURLRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateImageBuilderStreamingURLResult)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateStackRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStackResult)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRoleException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:create_streaming_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStreamingURL"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateStreamingURLRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStreamingURLResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:create_theme_for_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateThemeForStack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateThemeForStackRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateThemeForStackResult)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:create_updated_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUpdatedImage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateUpdatedImageRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUpdatedImageResult)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleImageException)
      end)

      api.add_operation(:create_usage_report_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUsageReportSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateUsageReportSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUsageReportSubscriptionResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRoleException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:delete_app_block, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAppBlock"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAppBlockRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAppBlockResult)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_app_block_builder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAppBlockBuilder"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAppBlockBuilderRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAppBlockBuilderResult)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApplicationResult)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_directory_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDirectoryConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDirectoryConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDirectoryConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_entitlement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEntitlement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEntitlementRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEntitlementResult)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EntitlementNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFleetResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteImage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteImageRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteImageResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_image_builder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteImageBuilder"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteImageBuilderRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteImageBuilderResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_image_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteImagePermissions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteImagePermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteImagePermissionsResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteStackRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteStackResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_theme_for_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteThemeForStack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteThemeForStackRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteThemeForStackResult)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:delete_usage_report_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUsageReportSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteUsageReportSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteUsageReportSubscriptionResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteUserResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_app_block_builder_app_block_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAppBlockBuilderAppBlockAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAppBlockBuilderAppBlockAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAppBlockBuilderAppBlockAssociationsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_app_block_builders, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAppBlockBuilders"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAppBlockBuildersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAppBlockBuildersResult)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_app_blocks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAppBlocks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAppBlocksRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAppBlocksResult)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_application_fleet_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeApplicationFleetAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeApplicationFleetAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeApplicationFleetAssociationsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:describe_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeApplications"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeApplicationsResult)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_directory_configs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDirectoryConfigs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDirectoryConfigsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDirectoryConfigsResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_entitlements, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEntitlements"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEntitlementsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEntitlementsResult)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EntitlementNotFoundException)
      end)

      api.add_operation(:describe_fleets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFleets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFleetsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFleetsResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_image_builders, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeImageBuilders"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeImageBuildersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeImageBuildersResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_image_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeImagePermissions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeImagePermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeImagePermissionsResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_images, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeImages"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeImagesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeImagesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSessions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSessionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSessionsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:describe_stacks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStacks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStacksRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeStacksResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_theme_for_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeThemeForStack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeThemeForStackRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeThemeForStackResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:describe_usage_report_subscriptions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeUsageReportSubscriptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeUsageReportSubscriptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeUsageReportSubscriptionsResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
      end)

      api.add_operation(:describe_user_stack_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeUserStackAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeUserStackAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeUserStackAssociationsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:describe_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeUsers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeUsersResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:disable_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisableUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DisableUserResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disassociate_app_block_builder_app_block, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateAppBlockBuilderAppBlock"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateAppBlockBuilderAppBlockRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateAppBlockBuilderAppBlockResult)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disassociate_application_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateApplicationFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateApplicationFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateApplicationFleetResult)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:disassociate_application_from_entitlement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateApplicationFromEntitlement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateApplicationFromEntitlementRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateApplicationFromEntitlementResult)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EntitlementNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:disassociate_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateFleetResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:enable_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EnableUserRequest)
        o.output = Shapes::ShapeRef.new(shape: EnableUserResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
      end)

      api.add_operation(:expire_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExpireSession"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ExpireSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: ExpireSessionResult)
      end)

      api.add_operation(:list_associated_fleets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssociatedFleets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAssociatedFleetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssociatedFleetsResult)
      end)

      api.add_operation(:list_associated_stacks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssociatedStacks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAssociatedStacksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssociatedStacksResult)
      end)

      api.add_operation(:list_entitled_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEntitledApplications"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEntitledApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEntitledApplicationsResult)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EntitlementNotFoundException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_app_block_builder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartAppBlockBuilder"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartAppBlockBuilderRequest)
        o.output = Shapes::ShapeRef.new(shape: StartAppBlockBuilderResult)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: StartFleetResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: RequestLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRoleException)
      end)

      api.add_operation(:start_image_builder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartImageBuilder"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartImageBuilderRequest)
        o.output = Shapes::ShapeRef.new(shape: StartImageBuilderResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleImageException)
      end)

      api.add_operation(:stop_app_block_builder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopAppBlockBuilder"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopAppBlockBuilderRequest)
        o.output = Shapes::ShapeRef.new(shape: StopAppBlockBuilderResult)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:stop_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: StopFleetResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:stop_image_builder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopImageBuilder"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopImageBuilderRequest)
        o.output = Shapes::ShapeRef.new(shape: StopImageBuilderResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_app_block_builder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAppBlockBuilder"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAppBlockBuilderRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAppBlockBuilderResult)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRoleException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApplicationResult)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_directory_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDirectoryConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDirectoryConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDirectoryConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRoleException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleImageException)
      end)

      api.add_operation(:update_entitlement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEntitlement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEntitlementRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEntitlementResult)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EntitlementNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:update_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFleetResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: RequestLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRoleException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleImageException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:update_image_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateImagePermissions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateImagePermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateImagePermissionsResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:update_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateStackRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateStackResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRoleException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleImageException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:update_theme_for_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateThemeForStack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateThemeForStackRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateThemeForStackResult)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)
    end

  end
end
