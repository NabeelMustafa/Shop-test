require 'ostruct'

namespace :default_products do
  desc "Generate default products"
  task generate_products: :environment do
    products = [
      {
        name: "candle holder",
        price: "17.02",
        quantity: "10",
        image: "https://static-01.daraz.pk/p/ced75296f7f723604b6c217e86b6bf60.jpg_200x200q80.jpg"
      },
      {
        name: "Original AKG Handsfree Samsung",
        price: "220",
        quantity: "2000",
        image: "https://static-01.daraz.pk/p/1f7e730dab3976f176a6b43271487ce5.png"
      },
      {
        name: "Mobile Phone Microphone Mic 2.0M",
        price: "398",
        quantity: "2",
        image: "https://static-01.daraz.pk/p/1c9e63274ec0ba4cc97f0c512b9fb022.jpg"
      },
    ]
    products.each do |product|
      product = OpenStruct.new(product)
      puts "Creating product ----------------- #{product.name}"
      Product.create!(name: product.name, price: product.price, quantity: product.quantity, image: product.image)
    end
  end

end
