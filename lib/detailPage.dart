import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String nama;
  final String gambar;
  final String deskripsi;
  final String harga;

  const DetailPage({Key? key,
    required this.nama,
    required this.gambar,
    required this.deskripsi,
    required this.harga})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Detail Menu'),
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            detailMenu(),
            detailHarga(),
            deskripsiMenu(),
            btnMenu(context),
          ],
        ),
      ),
    );
  }

  Widget detailMenu() {
    return InkWell(
      onTap: () {},
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.all(10),
        child: Row(
          children: [
            Image.network(gambar, width: 120),
            const Padding(
              padding: EdgeInsets.all(20),
            ),
            Text(
              nama, style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            ),
          ],
        ),
      ),
    );
  }

  Widget detailHarga() {
    return Container(
      padding: EdgeInsets.only(
        left: 50,
        top: 20,
        right: 50,
        bottom: 20,
      ),
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.all(10)),
          Text("Harga : " + harga),
          const Padding(padding: EdgeInsets.all(10)),
        ],
      ),
    );
  }

  Widget deskripsiMenu() {
    return Container(
      padding: EdgeInsets.only(
        left: 30,
        top: 10,
        right: 30,
        bottom: 10,
      ),
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.all(10)),
          Text(deskripsi),
          const Padding(padding: EdgeInsets.all(10)),
        ],
      ),
    );
  }

  Widget btnMenu(BuildContext context) {
    return Column(
      children: [
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 100)),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.deepPurple, // background
            onPrimary: Colors.white, // foreground
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Kembali ke List Menu'),
        ),
      ],
    );
  }
}