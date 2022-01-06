RSpec.describe Formatter do

  describe 'returns file type' do
    it 'when file type is of yaml' do
      Formatter.for('yaml')
      expect(response).to_eq(YamlFormatter)
    end

    it 'when file type is of json' do
      Formatter.for('json')
      expect(response).to_eq(JsonFormatter)
    end

    it 'when file type is of txt' do
      Formatter.for('json')
      expect(response).to_eq('Unsupported type of report')
    end
  end
end