require 'devise_keen/hooks/metrics'

module Devise
  module Models
    module KeenMetrics
      def record_login
        keen = Keen::Client.new(project_id: self.class.keen_project_id,
                                write_key: self.class.keen_write_key)

        keen.publish(self.class.keen_collection. {
          user: {
            id: self.id
          },
          sign_in_time: self.current_sign_in_at
        })
      end
    end
  end
end
