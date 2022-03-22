import 'package:flutter/material.dart';
import 'package:quiz/screens/Home.dart';
import 'package:quiz/screens/Menu.dart';
import 'package:quiz/screens/Profile.dart';
import 'package:quiz/screens/Wishes.dart';


class ToolbarSearch extends StatefulWidget {
  static const routeName = '/ToolbarSearch';
  @override
  _ToolbarSearchState createState() => _ToolbarSearchState();
}

class _ToolbarSearchState extends State<ToolbarSearch> {

  int _currentIndex = 0;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }


  Widget appBarTitle = Text(
    "Search Page",
    style: TextStyle(color: Colors.black54,
      fontSize: 13,
      fontFamily: 'Amsterdam',),
  );
  Icon actionIcon = Icon(
    Icons.search_outlined,
    color: Colors.grey,
  );
  final key = GlobalKey<ScaffoldState>();
  final TextEditingController _searchQuery = TextEditingController();
  late List<String> _list;
  bool _isSearching = false;
  String _searchText = "";

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _isSearching = false;
    init();
  }

  void init() {
    _list = [];
    _list.add("English");
    _list.add("Mathematics");
    _list.add("Chemistry");
    _list.add("Business");
    _list.add("Physics");
    _list.add("Biology");
    _list.add("Accounting");
    _list.add("Economics");
    _list.add("History");
    _list.add("ICT");
    _list.add("Geography");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        key: key,
        appBar: buildBar(context),
        body: myBody(),
      ),
    );
  }

  Widget myBody() => Container(
    child: ListView(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      children: _isSearching ? _buildSearchList() : _buildList(),
    ),
  );

  List<ChildItem> _buildList() {
    return _list.map((contact) => ChildItem(contact)).toList();
  }

  List<ChildItem> _buildSearchList() {
    if (_searchText.isEmpty) {
      return _list.map((contact) => ChildItem(contact)).toList();
    } else {
      List<String> _searchList = [];
      for (int i = 0; i < _list.length; i++) {
        String name = _list.elementAt(i);
        if (name.toLowerCase().contains(_searchText.toLowerCase())) {
          _searchList.add(name);
        }
      }
      return _searchList.map((contact) => ChildItem(contact)).toList();
    }
  }

  buildBar(BuildContext context) {
    return AppBar(
        centerTitle: true,
        title: appBarTitle,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.dashboard, color: Colors.grey,),

          onPressed: () {

            Navigator.push(context, MaterialPageRoute(

                builder: (context)=>

                    Menu()
            )

            );

          },
        ),
        actions: <Widget>[
          IconButton(
            icon: actionIcon,
            onPressed: () {
              setState(() {
                if (this.actionIcon.icon == Icons.search) {
                  this.actionIcon = Icon(
                    Icons.close,
                    color: Colors.grey,
                  );
                  this.appBarTitle = TextField(
                    controller: _searchQuery,
                    onChanged: (value) {
                      setState(() {
                        _searchText = value;
                      });
                    },
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        hintText: "Search...",

                        hintStyle: TextStyle(color: Colors.grey,fontFamily: 'Armsterdam')),
                  );
                  _handleSearchStart();
                } else {
                  _handleSearchEnd();
                }
              });
            },
          ),
        ]);
  }

  void _handleSearchStart() {
    setState(() {
      _isSearching = true;
    });
  }

  void _handleSearchEnd() {
    setState(() {
      this.actionIcon = Icon(
        Icons.search,
        color: Colors.grey,
      );
      this.appBarTitle = Text(
        "Search",
        style: TextStyle(color: Colors.grey,fontFamily: 'Armsterdam'),
      );
      _isSearching = false;
      _searchQuery.clear();
    });
  }



  @override
  void dispose() {
    super.dispose();
  }


  Widget buildPages(){
    switch (_currentIndex){
      case 1:
        return Wishes();
      case 2:
        return ToolbarSearch();
      case 3:
        return Profile();
      case 0:
      default:
        return Home();


    }
  }
}

class ChildItem extends StatelessWidget {
  final String name;
  ChildItem(this.name);
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(this.name, style: TextStyle(color: Colors.blue)));




  }


}
