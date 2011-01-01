module ExportFormats

  FORMATS = [:csv, :pdf, :txt, :html, :xml, :json]

  def to_csv(*args, &block)
    export(:csv)
  end

  def export(exporter, *args, &block)
    if exporter == :csv
      begin
        # write a check if required gem exists otherwise throw an error
        require 'csv'
      rescue LoadError
        
      end
    end
  end

  # extract options from args and allow for configuration via block params
  # so that specific gem attributes can be applied as in, when using csv
  # we can pass options to faster csv 

  module CSV; end

  module PDF; end
  # include only specific module for the type requested

end
