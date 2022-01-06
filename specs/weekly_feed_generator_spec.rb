RSpec.describe Generator do

  describe 'import files' do
    it 'creates the products with the yaml file type' do
      mocked_response = JSON.parse File.open("#{Rails.root}/spec/fixtures/files/capterra_spec.yaml").read

      response = WeeklyFeedGenerator.generate(mocked_response, 'yaml')
      expect(response.status).to eq 200
      expect(Product.all.count).to eq 3
    end

    it 'creates the products with the json file type' do
      mocked_response = JSON.parse File.open("#{Rails.root}/spec/fixtures/files/software_advice_spec.json").read

      response = WeeklyFeedGenerator.generate(mocked_response, 'json')    
      expect(response.status).to eq 200  
      expect(Product.all.count).to eq 2
    end
  end
end