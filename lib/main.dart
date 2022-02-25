import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("MyApp"),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        'BERITA TERKINI',
                        style: TextStyle(fontSize: 14),
                      )),
                  Container(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        'PERTANDINGAN HARI INI',
                        style: TextStyle(fontSize: 14),
                      )),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Column(children: [
                Image(
                  image: NetworkImage(
                      'https://cloud.jpnn.com/photo/arsip/normal/2021/09/16/sebastian-haller-tengah-mengekspresikan-kemeangan-ajax-amste-8oqj.jpg'),
                  fit: BoxFit.fitWidth,
                  width: 500.0,
                  height: 300.0,
                ),
                new Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                ),
                Text('Pertarungan Sengit Ajax vs Benfica',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                new Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                ),
              ]),
            ),
            Container(
              color: Colors.deepPurple,
              alignment: Alignment.centerLeft,
              child: Text("Hasil Skor",
                  style: TextStyle(fontSize: 14.0, color: Colors.white)),
              height: 50.0,
              width: 100.0,
              padding: EdgeInsets.only(left: 5.0),
            ),

            new Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
            ),

            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.network(
                    'https://static.republika.co.id/uploads/images/inpicture_slide/pemain-benfica-valentino-lazaro-kiri-dan-paulo-bernardo_220224053407-124.jpg',
                    width: 180,
                    height: 100,
                  ),
                  Expanded(
                      child: Center(
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text("Ajax Vs Benfica mendapatkan hasil skor 2-2"),
                    ),
                  ))
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 3.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              width: 300,
              height: 50,
              padding: EdgeInsets.all(3.0),
              child: Row(
                children: [Text('Amsterdam, 24 Fabruary 2022')],
              ),
            ),

            new Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
            ),

            //------------------------ list 2 --------------------------
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.network(
                    'https://api.sofascore.app/api/v1/event/9564490/share-image/16x9',
                    width: 180,
                    height: 100,
                  ),
                  Expanded(
                      child: Center(
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      child:
                          Text("Apankah Ajax Akan Membawa Pulang Kemenangan?"),
                    ),
                  ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 3.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              width: 300,
              height: 50,
              padding: EdgeInsets.all(3.0),
              child: Row(
                children: [Text('Malang, 26 February 2022')],
              ),
            ),
          ],
        ));
  }
}
