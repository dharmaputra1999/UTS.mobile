import 'package:flutter/material.dart';
import 'segitiga_result.dart';
import 'about_me.dart';

void main() {
  runApp(new MaterialApp(
    home: new Home(),
    routes: <String, WidgetBuilder>{
      '/Halsatu': (BuildContext context) => new Home(),
      '/Haldua': (BuildContext context) => new MyProfil(),
    },
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  int alas = 0;
  int tinggi = 0;

  var _nama = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.view_list),
        title: new Text('Menghitung Luas'),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: () {
              Navigator.pushNamed(context, '/Haldua');
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(20.0),
            child: new Column(
              children: <Widget>[
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                new Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            alas = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 5,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                            labelText: "Alas Segitiga",
                            suffix: Text('cm'),
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(0.0)),
                            //filled: true,
                            hintText: 'Alas'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            tinggi = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 5,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                            labelText: "Tinggi Segitiga",
                            suffix: Text('cm'),
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(0.0)),
                            //filled: true,
                            hintText: 'Tinggi'),
                      ),
                    ),
                  ],
                ),
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                  child: RaisedButton(
                    onPressed: () {
                      var route = new MaterialPageRoute(
                        builder: (BuildContext) => new PersegiResult(
                            alas_segitiga: alas, tinggi_segitiga: tinggi),
                      );
                      Navigator.of(context).push(route);
                    },
                    padding: EdgeInsets.all(10.0),
                    color: Colors.black,
                    textColor: Colors.white,
                    child: Text(
                      'Hitung Luas',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
