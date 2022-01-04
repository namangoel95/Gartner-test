require 'yaml'

class YamlFormatter
  def format(data)
    return "" if data.empty?
    # TODO  - processing data for Yaml format
    result = data.keys.join("\t") + "\n"
    return result += data.values.join("\t") + "\n"
  end
end