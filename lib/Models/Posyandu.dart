class Posyandu{
  Posyandu({
    required this.idbayi,
    required this.nama,
    required this.alamat,
    required this.ibu,
    required this.telp,
    required this.createdAt,
    required this.updateAt,
  });
  int idbayi;
  String nama;
  String alamat;
  String ibu;
  String telp;
  String createdAt;
  String updateAt;

factory Posyandu.fromJson(Map<String,dynamic> Json) => Posyandu(
  idbayi: Json["id_bayi"],
  nama: Json["nama"].toString(),
  alamat: Json["alamat"].toString(),
  ibu: Json["ibu"].toString(),
  telp: Json["telp"].toString(),
  createdAt: Json["createdAt"].toString(),
  updateAt: Json["updateAt"].toString(),
);
}