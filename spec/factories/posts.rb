FactoryGirl.define do
  factory :post do
<<<<<<< HEAD
    caption "tasty tasty taco"
    image Rack::Test::UploadedFile.new(Rails.root + 'spec/files/images/taco.jpg', 'image/jpg')
  end
end
=======
    caption "nofilter"
    image Rack::Test::UploadedFile.new(Rails.root + 'spec/files/images/burger.jpg', 'image/jpg')
  end
end
>>>>>>> 2905e72d927fd41518bb7ba52e3d68bf1ffabf98
