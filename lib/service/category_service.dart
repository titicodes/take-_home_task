import '../model/category.dart';

class CategoryService {
  static List categoryData =
      categoryRawData.map((data) => Category.fromJson(data)).toList();
}

var categoryRawData = [
  {
    'featured': true,
    'icon_url': 'assets/icons/categories.png',
    'name': 'Category',
  },
  {
    'featured': false,
    'icon_url': 'assets/icons/transport.png',
    'name': 'Flight',
  },
  {
    'featured': false,
    'icon_url': 'assets/icons/globe.png',
    'name': 'Bill',
  },
  {
    'featured': false,
    'icon_url': 'assets/icons/top.png',
    'name': 'Data plan',
  },
  {
    'featured': false,
    'icon_url': 'assets/icons/download.png',
    'name': 'shirts',
  },
  {
    'featured': false,
    'icon_url': 'assets/icons/globe.png',
    'name': ' TShirts',
  },
];
