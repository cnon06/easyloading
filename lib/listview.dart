import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class MyListView extends StatelessWidget {
  MyListView({Key? key}) : super(key: key);

  List<Ogrenci> ogrenciListesi = List.generate(
      5000,
      (index) =>
          Ogrenci(id: index, ad: "${index}. ad", soyad: "${index}. soyad"));

  @override
  Widget build(BuildContext context) {
    //  List<Column> tektek = ogrenciListesi
    //   .map((e) => tekListeItemi(id: e.id, ad: e.ad, soyad: e.soyad))
    //   .toList();
    return Scaffold(
        appBar: AppBar(
          title: Text("List View"),
        ),
        body: ListView.builder(
          reverse: true,
          itemCount: ogrenciListesi.length,
          itemBuilder: (context, index) {
            return tekListeItemi(
                id: ogrenciListesi[index].id,
                ad: ogrenciListesi[index].ad,
                soyad: ogrenciListesi[index].soyad);
          },
        ));
  }
}

class Ogrenci {
  int id;
  String ad;
  String soyad;
  Ogrenci({required this.id, required this.ad, required this.soyad});
}

Card tekListeItemi(
    {required int id, required String ad, required String soyad}) {
  return Card(
    color: Colors.blue.shade100,
    shadowColor: Colors.red,
    elevation: 12,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: ListTile(
      onTap: () {
        EasyLoading.showToast(ad, duration: const Duration(seconds: 1), dismissOnTap: true, toastPosition: EasyLoadingToastPosition.bottom);
      },
      leading: CircleAvatar(
        child: Text(id.toString()),
      ),
      title: Text(ad),
      subtitle: Text(soyad),
      trailing: Icon(Icons.real_estate_agent),
    ),
  );
}
