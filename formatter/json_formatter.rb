require "json"

class JsonFormatter
  def format(data)
    return "" if data.empty?
    # TODO  - processing data for json format
    return data.to_json
  end
end