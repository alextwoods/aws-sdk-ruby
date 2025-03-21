# frozen_string_literal: true

Gem::Specification.new do |spec|

  spec.name          = 'aws-sdk-resources'
  spec.version       = File.read(File.expand_path('../VERSION', __FILE__)).strip
  spec.summary       = 'AWS SDK for Ruby'
  spec.description   = 'The official AWS SDK for Ruby. Provides both resource oriented interfaces and API clients for AWS services.'
  spec.author        = 'Amazon Web Services'
  spec.homepage      = 'https://github.com/aws/aws-sdk-ruby'
  spec.license       = 'Apache-2.0'
  spec.email         = ['aws-dr-rubygems@amazon.com']
  spec.files         = Dir['LICENSE.txt', 'CHANGELOG.md', 'VERSION', 'lib/**/*.rb']
  spec.bindir        = 'bin'
  spec.executables   << 'aws-v3.rb'

  # service gems
  spec.add_dependency('aws-sdk-acm', '~> 1')
  spec.add_dependency('aws-sdk-acmpca', '~> 1')
  spec.add_dependency('aws-sdk-apigateway', '~> 1')
  spec.add_dependency('aws-sdk-arczonalshift', '~> 1')
  spec.add_dependency('aws-sdk-accessanalyzer', '~> 1')
  spec.add_dependency('aws-sdk-account', '~> 1')
  spec.add_dependency('aws-sdk-amplify', '~> 1')
  spec.add_dependency('aws-sdk-amplifybackend', '~> 1')
  spec.add_dependency('aws-sdk-amplifyuibuilder', '~> 1')
  spec.add_dependency('aws-sdk-apigatewaymanagementapi', '~> 1')
  spec.add_dependency('aws-sdk-apigatewayv2', '~> 1')
  spec.add_dependency('aws-sdk-appconfig', '~> 1')
  spec.add_dependency('aws-sdk-appconfigdata', '~> 1')
  spec.add_dependency('aws-sdk-appfabric', '~> 1')
  spec.add_dependency('aws-sdk-appintegrationsservice', '~> 1')
  spec.add_dependency('aws-sdk-appmesh', '~> 1')
  spec.add_dependency('aws-sdk-appregistry', '~> 1')
  spec.add_dependency('aws-sdk-apprunner', '~> 1')
  spec.add_dependency('aws-sdk-appstream', '~> 1')
  spec.add_dependency('aws-sdk-appsync', '~> 1')
  spec.add_dependency('aws-sdk-apptest', '~> 1')
  spec.add_dependency('aws-sdk-appflow', '~> 1')
  spec.add_dependency('aws-sdk-applicationautoscaling', '~> 1')
  spec.add_dependency('aws-sdk-applicationcostprofiler', '~> 1')
  spec.add_dependency('aws-sdk-applicationdiscoveryservice', '~> 1')
  spec.add_dependency('aws-sdk-applicationinsights', '~> 1')
  spec.add_dependency('aws-sdk-applicationsignals', '~> 1')
  spec.add_dependency('aws-sdk-artifact', '~> 1')
  spec.add_dependency('aws-sdk-athena', '~> 1')
  spec.add_dependency('aws-sdk-auditmanager', '~> 1')
  spec.add_dependency('aws-sdk-augmentedairuntime', '~> 1')
  spec.add_dependency('aws-sdk-autoscaling', '~> 1')
  spec.add_dependency('aws-sdk-autoscalingplans', '~> 1')
  spec.add_dependency('aws-sdk-b2bi', '~> 1')
  spec.add_dependency('aws-sdk-bcmdataexports', '~> 1')
  spec.add_dependency('aws-sdk-bcmpricingcalculator', '~> 1')
  spec.add_dependency('aws-sdk-backup', '~> 1')
  spec.add_dependency('aws-sdk-backupgateway', '~> 1')
  spec.add_dependency('aws-sdk-backupsearch', '~> 1')
  spec.add_dependency('aws-sdk-batch', '~> 1')
  spec.add_dependency('aws-sdk-bedrock', '~> 1')
  spec.add_dependency('aws-sdk-bedrockagent', '~> 1')
  spec.add_dependency('aws-sdk-bedrockagentruntime', '~> 1')
  spec.add_dependency('aws-sdk-bedrockdataautomation', '~> 1')
  spec.add_dependency('aws-sdk-bedrockdataautomationruntime', '~> 1')
  spec.add_dependency('aws-sdk-bedrockruntime', '~> 1')
  spec.add_dependency('aws-sdk-billing', '~> 1')
  spec.add_dependency('aws-sdk-billingconductor', '~> 1')
  spec.add_dependency('aws-sdk-braket', '~> 1')
  spec.add_dependency('aws-sdk-budgets', '~> 1')
  spec.add_dependency('aws-sdk-chatbot', '~> 1')
  spec.add_dependency('aws-sdk-chime', '~> 1')
  spec.add_dependency('aws-sdk-chimesdkidentity', '~> 1')
  spec.add_dependency('aws-sdk-chimesdkmediapipelines', '~> 1')
  spec.add_dependency('aws-sdk-chimesdkmeetings', '~> 1')
  spec.add_dependency('aws-sdk-chimesdkmessaging', '~> 1')
  spec.add_dependency('aws-sdk-chimesdkvoice', '~> 1')
  spec.add_dependency('aws-sdk-cleanrooms', '~> 1')
  spec.add_dependency('aws-sdk-cleanroomsml', '~> 1')
  spec.add_dependency('aws-sdk-cloud9', '~> 1')
  spec.add_dependency('aws-sdk-cloudcontrolapi', '~> 1')
  spec.add_dependency('aws-sdk-clouddirectory', '~> 1')
  spec.add_dependency('aws-sdk-cloudformation', '~> 1')
  spec.add_dependency('aws-sdk-cloudfront', '~> 1')
  spec.add_dependency('aws-sdk-cloudfrontkeyvaluestore', '~> 1')
  spec.add_dependency('aws-sdk-cloudhsm', '~> 1')
  spec.add_dependency('aws-sdk-cloudhsmv2', '~> 1')
  spec.add_dependency('aws-sdk-cloudsearch', '~> 1')
  spec.add_dependency('aws-sdk-cloudsearchdomain', '~> 1')
  spec.add_dependency('aws-sdk-cloudtrail', '~> 1')
  spec.add_dependency('aws-sdk-cloudtraildata', '~> 1')
  spec.add_dependency('aws-sdk-cloudwatch', '~> 1')
  spec.add_dependency('aws-sdk-cloudwatchevents', '~> 1')
  spec.add_dependency('aws-sdk-cloudwatchevidently', '~> 1')
  spec.add_dependency('aws-sdk-cloudwatchlogs', '~> 1')
  spec.add_dependency('aws-sdk-cloudwatchrum', '~> 1')
  spec.add_dependency('aws-sdk-codeartifact', '~> 1')
  spec.add_dependency('aws-sdk-codebuild', '~> 1')
  spec.add_dependency('aws-sdk-codecatalyst', '~> 1')
  spec.add_dependency('aws-sdk-codecommit', '~> 1')
  spec.add_dependency('aws-sdk-codeconnections', '~> 1')
  spec.add_dependency('aws-sdk-codedeploy', '~> 1')
  spec.add_dependency('aws-sdk-codeguruprofiler', '~> 1')
  spec.add_dependency('aws-sdk-codegurureviewer', '~> 1')
  spec.add_dependency('aws-sdk-codegurusecurity', '~> 1')
  spec.add_dependency('aws-sdk-codepipeline', '~> 1')
  spec.add_dependency('aws-sdk-codestarnotifications', '~> 1')
  spec.add_dependency('aws-sdk-codestarconnections', '~> 1')
  spec.add_dependency('aws-sdk-cognitoidentity', '~> 1')
  spec.add_dependency('aws-sdk-cognitoidentityprovider', '~> 1')
  spec.add_dependency('aws-sdk-cognitosync', '~> 1')
  spec.add_dependency('aws-sdk-comprehend', '~> 1')
  spec.add_dependency('aws-sdk-comprehendmedical', '~> 1')
  spec.add_dependency('aws-sdk-computeoptimizer', '~> 1')
  spec.add_dependency('aws-sdk-configservice', '~> 1')
  spec.add_dependency('aws-sdk-connect', '~> 1')
  spec.add_dependency('aws-sdk-connectcampaignservice', '~> 1')
  spec.add_dependency('aws-sdk-connectcampaignsv2', '~> 1')
  spec.add_dependency('aws-sdk-connectcases', '~> 1')
  spec.add_dependency('aws-sdk-connectcontactlens', '~> 1')
  spec.add_dependency('aws-sdk-connectparticipant', '~> 1')
  spec.add_dependency('aws-sdk-connectwisdomservice', '~> 1')
  spec.add_dependency('aws-sdk-controlcatalog', '~> 1')
  spec.add_dependency('aws-sdk-controltower', '~> 1')
  spec.add_dependency('aws-sdk-costexplorer', '~> 1')
  spec.add_dependency('aws-sdk-costoptimizationhub', '~> 1')
  spec.add_dependency('aws-sdk-costandusagereportservice', '~> 1')
  spec.add_dependency('aws-sdk-customerprofiles', '~> 1')
  spec.add_dependency('aws-sdk-dax', '~> 1')
  spec.add_dependency('aws-sdk-dlm', '~> 1')
  spec.add_dependency('aws-sdk-dsql', '~> 1')
  spec.add_dependency('aws-sdk-dataexchange', '~> 1')
  spec.add_dependency('aws-sdk-datapipeline', '~> 1')
  spec.add_dependency('aws-sdk-datasync', '~> 1')
  spec.add_dependency('aws-sdk-datazone', '~> 1')
  spec.add_dependency('aws-sdk-databasemigrationservice', '~> 1')
  spec.add_dependency('aws-sdk-deadline', '~> 1')
  spec.add_dependency('aws-sdk-detective', '~> 1')
  spec.add_dependency('aws-sdk-devopsguru', '~> 1')
  spec.add_dependency('aws-sdk-devicefarm', '~> 1')
  spec.add_dependency('aws-sdk-directconnect', '~> 1')
  spec.add_dependency('aws-sdk-directoryservice', '~> 1')
  spec.add_dependency('aws-sdk-directoryservicedata', '~> 1')
  spec.add_dependency('aws-sdk-docdb', '~> 1')
  spec.add_dependency('aws-sdk-docdbelastic', '~> 1')
  spec.add_dependency('aws-sdk-drs', '~> 1')
  spec.add_dependency('aws-sdk-dynamodb', '~> 1')
  spec.add_dependency('aws-sdk-dynamodbstreams', '~> 1')
  spec.add_dependency('aws-sdk-ebs', '~> 1')
  spec.add_dependency('aws-sdk-ec2', '~> 1')
  spec.add_dependency('aws-sdk-ec2instanceconnect', '~> 1')
  spec.add_dependency('aws-sdk-ecr', '~> 1')
  spec.add_dependency('aws-sdk-ecrpublic', '~> 1')
  spec.add_dependency('aws-sdk-ecs', '~> 1')
  spec.add_dependency('aws-sdk-efs', '~> 1')
  spec.add_dependency('aws-sdk-eks', '~> 1')
  spec.add_dependency('aws-sdk-eksauth', '~> 1')
  spec.add_dependency('aws-sdk-emr', '~> 1')
  spec.add_dependency('aws-sdk-emrcontainers', '~> 1')
  spec.add_dependency('aws-sdk-emrserverless', '~> 1')
  spec.add_dependency('aws-sdk-elasticache', '~> 1')
  spec.add_dependency('aws-sdk-elasticbeanstalk', '~> 1')
  spec.add_dependency('aws-sdk-elasticloadbalancing', '~> 1')
  spec.add_dependency('aws-sdk-elasticloadbalancingv2', '~> 1')
  spec.add_dependency('aws-sdk-elastictranscoder', '~> 1')
  spec.add_dependency('aws-sdk-elasticsearchservice', '~> 1')
  spec.add_dependency('aws-sdk-entityresolution', '~> 1')
  spec.add_dependency('aws-sdk-eventbridge', '~> 1')
  spec.add_dependency('aws-sdk-fis', '~> 1')
  spec.add_dependency('aws-sdk-fms', '~> 1')
  spec.add_dependency('aws-sdk-fsx', '~> 1')
  spec.add_dependency('aws-sdk-finspacedata', '~> 1')
  spec.add_dependency('aws-sdk-finspace', '~> 1')
  spec.add_dependency('aws-sdk-firehose', '~> 1')
  spec.add_dependency('aws-sdk-forecastqueryservice', '~> 1')
  spec.add_dependency('aws-sdk-forecastservice', '~> 1')
  spec.add_dependency('aws-sdk-frauddetector', '~> 1')
  spec.add_dependency('aws-sdk-freetier', '~> 1')
  spec.add_dependency('aws-sdk-gamelift', '~> 1')
  spec.add_dependency('aws-sdk-gameliftstreams', '~> 1')
  spec.add_dependency('aws-sdk-geomaps', '~> 1')
  spec.add_dependency('aws-sdk-geoplaces', '~> 1')
  spec.add_dependency('aws-sdk-georoutes', '~> 1')
  spec.add_dependency('aws-sdk-glacier', '~> 1')
  spec.add_dependency('aws-sdk-globalaccelerator', '~> 1')
  spec.add_dependency('aws-sdk-glue', '~> 1')
  spec.add_dependency('aws-sdk-gluedatabrew', '~> 1')
  spec.add_dependency('aws-sdk-greengrass', '~> 1')
  spec.add_dependency('aws-sdk-greengrassv2', '~> 1')
  spec.add_dependency('aws-sdk-groundstation', '~> 1')
  spec.add_dependency('aws-sdk-guardduty', '~> 1')
  spec.add_dependency('aws-sdk-health', '~> 1')
  spec.add_dependency('aws-sdk-healthlake', '~> 1')
  spec.add_dependency('aws-sdk-iam', '~> 1')
  spec.add_dependency('aws-sdk-ivs', '~> 1')
  spec.add_dependency('aws-sdk-ivsrealtime', '~> 1')
  spec.add_dependency('aws-sdk-identitystore', '~> 1')
  spec.add_dependency('aws-sdk-imagebuilder', '~> 1')
  spec.add_dependency('aws-sdk-importexport', '~> 1')
  spec.add_dependency('aws-sdk-inspector', '~> 1')
  spec.add_dependency('aws-sdk-inspector2', '~> 1')
  spec.add_dependency('aws-sdk-inspectorscan', '~> 1')
  spec.add_dependency('aws-sdk-internetmonitor', '~> 1')
  spec.add_dependency('aws-sdk-invoicing', '~> 1')
  spec.add_dependency('aws-sdk-iot', '~> 1')
  spec.add_dependency('aws-sdk-iotanalytics', '~> 1')
  spec.add_dependency('aws-sdk-iotdataplane', '~> 1')
  spec.add_dependency('aws-sdk-iotdeviceadvisor', '~> 1')
  spec.add_dependency('aws-sdk-iotevents', '~> 1')
  spec.add_dependency('aws-sdk-ioteventsdata', '~> 1')
  spec.add_dependency('aws-sdk-iotfleethub', '~> 1')
  spec.add_dependency('aws-sdk-iotfleetwise', '~> 1')
  spec.add_dependency('aws-sdk-iotjobsdataplane', '~> 1')
  spec.add_dependency('aws-sdk-iotmanagedintegrations', '~> 1')
  spec.add_dependency('aws-sdk-iotsecuretunneling', '~> 1')
  spec.add_dependency('aws-sdk-iotsitewise', '~> 1')
  spec.add_dependency('aws-sdk-iotthingsgraph', '~> 1')
  spec.add_dependency('aws-sdk-iottwinmaker', '~> 1')
  spec.add_dependency('aws-sdk-iotwireless', '~> 1')
  spec.add_dependency('aws-sdk-ivschat', '~> 1')
  spec.add_dependency('aws-sdk-kms', '~> 1')
  spec.add_dependency('aws-sdk-kafka', '~> 1')
  spec.add_dependency('aws-sdk-kafkaconnect', '~> 1')
  spec.add_dependency('aws-sdk-kendra', '~> 1')
  spec.add_dependency('aws-sdk-kendraranking', '~> 1')
  spec.add_dependency('aws-sdk-keyspaces', '~> 1')
  spec.add_dependency('aws-sdk-kinesis', '~> 1')
  spec.add_dependency('aws-sdk-kinesisanalytics', '~> 1')
  spec.add_dependency('aws-sdk-kinesisanalyticsv2', '~> 1')
  spec.add_dependency('aws-sdk-kinesisvideo', '~> 1')
  spec.add_dependency('aws-sdk-kinesisvideoarchivedmedia', '~> 1')
  spec.add_dependency('aws-sdk-kinesisvideomedia', '~> 1')
  spec.add_dependency('aws-sdk-kinesisvideosignalingchannels', '~> 1')
  spec.add_dependency('aws-sdk-kinesisvideowebrtcstorage', '~> 1')
  spec.add_dependency('aws-sdk-lakeformation', '~> 1')
  spec.add_dependency('aws-sdk-lambda', '~> 1')
  spec.add_dependency('aws-sdk-launchwizard', '~> 1')
  spec.add_dependency('aws-sdk-lex', '~> 1')
  spec.add_dependency('aws-sdk-lexmodelbuildingservice', '~> 1')
  spec.add_dependency('aws-sdk-lexmodelsv2', '~> 1')
  spec.add_dependency('aws-sdk-lexruntimev2', '~> 1')
  spec.add_dependency('aws-sdk-licensemanager', '~> 1')
  spec.add_dependency('aws-sdk-licensemanagerlinuxsubscriptions', '~> 1')
  spec.add_dependency('aws-sdk-licensemanagerusersubscriptions', '~> 1')
  spec.add_dependency('aws-sdk-lightsail', '~> 1')
  spec.add_dependency('aws-sdk-locationservice', '~> 1')
  spec.add_dependency('aws-sdk-lookoutequipment', '~> 1')
  spec.add_dependency('aws-sdk-lookoutmetrics', '~> 1')
  spec.add_dependency('aws-sdk-lookoutforvision', '~> 1')
  spec.add_dependency('aws-sdk-mq', '~> 1')
  spec.add_dependency('aws-sdk-mturk', '~> 1')
  spec.add_dependency('aws-sdk-mwaa', '~> 1')
  spec.add_dependency('aws-sdk-machinelearning', '~> 1')
  spec.add_dependency('aws-sdk-macie2', '~> 1')
  spec.add_dependency('aws-sdk-mailmanager', '~> 1')
  spec.add_dependency('aws-sdk-mainframemodernization', '~> 1')
  spec.add_dependency('aws-sdk-managedblockchain', '~> 1')
  spec.add_dependency('aws-sdk-managedblockchainquery', '~> 1')
  spec.add_dependency('aws-sdk-managedgrafana', '~> 1')
  spec.add_dependency('aws-sdk-marketplaceagreement', '~> 1')
  spec.add_dependency('aws-sdk-marketplacecatalog', '~> 1')
  spec.add_dependency('aws-sdk-marketplacecommerceanalytics', '~> 1')
  spec.add_dependency('aws-sdk-marketplacedeployment', '~> 1')
  spec.add_dependency('aws-sdk-marketplaceentitlementservice', '~> 1')
  spec.add_dependency('aws-sdk-marketplacemetering', '~> 1')
  spec.add_dependency('aws-sdk-marketplacereporting', '~> 1')
  spec.add_dependency('aws-sdk-mediaconnect', '~> 1')
  spec.add_dependency('aws-sdk-mediaconvert', '~> 1')
  spec.add_dependency('aws-sdk-medialive', '~> 1')
  spec.add_dependency('aws-sdk-mediapackage', '~> 1')
  spec.add_dependency('aws-sdk-mediapackagev2', '~> 1')
  spec.add_dependency('aws-sdk-mediapackagevod', '~> 1')
  spec.add_dependency('aws-sdk-mediastore', '~> 1')
  spec.add_dependency('aws-sdk-mediastoredata', '~> 1')
  spec.add_dependency('aws-sdk-mediatailor', '~> 1')
  spec.add_dependency('aws-sdk-medicalimaging', '~> 1')
  spec.add_dependency('aws-sdk-memorydb', '~> 1')
  spec.add_dependency('aws-sdk-mgn', '~> 1')
  spec.add_dependency('aws-sdk-migrationhub', '~> 1')
  spec.add_dependency('aws-sdk-migrationhubconfig', '~> 1')
  spec.add_dependency('aws-sdk-migrationhuborchestrator', '~> 1')
  spec.add_dependency('aws-sdk-migrationhubrefactorspaces', '~> 1')
  spec.add_dependency('aws-sdk-migrationhubstrategyrecommendations', '~> 1')
  spec.add_dependency('aws-sdk-neptune', '~> 1')
  spec.add_dependency('aws-sdk-neptunegraph', '~> 1')
  spec.add_dependency('aws-sdk-neptunedata', '~> 1')
  spec.add_dependency('aws-sdk-networkfirewall', '~> 1')
  spec.add_dependency('aws-sdk-networkflowmonitor', '~> 1')
  spec.add_dependency('aws-sdk-networkmanager', '~> 1')
  spec.add_dependency('aws-sdk-networkmonitor', '~> 1')
  spec.add_dependency('aws-sdk-notifications', '~> 1')
  spec.add_dependency('aws-sdk-notificationscontacts', '~> 1')
  spec.add_dependency('aws-sdk-oam', '~> 1')
  spec.add_dependency('aws-sdk-osis', '~> 1')
  spec.add_dependency('aws-sdk-observabilityadmin', '~> 1')
  spec.add_dependency('aws-sdk-omics', '~> 1')
  spec.add_dependency('aws-sdk-opensearchserverless', '~> 1')
  spec.add_dependency('aws-sdk-opensearchservice', '~> 1')
  spec.add_dependency('aws-sdk-opsworks', '~> 1')
  spec.add_dependency('aws-sdk-opsworkscm', '~> 1')
  spec.add_dependency('aws-sdk-organizations', '~> 1')
  spec.add_dependency('aws-sdk-outposts', '~> 1')
  spec.add_dependency('aws-sdk-pcs', '~> 1')
  spec.add_dependency('aws-sdk-pi', '~> 1')
  spec.add_dependency('aws-sdk-panorama', '~> 1')
  spec.add_dependency('aws-sdk-partnercentralselling', '~> 1')
  spec.add_dependency('aws-sdk-paymentcryptography', '~> 1')
  spec.add_dependency('aws-sdk-paymentcryptographydata', '~> 1')
  spec.add_dependency('aws-sdk-pcaconnectorad', '~> 1')
  spec.add_dependency('aws-sdk-pcaconnectorscep', '~> 1')
  spec.add_dependency('aws-sdk-personalize', '~> 1')
  spec.add_dependency('aws-sdk-personalizeevents', '~> 1')
  spec.add_dependency('aws-sdk-personalizeruntime', '~> 1')
  spec.add_dependency('aws-sdk-pinpoint', '~> 1')
  spec.add_dependency('aws-sdk-pinpointemail', '~> 1')
  spec.add_dependency('aws-sdk-pinpointsmsvoice', '~> 1')
  spec.add_dependency('aws-sdk-pinpointsmsvoicev2', '~> 1')
  spec.add_dependency('aws-sdk-pipes', '~> 1')
  spec.add_dependency('aws-sdk-polly', '~> 1')
  spec.add_dependency('aws-sdk-pricing', '~> 1')
  spec.add_dependency('aws-sdk-privatenetworks', '~> 1')
  spec.add_dependency('aws-sdk-prometheusservice', '~> 1')
  spec.add_dependency('aws-sdk-proton', '~> 1')
  spec.add_dependency('aws-sdk-qapps', '~> 1')
  spec.add_dependency('aws-sdk-qbusiness', '~> 1')
  spec.add_dependency('aws-sdk-qconnect', '~> 1')
  spec.add_dependency('aws-sdk-qldb', '~> 1')
  spec.add_dependency('aws-sdk-qldbsession', '~> 1')
  spec.add_dependency('aws-sdk-quicksight', '~> 1')
  spec.add_dependency('aws-sdk-ram', '~> 1')
  spec.add_dependency('aws-sdk-rds', '~> 1')
  spec.add_dependency('aws-sdk-rdsdataservice', '~> 1')
  spec.add_dependency('aws-sdk-recyclebin', '~> 1')
  spec.add_dependency('aws-sdk-redshift', '~> 1')
  spec.add_dependency('aws-sdk-redshiftdataapiservice', '~> 1')
  spec.add_dependency('aws-sdk-redshiftserverless', '~> 1')
  spec.add_dependency('aws-sdk-rekognition', '~> 1')
  spec.add_dependency('aws-sdk-repostspace', '~> 1')
  spec.add_dependency('aws-sdk-resiliencehub', '~> 1')
  spec.add_dependency('aws-sdk-resourceexplorer2', '~> 1')
  spec.add_dependency('aws-sdk-resourcegroups', '~> 1')
  spec.add_dependency('aws-sdk-resourcegroupstaggingapi', '~> 1')
  spec.add_dependency('aws-sdk-robomaker', '~> 1')
  spec.add_dependency('aws-sdk-rolesanywhere', '~> 1')
  spec.add_dependency('aws-sdk-route53', '~> 1')
  spec.add_dependency('aws-sdk-route53domains', '~> 1')
  spec.add_dependency('aws-sdk-route53profiles', '~> 1')
  spec.add_dependency('aws-sdk-route53recoverycluster', '~> 1')
  spec.add_dependency('aws-sdk-route53recoverycontrolconfig', '~> 1')
  spec.add_dependency('aws-sdk-route53recoveryreadiness', '~> 1')
  spec.add_dependency('aws-sdk-route53resolver', '~> 1')
  spec.add_dependency('aws-sdk-s3', '~> 1')
  spec.add_dependency('aws-sdk-s3control', '~> 1')
  spec.add_dependency('aws-sdk-s3outposts', '~> 1')
  spec.add_dependency('aws-sdk-s3tables', '~> 1')
  spec.add_dependency('aws-sdk-ses', '~> 1')
  spec.add_dependency('aws-sdk-sesv2', '~> 1')
  spec.add_dependency('aws-sdk-sms', '~> 1')
  spec.add_dependency('aws-sdk-sns', '~> 1')
  spec.add_dependency('aws-sdk-sqs', '~> 1')
  spec.add_dependency('aws-sdk-ssm', '~> 1')
  spec.add_dependency('aws-sdk-ssmcontacts', '~> 1')
  spec.add_dependency('aws-sdk-ssmincidents', '~> 1')
  spec.add_dependency('aws-sdk-ssmquicksetup', '~> 1')
  spec.add_dependency('aws-sdk-ssoadmin', '~> 1')
  spec.add_dependency('aws-sdk-swf', '~> 1')
  spec.add_dependency('aws-sdk-sagemaker', '~> 1')
  spec.add_dependency('aws-sdk-sagemakerfeaturestoreruntime', '~> 1')
  spec.add_dependency('aws-sdk-sagemakergeospatial', '~> 1')
  spec.add_dependency('aws-sdk-sagemakermetrics', '~> 1')
  spec.add_dependency('aws-sdk-sagemakerruntime', '~> 1')
  spec.add_dependency('aws-sdk-sagemakeredgemanager', '~> 1')
  spec.add_dependency('aws-sdk-savingsplans', '~> 1')
  spec.add_dependency('aws-sdk-scheduler', '~> 1')
  spec.add_dependency('aws-sdk-schemas', '~> 1')
  spec.add_dependency('aws-sdk-secretsmanager', '~> 1')
  spec.add_dependency('aws-sdk-securityhub', '~> 1')
  spec.add_dependency('aws-sdk-securityir', '~> 1')
  spec.add_dependency('aws-sdk-securitylake', '~> 1')
  spec.add_dependency('aws-sdk-serverlessapplicationrepository', '~> 1')
  spec.add_dependency('aws-sdk-servicecatalog', '~> 1')
  spec.add_dependency('aws-sdk-servicediscovery', '~> 1')
  spec.add_dependency('aws-sdk-servicequotas', '~> 1')
  spec.add_dependency('aws-sdk-shield', '~> 1')
  spec.add_dependency('aws-sdk-signer', '~> 1')
  spec.add_dependency('aws-sdk-simspaceweaver', '~> 1')
  spec.add_dependency('aws-sdk-simpledb', '~> 1')
  spec.add_dependency('aws-sdk-snowdevicemanagement', '~> 1')
  spec.add_dependency('aws-sdk-snowball', '~> 1')
  spec.add_dependency('aws-sdk-socialmessaging', '~> 1')
  spec.add_dependency('aws-sdk-ssmsap', '~> 1')
  spec.add_dependency('aws-sdk-states', '~> 1')
  spec.add_dependency('aws-sdk-storagegateway', '~> 1')
  spec.add_dependency('aws-sdk-supplychain', '~> 1')
  spec.add_dependency('aws-sdk-support', '~> 1')
  spec.add_dependency('aws-sdk-supportapp', '~> 1')
  spec.add_dependency('aws-sdk-synthetics', '~> 1')
  spec.add_dependency('aws-sdk-taxsettings', '~> 1')
  spec.add_dependency('aws-sdk-textract', '~> 1')
  spec.add_dependency('aws-sdk-timestreaminfluxdb', '~> 1')
  spec.add_dependency('aws-sdk-timestreamquery', '~> 1')
  spec.add_dependency('aws-sdk-timestreamwrite', '~> 1')
  spec.add_dependency('aws-sdk-tnb', '~> 1')
  spec.add_dependency('aws-sdk-transcribeservice', '~> 1')
  spec.add_dependency('aws-sdk-transcribestreamingservice', '~> 1')
  spec.add_dependency('aws-sdk-transfer', '~> 1')
  spec.add_dependency('aws-sdk-translate', '~> 1')
  spec.add_dependency('aws-sdk-trustedadvisor', '~> 1')
  spec.add_dependency('aws-sdk-vpclattice', '~> 1')
  spec.add_dependency('aws-sdk-verifiedpermissions', '~> 1')
  spec.add_dependency('aws-sdk-voiceid', '~> 1')
  spec.add_dependency('aws-sdk-waf', '~> 1')
  spec.add_dependency('aws-sdk-wafregional', '~> 1')
  spec.add_dependency('aws-sdk-wafv2', '~> 1')
  spec.add_dependency('aws-sdk-wellarchitected', '~> 1')
  spec.add_dependency('aws-sdk-workdocs', '~> 1')
  spec.add_dependency('aws-sdk-workmail', '~> 1')
  spec.add_dependency('aws-sdk-workmailmessageflow', '~> 1')
  spec.add_dependency('aws-sdk-workspaces', '~> 1')
  spec.add_dependency('aws-sdk-workspacesthinclient', '~> 1')
  spec.add_dependency('aws-sdk-workspacesweb', '~> 1')
  spec.add_dependency('aws-sdk-xray', '~> 1')
  # end service gems

  spec.metadata = {
    'source_code_uri' => 'https://github.com/aws/aws-sdk-ruby/tree/version-3/gems/aws-sdk-resources',
    'changelog_uri'   => 'https://github.com/aws/aws-sdk-ruby/tree/version-3/gems/aws-sdk-resources/CHANGELOG.md'
  }

  spec.required_ruby_version = '>= 2.5'
end
