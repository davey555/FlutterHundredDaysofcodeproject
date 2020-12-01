import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          elevation: 0,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(EvaIcons.arrowBack),
          ),
          title: Text(
            'Profile One',
            style: GoogleFonts.aBeeZee(
              fontSize: 23,
            ),
          )),
      body: ListView(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.5, 0.9],
                  colors: <Color>[Colors.red, Colors.deepOrange]),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        child: Icon(
                          EvaIcons.phone,
                          size: 50,
                          color: Colors.white,
                        ),
                        backgroundColor: Colors.red,
                        minRadius: 40,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.orangeAccent[200],
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/item32.jpeg'),
                         minRadius: 50,
                        ),
                        minRadius: 70,
                      ),
                      CircleAvatar(
                        child: Icon(
                          EvaIcons.messageCircle,
                          size: 50,
                          color: Colors.white,
                        ),
                        backgroundColor: Colors.red,
                        minRadius: 40,
                      ),
                      
                    ],
                  ),
SizedBox(height:10,),
               Text('Chika David Ama',style: GoogleFonts.adamina(
                 color: Colors.white, fontWeight: FontWeight.bold,
                 fontSize:23,
               ),  ),
               Text('Flutter Developer',style: GoogleFonts.adamina(
                 color: Colors.white, fontWeight: FontWeight.bold,
                 fontSize:23,
               ),), 
                
                ]),),
Container(

  
  child:Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        child: ListTile(

          tileColor: Colors.red,
          title: Text('Following',style: GoogleFonts.adamina(
                 color: Colors.white, fontWeight: FontWeight.bold,
                 fontSize:23,
               ),),
          subtitle: Text('244',style: GoogleFonts.adamina(
                 color: Colors.white, fontWeight: FontWeight.bold,
                 fontSize:23,
               ),),
        ),
      ),
          Expanded(
        child: ListTile(

          tileColor: Colors.deepOrange,
          title: Text('followers',style: GoogleFonts.adamina(
                 color: Colors.white, fontWeight: FontWeight.bold,
                 fontSize:23,
               ),),
          subtitle: Text('10.3m',style: GoogleFonts.adamina(
                 color: Colors.white, fontWeight: FontWeight.bold,
                 fontSize:23,
               ),),
        ),
      ),

  ],
  ),
),

        
           ListTile(

        title: Text('Email',style: GoogleFonts.adamina(
                 color: Colors.orange, fontWeight: FontWeight.bold,
                 fontSize:23,
               ),),
        subtitle: Text('theFlutterDev@gmail.com',style: GoogleFonts.adamina(
                 color: Colors.black,
                 fontSize:23,
               ),),
        tileColor:Colors.grey[200],
      ),
      Divider(
        height: 2,
        color: Colors.black,
      ),           ListTile(
             
        title: Text('Phone Number',style: GoogleFonts.adamina(
                 color: Colors.orange, fontWeight: FontWeight.bold,
                 fontSize:23,
               ),),
        subtitle: Text('+23490311070000',style: GoogleFonts.adamina(
                 color: Colors.black,
                 fontSize:23,
               ),),
        tileColor:Colors.grey[200],
      ),
      Divider(        height: 2,
        color: Colors.black,),
                 ListTile(
             
        title: Text('Flutter Projects',style: GoogleFonts.adamina(
                 color: Colors.orange, fontWeight: FontWeight.bold,
                 fontSize:23,
               ),),
        subtitle: Text('1.2k',style: GoogleFonts.adamina(
                 color: Colors.black,
                 fontSize:23,
               ),),
        tileColor:Colors.grey[200],
      ),
      Divider(height: 2,color: Colors.black,),
                 ListTile(
             
        title: Text('Location',style: GoogleFonts.adamina(
                 color: Colors.orange, fontWeight: FontWeight.bold,
                 fontSize:23,
               ),),
        subtitle: Text('Nigeria',style: GoogleFonts.adamina(
                 color: Colors.black,
                 fontSize:23,
               ),),
        tileColor:Colors.grey[200],
      ),
         ],
      ),

         

 
     
    );
  }
}
