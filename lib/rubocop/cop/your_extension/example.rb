# frozen_string_literal: true

module RuboCop
  module Cop
    module YourExtension
      # Example cop that enforces the use of `#good_method` over `#bad_method`.
      #
      # @example
      #   # bad
      #   bad_method
      #
      #   # good
      #   good_method
      #
      class Example < Base
        MSG = "Use `#good_method` instead of `#bad_method`."
        RESTRICT_ON_SEND = %i[bad_method].freeze

        # @!method bad_method?(node)
        def_node_matcher :bad_method?, <<~PATTERN
          (send nil? :bad_method ...)
        PATTERN

        def on_send(node)
          return unless bad_method?(node)

          add_offense(node)
        end
      end
    end
  end
end
