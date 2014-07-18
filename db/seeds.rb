Category.create(category_id: nil, name: 'Shirts')
  Category.create(category_id: 1, name: 'Dress Shirts')
  Category.create(category_id: 1, name: 'T-Shirts')
  Category.create(category_id: 1, name: 'Polos')
Category.create(category_id: nil, name: 'Pants')
  Category.create(category_id: 5, name: 'Jeans')
  Category.create(category_id: 5, name: 'Dress Pants')
Category.create(category_id: nil, name: 'Underwear')
  Category.create(category_id: 8, name: 'Briefs')
  Category.create(category_id: 8, name: 'Boxer-Briefs')
  Category.create(category_id: 8, name: 'Boxers')
Category.create(category_id: nil, name: 'Shoes')
  Category.create(category_id: 12, name: 'Dress Shoes')
  Category.create(category_id: 12, name: 'Running Shoes')
  Category.create(category_id: 12, name: 'Slippers')
Category.create(category_id: nil, name: 'Accessories')
  Category.create(category_id: 16, name: 'Watches')

Product.create(category_id: 2, name: 'Slim Fit Shirt in Stretch Cotton Poplin', image: '38389881bd.jpg', price: '507.00', manufacturer: 'Emporio Armani', quantity: 1, description: 'Composition: 78% Cotton, 28% Polyamide, 2% Elastane')

Slider.create(title: 'Slider 1', text: 'Forest Trail', image: '1.jpg', link: '/')
Slider.create(title: 'Slider 2', text: 'Moonlit Road', image: '2.jpg', link: '/')
Slider.create(title: 'Slider 3', text: 'Moss-covered Bridge', image: '3.jpg', link: '/')
