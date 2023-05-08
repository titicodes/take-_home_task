class SearchHistory {
  String? title;

  SearchHistory({this.title});

  factory SearchHistory.fromJson(Map<String, dynamic> json) {
    return SearchHistory(title: json['title']);
  }
}

class ProductSearch {
  String? title;
  String? imageUrl;

  ProductSearch({this.title, this.imageUrl});

  factory ProductSearch.fromJson(Map<String, dynamic> json) {
    return ProductSearch(title: json['title'], imageUrl: json['image_url']);
  }
}
