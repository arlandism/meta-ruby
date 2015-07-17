module CheckedAttributes

  def self.included(base)
    puts "included"
    base.extend(ClassMethods)
  end

  module ClassMethods
    def attr_checked(name, &block)
      attr_reader name.to_sym
      define_method("#{name}=".to_sym) do |new_value|
        if yield(new_value)
          instance_variable_set("@#{name}".to_sym, new_value)
        else
          raise
        end
      end
    end
  end
end

