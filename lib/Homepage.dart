import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:story/Einestei.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFdd2476),

      appBar: AppBar(
        elevation: 0,
        foregroundColor: Color(0xFFD0D3D4),
        title: Text("বিজ্ঞানীদের জীবনী",style: TextStyle(fontFamily: 'BalooDa2-Medium',fontWeight: FontWeight.bold),),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
                tileMode: TileMode.repeated,
                colors: [Color(0xFFdd2476),Color(0xFFff512f)])
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(MdiIcons.menuDownOutline,size: 30,))
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Image.asset("images/brain_126px.png"),
            RichText(text: TextSpan(
                text: "বিজ্ঞানীদের  ",
                style: TextStyle(fontSize: 22,color: Color(0xff0d2032),fontFamily: 'BalooDa2-Medium',fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: "জীবনী",
                    style: TextStyle(fontSize: 22,color: Colors.blue,fontFamily: 'BalooDa2-Medium'),
                  )
                ]
            )),
            Divider(),
            ListTile(
              title: Text("হোম",style: TextStyle(fontFamily: 'BalooDa2-Medium'),),
              leading: Icon(Icons.home_outlined,color: Colors.black,),
            ),
            ListTile(
              title: Text("শেয়ার",style: TextStyle(fontFamily: 'BalooDa2-Medium')),
              leading: Icon(Icons.share_outlined,color: Colors.black,),
            ),
            ListTile(
              title: Text("রেটিং",style: TextStyle(fontFamily: 'BalooDa2-Medium')),
              leading: Icon(Icons.star_outlined,color: Colors.black,),
            ),
            Divider(),
            ListTile(
              title: Text("অন্যান্য অ্যাপস",style: TextStyle(fontFamily: 'BalooDa2-Medium')),
              leading: Icon(Icons.apps_outlined,color: Colors.black,),
            ),
            ListTile(
              title: Text("অ্যাপ সম্পর্কে",style: TextStyle(fontFamily: 'BalooDa2-Medium')),
              leading: Icon(MdiIcons.alertCircleOutline,color: Colors.black,),
            ),
            Divider(),
            Row(
              children: [
                SizedBox(width: 20,),
                Text("Developer",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'BalooDa2-Medium'),),
              ],
            ),
            ListTile(
              title: Text("ডেভেলপার পরিচিতি",style: TextStyle(fontFamily: 'BalooDa2-Medium')),
              leading: Icon(MdiIcons.codeTags,color: Colors.black,),
            ),

          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ListTile(
              shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.only(bottomRight: Radius.circular(5),topRight: Radius.circular(5))
              ),
              title: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32))
                ),
                margin: EdgeInsets.all(0.0),
                color: Colors.white,
                child: Column(
                  children: [
                    Text("",style: TextStyle(fontSize: 3),),
                     Text("আলবার্ট আইনস্টাইন",
                      style: TextStyle(fontSize: 23,fontFamily: 'BalooDa2-Medium',color: Colors.black,
                          fontWeight: FontWeight.bold,
                            ),),
                    Text("",style: TextStyle(fontSize: 2),),
                  ],

                ),
              ),
              leading: CircleAvatar(
                maxRadius: 25,
                  backgroundImage: AssetImage("images/Einstein.jpg",)),
              //tileColor: Color(0xFFFFE6E8),
              //focusColor: Colors.teal,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>einestein()));
              },
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(5),topRight: Radius.circular(5))
              ),
              title: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32))
                ),
                margin: EdgeInsets.all(0.0),
                color: Colors.white,
                child: Column(
                  children: [
                    Text("",style: TextStyle(fontSize: 3),),
                    Text("মারি ক্যুরি",
                      style: TextStyle(fontSize: 23,fontFamily: 'BalooDa2-Medium',color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                    Text("",style: TextStyle(fontSize: 2),),
                  ],

                ),
              ),
              leading: CircleAvatar(
                  maxRadius: 25,
                  backgroundImage: AssetImage("images/Marie.png",)),
              //tileColor: Color(0xFFFFE6E8),
              //focusColor: Colors.teal,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>einestein()));
              },
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(5),topRight: Radius.circular(5))
              ),
              title: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32))
                ),
                margin: EdgeInsets.all(0.0),
                color: Colors.white,
                child: Column(
                  children: [
                    Text("",style: TextStyle(fontSize: 3),),
                    Text("আইজ্যাক নিউটন",
                      style: TextStyle(fontSize: 23,fontFamily: 'BalooDa2-Medium',color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                    Text("",style: TextStyle(fontSize: 2),),
                  ],

                ),
              ),
              leading: CircleAvatar(
                  maxRadius: 25,
                  backgroundImage: AssetImage("images/Newton.jpg",)),
              //tileColor: Color(0xFFFFE6E8),
              //focusColor: Colors.teal,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>einestein()));
              },
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(5),topRight: Radius.circular(5))
              ),
              title: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32))
                ),
                margin: EdgeInsets.all(0.0),
                color: Colors.white,
                child: Column(
                  children: [
                    Text("",style: TextStyle(fontSize: 3),),
                    Text("চার্লস ডারউইন",
                      style: TextStyle(fontSize: 23,fontFamily: 'BalooDa2-Medium',color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                    Text("",style: TextStyle(fontSize: 2),),
                  ],

                ),
              ),
              leading: CircleAvatar(
                  maxRadius: 25,
                  backgroundImage: AssetImage("images/carles.jpg",)),
              //tileColor: Color(0xFFFFE6E8),
              //focusColor: Colors.teal,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>einestein()));
              },
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(5),topRight: Radius.circular(5))
              ),
              title: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32))
                ),
                margin: EdgeInsets.all(0.0),
                color: Colors.white,
                child: Column(
                  children: [
                    Text("",style: TextStyle(fontSize: 3),),
                    Text("নিকোলা টেসলা",
                      style: TextStyle(fontSize: 23,fontFamily: 'BalooDa2-Medium',color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                    Text("",style: TextStyle(fontSize: 2),),
                  ],

                ),
              ),
              leading: CircleAvatar(
                  maxRadius: 25,
                  backgroundImage: AssetImage("images/Tesla.jpg",)),
              //tileColor: Color(0xFFFFE6E8),
              //focusColor: Colors.teal,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>einestein()));
              },
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(5),topRight: Radius.circular(5))
              ),
              title: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32))
                ),
                margin: EdgeInsets.all(0.0),
                color: Colors.white,
                child: Column(
                  children: [
                    Text("",style: TextStyle(fontSize: 3),),
                    Text("গ্যালিলিও গ্যালিলেই",
                      style: TextStyle(fontSize: 23,fontFamily: 'BalooDa2-Medium',color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                    Text("",style: TextStyle(fontSize: 2),),
                  ],

                ),
              ),
              leading: CircleAvatar(
                  maxRadius: 25,
                  backgroundImage: AssetImage("images/GalileiGalileo.jpg",)),
              //tileColor: Color(0xFFFFE6E8),
              //focusColor: Colors.teal,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>einestein()));
              },
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(5),topRight: Radius.circular(5))
              ),
              title: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32))
                ),
                margin: EdgeInsets.all(0.0),
                color: Colors.white,
                child: Column(
                  children: [
                    Text("",style: TextStyle(fontSize: 3),),
                    Text("অ্যাডা লাভলেস",
                      style: TextStyle(fontSize: 23,fontFamily: 'BalooDa2-Medium',color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                    Text("",style: TextStyle(fontSize: 2),),
                  ],

                ),
              ),
              leading: CircleAvatar(
                  maxRadius: 25,
                  backgroundImage: AssetImage("images/Ada.jpg",)),
              //tileColor: Color(0xFFFFE6E8),
              //focusColor: Colors.teal,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>einestein()));
              },
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(5),topRight: Radius.circular(5))
              ),
              title: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32))
                ),
                margin: EdgeInsets.all(0.0),
                color: Colors.white,
                child: Column(
                  children: [
                    Text("",style: TextStyle(fontSize: 3),),
                    Text("কার্ল লিনিয়াস",
                      style: TextStyle(fontSize: 23,fontFamily: 'BalooDa2-Medium',color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                    Text("",style: TextStyle(fontSize: 2),),
                  ],

                ),
              ),
              leading: CircleAvatar(
                  maxRadius: 25,
                  backgroundImage: AssetImage("images/Carl_von_Linné.jpg",)),
              //tileColor: Color(0xFFFFE6E8),
              //focusColor: Colors.teal,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>einestein()));
              },
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(5),topRight: Radius.circular(5))
              ),
              title: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32))
                ),
                margin: EdgeInsets.all(0.0),
                color: Colors.white,
                child: Column(
                  children: [
                    Text("",style: TextStyle(fontSize: 3),),
                    Text("পিথাগোরাস",
                      style: TextStyle(fontSize: 23,fontFamily: 'BalooDa2-Medium',color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                    Text("",style: TextStyle(fontSize: 2),),
                  ],

                ),
              ),
              leading: CircleAvatar(
                  maxRadius: 25,
                  backgroundImage: AssetImage("images/pythagoras.jpg",)),
              //tileColor: Color(0xFFFFE6E8),
              //focusColor: Colors.teal,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>einestein()));
              },
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(5),topRight: Radius.circular(5))
              ),
              title: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32))
                ),
                margin: EdgeInsets.all(0.0),
                color: Colors.white,
                child: Column(
                  children: [
                    Text("",style: TextStyle(fontSize: 3),),
                    Text("রোজালিন্ড ফ্রাঙ্কলিন",
                      style: TextStyle(fontSize: 23,fontFamily: 'BalooDa2-Medium',color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                    Text("",style: TextStyle(fontSize: 2),),
                  ],

                ),
              ),
              leading: CircleAvatar(
                  maxRadius: 25,
                  backgroundImage: AssetImage("images/Frankin.jpg",)),
              //tileColor: Color(0xFFFFE6E8),
              //focusColor: Colors.teal,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>einestein()));
              },
            ),
          ],
        ),
      ),

    );
  }
}
