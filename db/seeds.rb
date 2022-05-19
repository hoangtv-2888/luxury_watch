Category.create(name: "Casio")
Category.create(name: "Gsock")
# Category.create(name: "Heuer")
# Category.create(name: "Rolex")
# Category.create(name: "Omega")

Category.all.pluck(:name, :id).each do |name, id|
  10.times do |n|
    product = Product.create!(name: "#{name} MTP-1302D-7A1VDF#{n+1}",
                  desc: "#{name} thương hiệu đồng hồ uy tín, giúp bạn nổi bật trước đám đông",
                  type: "",
                  material: "",
                  category_id: id)
    if n % 2 == 0
      product.images.attach(io: File.open("app/assets/images/#{name.downcase}11.png"), filename: 'watch', content_type: %w[image/jpeg image/gif image/png image/jpg image/webp])
      product.images.attach(io: File.open("app/assets/images/#{name.downcase}12.png"), filename: 'watch', content_type: %w[image/jpeg image/gif image/png image/jpg image/webp])
      product.images.attach(io: File.open("app/assets/images/#{name.downcase}13.png"), filename: 'watch', content_type: %w[image/jpeg image/gif image/png image/jpg image/webp])
    else
      product.images.attach(io: File.open("app/assets/images/#{name.downcase}21.png"), filename: 'watch', content_type: %w[image/jpeg image/gif image/png image/jpg image/webp])
      product.images.attach(io: File.open("app/assets/images/#{name.downcase}22.png"), filename: 'watch', content_type: %w[image/jpeg image/gif image/png image/jpg image/webp])
      product.images.attach(io: File.open("app/assets/images/#{name.downcase}23.png"), filename: 'watch', content_type: %w[image/jpeg image/gif image/png image/jpg image/webp])  
    end
  end
end

ProductSize.create(size: "Nhỏ", desc: "")
ProductSize.create(size: "Vừa", desc: "")
ProductSize.create(size: "Rộng", desc: "")

ProductColor.create(color: "White", desc: "")
ProductColor.create(color: "Black", desc: "")
ProductColor.create(color: "Red", desc: "")
ProductColor.create(color: "Green", desc: "")


Product.all.pluck(:id).each do |id|
  3.times do |n|
    if id <= 5
      ProductDetail.create(quantity: rand(50..100),
        price: 8_00_000,
        product_id: id,
        product_size_id: ProductSize.pluck(:id).sample,
        product_color_id: ProductColor.pluck(:id).sample)
    elsif id <= 10
      ProductDetail.create(quantity: rand(50..100),
        price: 1_000_000,
        product_id: id,
        product_size_id: ProductSize.pluck(:id).sample,
        product_color_id: ProductColor.pluck(:id).sample)
    elsif id <= 15
      ProductDetail.create(quantity: rand(50..100),
        price: 1_050_000,
        product_id: id,
        product_size_id: ProductSize.pluck(:id).sample,
        product_color_id: ProductColor.pluck(:id).sample)    
    elsif id <= 20
      ProductDetail.create(quantity: rand(50..100),
        price: 1_100_000,
        product_id: id,
        product_size_id: ProductSize.pluck(:id).sample,
        product_color_id: ProductColor.pluck(:id).sample)
    elsif id <= 25
      ProductDetail.create(quantity: rand(50..100),
        price: 1_200_000,
        product_id: id,
        product_size_id: ProductSize.pluck(:id).sample,
        product_color_id: ProductColor.pluck(:id).sample)
    elsif id <= 30
      ProductDetail.create(quantity: rand(50..100),
        price: 2_000_000,
        product_id: id,
        product_size_id: ProductSize.pluck(:id).sample,
        product_color_id: ProductColor.pluck(:id).sample)
    elsif id <= 35
      ProductDetail.create(quantity: rand(50..100),
        price: 2_100_000,
        product_id: id,
        product_size_id: ProductSize.pluck(:id).sample,
        product_color_id: ProductColor.pluck(:id).sample)
    elsif id <= 40
      ProductDetail.create(quantity: rand(50..100),
        price: 3_050_000,
        product_id: id,
        product_size_id: ProductSize.pluck(:id).sample,
        product_color_id: ProductColor.pluck(:id).sample)
    else
    end


  end
end

User.create!(name: "việt hoàng",
            address: "Xuân Hoà, Xuân Trường, Nam Định",
            phone: "0239583958",
            email: "admin@gmail.com",
            password: "123456",
            password_confirmation: "123456",
            confirmed_at: Time.now,
            role: 1)

50.times do |n|
  name = Faker::Name.name
  email = "sss-#{n+1}@railstutorial.org"
  password = "password"
  address = "Xuân Hoà, Xuân Trường, Nam Định"
  phone = "023859835"
  User.create!(name: name,
              address: address,
              phone: phone,
              email: email,
              password: password,
              password_confirmation: password,
              confirmed_at: Time.now,
              role: 0,
              created_at: Time.zone.now - rand(1..7).day)
end

50.times do
  CommentRate.create(content: Faker::Lorem.sentence(word_count: 20),
                     star: rand(3..5),
                     user_id: User.pluck(:id).sample,
                     product_id: Product.pluck(:id).sample)
end

Discount.create!(
  start: Time.zone.now,
  end: Time.now + 10.days,
  percent: 5,
  code: "aaaaa"
)

Discount.create!(
  start: Time.zone.now,
  end: Time.now + 10.days,
  percent: 0,
  code: "00000"
)
20.times do
  order = Order.create!(status: rand(0..4),
                       user_id: User.pluck(:id).sample,
                       user_name_at_order: Faker::Name.name,
                       address_at_order: "quang nam",
                       discount_id: Discount.pluck(:id).sample)
  3.times do |n|
    prdt = ProductDetail.select(:id, :price).sample
    odt = order.order_details.create(quantity: n+1,
                                    price_at_order: prdt.price,
                                    order_id: order.id,
                                    product_detail_id: prdt.id,
                                    created_at: Time.zone.now - rand(1..7).day)

  end
end
