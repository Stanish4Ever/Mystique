import 'package:flutter/material.dart';
class Homepage extends StatelessWidget
{
  Homepage();
  Widget build(BuildContext context)
  {
    final landpage=Hero(
      tag: 'hero', child: Padding(padding: EdgeInsets.all(16),
      child: CircleAvatar(
        radius: 72,
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage('assets/images/Work.jpg'),
      ),),
      
    );
    final welcome= Padding(
      padding: EdgeInsets.all(8),
      child: Text("Welcome Stanish!",
      style: TextStyle(fontSize: 25, color: Colors.white),
      ),
      
    );
    final welconetext= Padding(
      padding: EdgeInsets.all(8),
      child: Text("The creator, prophency & master!",
      style: TextStyle(fontSize: 16, color: Colors.white),
      ),
      
    );
    final body1= Container(width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.all(27),
    decoration: BoxDecoration(gradient:LinearGradient(colors: [Colors.red, Colors.redAccent])
    ),
    child: Column(children: <Widget>[
      landpage,welcome,welconetext

  ],),
    );
     
    return Scaffold(body: body1,
         
    );
  }
}