require_relative 'Formatter'

class WeeklyFeedGenerator
  def self.generate(data, type)
    result = Formatter.for(type).format(data)
    puts result
    create_products(result) 
  end
end

def create_products(data)
  data.each do |product|
    # expecting we have product class ready to create the products with their relations
    puts " Name: #{product[:name]}, Categories: #{product[:tags]}, Twitter: #{product[:twitter]}"
    Product.create(name: product[:name], tags: product[:tags], twitter: product[:twitter])
  end
end

# when file type is yaml
def file_generator(type)
  if type.eql?('capterra')
    data = YAML.load_file('feed-products/capterra.yaml')
    WeeklyFeedGenerator.generate(data, 'yaml')
  elsif type.eql?('softwareadvice')
    # When file type is json
    file = File.open "/feed-products/softwareadvice.json"
    data = JSON.load file
    WeeklyFeedGenerator.generate(data, 'json')
  elsif type.eql?('csv')
    # TODO - for csv implementation
  end
end


v1 = ARGV[0]

file_generator(v1)

