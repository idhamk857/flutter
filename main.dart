import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Profil",
    home: new HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.lime,
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        title: new Center(
          child: new Text("Profil"),
        )
      ),

      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
        ClipRRect(
        borderRadius: BorderRadius.circular(100.0),
        child: Image.network(
          'https://lh3.googleusercontent.com/-fpTEGhYvpGE/XmTf8rzp21I/AAAAAAAAACY/8aQN9GmS5w8i9lpdDdU5hVzcmIl8GfvpACLcBGAsYHQ/h120/IMG_8470.JPG',
          width: 150.0,
          height: 150.0,
          fit: BoxFit.cover,
        ),
      ),
              Text(
                  "Idham Kholid", style: TextStyle(color: Colors.cyan, fontSize: 20.0, height: 2.0, fontWeight: FontWeight.bold,),),
              Text(
                "Pendidikan Teknik Informatika",style: TextStyle(color: Colors.cyan, fontSize: 15.0, height: 1.0,),),

              Container(
                margin: EdgeInsets.only(top:10),
                padding: EdgeInsets.all(40),
                width: 400,
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        ContainIcon(0,"Singaraja",Icons.my_location),
                        ContainIcon(12,"All Genre",Icons.music_note),
                      ],),
                    Column(
                      children: <Widget>[
                        ContainIcon(0,"Singaraja",Icons.home),
                        ContainIcon(12,"Undiksha",Icons.location_city),
                      ], ),],  ), ),   ],),  ));
  }
}

//container dari kotak yang berisi icon
class ContainIcon extends StatelessWidget {
  final double atas;
  final String isi;
  final IconData icon;
  const ContainIcon(this.atas,this.isi,this.icon);
  @override
  Widget build(BuildContext context) {
    return    Container(
        margin: EdgeInsets.only(left: 10,top: atas),
        padding: EdgeInsets.only(top: 20),
        width: 130,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
          border: Border.all(width:3,color:Colors.teal,),
        ),
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              size: 40,
            ),
            Container(
              color: Colors.teal,
              margin: EdgeInsets.only(top:24),
              width: 125,
              height: 30,
              child:TextBox(isi),
            ),
          ],
        )

    );
  }
}

//untuk text di dalam kotak
class TextBox extends StatelessWidget {
  final String isi;
  const TextBox(this.isi);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text(isi,style: TextStyle(
          height: 1.3,
          fontSize: 18,
          color: Colors.cyan
      ),
      ),
    );
  }
}