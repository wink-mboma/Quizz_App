import 'package:flutter/material.dart';
import 'package:quiz/screens/AllSubject.dart';
import 'package:quiz/screens/Menu.dart';
import 'package:quiz/screens/ReadyPage.dart';
import 'package:quiz/screens/SubjectPage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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

                    Navigator.pushReplacement(context, MaterialPageRoute(

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



                Image.asset('assets/images/Logo.png',
                  height: 70,

                ),

                GestureDetector(

                  onTap:(){







                  },


                  child: Container(

                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Icon(Icons.notifications_outlined,
                        color: Colors.grey,

                      ),
                    ),
                  ),
                ),
              ],

            ),
          ),

        ),
      ), preferredSize: Size.fromHeight(100)),


      body: Container(

        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,

                colors:[
                  Color(0xFF1A237E),
                  Color(0xFF0D47A1),
                  Color(0xFF01579B),
                ]

            )
        ),
        child: new ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                //========================

                SizedBox(height: 15,),



                Container(
                  height: 205,
                  width: 370,
                  decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      image: DecorationImage(image: AssetImage('assets/images/main.png'),
                          fit: BoxFit.fitWidth)
                  ),


                ),

                SizedBox(height: 30,),


                Container(


                  height: 90,
                  width: 370,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7),



                  ),


                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[


                        Image.asset('assets/images/hour-glasses.png',
                          height: 40,

                        ),

                        Text('Weekly Quiz starts in : 24:40 hrs',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),),


                        Text('',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 15,
                          ),),
                        Text('',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 15,
                          ),),
                        Text('',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 15,
                          ),),
                        Text('',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 15,
                          ),),
                      ]

                  ),
                ),


                SizedBox(height: 30,),
                Padding(
                  padding: EdgeInsets.fromLTRB(18, 20, 0, 0 ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      Text('Available Quizzes',
                        style: TextStyle(color: Colors.white,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,

                        ),


                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(18, 0, 0, 0 ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      Text('All the quizzes that are ready to be taken are available ',

                        style: TextStyle(color: Colors.white,
                          fontFamily: 'Quicksand',
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(18, 0, 0, 0 ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      Text('below. They can be played anytime you feel ready',
                        style: TextStyle(color: Colors.white,
                          fontFamily: 'Quicksand',
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10,),


                Container(


                  height: 220,


                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),



                  ),


                  child:   Container(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),

                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: <Widget>[

                          Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(color: Colors.white,
                                borderRadius: BorderRadius.circular(20,),
                                image: DecorationImage(image: AssetImage('assets/images/Sample quiz.png'),
                                    fit: BoxFit.fitHeight)
                            ),


                          ),



                          SizedBox(height: 30,),



                          Container(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 25,),
                                  Container(
                                      child:Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                            Icon(Icons.star, size: 20.0, color: Colors.amber,

                                            ),

                                            Text('3.5',
                                              style: TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 15,

                                                fontWeight: FontWeight.bold,
                                              ),),

                                          ]
                                      )
                                  ),


                                  SizedBox(height: 10,),
                                  Text('Sample Quiz',
                                    style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize: 15,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  Text('Various Subjects',
                                    style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize: 15,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                    ),),


                                  SizedBox(height: 10,),
                                  Text('Various topics',
                                    style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize: 15,
                                      color: Colors.grey,

                                    ),
                                  ),

                                  SizedBox(height: 10,),
                                  GestureDetector(

                                    onTap:(){

                                      Navigator.push(context, MaterialPageRoute(

                                          builder: (context)=>

                                              ReadyPage()
                                      )

                                      );



                                    },


                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 100,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4),

                                          gradient: LinearGradient(
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight,
                                              colors: [
                                                Color(0xFF4f98ca),
                                                Color(0xFF4f98ca),
                                                Color(0xFF4f98ca),
                                              ])

                                      ),

                                      child: Padding(
                                        padding: EdgeInsets.all(0),
                                        child: Text('Take Quiz -->',

                                          style: TextStyle(color: Colors.white,
                                            fontSize: 15,
                                            fontFamily: 'Quicksand',
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),

                                    ),
                                  )
                                ]




                            ),
                          ),


                          Text('',
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),),
                          Text('',
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),),




                          Icon(Icons.arrow_forward_ios,
                            size: 50.0, color: Colors.lightBlue,


                          ),

                        ],


                      ),
                    ),
                  ),


                ),

                SizedBox(height: 50,),

                /// subjects container
                Container(


                  width: 350,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[


                        Text('Subjects',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Quicksand',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,

                          ),),


                        GestureDetector(
                          onTap:(){

                            Navigator.push(context, MaterialPageRoute(

                                builder: (context)=>

                                    AllSubject()
                            )

                            );



                          },
                          child: Text('View all',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontSize: 15,


                            ),

                          ),


                        ),



                      ]

                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0 ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      Text('The app register eleven subjects for the cambrigde',

                        style: TextStyle(color: Colors.white,
                          fontFamily: 'Quicksand',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0 ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      Text('carriculum and ten subjects from MANEB carriculum',
                        style: TextStyle(color: Colors.white,
                          fontFamily: 'Quicksand',
                        ),
                      ),
                    ],
                  ),
                ),




                SizedBox(height: 10,),

                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0 ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                      Container(
                        height: 150,
                        width: 115,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                ])



                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[

                              GestureDetector(

                                onTap:(){

                                  Navigator.push(context, MaterialPageRoute(

                                      builder: (context)=>

                                          SubjectPage()
                                  )

                                  );



                                },


                                child: Container(

                                  height: 95,
                                  width: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),


                                    image: DecorationImage(image: AssetImage('assets/images/logygy.png'),
                                        fit: BoxFit.fitHeight),



                                  ),



                                ),

                              ),
                              Text('Mathematics',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 15,


                                ),

                              ),
                              Text('7 Quizzes',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 10,


                                ),

                              ),


                            ]

                        ),

                      ),
                      Container(
                        height: 150,
                        width: 115,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                ])



                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[

                              GestureDetector(

                                onTap:(){

                                  Navigator.push(context, MaterialPageRoute(

                                      builder: (context)=>

                                          SubjectPage()
                                  )

                                  );



                                },


                                child: Container(

                                  height: 95,
                                  width: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),


                                    image: DecorationImage(image: AssetImage('assets/images/loggy.png'),
                                        fit: BoxFit.fitHeight),



                                  ),



                                ),

                              ),
                              Text('English',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 15,


                                ),

                              ),
                              Text('7 Quizzes',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 10,


                                ),

                              ),


                            ]

                        ),

                      ),
                      Container(
                        height: 150,
                        width: 115,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                ])



                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[

                              GestureDetector(

                                onTap:(){

                                  Navigator.push(context, MaterialPageRoute(

                                      builder: (context)=>

                                          SubjectPage()
                                  )

                                  );



                                },


                                child: Container(

                                  height: 95,
                                  width: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),


                                    image: DecorationImage(image: AssetImage('assets/images/logyggy.png'),
                                        fit: BoxFit.fitHeight),



                                  ),



                                ),

                              ),
                              Text('Physics',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 15,


                                ),

                              ),
                              Text('7 Quizzes',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 10,


                                ),

                              ),


                            ]

                        ),

                      ),

                    ],
                  ),
                ),

                SizedBox(height: 10,),

                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0 ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                      Container(
                        height: 150,
                        width: 115,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                ])



                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[

                              GestureDetector(

                                onTap:(){

                                  Navigator.push(context, MaterialPageRoute(

                                      builder: (context)=>

                                          SubjectPage()
                                  )

                                  );



                                },


                                child: Container(

                                  height: 95,
                                  width: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),


                                    image: DecorationImage(image: AssetImage('assets/images/logy.png'),
                                        fit: BoxFit.fitHeight),



                                  ),



                                ),

                              ),
                              Text('Biology',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 15,


                                ),

                              ),
                              Text('7 Quizzes',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 10,


                                ),

                              ),


                            ]

                        ),

                      ),
                      Container(
                        height: 150,
                        width: 115,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                ])



                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[

                              GestureDetector(

                                onTap:(){

                                  Navigator.push(context, MaterialPageRoute(

                                      builder: (context)=>

                                          SubjectPage()
                                  )

                                  );



                                },


                                child: Container(

                                  height: 95,
                                  width: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),


                                    image: DecorationImage(image: AssetImage('assets/images/logyyy.png'),
                                        fit: BoxFit.fitHeight),



                                  ),



                                ),

                              ),
                              Text('Chemistry',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 15,


                                ),

                              ),
                              Text('7 Quizzes',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 10,


                                ),

                              ),


                            ]

                        ),

                      ),
                      Container(
                        height: 150,
                        width: 115,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                ])



                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[

                              GestureDetector(

                                onTap:(){

                                  Navigator.push(context, MaterialPageRoute(

                                      builder: (context)=>

                                          SubjectPage()
                                  )

                                  );



                                },


                                child: Container(

                                  height: 95,
                                  width: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),


                                    image: DecorationImage(image: AssetImage('assets/images/logyy.png'),
                                        fit: BoxFit.fitHeight),



                                  ),



                                ),

                              ),
                              Text('Business',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 15,


                                ),

                              ),
                              Text('7 Quizzes',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 10,


                                ),

                              ),


                            ]

                        ),

                      ),

                    ],
                  ),
                ),

                SizedBox(height: 10,),



                ///subject row ends here

                SizedBox(height: 30,),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 20, 0, 0 ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      Text('Partner Universities',
                        style: TextStyle(color: Colors.white,
                          fontFamily: 'Quicksand',
                          fontSize: 20,

                        ),


                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0 ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      Text('We can easily assist you get into the  following universities',

                        style: TextStyle(color: Colors.white,
                          fontFamily: 'Quicksand',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0 ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      Text('and many more Universities around the world.',
                        style: TextStyle(color: Colors.white,
                          fontFamily: 'Quicksand',
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20,),




                Container(
                  height: 150,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: new ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      new Container(
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        margin: EdgeInsets.all(10.0),

                        child: new ClipRRect(
                          borderRadius: new BorderRadius.circular(10.0),
                          child: new Image(
                            image: new AssetImage('assets/images/3.png'),
                            height: 100,
                            width: 110,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),

                      new Container(
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        margin: EdgeInsets.all(10.0),

                        child: new ClipRRect(
                          borderRadius: new BorderRadius.circular(10.0),
                          child: new Image(
                            image: new AssetImage('assets/images/2.png'),
                            height: 100,
                            width: 110,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),

                      new Container(
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        margin: EdgeInsets.all(10.0),

                        child: new ClipRRect(
                          borderRadius: new BorderRadius.circular(10.0),
                          child: new Image(
                            image: new AssetImage('assets/images/1.png'),
                            height: 100,
                            width: 110,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),


                      new Container(
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        margin: EdgeInsets.all(10.0),

                        child: new ClipRRect(
                          borderRadius: new BorderRadius.circular(10.0),
                          child: new Image(
                            image: new AssetImage('assets/images/3.png'),
                            height: 100,
                            width: 110,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),

                      new Container(
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        margin: EdgeInsets.all(10.0),

                        child: new ClipRRect(
                          borderRadius: new BorderRadius.circular(10.0),
                          child: new Image(
                            image: new AssetImage('assets/images/2.png'),
                            height: 100,
                            width: 110,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ],
                  ),


                ),

                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 20, 0, 0 ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      Text('Latest Updates',
                        style: TextStyle(color: Colors.white,
                          fontFamily: 'Quicksand',
                          fontSize: 20,

                        ),


                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0 ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      Text('Get latest news about examination updates from',

                        style: TextStyle(color: Colors.white,
                          fontFamily: 'Quicksand',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0 ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      Text('the Britih Council and Ministry of Education.',
                        style: TextStyle(color: Colors.white,
                          fontFamily: 'Quicksand',
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10,),

                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0 ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Container(
                        height: 300,
                        width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                ])



                        ),
                        child: Column(

                            mainAxisAlignment: MainAxisAlignment.start,
                            children:[

                              SizedBox(height: 5,),
                              GestureDetector(



                                child: Container(

                                  height: 110,
                                  width: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),


                                    image: DecorationImage(image: AssetImage('assets/images/examm.jpg'),
                                        fit: BoxFit.fitHeight),



                                  ),



                                ),

                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(18, 5, 0, 0 ),
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    Text('November 2021 series for ',
                                      style: TextStyle(color: Colors.black87,
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,

                                      ),


                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(18, 0, 0, 0 ),
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    Text('center running exams',
                                      style: TextStyle(color: Colors.black87,
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,

                                      ),


                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(18, 5, 0, 0 ),
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    Text('A guide to the November 2021',
                                      style: TextStyle(color: Colors.black87,
                                        fontFamily: 'Quicksand',

                                        fontSize: 10,

                                      ),


                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(18, 0, 0, 0 ),
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    Text('exam series for centers running ',
                                      style: TextStyle(color: Colors.black87,
                                        fontFamily: 'Quicksand',

                                        fontSize: 10,

                                      ),


                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(18, 0, 0, 0 ),
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    Text('exams including component',
                                      style: TextStyle(color: Colors.black87,
                                        fontFamily: 'Quicksand',
                                        fontSize: 10,

                                      ),


                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(18, 0, 0, 0 ),
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    Text('adjuncement, exemptiond and ',
                                      style: TextStyle(color: Colors.black87,
                                        fontFamily: 'Quicksand',

                                        fontSize: 10,

                                      ),


                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(18, 0, 0, 0 ),
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    Text('special considerations',
                                      style: TextStyle(color: Colors.black87,
                                        fontFamily: 'Quicksand',

                                        fontSize: 10,

                                      ),


                                    ),
                                  ],
                                ),
                              ),


                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 5, 0, 0 ),
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    ButtonBar(
                                      alignment: MainAxisAlignment.start,
                                      children: <Widget> [
                                        OutlineButton(
                                          child: Text('Read more '),
                                          onPressed: null,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),


                            ]

                        ),

                      ),
                      Container(
                        height: 300,
                        width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                ])



                        ),
                        child: Column(

                            mainAxisAlignment: MainAxisAlignment.start,
                            children:[

                              SizedBox(height: 5,),
                              GestureDetector(



                                child: Container(

                                  height: 110,
                                  width: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),


                                    image: DecorationImage(image: AssetImage('assets/images/exam.jpg'),
                                        fit: BoxFit.fitHeight),



                                  ),



                                ),

                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(18, 5, 0, 0 ),
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    Text('November 2021 series for ',
                                      style: TextStyle(color: Colors.black87,
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,

                                      ),


                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(18, 0, 0, 0 ),
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    Text('center running exams',
                                      style: TextStyle(color: Colors.black87,
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,

                                      ),


                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(18, 5, 0, 0 ),
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    Text('A guide to the November 2021',
                                      style: TextStyle(color: Colors.black87,
                                        fontFamily: 'Quicksand',

                                        fontSize: 10,

                                      ),


                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(18, 0, 0, 0 ),
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    Text('exam series for centers running ',
                                      style: TextStyle(color: Colors.black87,
                                        fontFamily: 'Quicksand',

                                        fontSize: 10,

                                      ),


                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(18, 0, 0, 0 ),
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    Text('exams including component',
                                      style: TextStyle(color: Colors.black87,
                                        fontFamily: 'Quicksand',
                                        fontSize: 10,

                                      ),


                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(18, 0, 0, 0 ),
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    Text('adjuncement, exemptiond and ',
                                      style: TextStyle(color: Colors.black87,
                                        fontFamily: 'Quicksand',

                                        fontSize: 10,

                                      ),


                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(18, 0, 0, 0 ),
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    Text('special considerations',
                                      style: TextStyle(color: Colors.black87,
                                        fontFamily: 'Quicksand',

                                        fontSize: 10,

                                      ),


                                    ),
                                  ],
                                ),
                              ),


                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 5, 0, 0 ),
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    ButtonBar(
                                      alignment: MainAxisAlignment.start,
                                      children: <Widget> [
                                        OutlineButton(
                                          child: Text('Read more '),
                                          onPressed: null,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),


                            ]

                        ),

                      ),


                    ],
                  ),
                ),


                SizedBox(height: 10,),








                SizedBox(height: 30,),
                //=============
                //     Info

                //=============

              ],
            ),
          ],
        ),
      ),



    );
  }
}
