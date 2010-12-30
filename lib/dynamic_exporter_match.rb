class DynamicExporterMatch

  attr_reader :exporter

  def self.match(method)
    df_match = self.new(method)
    df_match.finder ? df_match : nil
  end

  def initialize(method)
    case method.to_s
    when /^to_(csv|pdf|html|html)$/
      @exporter = :csv  if $1 == 'csv'
      @exporter = :pdf  if $1 == 'pdf'
      @exporter = :html if $1 == 'html'
      @exporter = :txt  if $1 == 'txt'
    else
      @exporter = nil
    end
  end

  def exporter?
    !@exporter.nil?
  end

end
