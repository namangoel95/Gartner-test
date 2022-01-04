require "csv"

class CsvFormatter
  def format(data)
    return "" if data.empty?

    # Todo  - processing data for csv format
    result = data.keys.join(",") + "\n"
    return result += data.values.join(",") + "\n"
  end
end