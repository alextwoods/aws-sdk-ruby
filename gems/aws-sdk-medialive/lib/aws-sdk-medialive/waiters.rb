# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::MediaLive
  # Waiters are utility methods that poll for a particular state to occur
  # on a client. Waiters can fail after a number of attempts at a polling
  # interval defined for the service client.
  #
  # For a list of operations that can be waited for and the
  # client methods called for each operation, see the table below or the
  # {Client#wait_until} field documentation for the {Client}.
  #
  # # Invoking a Waiter
  # To invoke a waiter, call #wait_until on a {Client}. The first parameter
  # is the waiter name, which is specific to the service client and indicates
  # which operation is being waited for. The second parameter is a hash of
  # parameters that are passed to the client method called by the waiter,
  # which varies according to the waiter name.
  #
  # # Wait Failures
  # To catch errors in a waiter, use WaiterFailed,
  # as shown in the following example.
  #
  #     rescue rescue Aws::Waiters::Errors::WaiterFailed => error
  #       puts "failed waiting for instance running: #{error.message}
  #     end
  #
  # # Configuring a Waiter
  # Each waiter has a default polling interval and a maximum number of
  # attempts it will make before returning control to your program.
  # To set these values, use the `max_attempts` and `delay` parameters
  # in your `#wait_until` call.
  # The following example waits for up to 25 seconds, polling every five seconds.
  #
  #     client.wait_until(...) do |w|
  #       w.max_attempts = 5
  #       w.delay = 5
  #     end
  #
  # To disable wait failures, set the value of either of these parameters
  # to `nil`.
  #
  # # Extending a Waiter
  # To modify the behavior of waiters, you can register callbacks that are
  # triggered before each polling attempt and before waiting.
  #
  # The following example implements an exponential backoff in a waiter
  # by doubling the amount of time to wait on every attempt.
  #
  #     client.wait_until(...) do |w|
  #       w.interval = 0 # disable normal sleep
  #       w.before_wait do |n, resp|
  #         sleep(n ** 2)
  #       end
  #     end
  #
  # # Available Waiters
  #
  # The following table lists the valid waiter names, the operations they call,
  # and the default `:delay` and `:max_attempts` values.
  #
  # | waiter_name                        | params                                    | :delay   | :max_attempts |
  # | ---------------------------------- | ----------------------------------------- | -------- | ------------- |
  # | channel_created                    | {Client#describe_channel}                 | 3        | 5             |
  # | channel_deleted                    | {Client#describe_channel}                 | 5        | 84            |
  # | channel_placement_group_assigned   | {Client#describe_channel_placement_group} | 3        | 5             |
  # | channel_placement_group_deleted    | {Client#describe_channel_placement_group} | 5        | 20            |
  # | channel_placement_group_unassigned | {Client#describe_channel_placement_group} | 5        | 20            |
  # | channel_running                    | {Client#describe_channel}                 | 5        | 120           |
  # | channel_stopped                    | {Client#describe_channel}                 | 5        | 60            |
  # | cluster_created                    | {Client#describe_cluster}                 | 3        | 5             |
  # | cluster_deleted                    | {Client#describe_cluster}                 | 5        | 20            |
  # | input_attached                     | {Client#describe_input}                   | 5        | 20            |
  # | input_deleted                      | {Client#describe_input}                   | 5        | 20            |
  # | input_detached                     | {Client#describe_input}                   | 5        | 84            |
  # | multiplex_created                  | {Client#describe_multiplex}               | 3        | 5             |
  # | multiplex_deleted                  | {Client#describe_multiplex}               | 5        | 20            |
  # | multiplex_running                  | {Client#describe_multiplex}               | 5        | 120           |
  # | multiplex_stopped                  | {Client#describe_multiplex}               | 5        | 28            |
  # | node_deregistered                  | {Client#describe_node}                    | 5        | 20            |
  # | node_registered                    | {Client#describe_node}                    | 3        | 5             |
  # | signal_map_created                 | {Client#get_signal_map}                   | 5        | 60            |
  # | signal_map_monitor_deleted         | {Client#get_signal_map}                   | 5        | 120           |
  # | signal_map_monitor_deployed        | {Client#get_signal_map}                   | 5        | 120           |
  # | signal_map_updated                 | {Client#get_signal_map}                   | 5        | 60            |
  #
  module Waiters

    # Wait until a channel has been created
    class ChannelCreated

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (5)
      # @option options [Integer] :delay (3)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 5,
          delay: 3,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_channel,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "IDLE"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "CREATING"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 500
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "CREATE_FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_channel)
      # @return (see Client#describe_channel)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a channel has been deleted
    class ChannelDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (84)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 84,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_channel,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "DELETED"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "DELETING"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 500
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_channel)
      # @return (see Client#describe_channel)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until the channel placement group has been assigned
    class ChannelPlacementGroupAssigned

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (5)
      # @option options [Integer] :delay (3)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 5,
          delay: 3,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_channel_placement_group,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "ASSIGNED"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "ASSIGNING"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 500
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_channel_placement_group)
      # @return (see Client#describe_channel_placement_group)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until the channel placement group has been deleted
    class ChannelPlacementGroupDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (20)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 20,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_channel_placement_group,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "DELETED"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "DELETING"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 500
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_channel_placement_group)
      # @return (see Client#describe_channel_placement_group)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until the channel placement group has been unassigned
    class ChannelPlacementGroupUnassigned

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (20)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 20,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_channel_placement_group,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "UNASSIGNED"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "UNASSIGNING"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 500
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_channel_placement_group)
      # @return (see Client#describe_channel_placement_group)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a channel is running
    class ChannelRunning

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (120)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 120,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_channel,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "RUNNING"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "STARTING"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 500
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_channel)
      # @return (see Client#describe_channel)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a channel has is stopped
    class ChannelStopped

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_channel,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "IDLE"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "STOPPING"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 500
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_channel)
      # @return (see Client#describe_channel)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a cluster has been created
    class ClusterCreated

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (5)
      # @option options [Integer] :delay (3)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 5,
          delay: 3,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_cluster,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "ACTIVE"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "CREATING"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 500
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "CREATE_FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_cluster)
      # @return (see Client#describe_cluster)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a cluster has been deleted
    class ClusterDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (20)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 20,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_cluster,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "DELETED"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "DELETING"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 500
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_cluster)
      # @return (see Client#describe_cluster)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until an input has been attached
    class InputAttached

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (20)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 20,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_input,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "ATTACHED"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "DETACHED"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 500
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_input)
      # @return (see Client#describe_input)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until an input has been deleted
    class InputDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (20)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 20,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_input,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "DELETED"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "DELETING"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 500
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_input)
      # @return (see Client#describe_input)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until an input has been detached
    class InputDetached

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (84)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 84,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_input,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "DETACHED"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "CREATING"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "ATTACHED"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 500
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_input)
      # @return (see Client#describe_input)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a multiplex has been created
    class MultiplexCreated

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (5)
      # @option options [Integer] :delay (3)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 5,
          delay: 3,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_multiplex,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "IDLE"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "CREATING"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 500
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "CREATE_FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_multiplex)
      # @return (see Client#describe_multiplex)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a multiplex has been deleted
    class MultiplexDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (20)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 20,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_multiplex,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "DELETED"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "DELETING"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 500
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_multiplex)
      # @return (see Client#describe_multiplex)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a multiplex is running
    class MultiplexRunning

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (120)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 120,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_multiplex,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "RUNNING"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "STARTING"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 500
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_multiplex)
      # @return (see Client#describe_multiplex)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a multiplex has is stopped
    class MultiplexStopped

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (28)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 28,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_multiplex,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "IDLE"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "STOPPING"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 500
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_multiplex)
      # @return (see Client#describe_multiplex)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a node has been deregistered
    class NodeDeregistered

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (20)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 20,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_node,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "DEREGISTERED"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "DEREGISTERING"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "DRAINING"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 500
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_node)
      # @return (see Client#describe_node)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a node has been registered
    class NodeRegistered

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (5)
      # @option options [Integer] :delay (3)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 5,
          delay: 3,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_node,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "ACTIVE"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "REGISTERING"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 404
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "REGISTRATION_FAILED"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 500
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_node)
      # @return (see Client#describe_node)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a signal map has been created
    class SignalMapCreated

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_signal_map,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "success",
                "expected" => "CREATE_COMPLETE"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "CREATE_IN_PROGRESS"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "CREATE_FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_signal_map)
      # @return (see Client#get_signal_map)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a signal map's monitor has been deleted
    class SignalMapMonitorDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (120)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 120,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_signal_map,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "monitor_deployment.status",
                "state" => "success",
                "expected" => "DELETE_COMPLETE"
              },
              {
                "matcher" => "path",
                "argument" => "monitor_deployment.status",
                "state" => "retry",
                "expected" => "DELETE_IN_PROGRESS"
              },
              {
                "matcher" => "path",
                "argument" => "monitor_deployment.status",
                "state" => "failure",
                "expected" => "DELETE_FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_signal_map)
      # @return (see Client#get_signal_map)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a signal map's monitor has been deployed
    class SignalMapMonitorDeployed

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (120)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 120,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_signal_map,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "monitor_deployment.status",
                "state" => "success",
                "expected" => "DRY_RUN_DEPLOYMENT_COMPLETE"
              },
              {
                "matcher" => "path",
                "argument" => "monitor_deployment.status",
                "state" => "success",
                "expected" => "DEPLOYMENT_COMPLETE"
              },
              {
                "matcher" => "path",
                "argument" => "monitor_deployment.status",
                "state" => "retry",
                "expected" => "DRY_RUN_DEPLOYMENT_IN_PROGRESS"
              },
              {
                "matcher" => "path",
                "argument" => "monitor_deployment.status",
                "state" => "retry",
                "expected" => "DEPLOYMENT_IN_PROGRESS"
              },
              {
                "matcher" => "path",
                "argument" => "monitor_deployment.status",
                "state" => "failure",
                "expected" => "DRY_RUN_DEPLOYMENT_FAILED"
              },
              {
                "matcher" => "path",
                "argument" => "monitor_deployment.status",
                "state" => "failure",
                "expected" => "DEPLOYMENT_FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_signal_map)
      # @return (see Client#get_signal_map)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a signal map has been updated
    class SignalMapUpdated

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_signal_map,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "success",
                "expected" => "UPDATE_COMPLETE"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "retry",
                "expected" => "UPDATE_IN_PROGRESS"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "UPDATE_FAILED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "UPDATE_REVERTED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_signal_map)
      # @return (see Client#get_signal_map)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
