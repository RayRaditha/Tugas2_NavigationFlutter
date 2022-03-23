import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'detailPage.dart';
import 'menu.dart';

class listMenu extends StatefulWidget {
  const listMenu({Key? key}) : super(key: key);
  @override
  listMenuPage createState() => listMenuPage();
}

class listMenuPage extends State<listMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("List Menu"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: appListCard(),
      ),
    );
  }

  Widget appListCard() {
    var dataApp = getAllMenu();

    return ListView.separated(
      itemBuilder: (context, index) {
        return appCard(dataApp[index], context);
      },
      itemCount: dataApp.length,
      separatorBuilder: (context, index) {
        return Container(
          color: Colors.grey,
          height: 1,
          margin: const EdgeInsets.symmetric(vertical: 4),
        );
      },
    );
  }

  Widget appCard(Menu data, BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailPage(
                nama: data.name,
                gambar: data.image,
                deskripsi: data.desc,
                harga: data.price.toString());
          }));
        },
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.network(data.image),
            ),
            Expanded(
              flex: 2,
              child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  child: Text(data.name)),
            ),
          ],
        ),
      ),
    );
  }

}