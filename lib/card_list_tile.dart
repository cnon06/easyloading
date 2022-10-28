import 'package:flutter/material.dart';

class CardListTile extends StatelessWidget {
  const CardListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: 
        Column(
          children: [
            tekListeItemi(),
            tekListeItemi(),
            tekListeItemi(),
          ],
        )
        
        // tekListeItemi()
      ),
    );
  }

  Column tekListeItemi() {
    return Column(
        children: [
          Card(
            color: Colors.blue.shade100,
            shadowColor: Colors.red,
            elevation: 12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: CircleAvatar(child: Icon(Icons.add),),
              title: Text("Başlık Kısmı"),
              subtitle: Text("Alt Başlık Kısmı"),
              trailing: Icon(Icons.real_estate_agent),
            ),
          ),
          Divider(
            color: Colors.red,
            thickness: 1,
            height: 10,
            indent: 60,
            endIndent: 60,
          )
        ],
      );
  }
}
