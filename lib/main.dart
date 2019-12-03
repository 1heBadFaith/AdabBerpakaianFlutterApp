import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.purple,
          primaryColor: Colors.purple,
          canvasColor: Colors.purpleAccent,
          appBarTheme: AppBarTheme(color: Colors.purple, elevation: 0)),
      home: HomeUtama(),
    );
  }
}

class HomeUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Panduan Tayamum'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.info_outline)
              , onPressed: () {

                AlertDialog(
                  title: Text('Tentang Saya'),
                  content: new Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _buildAboutMe()
                    ],
                  ),
                  actions: <Widget>[
                    new FlatButton(
                        onPressed: (){
                          Navigator.of(context);
                        },
                        child: const Text('Close'))
                  ],
                );
              }),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),

      body: PageView(
        children: <Widget>[
          kriteriaItem('Gunakan pakaian yang halal',
              'https://i2.wp.com/virusbiru.com/handsome/wp-content/uploads/2016/12/halal-couple.jpg?w=498&ssl=1',),

          kriteriaItem('Tidak menyerupai lawan jenis.',
              'https://i1.wp.com/virusbiru.com/handsome/wp-content/uploads/2016/12/Pasangan-Romantis-Ala-Jepang-di-Huan-Pinus-Imogiri.jpg?w=908&ssl=1'),

          kriteriaItem('Memulai dari sebelah kanan.'
              , 'https://i2.wp.com/virusbiru.com/handsome/wp-content/uploads/2016/12/halal-couple.jpg?w=498&ssl=1'),

          kriteriaItem('Tidak menyerupai pakaian orang kafir.',
              'https://i1.wp.com/virusbiru.com/handsome/wp-content/uploads/2017/01/Kriteria-Laki-laki-Idaman.jpg?resize=770%2C430&ssl=1',),

          kriteriaItem('Bukan merupakan pakaian ketenaran.'
              , 'https://i1.wp.com/virusbiru.com/handsome/wp-content/uploads/2016/11/Kata-kata-Ungkapan-Sayang.jpg?w=1500&ssl=1',),

          kriteriaItem('Doa memakai pakaian.'
              , 'https://i2.wp.com/virusbiru.com/handsome/wp-content/uploads/2017/01/Romantis-Merpati.jpg?w=950&ssl=1'),


        ],
      ),
    );
  }
}

Widget kriteriaItem(String judul, String gambar) {
  return Container(
    child: ListView(
      children: <Widget>[
        Image(
          image: NetworkImage(gambar),
          height: 300.0,
          fit: BoxFit.cover,),

        SizedBox(
          height: 20.0,
        ),//SizedBox

        Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(judul,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),

        ),//Padding

      ],
    ),
  );
}

Widget _buildAboutMe() {
  return new RichText(
      text: new TextSpan(
          text: 'Hai Perkenalkan Nama Saya Muhammad Azhar najib dan saya tinggal di depok, saya lahir tanggal 18 Oktober 2005',
          style: const TextStyle(color: Colors.black),
          children: <TextSpan>[
            const TextSpan(text: 'dan juga azhar memiliki beberapa hobi yang agak aneh')
          ]
      ));
}

void openNewSreen(BuildContext context, Widget screen) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
}