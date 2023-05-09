import '../model/search.dart';

class SearchService {
  static List<SearchHistory> listSearchHistory = listSearchHistoryRawData
      .map((data) => SearchHistory.fromJson(data))
      .toList();
  static List<ProductSearch> listPopularSearch = listPopularSearchRawData
      .map((data) => ProductSearch.fromJson(data))
      .toList();
}

var listSearchHistoryRawData = [
  {'title': 'Shirt'},
  {'title': 'Adidas'},
  {'title': 'Short Sleeve'},
  {'title': 'Jordan BRED'},
  {'title': 'Nice Polo'},
  {'title': 'T Shirt'},
];

var listPopularSearchRawData = [
  {
    'title': 'Shirt',
    'image_url': 'assets/images/black_polo.jpg',
  },
  {
    'title': 'Tech Wear',
    'image_url': 'assets/images/white_t_shirt.jpg',
  },
  {
    'title': 'Local Brand',
    'image_url': 'assets/images/short_sleeve.jpg',
  },
  {
    'title': 'Flannel Hoodie',
    'image_url': 'assets/images/white_t_shirt.jpg',
  },
  {
    'title': 'Sport Shoes',
    'image_url': 'assets/images/nice_sleeve.jpg',
  },
  {
    'title': 'Black Tshirt',
    'image_url': 'assets/images/shot_s_collection.jpg',
  },
  {
    'title': 'Sport Wear',
    'image_url': 'assets/images/shot_s_collection.jpg',
  },
  {
    'title': 'Oversized Tshirt',
    'image_url': 'assets/images/shot_s_collection.jpg',
  },
];
