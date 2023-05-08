import '../model/category.dart';

class CategoryService {
  static List categoryData =
      categoryRawData.map((data) => Category.fromJson(data)).toList();
}

var categoryRawData = [
  {
    'featured': true,
    'icon_url': 'assets/icons/Category.svg',
    'name': 'Category',
  },
  {
    'featured': false,
    'icon_url': 'assets/icons/Category.svg',
    'name': 'Flight',
  },
  {
    'featured': false,
    'icon_url': 'assets/icons/Filter.svg',
    'name': 'Bill',
  },
  {
    'featured': false,
    'icon_url': 'assets/icons/Paper Bag.svg',
    'name': 'man clothes',
  },
  {
    'featured': false,
    'icon_url': 'assets/icons/Bag.svg',
    'name': 'man pants',
  },
  {
    'featured': false,
    'icon_url': 'assets/icons/Filter.svg',
    'name': 'man shoes',
  },
];
