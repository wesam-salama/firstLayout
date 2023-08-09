class SpecialOffersModel {
  final int? id;
  final String? imageURL;
  final double? per;
  final String? des;

  SpecialOffersModel({
    this.id,
    this.imageURL,
    this.per,
    this.des,
  });

  SpecialOffersModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        imageURL = json['imageURL'] as String?,
        per = json['per'] as double?,
        des = json['des'] as String?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'imageURL' : imageURL,
    'per' : per,
    'des' : des
  };
}