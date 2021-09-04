
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:musicapptask/Components/Listtile.dart';
import 'package:http/http.dart' as http;
import 'package:musicapptask/test.dart';
import 'package:musicapptask/track_list_null_safety.dart';

void main() {
  runApp(MaterialApp(
    home:  TrendingPage()));
}

class TrendingPage extends StatefulWidget {

  @override
  TrendingPageState createState()=> TrendingPageState();


}
class TrendingPageState extends State <TrendingPage> {
  @override
  void initState() {
    super.initState();
    print("shashi");
    getData();
  }
  List musicList = [
    {
      '_trackName': "Blind Lights",
      '_albumName': "After Hours",
      '_artistName': "The Weeknd",
      'url': "https://api.musixmatch.com/ws/1.1/chart.tracks.get?apikey=2d782bc7a52a41ba2fc1ef05b9cf40d7",


    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trending"),
        centerTitle: true,
        elevation: 2.0,

      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                itemCount: musicList.length,
                  itemBuilder: (context, index) =>
                      customListTile(
                        onTap: (){

                        },
                          title: musicList[index]['trackList'],
                          Album: musicList[index]['_albumName'],
                          Singer: musicList[index]['_artistName']

                      )),


          )
        ],
      ),
    );
  }

  Future<dynamic> getData() async {
    print("ak");
    var response = await http.get(
      Uri.parse(
          "https://api.musixmatch.com/ws/1.1/chart.tracks.get?apikey=2d782bc7a52a41ba2fc1ef05b9cf40d7"),
    );

    // Track_list_null_safety trackList = response.body as Track_list_null_safety;
    // print(trackList);

    Map<String, dynamic> track =json.decode(response.body);
    // print(track);
    final tracklist =Test.fromJson(track);
    print(tracklist.message!.body!.trackList);
  }
}



