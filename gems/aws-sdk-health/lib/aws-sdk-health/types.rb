# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Health
  module Types

    # The number of entities in an account that are impacted by a specific
    # event aggregated by the entity status codes.
    #
    # @!attribute [rw] account_id
    #   The 12-digit Amazon Web Services account numbers that contains the
    #   affected entities.
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The number of entities that match the filter criteria for the
    #   specified events.
    #   @return [Integer]
    #
    # @!attribute [rw] statuses
    #   The number of affected entities aggregated by the entity status
    #   codes.
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/AccountEntityAggregate AWS API Documentation
    #
    class AccountEntityAggregate < Struct.new(
      :account_id,
      :count,
      :statuses)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an entity that is affected by a Health event.
    #
    # @!attribute [rw] entity_arn
    #   The unique identifier for the entity. Format:
    #   `arn:aws:health:entity-region:aws-account:entity/entity-id `.
    #   Example:
    #   `arn:aws:health:us-east-1:111222333444:entity/AVh5GGT7ul1arKr1sE1K`
    #   @return [String]
    #
    # @!attribute [rw] event_arn
    #   The unique identifier for the event. The event ARN has the
    #   `arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID
    #   ` format.
    #
    #   For example, an event ARN might look like the following:
    #
    #   `arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456`
    #   @return [String]
    #
    # @!attribute [rw] entity_value
    #   The ID of the affected entity.
    #   @return [String]
    #
    # @!attribute [rw] entity_url
    #   The URL of the affected entity.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The 12-digit Amazon Web Services account number that contains the
    #   affected entity.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   The most recent time that the entity was updated.
    #   @return [Time]
    #
    # @!attribute [rw] status_code
    #   The most recent status of the entity affected by the event. The
    #   possible values are `IMPAIRED`, `UNIMPAIRED`, and `UNKNOWN`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of entity tags attached to the affected entity.
    #
    #   <note markdown="1"> Currently, the `tags` property isn't supported.
    #
    #    </note>
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] entity_metadata
    #   Additional metadata about the affected entity.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/AffectedEntity AWS API Documentation
    #
    class AffectedEntity < Struct.new(
      :entity_arn,
      :event_arn,
      :entity_value,
      :entity_url,
      :aws_account_id,
      :last_updated_time,
      :status_code,
      :tags,
      :entity_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # [EnableHealthServiceAccessForOrganization][1] is already in progress.
    # Wait for the action to complete before trying again. To get the
    # current status, use the
    # [DescribeHealthServiceStatusForOrganization][2] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html
    # [2]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeHealthServiceStatusForOrganization.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A range of dates and times that is used by the [EventFilter][1] and
    # [EntityFilter][2] objects. If `from` is set and `to` is set: match
    # items where the timestamp (`startTime`, `endTime`, or
    # `lastUpdatedTime`) is between `from` and `to` inclusive. If `from` is
    # set and `to` is not set: match items where the timestamp value is
    # equal to or after `from`. If `from` is not set and `to` is set: match
    # items where the timestamp value is equal to or before `to`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_EventFilter.html
    # [2]: https://docs.aws.amazon.com/health/latest/APIReference/API_EntityFilter.html
    #
    # @!attribute [rw] from
    #   The starting date and time of a time range.
    #   @return [Time]
    #
    # @!attribute [rw] to
    #   The ending date and time of a time range.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DateTimeRange AWS API Documentation
    #
    class DateTimeRange < Struct.new(
      :from,
      :to)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_arn
    #   The unique identifier for the event. The event ARN has the
    #   `arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID
    #   ` format.
    #
    #   For example, an event ARN might look like the following:
    #
    #   `arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456`
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in one batch, between 10 and
    #   100, inclusive.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeAffectedAccountsForOrganizationRequest AWS API Documentation
    #
    class DescribeAffectedAccountsForOrganizationRequest < Struct.new(
      :event_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] affected_accounts
    #   A JSON set of elements of the affected accounts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] event_scope_code
    #   This parameter specifies if the Health event is a public Amazon Web
    #   Services service event or an account-specific event.
    #
    #   * If the `eventScopeCode` value is `PUBLIC`, then the
    #     `affectedAccounts` value is always empty.
    #
    #   * If the `eventScopeCode` value is `ACCOUNT_SPECIFIC`, then the
    #     `affectedAccounts` value lists the affected Amazon Web Services
    #     accounts in your organization. For example, if an event affects a
    #     service such as Amazon Elastic Compute Cloud and you have Amazon
    #     Web Services accounts that use that service, those account IDs
    #     appear in the response.
    #
    #   * If the `eventScopeCode` value is `NONE`, then the `eventArn` that
    #     you specified in the request is invalid or doesn't exist.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeAffectedAccountsForOrganizationResponse AWS API Documentation
    #
    class DescribeAffectedAccountsForOrganizationResponse < Struct.new(
      :affected_accounts,
      :event_scope_code,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_entity_filters
    #   A JSON set of elements including the `awsAccountId` and the
    #   `eventArn`.
    #   @return [Array<Types::EventAccountFilter>]
    #
    # @!attribute [rw] locale
    #   The locale (language) to return information in. English (en) is the
    #   default and the only supported value at this time.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in one batch, between 10 and
    #   100, inclusive.
    #   @return [Integer]
    #
    # @!attribute [rw] organization_entity_account_filters
    #   A JSON set of elements including the `awsAccountId`, `eventArn` and
    #   a set of `statusCodes`.
    #   @return [Array<Types::EntityAccountFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeAffectedEntitiesForOrganizationRequest AWS API Documentation
    #
    class DescribeAffectedEntitiesForOrganizationRequest < Struct.new(
      :organization_entity_filters,
      :locale,
      :next_token,
      :max_results,
      :organization_entity_account_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   A JSON set of elements including the `awsAccountId` and its
    #   `entityArn`, `entityValue` and its `entityArn`, `lastUpdatedTime`,
    #   and `statusCode`.
    #   @return [Array<Types::AffectedEntity>]
    #
    # @!attribute [rw] failed_set
    #   A JSON set of elements of the failed response, including the
    #   `awsAccountId`, `errorMessage`, `errorName`, and `eventArn`.
    #   @return [Array<Types::OrganizationAffectedEntitiesErrorItem>]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeAffectedEntitiesForOrganizationResponse AWS API Documentation
    #
    class DescribeAffectedEntitiesForOrganizationResponse < Struct.new(
      :entities,
      :failed_set,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   Values to narrow the results returned. At least one event ARN is
    #   required.
    #   @return [Types::EntityFilter]
    #
    # @!attribute [rw] locale
    #   The locale (language) to return information in. English (en) is the
    #   default and the only supported value at this time.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in one batch, between 10 and
    #   100, inclusive.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeAffectedEntitiesRequest AWS API Documentation
    #
    class DescribeAffectedEntitiesRequest < Struct.new(
      :filter,
      :locale,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   The entities that match the filter criteria.
    #   @return [Array<Types::AffectedEntity>]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeAffectedEntitiesResponse AWS API Documentation
    #
    class DescribeAffectedEntitiesResponse < Struct.new(
      :entities,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_arns
    #   A list of event ARNs (unique identifiers). For example:
    #   `"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456",
    #   "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"`
    #   @return [Array<String>]
    #
    # @!attribute [rw] aws_account_ids
    #   A list of 12-digit Amazon Web Services account numbers that contains
    #   the affected entities.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEntityAggregatesForOrganizationRequest AWS API Documentation
    #
    class DescribeEntityAggregatesForOrganizationRequest < Struct.new(
      :event_arns,
      :aws_account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_entity_aggregates
    #   The list of entity aggregates for each of the specified accounts
    #   that are affected by each of the specified events.
    #   @return [Array<Types::OrganizationEntityAggregate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEntityAggregatesForOrganizationResponse AWS API Documentation
    #
    class DescribeEntityAggregatesForOrganizationResponse < Struct.new(
      :organization_entity_aggregates)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_arns
    #   A list of event ARNs (unique identifiers). For example:
    #   `"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456",
    #   "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"`
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEntityAggregatesRequest AWS API Documentation
    #
    class DescribeEntityAggregatesRequest < Struct.new(
      :event_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entity_aggregates
    #   The number of entities that are affected by each of the specified
    #   events.
    #   @return [Array<Types::EntityAggregate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEntityAggregatesResponse AWS API Documentation
    #
    class DescribeEntityAggregatesResponse < Struct.new(
      :entity_aggregates)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   Values to narrow the results returned.
    #   @return [Types::EventFilter]
    #
    # @!attribute [rw] aggregate_field
    #   The only currently supported value is `eventTypeCategory`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in one batch, between 10 and
    #   100, inclusive.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventAggregatesRequest AWS API Documentation
    #
    class DescribeEventAggregatesRequest < Struct.new(
      :filter,
      :aggregate_field,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_aggregates
    #   The number of events in each category that meet the optional filter
    #   criteria.
    #   @return [Array<Types::EventAggregate>]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventAggregatesResponse AWS API Documentation
    #
    class DescribeEventAggregatesResponse < Struct.new(
      :event_aggregates,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_event_detail_filters
    #   A set of JSON elements that includes the `awsAccountId` and the
    #   `eventArn`.
    #   @return [Array<Types::EventAccountFilter>]
    #
    # @!attribute [rw] locale
    #   The locale (language) to return information in. English (en) is the
    #   default and the only supported value at this time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventDetailsForOrganizationRequest AWS API Documentation
    #
    class DescribeEventDetailsForOrganizationRequest < Struct.new(
      :organization_event_detail_filters,
      :locale)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] successful_set
    #   Information about the events that could be retrieved.
    #   @return [Array<Types::OrganizationEventDetails>]
    #
    # @!attribute [rw] failed_set
    #   Error messages for any events that could not be retrieved.
    #   @return [Array<Types::OrganizationEventDetailsErrorItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventDetailsForOrganizationResponse AWS API Documentation
    #
    class DescribeEventDetailsForOrganizationResponse < Struct.new(
      :successful_set,
      :failed_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_arns
    #   A list of event ARNs (unique identifiers). For example:
    #   `"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456",
    #   "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"`
    #   @return [Array<String>]
    #
    # @!attribute [rw] locale
    #   The locale (language) to return information in. English (en) is the
    #   default and the only supported value at this time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventDetailsRequest AWS API Documentation
    #
    class DescribeEventDetailsRequest < Struct.new(
      :event_arns,
      :locale)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] successful_set
    #   Information about the events that could be retrieved.
    #   @return [Array<Types::EventDetails>]
    #
    # @!attribute [rw] failed_set
    #   Error messages for any events that could not be retrieved.
    #   @return [Array<Types::EventDetailsErrorItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventDetailsResponse AWS API Documentation
    #
    class DescribeEventDetailsResponse < Struct.new(
      :successful_set,
      :failed_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   Values to narrow the results returned.
    #   @return [Types::EventTypeFilter]
    #
    # @!attribute [rw] locale
    #   The locale (language) to return information in. English (en) is the
    #   default and the only supported value at this time.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in one batch, between 10 and
    #   100, inclusive.
    #
    #   <note markdown="1"> If you don't specify the `maxResults` parameter, this operation
    #   returns a maximum of 30 items by default.
    #
    #    </note>
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventTypesRequest AWS API Documentation
    #
    class DescribeEventTypesRequest < Struct.new(
      :filter,
      :locale,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_types
    #   A list of event types that match the filter criteria. Event types
    #   have a category (`issue`, `accountNotification`, or
    #   `scheduledChange`), a service (for example, `EC2`, `RDS`,
    #   `DATAPIPELINE`, `BILLING`), and a code (in the format
    #   `AWS_SERVICE_DESCRIPTION `; for example,
    #   `AWS_EC2_SYSTEM_MAINTENANCE_EVENT`).
    #   @return [Array<Types::EventType>]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventTypesResponse AWS API Documentation
    #
    class DescribeEventTypesResponse < Struct.new(
      :event_types,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   Values to narrow the results returned.
    #   @return [Types::OrganizationEventFilter]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in one batch, between 10 and
    #   100, inclusive.
    #   @return [Integer]
    #
    # @!attribute [rw] locale
    #   The locale (language) to return information in. English (en) is the
    #   default and the only supported value at this time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventsForOrganizationRequest AWS API Documentation
    #
    class DescribeEventsForOrganizationRequest < Struct.new(
      :filter,
      :next_token,
      :max_results,
      :locale)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] events
    #   The events that match the specified filter criteria.
    #   @return [Array<Types::OrganizationEvent>]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventsForOrganizationResponse AWS API Documentation
    #
    class DescribeEventsForOrganizationResponse < Struct.new(
      :events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   Values to narrow the results returned.
    #   @return [Types::EventFilter]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in one batch, between 10 and
    #   100, inclusive.
    #   @return [Integer]
    #
    # @!attribute [rw] locale
    #   The locale (language) to return information in. English (en) is the
    #   default and the only supported value at this time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventsRequest AWS API Documentation
    #
    class DescribeEventsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results,
      :locale)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] events
    #   The events that match the specified filter criteria.
    #   @return [Array<Types::Event>]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventsResponse AWS API Documentation
    #
    class DescribeEventsResponse < Struct.new(
      :events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] health_service_access_status_for_organization
    #   Information about the status of enabling or disabling the Health
    #   organizational view feature in your organization.
    #
    #   Valid values are `ENABLED | DISABLED | PENDING`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeHealthServiceStatusForOrganizationResponse AWS API Documentation
    #
    class DescribeHealthServiceStatusForOrganizationResponse < Struct.new(
      :health_service_access_status_for_organization)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON set of elements including the `awsAccountId`, `eventArn` and a
    # set of `statusCodes`.
    #
    # @!attribute [rw] event_arn
    #   The unique identifier for the event. The event ARN has the
    #   `arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID
    #   ` format.
    #
    #   For example, an event ARN might look like the following:
    #
    #   `arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456`
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The 12-digit Amazon Web Services account numbers that contains the
    #   affected entities.
    #   @return [String]
    #
    # @!attribute [rw] status_codes
    #   A list of entity status codes.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/EntityAccountFilter AWS API Documentation
    #
    class EntityAccountFilter < Struct.new(
      :event_arn,
      :aws_account_id,
      :status_codes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of entities that are affected by one or more events.
    # Returned by the [DescribeEntityAggregates][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEntityAggregates.html
    #
    # @!attribute [rw] event_arn
    #   The unique identifier for the event. The event ARN has the
    #   `arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID
    #   ` format.
    #
    #   For example, an event ARN might look like the following:
    #
    #   `arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456`
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The number of entities that match the criteria for the specified
    #   events.
    #   @return [Integer]
    #
    # @!attribute [rw] statuses
    #   The number of affected entities aggregated by the entity status
    #   codes.
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/EntityAggregate AWS API Documentation
    #
    class EntityAggregate < Struct.new(
      :event_arn,
      :count,
      :statuses)
      SENSITIVE = []
      include Aws::Structure
    end

    # The values to use to filter results from the
    # [DescribeAffectedEntities][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntities.html
    #
    # @!attribute [rw] event_arns
    #   A list of event ARNs (unique identifiers). For example:
    #   `"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456",
    #   "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"`
    #   @return [Array<String>]
    #
    # @!attribute [rw] entity_arns
    #   A list of entity ARNs (unique identifiers).
    #   @return [Array<String>]
    #
    # @!attribute [rw] entity_values
    #   A list of IDs for affected entities.
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_updated_times
    #   A list of the most recent dates and times that the entity was
    #   updated.
    #   @return [Array<Types::DateTimeRange>]
    #
    # @!attribute [rw] tags
    #   A map of entity tags attached to the affected entity.
    #
    #   <note markdown="1"> Currently, the `tags` property isn't supported.
    #
    #    </note>
    #   @return [Array<Hash<String,String>>]
    #
    # @!attribute [rw] status_codes
    #   A list of entity status codes (`IMPAIRED`, `UNIMPAIRED`, or
    #   `UNKNOWN`).
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/EntityFilter AWS API Documentation
    #
    class EntityFilter < Struct.new(
      :event_arns,
      :entity_arns,
      :entity_values,
      :last_updated_times,
      :tags,
      :status_codes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about an Health event.
    #
    # Health events can be public or account-specific:
    #
    # * *Public events* might be service events that are not specific to an
    #   Amazon Web Services account. For example, if there is an issue with
    #   an Amazon Web Services Region, Health provides information about the
    #   event, even if you don't use services or resources in that Region.
    #
    # * *Account-specific* events are specific to either your Amazon Web
    #   Services account or an account in your organization. For example, if
    #   there's an issue with Amazon Elastic Compute Cloud in a Region that
    #   you use, Health provides information about the event and the
    #   affected resources in the account.
    #
    # You can determine if an event is public or account-specific by using
    # the `eventScopeCode` parameter. For more information, see
    # [eventScopeCode][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html#AWSHealth-Type-Event-eventScopeCode
    #
    # @!attribute [rw] arn
    #   The unique identifier for the event. The event ARN has the
    #   `arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID
    #   ` format.
    #
    #   For example, an event ARN might look like the following:
    #
    #   `arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456`
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The Amazon Web Services service that is affected by the event. For
    #   example, `EC2`, `RDS`.
    #   @return [String]
    #
    # @!attribute [rw] event_type_code
    #   The unique identifier for the event type. The format is
    #   `AWS_SERVICE_DESCRIPTION `; for example,
    #   `AWS_EC2_SYSTEM_MAINTENANCE_EVENT`.
    #   @return [String]
    #
    # @!attribute [rw] event_type_category
    #   A list of event type category codes. Possible values are `issue`,
    #   `accountNotification`, or `scheduledChange`. Currently, the
    #   `investigation` value isn't supported at this time.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region name of the event.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Amazon Web Services Availability Zone of the event. For example,
    #   us-east-1a.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The date and time that the event began.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time that the event ended.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The most recent date and time that the event was updated.
    #   @return [Time]
    #
    # @!attribute [rw] status_code
    #   The most recent status of the event. Possible values are `open`,
    #   `closed`, and `upcoming`.
    #   @return [String]
    #
    # @!attribute [rw] event_scope_code
    #   This parameter specifies if the Health event is a public Amazon Web
    #   Services service event or an account-specific event.
    #
    #   * If the `eventScopeCode` value is `PUBLIC`, then the
    #     `affectedAccounts` value is always empty.
    #
    #   * If the `eventScopeCode` value is `ACCOUNT_SPECIFIC`, then the
    #     `affectedAccounts` value lists the affected Amazon Web Services
    #     accounts in your organization. For example, if an event affects a
    #     service such as Amazon Elastic Compute Cloud and you have Amazon
    #     Web Services accounts that use that service, those account IDs
    #     appear in the response.
    #
    #   * If the `eventScopeCode` value is `NONE`, then the `eventArn` that
    #     you specified in the request is invalid or doesn't exist.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/Event AWS API Documentation
    #
    class Event < Struct.new(
      :arn,
      :service,
      :event_type_code,
      :event_type_category,
      :region,
      :availability_zone,
      :start_time,
      :end_time,
      :last_updated_time,
      :status_code,
      :event_scope_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The values used to filter results from the
    # [DescribeEventDetailsForOrganization][1] and
    # [DescribeAffectedEntitiesForOrganization][2] operations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html
    # [2]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html
    #
    # @!attribute [rw] event_arn
    #   The unique identifier for the event. The event ARN has the
    #   `arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID
    #   ` format.
    #
    #   For example, an event ARN might look like the following:
    #
    #   `arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456`
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The 12-digit Amazon Web Services account numbers that contains the
    #   affected entities.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/EventAccountFilter AWS API Documentation
    #
    class EventAccountFilter < Struct.new(
      :event_arn,
      :aws_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of events of each issue type. Returned by the
    # [DescribeEventAggregates][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventAggregates.html
    #
    # @!attribute [rw] aggregate_value
    #   The issue type for the associated count.
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The number of events of the associated issue type.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/EventAggregate AWS API Documentation
    #
    class EventAggregate < Struct.new(
      :aggregate_value,
      :count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The detailed description of the event. Included in the information
    # returned by the [DescribeEventDetails][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html
    #
    # @!attribute [rw] latest_description
    #   The most recent description of the event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/EventDescription AWS API Documentation
    #
    class EventDescription < Struct.new(
      :latest_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about an event. A combination of an [Event][1]
    # object, an [EventDescription][2] object, and additional metadata about
    # the event. Returned by the [DescribeEventDetails][3] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html
    # [2]: https://docs.aws.amazon.com/health/latest/APIReference/API_EventDescription.html
    # [3]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html
    #
    # @!attribute [rw] event
    #   Summary information about the event.
    #   @return [Types::Event]
    #
    # @!attribute [rw] event_description
    #   The most recent description of the event.
    #   @return [Types::EventDescription]
    #
    # @!attribute [rw] event_metadata
    #   Additional metadata about the event.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/EventDetails AWS API Documentation
    #
    class EventDetails < Struct.new(
      :event,
      :event_description,
      :event_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error information returned when a [DescribeEventDetails][1] operation
    # can't find a specified event.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html
    #
    # @!attribute [rw] event_arn
    #   The unique identifier for the event. The event ARN has the
    #   `arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID
    #   ` format.
    #
    #   For example, an event ARN might look like the following:
    #
    #   `arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456`
    #   @return [String]
    #
    # @!attribute [rw] error_name
    #   The name of the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A message that describes the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/EventDetailsErrorItem AWS API Documentation
    #
    class EventDetailsErrorItem < Struct.new(
      :event_arn,
      :error_name,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The values to use to filter results from the [DescribeEvents][1] and
    # [DescribeEventAggregates][2] operations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEvents.html
    # [2]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventAggregates.html
    #
    # @!attribute [rw] event_arns
    #   A list of event ARNs (unique identifiers). For example:
    #   `"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456",
    #   "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"`
    #   @return [Array<String>]
    #
    # @!attribute [rw] event_type_codes
    #   A list of unique identifiers for event types. For example,
    #   `"AWS_EC2_SYSTEM_MAINTENANCE_EVENT","AWS_RDS_MAINTENANCE_SCHEDULED".`
    #   @return [Array<String>]
    #
    # @!attribute [rw] services
    #   The Amazon Web Services services associated with the event. For
    #   example, `EC2`, `RDS`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] regions
    #   A list of Amazon Web Services Regions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] availability_zones
    #   A list of Amazon Web Services Availability Zones.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_times
    #   A list of dates and times that the event began.
    #   @return [Array<Types::DateTimeRange>]
    #
    # @!attribute [rw] end_times
    #   A list of dates and times that the event ended.
    #   @return [Array<Types::DateTimeRange>]
    #
    # @!attribute [rw] last_updated_times
    #   A list of dates and times that the event was last updated.
    #   @return [Array<Types::DateTimeRange>]
    #
    # @!attribute [rw] entity_arns
    #   A list of entity ARNs (unique identifiers).
    #   @return [Array<String>]
    #
    # @!attribute [rw] entity_values
    #   A list of entity identifiers, such as EC2 instance IDs
    #   (`i-34ab692e`) or EBS volumes (`vol-426ab23e`).
    #   @return [Array<String>]
    #
    # @!attribute [rw] event_type_categories
    #   A list of event type category codes. Possible values are `issue`,
    #   `accountNotification`, or `scheduledChange`. Currently, the
    #   `investigation` value isn't supported at this time.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A map of entity tags attached to the affected entity.
    #
    #   <note markdown="1"> Currently, the `tags` property isn't supported.
    #
    #    </note>
    #   @return [Array<Hash<String,String>>]
    #
    # @!attribute [rw] event_status_codes
    #   A list of event status codes.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/EventFilter AWS API Documentation
    #
    class EventFilter < Struct.new(
      :event_arns,
      :event_type_codes,
      :services,
      :regions,
      :availability_zones,
      :start_times,
      :end_times,
      :last_updated_times,
      :entity_arns,
      :entity_values,
      :event_type_categories,
      :tags,
      :event_status_codes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the metadata about a type of event that is reported by
    # Health. The `EventType` shows the category, service, and the event
    # type code of the event. For example, an `issue` might be the category,
    # `EC2` the service, and `AWS_EC2_SYSTEM_MAINTENANCE_EVENT` the event
    # type code.
    #
    # You can use the [DescribeEventTypes][1] API operation to return this
    # information about an event.
    #
    # You can also use the Amazon CloudWatch Events console to create a rule
    # so that you can get notified or take action when Health delivers a
    # specific event to your Amazon Web Services account. For more
    # information, see [Monitor for Health events with Amazon CloudWatch
    # Events][2] in the *Health User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventTypes.html
    # [2]: https://docs.aws.amazon.com/health/latest/ug/cloudwatch-events-health.html
    #
    # @!attribute [rw] service
    #   The Amazon Web Services service that is affected by the event. For
    #   example, `EC2`, `RDS`.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The unique identifier for the event type. The format is
    #   `AWS_SERVICE_DESCRIPTION `; for example,
    #   `AWS_EC2_SYSTEM_MAINTENANCE_EVENT`.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   A list of event type category codes. Possible values are `issue`,
    #   `accountNotification`, or `scheduledChange`. Currently, the
    #   `investigation` value isn't supported at this time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/EventType AWS API Documentation
    #
    class EventType < Struct.new(
      :service,
      :code,
      :category)
      SENSITIVE = []
      include Aws::Structure
    end

    # The values to use to filter results from the [DescribeEventTypes][1]
    # operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventTypes.html
    #
    # @!attribute [rw] event_type_codes
    #   A list of event type codes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] services
    #   The Amazon Web Services services associated with the event. For
    #   example, `EC2`, `RDS`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] event_type_categories
    #   A list of event type category codes. Possible values are `issue`,
    #   `accountNotification`, or `scheduledChange`. Currently, the
    #   `investigation` value isn't supported at this time.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/EventTypeFilter AWS API Documentation
    #
    class EventTypeFilter < Struct.new(
      :event_type_codes,
      :services,
      :event_type_categories)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified pagination token (`nextToken`) is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/InvalidPaginationToken AWS API Documentation
    #
    class InvalidPaginationToken < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error information returned when a
    # [DescribeAffectedEntitiesForOrganization][1] operation can't find or
    # process a specific entity.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html
    #
    # @!attribute [rw] aws_account_id
    #   The 12-digit Amazon Web Services account numbers that contains the
    #   affected entities.
    #   @return [String]
    #
    # @!attribute [rw] event_arn
    #   The unique identifier for the event. The event ARN has the
    #   `arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID
    #   ` format.
    #
    #   For example, an event ARN might look like the following:
    #
    #   `arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456`
    #   @return [String]
    #
    # @!attribute [rw] error_name
    #   The name of the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A message that describes the error. Follow the error message and
    #   retry your request.
    #
    #   For example, the `InvalidAccountInputError` error message appears if
    #   you call the `DescribeAffectedEntitiesForOrganization` operation and
    #   specify the `AccountSpecific` value for the `EventScopeCode`
    #   parameter, but don't specify an Amazon Web Services account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/OrganizationAffectedEntitiesErrorItem AWS API Documentation
    #
    class OrganizationAffectedEntitiesErrorItem < Struct.new(
      :aws_account_id,
      :event_arn,
      :error_name,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The aggregate results of entities affected by the specified event in
    # your organization. The results are aggregated by the entity status
    # codes for the specified set of accountsIDs.
    #
    # @!attribute [rw] event_arn
    #   A list of event ARNs (unique identifiers). For example:
    #   `"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456",
    #   "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"`
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The number of entities for the organization that match the filter
    #   criteria for the specified events.
    #   @return [Integer]
    #
    # @!attribute [rw] statuses
    #   The number of affected entities aggregated by the entitiy status
    #   codes.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] accounts
    #   A list of entity aggregates for each of the specified accounts in
    #   your organization that are affected by a specific event. If there
    #   are no `awsAccountIds` provided in the request, this field will be
    #   empty in the response.
    #   @return [Array<Types::AccountEntityAggregate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/OrganizationEntityAggregate AWS API Documentation
    #
    class OrganizationEntityAggregate < Struct.new(
      :event_arn,
      :count,
      :statuses,
      :accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about an event, returned by the
    # [DescribeEventsForOrganization][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventsForOrganization.html
    #
    # @!attribute [rw] arn
    #   The unique identifier for the event. The event ARN has the
    #   `arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID
    #   ` format.
    #
    #   For example, an event ARN might look like the following:
    #
    #   `arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456`
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The Amazon Web Services service that is affected by the event, such
    #   as EC2 and RDS.
    #   @return [String]
    #
    # @!attribute [rw] event_type_code
    #   The unique identifier for the event type. The format is
    #   `AWS_SERVICE_DESCRIPTION`. For example,
    #   `AWS_EC2_SYSTEM_MAINTENANCE_EVENT`.
    #   @return [String]
    #
    # @!attribute [rw] event_type_category
    #   A list of event type category codes. Possible values are `issue`,
    #   `accountNotification`, or `scheduledChange`. Currently, the
    #   `investigation` value isn't supported at this time.
    #   @return [String]
    #
    # @!attribute [rw] event_scope_code
    #   This parameter specifies if the Health event is a public Amazon Web
    #   Services service event or an account-specific event.
    #
    #   * If the `eventScopeCode` value is `PUBLIC`, then the
    #     `affectedAccounts` value is always empty.
    #
    #   * If the `eventScopeCode` value is `ACCOUNT_SPECIFIC`, then the
    #     `affectedAccounts` value lists the affected Amazon Web Services
    #     accounts in your organization. For example, if an event affects a
    #     service such as Amazon Elastic Compute Cloud and you have Amazon
    #     Web Services accounts that use that service, those account IDs
    #     appear in the response.
    #
    #   * If the `eventScopeCode` value is `NONE`, then the `eventArn` that
    #     you specified in the request is invalid or doesn't exist.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region name of the event.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The date and time that the event began.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time that the event ended.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The most recent date and time that the event was updated.
    #   @return [Time]
    #
    # @!attribute [rw] status_code
    #   The most recent status of the event. Possible values are `open`,
    #   `closed`, and `upcoming`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/OrganizationEvent AWS API Documentation
    #
    class OrganizationEvent < Struct.new(
      :arn,
      :service,
      :event_type_code,
      :event_type_category,
      :event_scope_code,
      :region,
      :start_time,
      :end_time,
      :last_updated_time,
      :status_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about an event. A combination of an [Event][1]
    # object, an [EventDescription][2] object, and additional metadata about
    # the event. Returned by the [DescribeEventDetailsForOrganization][3]
    # operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html
    # [2]: https://docs.aws.amazon.com/health/latest/APIReference/API_EventDescription.html
    # [3]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html
    #
    # @!attribute [rw] aws_account_id
    #   The 12-digit Amazon Web Services account numbers that contains the
    #   affected entities.
    #   @return [String]
    #
    # @!attribute [rw] event
    #   Summary information about an Health event.
    #
    #   Health events can be public or account-specific:
    #
    #   * *Public events* might be service events that are not specific to
    #     an Amazon Web Services account. For example, if there is an issue
    #     with an Amazon Web Services Region, Health provides information
    #     about the event, even if you don't use services or resources in
    #     that Region.
    #
    #   * *Account-specific* events are specific to either your Amazon Web
    #     Services account or an account in your organization. For example,
    #     if there's an issue with Amazon Elastic Compute Cloud in a Region
    #     that you use, Health provides information about the event and the
    #     affected resources in the account.
    #
    #   You can determine if an event is public or account-specific by using
    #   the `eventScopeCode` parameter. For more information, see
    #   [eventScopeCode][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html#AWSHealth-Type-Event-eventScopeCode
    #   @return [Types::Event]
    #
    # @!attribute [rw] event_description
    #   The detailed description of the event. Included in the information
    #   returned by the [DescribeEventDetails][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html
    #   @return [Types::EventDescription]
    #
    # @!attribute [rw] event_metadata
    #   Additional metadata about the event.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/OrganizationEventDetails AWS API Documentation
    #
    class OrganizationEventDetails < Struct.new(
      :aws_account_id,
      :event,
      :event_description,
      :event_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error information returned when a
    # [DescribeEventDetailsForOrganization][1] operation can't find a
    # specified event.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html
    #
    # @!attribute [rw] aws_account_id
    #   Error information returned when a
    #   [DescribeEventDetailsForOrganization][1] operation can't find a
    #   specified event.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html
    #   @return [String]
    #
    # @!attribute [rw] event_arn
    #   The unique identifier for the event. The event ARN has the
    #   `arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID
    #   ` format.
    #
    #   For example, an event ARN might look like the following:
    #
    #   `arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456`
    #   @return [String]
    #
    # @!attribute [rw] error_name
    #   The name of the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A message that describes the error.
    #
    #   If you call the `DescribeEventDetailsForOrganization` operation and
    #   receive one of the following errors, follow the recommendations in
    #   the message:
    #
    #   * We couldn't find a public event that matches your request. To
    #     find an event that is account specific, you must enter an Amazon
    #     Web Services account ID in the request.
    #
    #   * We couldn't find an account specific event for the specified
    #     Amazon Web Services account. To find an event that is public, you
    #     must enter a null value for the Amazon Web Services account ID in
    #     the request.
    #
    #   * Your Amazon Web Services account doesn't include the Amazon Web
    #     Services Support plan required to use the Health API. You must
    #     have either a Business, Enterprise On-Ramp, or Enterprise Support
    #     plan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/OrganizationEventDetailsErrorItem AWS API Documentation
    #
    class OrganizationEventDetailsErrorItem < Struct.new(
      :aws_account_id,
      :event_arn,
      :error_name,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The values to filter results from the
    # [DescribeEventsForOrganization][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventsForOrganization.html
    #
    # @!attribute [rw] event_type_codes
    #   A list of unique identifiers for event types. For example,
    #   `"AWS_EC2_SYSTEM_MAINTENANCE_EVENT","AWS_RDS_MAINTENANCE_SCHEDULED".`
    #   @return [Array<String>]
    #
    # @!attribute [rw] aws_account_ids
    #   A list of 12-digit Amazon Web Services account numbers that contains
    #   the affected entities.
    #   @return [Array<String>]
    #
    # @!attribute [rw] services
    #   The Amazon Web Services services associated with the event. For
    #   example, `EC2`, `RDS`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] regions
    #   A list of Amazon Web Services Regions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time
    #   A range of dates and times that is used by the [EventFilter][1] and
    #   [EntityFilter][2] objects. If `from` is set and `to` is set: match
    #   items where the timestamp (`startTime`, `endTime`, or
    #   `lastUpdatedTime`) is between `from` and `to` inclusive. If `from`
    #   is set and `to` is not set: match items where the timestamp value is
    #   equal to or after `from`. If `from` is not set and `to` is set:
    #   match items where the timestamp value is equal to or before `to`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_EventFilter.html
    #   [2]: https://docs.aws.amazon.com/health/latest/APIReference/API_EntityFilter.html
    #   @return [Types::DateTimeRange]
    #
    # @!attribute [rw] end_time
    #   A range of dates and times that is used by the [EventFilter][1] and
    #   [EntityFilter][2] objects. If `from` is set and `to` is set: match
    #   items where the timestamp (`startTime`, `endTime`, or
    #   `lastUpdatedTime`) is between `from` and `to` inclusive. If `from`
    #   is set and `to` is not set: match items where the timestamp value is
    #   equal to or after `from`. If `from` is not set and `to` is set:
    #   match items where the timestamp value is equal to or before `to`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_EventFilter.html
    #   [2]: https://docs.aws.amazon.com/health/latest/APIReference/API_EntityFilter.html
    #   @return [Types::DateTimeRange]
    #
    # @!attribute [rw] last_updated_time
    #   A range of dates and times that is used by the [EventFilter][1] and
    #   [EntityFilter][2] objects. If `from` is set and `to` is set: match
    #   items where the timestamp (`startTime`, `endTime`, or
    #   `lastUpdatedTime`) is between `from` and `to` inclusive. If `from`
    #   is set and `to` is not set: match items where the timestamp value is
    #   equal to or after `from`. If `from` is not set and `to` is set:
    #   match items where the timestamp value is equal to or before `to`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_EventFilter.html
    #   [2]: https://docs.aws.amazon.com/health/latest/APIReference/API_EntityFilter.html
    #   @return [Types::DateTimeRange]
    #
    # @!attribute [rw] entity_arns
    #   A list of entity ARNs (unique identifiers).
    #   @return [Array<String>]
    #
    # @!attribute [rw] entity_values
    #   A list of entity identifiers, such as EC2 instance IDs (i-34ab692e)
    #   or EBS volumes (vol-426ab23e).
    #   @return [Array<String>]
    #
    # @!attribute [rw] event_type_categories
    #   A list of event type category codes. Possible values are `issue`,
    #   `accountNotification`, or `scheduledChange`. Currently, the
    #   `investigation` value isn't supported at this time.
    #   @return [Array<String>]
    #
    # @!attribute [rw] event_status_codes
    #   A list of event status codes.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/OrganizationEventFilter AWS API Documentation
    #
    class OrganizationEventFilter < Struct.new(
      :event_type_codes,
      :aws_account_ids,
      :services,
      :regions,
      :start_time,
      :end_time,
      :last_updated_time,
      :entity_arns,
      :entity_values,
      :event_type_categories,
      :event_status_codes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified locale is not supported.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/UnsupportedLocale AWS API Documentation
    #
    class UnsupportedLocale < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

