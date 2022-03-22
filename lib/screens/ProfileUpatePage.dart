import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/fluttertoast.dart';
import 'package:flutter/select_form_field.dart';
import 'package:flutter/bottom_navy_bar.dart';
import 'package:flutter/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:quiz/screens/Home.dart';
import 'package:quiz/screens/Land.dart';
import 'package:quiz/screens/Menu.dart';
import 'package:flutter/datetime_picker_formfield.dart';

class ProfileUpatePage extends StatefulWidget {
  const ProfileUpatePage({Key? key}) : super(key: key);

  @override
  _ProfileUpatePageState createState() => _ProfileUpatePageState();
}

class _ProfileUpatePageState extends State<ProfileUpatePage> {
  int _currentIndex = 0;

  get imageFile => null;

  Future<void> _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
    }
  }




  final format = DateFormat("yyyy-MM-dd");

  final List<Map<String, dynamic>> _grade = [
    {
      'value': '1',
      'label': '1',
      'textStyle': TextStyle(color: Colors.black,
        fontSize: 12,
        fontFamily: 'Quicksand',
        fontWeight: FontWeight.w200,),
    },
    {
      'value': '2',
      'label': '2',

      'textStyle': TextStyle(color: Colors.black,
        fontSize: 12,
        fontFamily: 'Quicksand',
        fontWeight: FontWeight.w200,),
    },

    {
      'value': '3',
      'label': '3',

      'textStyle': TextStyle(color: Colors.black,
        fontSize: 12,
        fontFamily: 'Quicksand',
        fontWeight: FontWeight.w200,),
    },
    {
      'value': '4',
      'label': '4',

      'textStyle': TextStyle(color: Colors.black,
        fontSize: 12,
        fontFamily: 'Quicksand',
        fontWeight: FontWeight.w200,),
    },
    {
      'value': '5',
      'label': '5',

      'textStyle': TextStyle(color: Colors.black,
        fontSize: 12,
        fontFamily: 'Quicksand',
        fontWeight: FontWeight.w200,),
    },
    {
      'value': '6',
      'label': '6',

      'textStyle': TextStyle(color: Colors.black,
        fontSize: 12,
        fontFamily: 'Quicksand',
        fontWeight: FontWeight.w200,),
    },
  ];
  final List<Map<String, dynamic>> _carriculumn = [
    {
      'value': 'Cambridge',
      'label': 'Cambridge',
      'textStyle': TextStyle(color: Colors.black,
        fontSize: 12,
        fontFamily: 'Quicksand',
        fontWeight: FontWeight.w200,),
    },
    {
      'value': 'MANEB',
      'label': 'MANEB',

      'textStyle': TextStyle(color: Colors.black,
        fontSize: 12,
        fontFamily: 'Quicksand',
        fontWeight: FontWeight.w200,),
    },

  ];

  final List<Map<String, dynamic>> _gender = [
    {
      'value': 'Male',
      'label': 'Male',
      'textStyle': TextStyle(color: Colors.black,
        fontSize: 12,
        fontFamily: 'Quicksand',
        fontWeight: FontWeight.w200,),
    },
    {
      'value': 'Female',
      'label': 'Female',

      'textStyle': TextStyle(color: Colors.black,
        fontSize: 12,
        fontFamily: 'Quicksand',
        fontWeight: FontWeight.w200,),
    },

  ];


  TextEditingController dateinput = TextEditingController();
  TextEditingController phonenumber= TextEditingController();
  TextEditingController carricu = TextEditingController();
  TextEditingController glade= TextEditingController();
  TextEditingController genda= TextEditingController();


  void validate(){

//&& dateinput==null
    if(carricu.text.isEmpty && glade.text.isEmpty && phonenumber.text.isEmpty && genda.text.isEmpty ){

      Fluttertoast.showToast(
        msg:'Please fill in all fields',
      );
    }

    else if (carricu.text.isEmpty){

      Fluttertoast.showToast(
        msg:'Please select your Carriculumn ',
      );
    }
    else if (glade.text.isEmpty){

      Fluttertoast.showToast(
        msg:'Please select your Grade ',
      );
    }
    else if (phonenumber.text.isEmpty){

      Fluttertoast.showToast(
        msg:'Please enter Phonenumber ',
      );
    }
    else if (dateinput==null){

      Fluttertoast.showToast(
        msg:'Please enter date of birth ',
      );
    }
    else if (genda.text.isEmpty){

      Fluttertoast.showToast(
        msg:'Please select Gender ',
      );
    }
    else {
      upload();
    }
  }

  void upload(){

    FirebaseFirestore.instance.collection('Student_Details').add({
      //'imageUrl' : imageUrl,
      'Carriculumn' : carricu.text,
      'Grade' : glade.text,
      'Phonenumber' : phonenumber.text,
      'Date' : dateinput.text,
      'Gender' : genda.text,
    }).whenComplete((){
      Fluttertoast.showToast(
        msg:'Successfully posted',
      );
      Navigator.of(context).push(MaterialPageRoute(builder: (context){
        return Land();
      }));
    }).catchError((error){
      Fluttertoast.showToast(
          msg:error.toString()
      );
    });

   /* String ImageFileName = DateTime.now().millisecondsSinceEpoch.toString();
    final Reference storageReference = FirebaseStorage.instance.ref()
        .child('images').child(ImageFileName);
    final UploadTask uploadTask = storageReference.putFile(imageFile);
    uploadTask.then((TaskSnapshot taskSnapshot){
      taskSnapshot.ref.getDownloadURL().then((imageUrl){
        savedata(imageUrl);
      } );

    }).catchError((error){

      Fluttertoast.showToast(
        msg:error.toString()
      );
    });*/
  }

  void savedata(String imageUrl){


  }

  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }
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



                GestureDetector(
                  onTap:(){

                    Navigator.push(context, MaterialPageRoute(

                        builder: (context)=>

                            Land()
                    )

                    );



                  },
                  child: Text('< Profile',
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



                SizedBox(height: 30,),
                //=============
                //     Info
                SizedBox(height: 15,),


                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0 ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:[
                      // imageFile == null ?
                      Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [






                            imageFile == null ?  GestureDetector(

                              onTap: (){

                                _getFromGallery();
                              },
                              child: Container(
                                child: CircleAvatar(
                                  maxRadius: 50,
                                  backgroundColor: Colors.white,


                                  child:
                                  Text('Add image',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Quicksand',
                                      fontSize: 15,





                                    ),


                                  ),

                                ),
                              ),
                            ) : GestureDetector(
                              onTap: (){

                                _getFromGallery();
                              },

                              child: Container(

                                decoration:BoxDecoration(
                                    image: DecorationImage(
                                      image: FileImage(imageFile),
                                      fit: BoxFit.cover,
                                    )
                                ),
                                child: CircleAvatar(
                                  maxRadius: 50,

                                ),
                              ),
                            ),


                            SizedBox(height: 15,),
                            Text('Tim Manguwo',
                              style: TextStyle(color: Colors.white,
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,


                              ),


                            ),


                          ],
                        ),
                      )
                      /*  :Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(image: FileImage(imageFile),
                          fit: BoxFit.cover,),
                        ),
                        child: CircleAvatar(

                         decoration: BoxDecoration(
                          image: DecorationImage(image: FileImage(imageFile),
                            fit: BoxFit.cover,),
                        ),


                        ),
                      ),*/






                    ],
                  ),
                ),
                SizedBox(height: 20,),




                SizedBox(height: 30,),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0 ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Text('Please fill in the information',
                              style: TextStyle(color: Colors.white,
                                fontFamily: 'Quicksand',
                                fontSize: 15,


                              ),


                            ),

                          ],
                        ),
                      ),






                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0 ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Text('below to complete your profile',
                              style: TextStyle(color: Colors.white,
                                fontFamily: 'Quicksand',
                                fontSize: 15,


                              ),


                            ),

                          ],
                        ),
                      ),






                    ],
                  ),
                ),

                SizedBox(height: 10,),

                Container(


                  width: 500,



                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),



                  ),


                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[



                      /*  Container(
                          width: 300,
                          child: SelectFormField(
                            type: SelectFormFieldType.dropdown,
                            controller: carricu,// or can be dialog
                            initialValue: 'circle',
                            labelText: 'Choose Carriculumn',
                            items: _carriculumn,
                            onChanged: (val) => print(val),
                            onSaved: (val) => print(val),
                          ) ,

                        ),*/


                        Container(

                          width: 300,

                          child: TextField
                            (

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold,

                            ),
                            decoration: InputDecoration(

                              labelText: "Choose Carriculumn",



                            ),
                            controller: carricu,
                            keyboardType: TextInputType.text,


                          ),
                        ),

                        Container(

                          width: 300,

                          child: TextField
                            (

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold,

                            ),
                            decoration: InputDecoration(

                              labelText: "Choose Grade",



                            ),
                            controller: glade,
                            keyboardType: TextInputType.text,


                          ),
                        ),
                      /*  Container(
                          width: 300,
                          child: SelectFormField(
                            controller: glade,
                            type: SelectFormFieldType.dropdown, // or can be dialog
                            initialValue: 'circle',
                            labelText: 'Choose Grade',
                            items: _grade,
                            onChanged: (val) => print(val),
                            onSaved: (val) => print(val),
                          ) ,

                        ),*/

                        Container(

                          width: 300,

                          child: TextField
                            (

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold,

                            ),
                            decoration: InputDecoration(

                              labelText: "Phone number",



                            ),
                            controller: phonenumber,
                            keyboardType: TextInputType.number,


                          ),
                        ),




                        Container(

                          width: 300,
                          child:
                          TextField(
                            controller: dateinput, //editing controller of this TextField
                            decoration: InputDecoration(
                              //icon of text field
                                labelText: "Date of Birth" //label text of field
                            ),
                            readOnly: true,  //set it true, so that user will not able to edit text
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                  context: context, initialDate: DateTime.now(),
                                  firstDate: DateTime(1980), //DateTime.now() - not to allow to choose before today.
                                  lastDate: DateTime(2100)
                              );

                              if(pickedDate != null ){
                                print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                                String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                                print(formattedDate); //formatted date output using intl package =>  2021-03-16
                                //you can implement different kind of Date Format here according to your requirement

                                setState(() {
                                  dateinput.text = formattedDate; //set output date to TextField value.
                                });
                              }else{
                                print("Date is not selected");
                              }
                            },
                          ),
                        ),
                       /* Container(
                          width: 300,
                          child: SelectFormField(
                            type: SelectFormFieldType.dropdown, // or can be dialog
                            initialValue: 'circle',
                            labelText: 'Gender',
                            items: _gender,
                            controller: genda,
                            onChanged: (val) => print(val),
                            onSaved: (val) => print(val),
                          ) ,

                        ),*/

                        Container(

                          width: 300,

                          child: TextField
                            (

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold,

                            ),
                            decoration: InputDecoration(

                              labelText: "Gender",



                            ),
                            controller: genda,
                            keyboardType: TextInputType.text,


                          ),
                        ),


                        SizedBox(height: 20,),
                      ]

                  ),



                ),


                SizedBox(height: 20,),

                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0 ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [



                          ],
                        ),
                      ),



                      GestureDetector(


                        onTap:validate,

                        child: Container(

                          child: Padding(
                            padding: EdgeInsets.all(0.0),
                            child: Text('Save',

                                style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 20,
                                  color: Colors.white,
                                )
                            ),
                          ),
                        ),
                      ),



                    ],
                  ),
                ),
                //=============

              ],
            ),
          ],
        ),
      ),


      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home_outlined),
            title: Text('Home'),
            inactiveColor: Colors.black,
            activeColor: Colors.purpleAccent,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.favorite_outline   ),
            title: Text('Favorite'),
            activeColor: Colors.red,
            inactiveColor: Colors.black,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.search),
            title: Text(
              'Search',
            ),
            activeColor: Colors.pink,
            inactiveColor: Colors.black,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person_outline),
            title: Text('Profile'),
            activeColor: Colors.blue,
            inactiveColor: Colors.black,
            textAlign: TextAlign.center,
          ),
        ],
      ),


    );
  }
}
