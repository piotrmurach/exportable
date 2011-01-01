module ActiveRecord
  module Base
    send :include, Exportable
    #send :include, DynamicExporterMatch
  end
end
