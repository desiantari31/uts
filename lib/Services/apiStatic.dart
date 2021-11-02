import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:latihan_app/Models/Posyandu.dart';

class ApiStatic {
  static final host = "http://127.0.0.1:8000/api/";
  static final _token = "2|T4FUCe92rxpM87KPfEuMI1HtPJcxWo3cwG5I8Hso";
  static getHost() {
    return host;
  }

  // static Future<List<Posyandu>> getPosyandu2() async {
  //   List<Posyandu> posyandu = [];
  //   for (var i = 0; i < 10; i++) {
  //     posyandu.add(Posyandu(
  //         idbayi: i,
  //         nama: "Nama Bayi" + i.toString(),
  //         alamat: "Masukkan Alamat" + i.toString(),
  //         ibu: "Nama Ibu" + i.toString(),
  //         telp: "Nomor Telpon" + i.toString(),
  //         createdAt: "",
  //         updateAt: ""));
  //   }
  //   return posyandu;
  // }

  static Future<List<Posyandu>> getPosyandu() async {
    // String response =
    //     '{"current_page":1,"data":[{"id_bayi":1,"nama":"Dino","alamat":"Abimanyu 1","ibu":"trisna","telp":"1234748"}]}';
    try {
      final response = await http.get(Uri.parse("http://127.0.0.1:8000/api/bayi"), headers: {
        'Authorization': 'Bearer' + _token,
      });
      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        final parsed = json['data'].cast<Map<String, dynamic>>();
        return parsed.map<Posyandu>((json) => Posyandu.fromJson(json)).toList();
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}
