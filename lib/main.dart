import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Homepage.dart';


void main() => runApp(UiBuild());
class UiBuild extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return UibuildState();
  }
}
class UibuildState extends State<UiBuild>
{
  final GlobalKey<ScaffoldState> _scaffoldkey= GlobalKey<ScaffoldState>();
  var l=0;
  var r=0;
  String mail="";
    String pass="";
  bool _showpassword= true;
  Widget build(BuildContext context)
  {
    
    double boxers = 50.0;
    void mailReceive(String str1)
    {
      setState(() {
        mail=str1;
        print(mail);
        print(pass);
      });
    }
    void love()
    {
      setState(() =>this._showpassword =! this._showpassword
              );
    }
  
    void clove2(){
      final snack= new SnackBar(content: Text("Contact Stanish!", textAlign: TextAlign.center,));
      _scaffoldkey.currentState.showSnackBar(snack);
    }
    void clove()
    {
      setState(() {
      
        if(mail=="Stanish4Ever")
        { print(pass);
        if(pass=="CarryMinati!") 
      //"Stanish4Ever@mystique.com" && pass=="20MforCarry!")       
        l++;
      }           
        else
        {
          r++;
      //  clove2(); 
        }
        
      });
    }
   
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: l%2==0? Scaffold(
            key: _scaffoldkey,
           // resizeToAvoidBottomPadding: false,
            body: Stack(
                children: <Widget>[
                  Container(                   
                    decoration: BoxDecoration(
                      image: DecorationImage(  fit: BoxFit.cover, 
                        image: AssetImage('assets/images/UIDesign.png'), 
                        
                        )
                      )
              ),
             
             Positioned(
               
               child: SingleChildScrollView(
                                child: Container(
             margin: EdgeInsets.all(10), 
                   child:
                   
                 Padding(padding:EdgeInsets.all(20),            
             child: Column(
                 children: <Widget>[
                   SizedBox(height: 70,),
                    Hero(tag: 'Login', 
                         child: CircleAvatar(radius: 100, 
                            backgroundColor: Colors.white.withOpacity(0.2),
                            child: Container(height: 100,       
                               child: Center(
                                 child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                     children: <Widget>[
                                     Text("Mystique", style: TextStyle(color: Colors.white, fontSize: 43, fontFamily: 'Alvaro' ),),
                                     Text("An App by Stanish!", style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Circular' ),),

                       ],
                    ),  
                   )
                   ),
                 ),
                ),         
                    Column(children: <Widget>[
                      SizedBox(height: 100,),
                     if(r!=0) 
                     Text("ERROR! Wrong Credentials...", style: TextStyle(color: Colors.red[200], fontSize: 16, fontWeight: FontWeight.bold),),
                   Container( 
                        margin: EdgeInsets.all(7),
                  padding: EdgeInsets.all(5),
                  
                     decoration: BoxDecoration(
                       
                       color: Colors.white.withOpacity(0.5),
                       borderRadius: BorderRadius.circular(20),
                     ),

                     child: Column(
                       
                       children: <Widget>[
                         
                         Container(
                           padding: EdgeInsets.all(5),                       
                         decoration: BoxDecoration( 
                         ),
                         child: TextField(
                           keyboardType: TextInputType.emailAddress,
                           decoration: InputDecoration(border: InputBorder.none, 
                          labelText: "Email or Username",
                          icon: Icon(Icons.mail, color: Colors.red,),
                          
                          labelStyle: TextStyle(color: Colors.white),
                           hintText: "HeroAlum@tikToker.com",
                           hintStyle: TextStyle(color: Colors.grey[300]),
                           
                           
                         ),
                      
                         onChanged: (String str){
                           mailReceive(str);

                         },
                         ) )
                       ],
                     ),
                   ),
                   
                   Container( 
                     
                     margin: EdgeInsets.all(7),
                  padding: EdgeInsets.all(5),
                  
                     decoration: BoxDecoration(
                       
                       color: Colors.white.withOpacity(0.5),
                       borderRadius: BorderRadius.circular(20),
                     ),
                     //margin: EdgeInsets.all(10),
                     
                     child: Column(
                       
                       children: <Widget>[
                         
                         Container(padding: EdgeInsets.all(5),                       
                         decoration: BoxDecoration(
                         ),
                         
                         child: TextField(
                           obscureText: _showpassword,
                           decoration: InputDecoration(border: InputBorder.none,
                           labelText: "Password",
                           labelStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(Icons.lock, color: Colors.red,),
                          suffixIcon: IconButton(icon: Icon(Icons.remove_red_eye, 
                          color: this._showpassword? Colors.red: Colors.redAccent,
                          
                          ),
                          onPressed: love,                            
                          
                          ),
                          hintText: "Password@123",
                          hintStyle: TextStyle(color: Colors.grey[300],),
                         ),
                         onChanged: (String key){
                           setState(() {
                             pass=key;                            
                           });
                         },
                         ) )
                       ],
                     ),
                   ),
                  
                   SizedBox(height: 20,),
                   InkWell(onTap: clove, child: 
                   Container(height: boxers,     
                   margin: EdgeInsets.all(20),            
                   decoration: BoxDecoration( borderRadius: BorderRadius.circular(20),
                     gradient:LinearGradient(colors:[ Color.fromRGBO(143, 148, 251, 0.25), Color.fromRGBO(143, 148, 251, 0.25)])),
                    child: Center(child: Text("ENTERAR", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold, fontSize: 20)) 
                    
                    ), 
                    ),
                     
                   ),
                   
                   SizedBox(height:30),
                   FlatButton(onPressed: clove2, child: Text("Forgot Password? LMAO", style: TextStyle(
                     color:Colors.blueAccent, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 16,)))


                    ],), 
                   
                  
                 ]
             ),
              ),
             ),
               ),
             )
             
             
            ], 
            
          ),
          
        ): Homepage(),
      
        
    );
    
  }
}
  