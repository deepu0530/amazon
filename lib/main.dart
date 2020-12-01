import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(amazon());
}

class amazon extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.tealAccent,
          leading: IconButton(
            icon: Icon(Icons.menu,color: Colors.black,size: 30,),
            onPressed: (){},
          ),
          centerTitle: false,
            title: Row(
                children: <Widget>[
                  Text(
                    'amazon',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Text(".in",
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16),),
                ]
            ),
          actions: [
            IconButton(
              icon: Icon(Icons.mic_outlined,color: Colors.black,size: 30,),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.add_shopping_cart_outlined,color: Colors.black,size: 30,),
              onPressed: (){},
            ),
          ],
          elevation: 0,
        ),
        body: SingleChildScrollView(
        child: Column(
          children: [
            //SizedBox(height: 5,),
            Shop(),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 15,),
                Text("Explore all Categories",
                  style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Shopping(name: "Echo & Alexa",icon:  Icons.east,icon2: Icons.add_box_outlined,),
            Shopping(name: "Fire TV Stick",icon: Icons.settings_remote,icon2: Icons.add_box_outlined,),
            Shopping(name: "Kindle E-Readers & eBooks",icon: Icons.library_books_sharp,icon2: Icons.add_box_outlined,),
            Shopping(name: "Amazon Prime Video",icon: Icons.ondemand_video,icon2: Icons.arrow_forward_ios,),
            Shopping(name: "Amazon Prime Music",icon: Icons.music_note,icon2: Icons.arrow_forward_ios,),
            Shopping(name: "Mobiles,Computers",icon: Icons.phone_iphone,icon2: Icons.add_box_outlined,),
            Shopping(name: "TV,Appliances,Electronics",icon: Icons.tv,icon2: Icons.add_box_outlined,),
            Shopping(name: "Men's Fashion",icon: Icons.face_rounded,icon2: Icons.add_box_outlined,),
            Shopping(name: "Women's Fashion",icon: Icons.face_rounded,icon2: Icons.add_box_outlined,),
            // Shopping(name: "Men's",),
            // Shopping(name: "Men's",),
            // Shopping(name: "Men's",),
          ],
        ),
      ),
      ),
    );
  }
}




class Shopping extends StatelessWidget {
  const Shopping({
    this.name,this.icon,this.icon2,//this.icon,this.icons,
    Key key,
  }) : super(key: key);
  //final String icon;
  final String name;
  final IconData icon;
  final IconData icon2;
  //final String icons;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0,vertical: 5),
        child: Column(
          children: [
            ListTile(
              leading: IconButton(
                icon: Icon(icon,color: Colors.grey[700],size: 25,),
                onPressed: (){},
              ),
              title: Text(name,style: TextStyle(color: Colors.black,
                  fontSize: 16,fontWeight: FontWeight.bold),),
              trailing: IconButton(
                icon: Icon(icon2,color: Colors.grey[700],size: 25,),
              ),
            ),
            Divider(
              indent: 25,
              endIndent: 25,
              thickness: 1.0,
              //color: Colors.grey[500],
            ),
          ],
        ),
      // height: 10,
      // width: 2,
    );
  }
}




class Shop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          child: Container(
            color: Colors.tealAccent,
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                     height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.search_rounded,color: Colors.black,size: 30,),
                                 SizedBox(width: 10,),
                                 Text("Search",style: TextStyle(fontSize:16,color: Colors.grey[800],),),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.camera_alt_sharp,color: Colors.grey,size: 25,),
                                ],
                              ),
                            ],
                          ),
                        ),
                        // icon: Icon(Icons.search_rounded,color: Colors.black,size: 30,),
                        // border: InputBorder.none,
                        // hintText: "Search",hintStyle: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.bold),
                        //icon: Icon(Icons.camera_alt_rounded,color: Colors.grey[700],size: 25,),
                      ),
                    ),
                    ),
                  ),
              ],
            ),
          ),
    );
  }
}

