require_relative 'formatter/csv_formatter'
require_relative 'formatter/yaml_formatter'
require_relative 'formatter/json_formatter'

class Formatter
  def self.for(type)
    case type
    when 'csv'
      CsvFormatter.new
    when 'json'
      JsonFormatter.new
    when 'yaml'
      YamlFormatter.new
    else
      raise 'Unsupported type of report'
    end
  end
end