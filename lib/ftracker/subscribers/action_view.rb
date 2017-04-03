# frozen_string_literal: true

module Ftracker
  module Subscribers
    class ActionView < ::Ftracker::Subscriber
      attach_to :action_view

      def render_template(event); end

      def render_partial(event); end

      def render_collection(event); end
    end
  end
end
