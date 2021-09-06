class ShopModel {
  String? title;
  String? gambar;
  String? namatoko;
  String? deskripsi;
  int? harga;

  ShopModel({
    this.title,
    this.gambar,
    this.namatoko,
    this.harga,
    this.deskripsi,
  });

  factory ShopModel.fromJson(Map<String, dynamic> json) {
    return ShopModel(
      title: json['title'] as String,
      gambar: json['gambar'] as String,
      namatoko: json['namatoko'] as String,
      deskripsi: json['deskripsi'] as String,
      harga: json['harga'] as int,
    );
  }
}

class KomenModel {
  String? nama;
  String? comment;
  String? profilepict;

  KomenModel({
    this.comment,
    this.profilepict,
    this.nama,
  });

  factory KomenModel.fromJson(Map<String, dynamic> json) {
    return KomenModel(
      comment: json['comment'] as String,
      profilepict: json['profilepict'] as String,
      nama: json['nama'] as String,
    );
  }
}
