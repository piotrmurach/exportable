# Exportable
module Exportable
 
  # Generic Exporatble exception class
  class ExportableError < StandardError; end
  # Raised when Exportable cannot data to a given type
  class UnkownType < StandardError; end

  
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    
    def acts_as_exportable(options = {}, &extension)
      return if self.included_modules.include? Exportable

      send :include, Exportable

      extend Exportable::SingletonMethods
    end

  end
  
  # Contains methods available as singleton class methods to
  # any ActiveRecord model that calls <tt>acts_as_exportable</tt>
  module SingletonMethods
    # intercept calls for exporting methods
    def method_missing(method_id, *args, &block)
      method_name = method_id.to_s
      if match = DynamicExporterMatch.match(method_name)
        if matcher.exporter?
          exporter = match.exporter
          
          
        end
      end

      options = args.extract_options!
      
    end
  end

end
