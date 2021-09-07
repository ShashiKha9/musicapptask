import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:musicapptask/user.dart';
class Home extends StatefulWidget{
  HomeState createState()=> HomeState();

}
class HomeState extends State<Home>{
  @override
  void initState() {
    super.initState();
    this.get();
  }

  Future <dynamic> get() async {
    var response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    List <dynamic> user = json.decode(response.body);
    print(response.statusCode);
    print("hii");
    List<User>list = user.map((e) => User.fromJson(e)).toList();

    for (var i = 0; i < list.length; i++) {
      print(list[i].body.toString());

      return list[i].title;
    }
  }

  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: Container(
    child: FutureBuilder(
    future: get(),
      builder: (BuildContext context, AsyncSnapshot <dynamic> snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: snapshot.data!.length,
              itemBuilder: (BuildContext context, int index) {
                return
                  Card(
                    child: Column(
                      children: <Widget>[
                        ListTile(

                          title: Text(snapshot.data),
                          // subtitle: Text(snapshot.data![index].track!.albumName
                          //     .toString()),
                          // trailing: Text(snapshot.data![index].track!.artistName
                          //     .toString()),


                        )
                      ],
                    ),
                  );
              }
          );
        }
        else {
          return Center(child: CircularProgressIndicator());
        }
      }
    ),
  ),


) ;
  }
}