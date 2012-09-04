class Post
  module Extras
    extend ActiveSupport::Concern

    included do
      validates :title, presence: true
    end

    module ClassMethods
      def new_class_method name
        define_singleton_method(name) { name }
      end
    end

    def extra_instance_method
      'foo'
    end

  end
end
