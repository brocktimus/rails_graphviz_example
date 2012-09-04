module Constants
  extend ActiveSupport::Concern

  included do
  end

  module ClassMethods
    def declare_constants hash
      hash.each_pair do |key, value|
        define_singleton_method("#{key}_id") { value }
        define_singleton_method(key) { find(value) }
      end
    end
  end

end

