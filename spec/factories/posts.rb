FactoryBot.define do
  factory :post do
    caption "tasty tasty taco"
    image Rack::Test::UploadedFile.new(Rails.root + 'spec/files/images/taco.jpg', 'image/jpg')
  end
end
