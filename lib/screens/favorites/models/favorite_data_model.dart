class FavoriteDataModel {
  final int? id;
  final String? imageURL;
  final String? itemName;
  final String? itemStoreName;
  final num? price;

  FavoriteDataModel({
    this.id,
    this.imageURL,
    this.itemName,
    this.itemStoreName,
    this.price,
  });

  FavoriteDataModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        imageURL = json['imageURL'] as String?,
        itemName = json['itemName'] as String?,
        itemStoreName = json['itemStoreName'] as String?,
        price = json['price'] as num?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'imageURL' : imageURL,
    'itemName' : itemName,
    'itemStoreName' : itemStoreName,
    'price' : price
  };
}