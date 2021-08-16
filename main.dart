import 'dart:ui';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MovieApp(),
));

class MovieApp extends StatefulWidget {
  @override
  _MovieAppState createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff124882),
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Color(0xff3496cf),
        title: Text("Movie App"),
        actions: [
          IconButton(
            onPressed:(){},
            icon: Icon(Icons.more_vert, color: Colors.white,)
          )
        ],
      ),
      //Creating the Chip list
      body:Padding(
        padding: const EdgeInsets.only(top: 15),
        child: ListView(
          children: [
            Container(
              height: 40,
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 20),
              child: ListView(
                scrollDirection: Axis.horizontal,

                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text("All",style: TextStyle(color: Colors.white)),
                      backgroundColor: Colors.orange,
                      padding: EdgeInsets.only(left: 12.0, right: 12.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text("Edit",style: TextStyle(color: Colors.white),),
                      backgroundColor: Colors.blueGrey,
                      padding: EdgeInsets.only(left: 12.0, right: 12.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text("Delete",style: TextStyle(color: Colors.white)),
                      backgroundColor: Colors.blueGrey,
                      padding: EdgeInsets.only(left: 12.0, right: 12.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text("List",style: TextStyle(color: Colors.white)),
                      backgroundColor: Colors.blueGrey,
                      padding: EdgeInsets.only(left: 12.0, right: 12.0),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, bottom: 25),
                  child: Text(
                    "Top Trends",

                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            Container(
              width:double.infinity,
              height: 230.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:15),
                    child: movieCard("JOKER", "Todd Phillips","assets/joker.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:15),
                    child: movieCard("Hindi Medium", "Saket Chaudhary","assets/hindiMedium.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:15),
                    child: movieCard("Terminator", "James Cameron","assets/terminator.jpeg"),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 25),
                  child: Text(
                    "My List",
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            Container(
              width:double.infinity,
              height: 230.0,
              margin: const EdgeInsets.only(top: 25),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:15),
                    child: movieCard("JOKER", "Todd Phillips","assets/joker.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:15),
                    child: movieCard("Interstellar", "Christopher Nolan","assets/intersteller.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:15),
                    child: movieCard("Terminator", "James Cameron","assets/terminator.jpeg"),
                  ),
                  SizedBox(height: 22.0,)
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: Stack(
                      clipBehavior: Clip.none,
                      children: <Widget>[
                        Positioned(
                          right: -40,
                          top: -40.0,
                          child: InkResponse(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: CircleAvatar(
                              child: Icon(Icons.close),
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.white,
                            ),
                          ),
                        ),
                        Form(
                          key: _formKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Movie Name'
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Director Name'
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  child: Text("Submit"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.orange,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                });
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.black,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.black,
              onPressed: () {},
            ),
            SizedBox(
              width: 40,
            ),
            IconButton(
              icon: Icon(Icons.list),
              color: Colors.black,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.account_box),
              color: Colors.black,
              onPressed: () {},
            ),
          ],
        ),
      ),

    );

  }

  Widget movieCard(String movieName,String rate,String imgPath){
    return InkWell(
      onTap: (){},
      child: Column(
        children: <Widget>[
          Card(
            elevation: 0.0,
            child:Image.asset(imgPath,fit: BoxFit.fill,width: 130.0,height: 160.0,),
          ),
          SizedBox(height: 5.0,),
          Text(movieName,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 26.0,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(height:5.0),
          Text(rate,style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontSize: 16
          ),),
        ],
      ),
    );
  }
}


