import 'package:flutter/material.dart';

import '../model/products.dart';

class ProductService {
  static List<Product> productData =
      productRawData.map((data) => Product.fromJson(data)).toList();
  static List<Product> searchedProductData =
      searchedProductRawData.map((data) => Product.fromJson(data)).toList();
}

var productRawData = [
  {
    'image': [
      'assets/images/black_polo.jpg',
      'assets/images/collection_clothes.jpg',
    ],
    'name': 'Shirts',
    'price': 142,
    'rating': 4.0,
    'description': 'Men`s Short Sleeve-\nCrewneck TShirt.',
    'store_name': 'Nike ',
    'colors': [
      {
        'name': 'black',
        'color': Colors.black,
      },
      {
        'name': 'blueGrey',
        'color': Colors.blueGrey[200],
      },
      {
        'name': 'pink',
        'color': Colors.pink[100],
      },
      {
        'name': 'white',
        'color': Colors.white,
      },
    ],
    'sizes': [
      {
        'size': '36.0',
        'name': '36',
      },
      {
        'size': '37.0',
        'name': '37',
      },
      {
        'size': '38.0',
        'name': '38',
      },
      {
        'size': '42.0',
        'name': '42',
      },
    ],
    'reviews': [
      {
        'photo_url': 'assets/images/nice_sleeve.jpg',
        'name': 'Uchiha Sasuke',
        'review': 'Men`s Short Sleeve-\nCrewneck TShirt.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar2.jpg',
        'name': 'Uzumaki Naruto',
        'review': 'Men`s Short Sleeve-\nCrewneck TShirt.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar3.jpg',
        'name': 'Kurokooo Tetsuya',
        'review': 'Men`s Short Sleeve-\nCrewneck TShirt..',
        'rating': 4.0,
      },
    ]
  },
  // 2
  {
    'image': [
      'assets/images/short_s_collection.jpg',
      'assets/images/nikeblack.jpg',
    ],
    'name': "Nike Blazer Mid77 Vintage",
    'price': 1429000,
    'rating': 4.0,
    'description': 'Men`s Short Sleeve-\nCrewneck TShirt.',
    'store_name': 'Nike Indonesia',
    'colors': [
      {
        'name': 'black',
        'color': Colors.black,
      },
      {
        'name': 'blueGrey',
        'color': Colors.blueGrey[200],
      },
      {
        'name': 'pink',
        'color': Colors.pink[100],
      },
      {
        'name': 'white',
        'color': Colors.white,
      },
    ],
    'sizes': [
      {
        'size': '36.0',
        'name': '36',
      },
      {
        'size': '37.0',
        'name': '37',
      },
      {
        'size': '38.0',
        'name': '38',
      },
      {
        'size': '42.0',
        'name': '42',
      },
    ],
    'reviews': [
      {
        'photo_url': 'assets/images/avatar1.jpg',
        'name': 'Uchiha Sasuke',
        'review': ' Men`s Short Sleeve-\nCrewneck TShirt.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar2.jpg',
        'name': 'Uzumaki Naruto',
        'review': 'Men`s Short Sleeve-\nCrewneck TShirt.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar3.jpg',
        'name': 'Kurokooo Tetsuya',
        'review': 'Men`s Short Sleeve-\nCrewneck TShirt.',
        'rating': 4.0,
      },
    ]
  },

  // 3
  {
    'image': [
      'assets/images/black_polo.jpg',
      'assets/images/cololections.jpg',
    ],
    'name': " Sportswear Swoosh",
    'price': 849000,
    'rating': 4.0,
    'description': 'Men`s Short Sleeve-\nCrewneck TShirt.',
    'store_name': 'Nike Indonesia',
    'colors': [
      {
        'name': 'black',
        'color': Colors.black,
      },
      {
        'name': 'blueGrey',
        'color': Colors.blueGrey[200],
      },
      {
        'name': 'pink',
        'color': Colors.pink[100],
      },
      {
        'name': 'white',
        'color': Colors.white,
      },
    ],
    'sizes': [
      {
        'size': '36.0',
        'name': '36',
      },
      {
        'size': '37.0',
        'name': '37',
      },
      {
        'size': '38.0',
        'name': '38',
      },
      {
        'size': '42.0',
        'name': '42',
      },
    ],
    'reviews': [
      {
        'photo_url': 'assets/images/avatar1.jpg',
        'name': 'Uchiha Sasuke',
        'review': 'Men`s Short Sleeve-\nCrewneck TShirt.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar2.jpg',
        'name': 'Uzumaki Naruto',
        'review': 'Men`s Short Sleeve-\nCrewneck TShirt.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar3.jpg',
        'name': 'Kurokooo Tetsuya',
        'review': 'Men`s Short Sleeve-\nCrewneck TShirt.',
        'rating': 4.0,
      },
    ]
  },
  // 4
  {
    'image': [
      'assets/images/white_t_shirts.jpg',
      'assets/images/nice_sleeve.jpg',
    ],
    'name': "Short T-SHIRT R.Y.V.",
    'price': 1900000,
    'rating': 4.0,
    'description': 'Men`s Short Sleeve-\nCrewneck TShirt.',
    'store_name': 'Adidas Indonesia',
    'colors': [
      {
        'name': 'black',
        'color': Colors.black,
      },
      {
        'name': 'blueGrey',
        'color': Colors.blueGrey[200],
      },
      {
        'name': 'pink',
        'color': Colors.pink[100],
      },
      {
        'name': 'white',
        'color': Colors.white,
      },
    ],
    'sizes': [
      {
        'size': '36.0',
        'name': '36',
      },
      {
        'size': '37.0',
        'name': '37',
      },
      {
        'size': '38.0',
        'name': '38',
      },
      {
        'size': '42.0',
        'name': '42',
      },
    ],
    'reviews': [
      {
        'photo_url': 'assets/images/avatar1.jpg',
        'name': 'Uchiha Sasuke',
        'review': 'Men`s Short Sleeve-\nCrewneck TShirt.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar2.jpg',
        'name': 'Anietimfon Effiong',
        'review': ' Men`s Short Sleeve-\nCrewneck TShirt.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar3.jpg',
        'name': 'Kurokooo Tetsuya',
        'review': 'Men`s Short Sleeve-\nCrewneck TShirt.',
        'rating': 4.0,
      },
    ]
  },
  //5
  {
    'image': [
      'assets/images/black_polo.jpg',
      'assets/images/white_t_shirts.jpg',
    ],
    'name': 'Shirts',
    'price': 1429000,
    'rating': 4.0,
    'description': 'Men`s Short Sleeve-\nCrewneck TShirt.',
    'store_name': 'Nike Indonesia',
    'colors': [
      {
        'name': 'black',
        'color': Colors.black,
      },
      {
        'name': 'blueGrey',
        'color': Colors.blueGrey[200],
      },
      {
        'name': 'pink',
        'color': Colors.pink[100],
      },
      {
        'name': 'white',
        'color': Colors.white,
      },
    ],
    'sizes': [
      {
        'size': '36.0',
        'name': '36',
      },
      {
        'size': '37.0',
        'name': '37',
      },
      {
        'size': '38.0',
        'name': '38',
      },
      {
        'size': '42.0',
        'name': '42',
      },
    ],
    'reviews': [
      {
        'photo_url': 'assets/images/nice_sleeve.jpg',
        'name': 'Uchiha Sasuke',
        'review': 'Men`s Short Sleeve-\nCrewneck TShirt.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar2.jpg',
        'name': 'Uzumaki Naruto',
        'review': 'Men`s Short Sleeve-\nCrewneck TShirt.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar3.jpg',
        'name': 'Kurokooo Tetsuya',
        'review': 'Men`s Short Sleeve-\nCrewneck TShirt..',
        'rating': 4.0,
      },
    ]
  },
  //6
  {
    'image': [
      'assets/images/short_s_collection.jpg',
      'assets/images/collection_clothes.jpg',
    ],
    'name': 'Shirts',
    'price': 1429000,
    'rating': 4.0,
    'description': 'Men`s Short Sleeve-\nCrewneck TShirt.',
    'store_name': 'Nike Indonesia',
    'colors': [
      {
        'name': 'black',
        'color': Colors.black,
      },
      {
        'name': 'blueGrey',
        'color': Colors.blueGrey[200],
      },
      {
        'name': 'pink',
        'color': Colors.pink[100],
      },
      {
        'name': 'white',
        'color': Colors.white,
      },
    ],
    'sizes': [
      {
        'size': '36.0',
        'name': '36',
      },
      {
        'size': '37.0',
        'name': '37',
      },
      {
        'size': '38.0',
        'name': '38',
      },
      {
        'size': '42.0',
        'name': '42',
      },
    ],
    'reviews': [
      {
        'photo_url': 'assets/images/nice_sleeve.jpg',
        'name': 'Uchiha Sasuke',
        'review': 'Men`s Short Sleeve-\nCrewneck TShirt.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar2.jpg',
        'name': 'Uzumaki Naruto',
        'review': 'Men`s Short Sleeve-\nCrewneck TShirt.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar3.jpg',
        'name': 'Kurokooo Tetsuya',
        'review': 'Men`s Short Sleeve-\nCrewneck TShirt..',
        'rating': 4.0,
      },
    ]
  },
];

var searchedProductRawData = [
  {
    'image': [
      'assets/images/search/nice_sleeve.jpg',
      'assets/images/nikegrey.jpg',
    ],
    'name': 'Air Jordan XXXVI SE PF',
    'price': 2729000,
    'rating': 4.0,
    'description': 'Men`s Short Sleeve-\nCrewneck TShirt..',
    'store_name': 'Nike Indonesia',
    'colors': [
      {
        'name': 'black',
        'color': Colors.black,
      },
      {
        'name': 'blueGrey',
        'color': Colors.blueGrey[200],
      },
      {
        'name': 'pink',
        'color': Colors.pink[100],
      },
      {
        'name': 'white',
        'color': Colors.white,
      },
    ],
    'sizes': [
      {
        'size': '36.0',
        'name': '36',
      },
      {
        'size': '37.0',
        'name': '37',
      },
      {
        'size': '38.0',
        'name': '38',
      },
      {
        'size': '42.0',
        'name': '42',
      },
    ],
    'reviews': [
      {
        'photo_url': 'assets/images/avatar1.jpg',
        'name': 'Uchiha Sasuke',
        'review': 'Men`s Short Sleeve-\nCrewneck TShirt.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar2.jpg',
        'name': 'Uzumaki Naruto',
        'review': 'Men`s Short Sleeve-\nCrewneck TShirt.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar3.jpg',
        'name': 'Kurokooo Tetsuya',
        'review': 'Men`s Short Sleeve-\nCrewneck TShirt.',
        'rating': 4.0,
      },
    ]
  },
  // 2
  {
    'image': [
      'assets/images/search/nice_sleeve.jpg',
      'assets/images/nikeblack.jpg',
    ],
    'name': "Air Jordan 1 Retro OG",
    'price': 1749000,
    'rating': 5.0,
    'description': 'Men`s Short Sleeve-\nCrewneck TShirt.',
    'store_name': 'Nike Indonesia',
    'colors': [
      {
        'name': 'black',
        'color': Colors.black,
      },
      {
        'name': 'blueGrey',
        'color': Colors.blueGrey[200],
      },
      {
        'name': 'pink',
        'color': Colors.pink[100],
      },
      {
        'name': 'white',
        'color': Colors.white,
      },
    ],
    'sizes': [
      {
        'size': '36.0',
        'name': '36',
      },
      {
        'size': '37.0',
        'name': '37',
      },
      {
        'size': '38.0',
        'name': '38',
      },
      {
        'size': '42.0',
        'name': '42',
      },
    ],
    'reviews': [
      {
        'photo_url': 'assets/images/avatar1.jpg',
        'name': 'Uchiha Sasuke',
        'review': 'Men`s Short Sleeve-\nCrewneck TShirt.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar2.jpg',
        'name': 'Uzumaki Naruto',
        'review': 'Men`s Short Sleeve-\nCrewneck TShirt.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar3.jpg',
        'name': 'Kurokooo Tetsuya',
        'review': 'Men`s Short Sleeve-\nCrewneck TShirt.',
        'rating': 4.0,
      },
    ]
  },
  // 3

  {
    'image': [
      'assets/images/search/cololections.jpg',
      'assets/images/nikeblack.jpg',
    ],
    'name': "Jordan Point Lane",
    'price': 2099000,
    'rating': 5.0,
    'description': 'Men`s Short Sleeve-\nCrewneck TShirt. ',
    'store_name': 'Nike Indonesia',
    'colors': [
      {
        'name': 'black',
        'color': Colors.black,
      },
      {
        'name': 'blueGrey',
        'color': Colors.blueGrey[200],
      },
      {
        'name': 'pink',
        'color': Colors.pink[100],
      },
      {
        'name': 'white',
        'color': Colors.white,
      },
    ],
    'sizes': [
      {
        'size': '36.0',
        'name': '36',
      },
      {
        'size': '37.0',
        'name': '37',
      },
      {
        'size': '38.0',
        'name': '38',
      },
      {
        'size': '42.0',
        'name': '42',
      },
    ],
    'reviews': [
      {
        'photo_url': 'assets/images/avatar1.jpg',
        'name': 'Uchiha Sasuke',
        'review': 'Men`s Short Sleeve-\nCrewneck TShirt.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar2.jpg',
        'name': 'Uzumaki Naruto',
        'review': 'Men`s Short Sleeve-\nCrewneck TShirt.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar3.jpg',
        'name': 'Kurokooo Tetsuya',
        'review': 'Men`s Short Sleeve-\nCrewneck TShirt.',
        'rating': 4.0,
      },
    ]
  },

  // 4

  {
    'image': [
      'assets/images/search/back_polo.jpg',
      'assets/images/nikeblack.jpg',
    ],
    'name': "Air Jordan 4 Crimson",
    'price': 2779000,
    'rating': 4.0,
    'description': 'Men`s Short Sleeve-\nCrewneck TShirt.',
    'store_name': 'Nike Indonesia',
    'colors': [
      {
        'name': 'black',
        'color': Colors.black,
      },
      {
        'name': 'blueGrey',
        'color': Colors.blueGrey[200],
      },
      {
        'name': 'pink',
        'color': Colors.pink[100],
      },
      {
        'name': 'white',
        'color': Colors.white,
      },
    ],
    'sizes': [
      {
        'size': '36.0',
        'name': '36',
      },
      {
        'size': '37.0',
        'name': '37',
      },
      {
        'size': '38.0',
        'name': '38',
      },
      {
        'size': '42.0',
        'name': '42',
      },
    ],
    'reviews': [
      {
        'photo_url': 'assets/images/avatar1.jpg',
        'name': 'Uchiha Sasuke',
        'review': 'Men`s Short Sleeve-\nCrewneck TShirt.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar2.jpg',
        'name': 'Uzumaki Naruto',
        'review': 'Men`s Short Sleeve-\nCrewneck TShirt.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar3.jpg',
        'name': 'Kurokooo Tetsuya',
        'review': 'Men`s Short Sleeve-\nCrewneck TShirt.',
        'rating': 4.0,
      },
    ]
  },

  // 5

  {
    'image': [
      'assets/images/search/white_t_shirts.jpg',
      'assets/images/nikeblack.jpg',
    ],
    'name': "Jordan Delta 2 SE",
    'price': 2099000,
    'rating': 5.0,
    'description':
        'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
    'store_name': 'Nike Indonesia',
    'colors': [
      {
        'name': 'black',
        'color': Colors.black,
      },
      {
        'name': 'blueGrey',
        'color': Colors.blueGrey[200],
      },
      {
        'name': 'pink',
        'color': Colors.pink[100],
      },
      {
        'name': 'white',
        'color': Colors.white,
      },
    ],
    'sizes': [
      {
        'size': '36.0',
        'name': '36',
      },
      {
        'size': '37.0',
        'name': '37',
      },
      {
        'size': '38.0',
        'name': '38',
      },
      {
        'size': '42.0',
        'name': '42',
      },
    ],
    'reviews': [
      {
        'photo_url': 'assets/images/avatar1.jpg',
        'name': 'Uchiha Sasuke',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar2.jpg',
        'name': 'Uzumaki Naruto',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar3.jpg',
        'name': 'Kurokooo Tetsuya',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
    ]
  },

  // 5

  {
    'image': [
      'assets/images/search/cololections.jpg',
      'assets/images/nikeblack.jpg',
    ],
    'name': "Jordan One Take 3",
    'price': 1099000,
    'rating': 4.0,
    'description':
        'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
    'store_name': 'Nike Indonesia',
    'colors': [
      {
        'name': 'black',
        'color': Colors.black,
      },
      {
        'name': 'blueGrey',
        'color': Colors.blueGrey[200],
      },
      {
        'name': 'pink',
        'color': Colors.pink[100],
      },
      {
        'name': 'white',
        'color': Colors.white,
      },
    ],
    'sizes': [
      {
        'size': '36.0',
        'name': '36',
      },
      {
        'size': '37.0',
        'name': '37',
      },
      {
        'size': '38.0',
        'name': '38',
      },
      {
        'size': '42.0',
        'name': '42',
      },
    ],
    'reviews': [
      {
        'photo_url': 'assets/images/avatar1.jpg',
        'name': 'Uchiha Sasuke',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar2.jpg',
        'name': 'Uzumaki Naruto',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar3.jpg',
        'name': 'Kurokooo Tetsuya',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
    ]
  },
];
