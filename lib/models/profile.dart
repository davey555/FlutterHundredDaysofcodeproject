import 'package:flutter/rendering.dart';
import 'models.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      floatingActionButton: FloatingActionButton( onPressed: (){}, backgroundColor: Colors.red, child:Icon(Icons.add,size : 40, ),),
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Profile',
        ),
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: Icon(
              EvaIcons.arrowBack,
            ),
            onPressed: () {}),
      ),
      body: Stack(
        children: <Widget>[
          ClipPath(
            child: Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              height: MediaQuery.of(ctx).size.height / 2,
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
            clipper: MyClipper(),
          ),
          ClipPath(
            child: Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              height: MediaQuery.of(ctx).size.height / 2,
              decoration: BoxDecoration(
                color: Colors.red[500],
              ),
            ),
            clipper: MyClipper(),
          ),
          SizedBox(height: 40),
          ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      height: 200,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      height: 180,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Chika David Ama',
                style: GoogleFonts.saira(
                  color: Colors.white,
                  fontSize: 23,
                  letterSpacing: 2,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Video Editor and Flutter Dev',
                style: GoogleFonts.saira(
                  color: Colors.red,
                  fontSize: 23,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 8,
                ),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Column(
                        children: <Widget>[
                          Text(
                            '1.4m',
                            style: GoogleFonts.monoton(
                              color: Colors.white,
                              fontSize: 23,
                            ),
                          ),
                          Text(
                            'Followers',
                            style: GoogleFonts.monoton(
                              color: Colors.white,
                              fontSize: 23,
                            ),
                          )
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: <Widget>[
                          Text(
                            '2000',
                            style: GoogleFonts.monoton(
                              color: Colors.white,
                              fontSize: 23,
                            ),
                          ),
                          Text(
                            'Following',
                            style: GoogleFonts.monoton(
                              color: Colors.white,
                              fontSize: 23,
                            ),
                          )
                        ],
                      )),
                    ],
                  ),
                ),
                color: Colors.red,
                elevation: 0,
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  'Favorite',
                  style: GoogleFonts.monoton(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
              
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _buildCard(ctx, "Design"),
                    SizedBox(width: 10,),
                     _buildCard(ctx, "Items"),
                    SizedBox(width: 10,),
                    _buildCard(ctx, "Products"),
                    SizedBox(width: 10,),
                     _buildCard(ctx, "Services"),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
              
            ],
          ),
      

        ],
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
    );
  }

  Widget _buildCard(
    BuildContext ctx, String title,
  ) {
    return Container(
      height: 150, width:150,
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            height: double.infinity, width:double.infinity, decoration: BoxDecoration(
              color:Colors.transparent ,             ),
          ),  Container(
            height: 140, width: 150,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10,),
            decoration: BoxDecoration(
              color:Colors.teal,
            ),                                                              
          ),
 Container(
            alignment:Alignment.center,
            height: double.infinity, width:double.infinity,
            margin: EdgeInsets.only(bottom: 10,),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/item42.jpeg'), fit:BoxFit.cover,),
              color:Colors.indigo.withOpacity(1.0),
            ),
          ),

           Container(
             height: double.infinity, width:double.infinity,   alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 10),
            child:Text(title, style :GoogleFonts.abel(color: Colors.white, fontSize:23 ,) ,),
          ),
         
        ],
      ),

    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 4, size.height - 40, size.width / 2, size.height - 20);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, size.height - 30);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
