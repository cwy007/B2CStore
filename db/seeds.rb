def seed_image(file_name)
  File.open(File.join(Rails.root, "public/images/seed/#{file_name}.jpeg"))
end

User.delete_all
Category.delete_all
Product.delete_all
ProductImage.delete_all

# 新建一个user账户
User.create(
  email: "admin@example.com",
  password: 123456,
  password_confirmation: 123456
)
puts "create an user."

# 初始化类别，商品和商品图片
5.times do |i|
  # 新建5个一级分类
  category = Category.create(
    title: "#{i} " + Faker::Lorem.word
  )
  # 为每个一级分类新建3个二级分类
  3.times do |ii|
    sub_category = category.children.create(
      title: "#{i}.#{ii}" + Faker::Lorem.word
    )
    # 为每个二级分类新建3个商品
    3.times do |iii|
      product = sub_category.products.create(
        title: "#{i}.#{ii}.#{iii} " + Faker::Lorem.word,
        description: Faker::Lorem.paragraph,
        status: ["on", "off"].sample,
        msrp: rand(100..120),
        price: rand(80..100)
      )
      # 为每个商品新建3张图片
      3.times do |iiii|
        product.product_images.create(
          image: seed_image("movies")
        )
      end
    end
  end
end
puts "create faker data for categories, products and product images."
