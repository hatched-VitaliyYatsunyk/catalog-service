# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Store.create([
  {
    name:    'West Coast Store',
    address: 'San Francisco'
  },
  {
    name:    'Centrasl Store',
    address: 'Dallas'
  },
  {
    name:    'East Coast Store',
    address: 'New York'
  }
])

Category.create([
  {
    name: 'Fruits',
    code: 'FRUIT',
    store: Store.find_by(name: 'West Coast Store')
  },
  {
    name: 'Vegetables',
    code: 'VEGE',
    store: Store.find_by(name: 'West Coast Store')
  },
  {
    name: 'Diary',
    code: 'DIA',
    store: Store.find_by(name: 'East Coast Store')
  },
  {
    name: 'Bakery',
    code: 'BAKE',
    store: Store.find_by(name: 'East Coast Store')
  }
])

Product.create([
  {
    name:        'Orange',
    description: 'Fruits of orange',
    sku:         'SKU00001',
    vendor:      'Orange gardens',
    category:    Category.find_by(code: 'FRUIT')
  },
  {
      name:        'Apple',
      description: 'Fruits of apple',
      sku:         'SKU00002',
      vendor:      'Green gardens',
      category:    Category.find_by(code: 'FRUIT')
  },
  {
      name:        'Croissant',
      description: 'French croissant',
      sku:         'SKU00003',
      vendor:      'Home Bakery',
      category:    Category.find_by(code: 'BAKE')
  },
  {
      name:        'Buns',
      description: 'Hamburger buns',
      sku:         'SKU00004',
      vendor:      'Home bakery',
      category:    Category.find_by(code: 'BAKE')
  },
])
