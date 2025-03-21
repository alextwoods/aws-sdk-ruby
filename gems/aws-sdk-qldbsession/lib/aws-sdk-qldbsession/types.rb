# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::QLDBSession
  module Types

    # Contains the details of the transaction to abort.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-session-2019-07-11/AbortTransactionRequest AWS API Documentation
    #
    class AbortTransactionRequest < Aws::EmptyStructure; end

    # Contains the details of the aborted transaction.
    #
    # @!attribute [rw] timing_information
    #   Contains server-side performance information for the command.
    #   @return [Types::TimingInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-session-2019-07-11/AbortTransactionResult AWS API Documentation
    #
    class AbortTransactionResult < Struct.new(
      :timing_information)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returned if the request is malformed or contains an error such as an
    # invalid parameter value or a missing required parameter.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-session-2019-07-11/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returned when the request exceeds the processing capacity of the
    # ledger.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-session-2019-07-11/CapacityExceededException AWS API Documentation
    #
    class CapacityExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details of the transaction to commit.
    #
    # @!attribute [rw] transaction_id
    #   Specifies the transaction ID of the transaction to commit.
    #   @return [String]
    #
    # @!attribute [rw] commit_digest
    #   Specifies the commit digest for the transaction to commit. For every
    #   active transaction, the commit digest must be passed. QLDB validates
    #   `CommitDigest` and rejects the commit with an error if the digest
    #   computed on the client does not match the digest computed by QLDB.
    #
    #   The purpose of the `CommitDigest` parameter is to ensure that QLDB
    #   commits a transaction if and only if the server has processed the
    #   exact set of statements sent by the client, in the same order that
    #   client sent them, and with no duplicates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-session-2019-07-11/CommitTransactionRequest AWS API Documentation
    #
    class CommitTransactionRequest < Struct.new(
      :transaction_id,
      :commit_digest)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details of the committed transaction.
    #
    # @!attribute [rw] transaction_id
    #   The transaction ID of the committed transaction.
    #   @return [String]
    #
    # @!attribute [rw] commit_digest
    #   The commit digest of the committed transaction.
    #   @return [String]
    #
    # @!attribute [rw] timing_information
    #   Contains server-side performance information for the command.
    #   @return [Types::TimingInformation]
    #
    # @!attribute [rw] consumed_i_os
    #   Contains metrics about the number of I/O requests that were
    #   consumed.
    #   @return [Types::IOUsage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-session-2019-07-11/CommitTransactionResult AWS API Documentation
    #
    class CommitTransactionResult < Struct.new(
      :transaction_id,
      :commit_digest,
      :timing_information,
      :consumed_i_os)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a request to end the session.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-session-2019-07-11/EndSessionRequest AWS API Documentation
    #
    class EndSessionRequest < Aws::EmptyStructure; end

    # Contains the details of the ended session.
    #
    # @!attribute [rw] timing_information
    #   Contains server-side performance information for the command.
    #   @return [Types::TimingInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-session-2019-07-11/EndSessionResult AWS API Documentation
    #
    class EndSessionResult < Struct.new(
      :timing_information)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a request to execute a statement.
    #
    # @!attribute [rw] transaction_id
    #   Specifies the transaction ID of the request.
    #   @return [String]
    #
    # @!attribute [rw] statement
    #   Specifies the statement of the request.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Specifies the parameters for the parameterized statement in the
    #   request.
    #   @return [Array<Types::ValueHolder>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-session-2019-07-11/ExecuteStatementRequest AWS API Documentation
    #
    class ExecuteStatementRequest < Struct.new(
      :transaction_id,
      :statement,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details of the executed statement.
    #
    # @!attribute [rw] first_page
    #   Contains the details of the first fetched page.
    #   @return [Types::Page]
    #
    # @!attribute [rw] timing_information
    #   Contains server-side performance information for the command.
    #   @return [Types::TimingInformation]
    #
    # @!attribute [rw] consumed_i_os
    #   Contains metrics about the number of I/O requests that were
    #   consumed.
    #   @return [Types::IOUsage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-session-2019-07-11/ExecuteStatementResult AWS API Documentation
    #
    class ExecuteStatementResult < Struct.new(
      :first_page,
      :timing_information,
      :consumed_i_os)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the details of the page to be fetched.
    #
    # @!attribute [rw] transaction_id
    #   Specifies the transaction ID of the page to be fetched.
    #   @return [String]
    #
    # @!attribute [rw] next_page_token
    #   Specifies the next page token of the page to be fetched.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-session-2019-07-11/FetchPageRequest AWS API Documentation
    #
    class FetchPageRequest < Struct.new(
      :transaction_id,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the page that was fetched.
    #
    # @!attribute [rw] page
    #   Contains details of the fetched page.
    #   @return [Types::Page]
    #
    # @!attribute [rw] timing_information
    #   Contains server-side performance information for the command.
    #   @return [Types::TimingInformation]
    #
    # @!attribute [rw] consumed_i_os
    #   Contains metrics about the number of I/O requests that were
    #   consumed.
    #   @return [Types::IOUsage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-session-2019-07-11/FetchPageResult AWS API Documentation
    #
    class FetchPageResult < Struct.new(
      :page,
      :timing_information,
      :consumed_i_os)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains I/O usage metrics for a command that was invoked.
    #
    # @!attribute [rw] read_i_os
    #   The number of read I/O requests that the command made.
    #   @return [Integer]
    #
    # @!attribute [rw] write_i_os
    #   The number of write I/O requests that the command made.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-session-2019-07-11/IOUsage AWS API Documentation
    #
    class IOUsage < Struct.new(
      :read_i_os,
      :write_i_os)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returned if the session doesn't exist anymore because it timed out or
    # expired.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-session-2019-07-11/InvalidSessionException AWS API Documentation
    #
    class InvalidSessionException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returned if a resource limit such as number of active sessions is
    # exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-session-2019-07-11/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returned when a transaction cannot be written to the journal due to a
    # failure in the verification phase of *optimistic concurrency control*
    # (OCC).
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-session-2019-07-11/OccConflictException AWS API Documentation
    #
    class OccConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details of the fetched page.
    #
    # @!attribute [rw] values
    #   A structure that contains values in multiple encoding formats.
    #   @return [Array<Types::ValueHolder>]
    #
    # @!attribute [rw] next_page_token
    #   The token of the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-session-2019-07-11/Page AWS API Documentation
    #
    class Page < Struct.new(
      :values,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returned when the rate of requests exceeds the allowed throughput.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-session-2019-07-11/RateExceededException AWS API Documentation
    #
    class RateExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_token
    #   Specifies the session token for the current command. A session token
    #   is constant throughout the life of the session.
    #
    #   To obtain a session token, run the `StartSession` command. This
    #   `SessionToken` is required for every subsequent command that is
    #   issued during the current session.
    #   @return [String]
    #
    # @!attribute [rw] start_session
    #   Command to start a new session. A session token is obtained as part
    #   of the response.
    #   @return [Types::StartSessionRequest]
    #
    # @!attribute [rw] start_transaction
    #   Command to start a new transaction.
    #   @return [Types::StartTransactionRequest]
    #
    # @!attribute [rw] end_session
    #   Command to end the current session.
    #   @return [Types::EndSessionRequest]
    #
    # @!attribute [rw] commit_transaction
    #   Command to commit the specified transaction.
    #   @return [Types::CommitTransactionRequest]
    #
    # @!attribute [rw] abort_transaction
    #   Command to abort the current transaction.
    #   @return [Types::AbortTransactionRequest]
    #
    # @!attribute [rw] execute_statement
    #   Command to execute a statement in the specified transaction.
    #   @return [Types::ExecuteStatementRequest]
    #
    # @!attribute [rw] fetch_page
    #   Command to fetch a page.
    #   @return [Types::FetchPageRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-session-2019-07-11/SendCommandRequest AWS API Documentation
    #
    class SendCommandRequest < Struct.new(
      :session_token,
      :start_session,
      :start_transaction,
      :end_session,
      :commit_transaction,
      :abort_transaction,
      :execute_statement,
      :fetch_page)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] start_session
    #   Contains the details of the started session that includes a session
    #   token. This `SessionToken` is required for every subsequent command
    #   that is issued during the current session.
    #   @return [Types::StartSessionResult]
    #
    # @!attribute [rw] start_transaction
    #   Contains the details of the started transaction.
    #   @return [Types::StartTransactionResult]
    #
    # @!attribute [rw] end_session
    #   Contains the details of the ended session.
    #   @return [Types::EndSessionResult]
    #
    # @!attribute [rw] commit_transaction
    #   Contains the details of the committed transaction.
    #   @return [Types::CommitTransactionResult]
    #
    # @!attribute [rw] abort_transaction
    #   Contains the details of the aborted transaction.
    #   @return [Types::AbortTransactionResult]
    #
    # @!attribute [rw] execute_statement
    #   Contains the details of the executed statement.
    #   @return [Types::ExecuteStatementResult]
    #
    # @!attribute [rw] fetch_page
    #   Contains the details of the fetched page.
    #   @return [Types::FetchPageResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-session-2019-07-11/SendCommandResult AWS API Documentation
    #
    class SendCommandResult < Struct.new(
      :start_session,
      :start_transaction,
      :end_session,
      :commit_transaction,
      :abort_transaction,
      :execute_statement,
      :fetch_page)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a request to start a new session.
    #
    # @!attribute [rw] ledger_name
    #   The name of the ledger to start a new session against.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-session-2019-07-11/StartSessionRequest AWS API Documentation
    #
    class StartSessionRequest < Struct.new(
      :ledger_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details of the started session.
    #
    # @!attribute [rw] session_token
    #   Session token of the started session. This `SessionToken` is
    #   required for every subsequent command that is issued during the
    #   current session.
    #   @return [String]
    #
    # @!attribute [rw] timing_information
    #   Contains server-side performance information for the command.
    #   @return [Types::TimingInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-session-2019-07-11/StartSessionResult AWS API Documentation
    #
    class StartSessionResult < Struct.new(
      :session_token,
      :timing_information)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a request to start a transaction.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-session-2019-07-11/StartTransactionRequest AWS API Documentation
    #
    class StartTransactionRequest < Aws::EmptyStructure; end

    # Contains the details of the started transaction.
    #
    # @!attribute [rw] transaction_id
    #   The transaction ID of the started transaction.
    #   @return [String]
    #
    # @!attribute [rw] timing_information
    #   Contains server-side performance information for the command.
    #   @return [Types::TimingInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-session-2019-07-11/StartTransactionResult AWS API Documentation
    #
    class StartTransactionResult < Struct.new(
      :transaction_id,
      :timing_information)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains server-side performance information for a command. Amazon
    # QLDB captures timing information between the times when it receives
    # the request and when it sends the corresponding response.
    #
    # @!attribute [rw] processing_time_milliseconds
    #   The amount of time that QLDB spent on processing the command,
    #   measured in milliseconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-session-2019-07-11/TimingInformation AWS API Documentation
    #
    class TimingInformation < Struct.new(
      :processing_time_milliseconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that can contain a value in multiple encoding formats.
    #
    # @!attribute [rw] ion_binary
    #   An Amazon Ion binary value contained in a `ValueHolder` structure.
    #   @return [String]
    #
    # @!attribute [rw] ion_text
    #   An Amazon Ion plaintext value contained in a `ValueHolder`
    #   structure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-session-2019-07-11/ValueHolder AWS API Documentation
    #
    class ValueHolder < Struct.new(
      :ion_binary,
      :ion_text)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

