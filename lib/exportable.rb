# Exportable
module Exportable
  
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

  module SingletonMethods
    
  end

end
