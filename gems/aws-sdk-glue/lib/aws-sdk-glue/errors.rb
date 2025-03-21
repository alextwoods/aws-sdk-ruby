# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Glue

  # When Glue returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::Glue::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all Glue errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Glue::Errors::ServiceError
  #       # rescues all Glue API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {AccessDeniedException}
  # * {AlreadyExistsException}
  # * {ColumnStatisticsTaskNotRunningException}
  # * {ColumnStatisticsTaskRunningException}
  # * {ColumnStatisticsTaskStoppingException}
  # * {ConcurrentModificationException}
  # * {ConcurrentRunsExceededException}
  # * {ConditionCheckFailureException}
  # * {ConflictException}
  # * {CrawlerNotRunningException}
  # * {CrawlerRunningException}
  # * {CrawlerStoppingException}
  # * {EntityNotFoundException}
  # * {FederatedResourceAlreadyExistsException}
  # * {FederationSourceException}
  # * {FederationSourceRetryableException}
  # * {GlueEncryptionException}
  # * {IdempotentParameterMismatchException}
  # * {IllegalBlueprintStateException}
  # * {IllegalSessionStateException}
  # * {IllegalWorkflowStateException}
  # * {IntegrationConflictOperationFault}
  # * {IntegrationNotFoundFault}
  # * {IntegrationQuotaExceededFault}
  # * {InternalServerException}
  # * {InternalServiceException}
  # * {InvalidInputException}
  # * {InvalidIntegrationStateFault}
  # * {InvalidStateException}
  # * {KMSKeyNotAccessibleFault}
  # * {MLTransformNotReadyException}
  # * {NoScheduleException}
  # * {OperationNotSupportedException}
  # * {OperationTimeoutException}
  # * {PermissionTypeMismatchException}
  # * {ResourceNotFoundException}
  # * {ResourceNotReadyException}
  # * {ResourceNumberLimitExceededException}
  # * {SchedulerNotRunningException}
  # * {SchedulerRunningException}
  # * {SchedulerTransitioningException}
  # * {TargetResourceNotFound}
  # * {ThrottlingException}
  # * {ValidationException}
  # * {VersionMismatchException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class AccessDeniedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::AccessDeniedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class AlreadyExistsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::AlreadyExistsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ColumnStatisticsTaskNotRunningException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::ColumnStatisticsTaskNotRunningException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ColumnStatisticsTaskRunningException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::ColumnStatisticsTaskRunningException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ColumnStatisticsTaskStoppingException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::ColumnStatisticsTaskStoppingException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ConcurrentModificationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::ConcurrentModificationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ConcurrentRunsExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::ConcurrentRunsExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ConditionCheckFailureException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::ConditionCheckFailureException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ConflictException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::ConflictException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class CrawlerNotRunningException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::CrawlerNotRunningException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class CrawlerRunningException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::CrawlerRunningException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class CrawlerStoppingException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::CrawlerStoppingException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class EntityNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::EntityNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def from_federation_source
        @data[:from_federation_source]
      end
    end

    class FederatedResourceAlreadyExistsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::FederatedResourceAlreadyExistsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def associated_glue_resource
        @data[:associated_glue_resource]
      end
    end

    class FederationSourceException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::FederationSourceException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def federation_source_error_code
        @data[:federation_source_error_code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class FederationSourceRetryableException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::FederationSourceRetryableException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class GlueEncryptionException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::GlueEncryptionException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class IdempotentParameterMismatchException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::IdempotentParameterMismatchException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class IllegalBlueprintStateException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::IllegalBlueprintStateException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class IllegalSessionStateException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::IllegalSessionStateException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class IllegalWorkflowStateException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::IllegalWorkflowStateException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class IntegrationConflictOperationFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::IntegrationConflictOperationFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class IntegrationNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::IntegrationNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class IntegrationQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::IntegrationQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InternalServerException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::InternalServerException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InternalServiceException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::InternalServiceException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InvalidInputException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::InvalidInputException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def from_federation_source
        @data[:from_federation_source]
      end
    end

    class InvalidIntegrationStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::InvalidIntegrationStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InvalidStateException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::InvalidStateException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class KMSKeyNotAccessibleFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::KMSKeyNotAccessibleFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class MLTransformNotReadyException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::MLTransformNotReadyException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class NoScheduleException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::NoScheduleException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class OperationNotSupportedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::OperationNotSupportedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class OperationTimeoutException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::OperationTimeoutException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class PermissionTypeMismatchException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::PermissionTypeMismatchException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ResourceNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::ResourceNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ResourceNotReadyException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::ResourceNotReadyException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ResourceNumberLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::ResourceNumberLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class SchedulerNotRunningException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::SchedulerNotRunningException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class SchedulerRunningException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::SchedulerRunningException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class SchedulerTransitioningException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::SchedulerTransitioningException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class TargetResourceNotFound < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::TargetResourceNotFound] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ThrottlingException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::ThrottlingException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ValidationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::ValidationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class VersionMismatchException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glue::Types::VersionMismatchException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

  end
end
