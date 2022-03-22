import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quiz/screens/Land.dart';
import 'package:quiz/screens/Login.dart';
import 'package:quiz/screens/circularProgress.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  late bool passwordVisible;
  void initState(){
    super.initState();
    passwordVisible = true;
  }

  final TextEditingController email = TextEditingController();
  final TextEditingController pasword = TextEditingController();
  final TextEditingController username = TextEditingController();

  void validator (){
    if (email.text.isEmpty && pasword.text.isEmpty && username.text.isEmpty ){

      Fluttertoast.showToast(
          msg:'Please Enter Username, Email and Password '
      );
    }
    else if(email.text.isEmpty){

      Fluttertoast.showToast(
          msg:'Please Enter Email '
      );
    }
    else if(pasword.text.isEmpty){
      Fluttertoast.showToast(
          msg:'Please Enter Password '
      );

    }
    else if(username.text.isEmpty){
      Fluttertoast.showToast(
          msg:'Please Enter Username '
      );

    }
    else{
      register();
    }
  }
  void register(){
    FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.text, password: pasword.text).then((UserCredential userCredetial){

      //move to home screen

      setState(() {
        loading = false;
      });
      Fluttertoast.showToast(
        msg:'Registered Successfully ',
      );
      HomeScreen();
    }).catchError((error){
      //show error

      setState(() {
        loading = false;
      });
      Fluttertoast.showToast(
        msg:error.toString(),
      );
    });

  }

  void HomeScreen(){
    Navigator.of(context).pushReplacement(

      MaterialPageRoute(builder: (context)=>Land()),
    );
  }

  bool loading =false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(


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

                Text('Sign in',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: "Amsterdam",

                  ),

                ),

                SizedBox(height: 20,),

                Image.asset('assets/images/Logo.png',
                  height: 100,
                ),


                Text('Join out team of candiates for IGSCE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,

                  ),

                ),

                SizedBox(height:5 ,),
                Text('and MSCE, win prizes along the way',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,

                  ),),
                SizedBox(height:5 ,),
                Text('and get ready for exams',

                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                  ),
                ),


                SizedBox(height:20 ,),


                Container(

                  width: 350,
                  decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 30,),
                      Container(
                        width: 290,
                        margin: const EdgeInsets.all(0.0),
                        child: TextField(
                          controller: username,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w200,

                          ),
                          decoration: InputDecoration(

                            labelText: "Username",

                            prefixIcon: Icon(Icons.person_outlined,



                              size: 15,
                            ),

                          ),
                          keyboardType: TextInputType.text,

                        ),

                      ),
                      Container(
                        width: 290,
                        margin: const EdgeInsets.all(0.0),
                        child: TextField(
                          controller: email,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w200,

                          ),
                          decoration: InputDecoration(

                            labelText: "Email",

                            prefixIcon: Icon(Icons.mail_outlined,



                              size: 15,
                            ),

                          ),
                          keyboardType: TextInputType.emailAddress,

                        ),

                      ),
                      Container(

                        width: 290,
                        margin: const EdgeInsets.all(0.0),
                        child: TextFormField(
                          controller: pasword,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w200,

                          ),
                          obscureText: passwordVisible,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(

                              labelText: 'Password',

                              prefixIcon: Icon(Icons.lock_outlined,
                                size: 15,

                              ),
                              suffixIcon: IconButton(
                                iconSize: 15,
                                icon: Icon(

                                  passwordVisible
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                ),
                                onPressed: () {
                                  setState(() {
                                    passwordVisible = !passwordVisible;
                                  });
                                },
                              )),

                        ),

                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20 ),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children:[
                            Text('Forget Password?',
                              style: TextStyle(color: Colors.grey,
                                fontFamily: 'Quickand',

                              ),
                            ),
                          ],
                        ),
                      ),
                    //  loading ? circularProgress() :
                      loading ? circularProgress() :  GestureDetector(

                        onTap:(){


                          validator();



                        },
                        child:Container(
                          alignment: Alignment.center,
                          width: 290,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),

                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xFF21bf73),
                                    Color(0xFF21bf73),
                                    Color(0xFF21bf73),
                                  ])

                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text('Sign Up',

                              style: TextStyle(color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Quicksand',
                              ),
                            ),
                          ),
                        ),),
                      SizedBox(height: 20,),
                    ],

                  ),


                ),
                SizedBox(height: 10,),


                GestureDetector(
                  onTap:(){

                    Navigator.pushReplacement(context, MaterialPageRoute(

                        builder: (context)=>

                            Login()
                    ),

                    );



                  },
                  child: Text('Already user? Just sign in',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,


                    ),

                  ),


                ),


              ],
            ),
          ],
        ),
      ),

    );
  }
}
