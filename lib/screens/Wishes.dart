import 'package:flutter/material.dart';
import 'package:quiz/screens/Land.dart';
import 'package:quiz/screens/Menu.dart';

class Wishes extends StatefulWidget {
  const Wishes({Key? key}) : super(key: key);

  @override
  _WishesState createState() => _WishesState();
}

class _WishesState extends State<Wishes> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(



      appBar: PreferredSize(child: SafeArea(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child:   Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: <Widget>[


                GestureDetector(

                  onTap:(){

                    Navigator.push(context, MaterialPageRoute(

                        builder: (context)=>

                            Menu()
                    )

                    );



                  },


                  child: Container(

                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Icon(Icons.dashboard,  color:Colors.grey,

                      ),
                    ),
                  ),
                ),




                GestureDetector(
                  onTap:(){

                    Navigator.push(context, MaterialPageRoute(

                        builder: (context)=>

                            Land()
                    )

                    );



                  },
                  child: Text('< Wishes',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontFamily: 'Amsterdam',




                    ),

                  ),


                ),

                GestureDetector(

                  onTap:(){





                  },


                  child: Container(

                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Icon(Icons.notifications_outlined,  color:Colors.grey,

                      ),
                    ),
                  ),
                ),
              ],

            ),
          ),

        ),
      ), preferredSize: Size.fromHeight(100)),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Manage your Wishes'),


          ],
        ),
      ),

    );
  }
}
