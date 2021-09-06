
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:musicapptask/Home.dart';
import 'package:musicapptask/test.dart';
import 'package:musicapptask/trackjson.dart';

void main() {
  runApp(MaterialApp(
    home:  Home()));
}

class TrendingPage extends StatefulWidget {

  @override
  TrendingPageState createState()=> TrendingPageState();


}
class TrendingPageState extends State <TrendingPage> {
  Future taskData() async{
    var response = await http.get(Uri.parse("https://api.musixmatch.com/ws/1.1/track.get?track_id=TRACK_ID&apikey=2d782bc7a52a41ba2fc1ef05b9cf40d7"));

    Map<String, dynamic> track =json.decode(response.body);
    final tracklist =Trackjson.fromJson(track);
    print("hii");

    print(tracklist.message!.header!);



  }



  Future<List<Track_list>> getData() async {
    var response = await http.get(
      Uri.parse(
          "https://api.musixmatch.com/ws/1.1/chart.tracks.get?apikey=2d782bc7a52a41ba2fc1ef05b9cf40d7"),
    );

    // Track_list_null_safety trackList = response.body as Track_list_null_safety;
    // print(trackList);

    Map<String, dynamic> track =json.decode(response.body);
    // print(track);
    final tracklist =Test.fromJson(track);
    print(tracklist.message!.body!);
    List<Test> musicList = [];
    // for(var track in tracklist.message!.body!.trackList!){
    //   // Test musicList = Test(Track);
    //   print(track.track!.trackName);
    //   print(track.track!.albumName);
    //   print(track.track!.artistName);
    //
    //
    //
    //
    //
    // }
    return tracklist.message!.body!.trackList!;

  }

  String _name(dynamic user){
    return user['track_name'];

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trending"),
        centerTitle: true,
        elevation: 2.0,

      ),
      body: Container(
        child: FutureBuilder(
        future: getData(),
    builder: (BuildContext context, AsyncSnapshot<List<Track_list>> snapshot) {
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

                        title: Text(snapshot.data![index].track!.trackName.toString()),
                        subtitle: Text(snapshot.data![index].track!.albumName.toString()),
                        trailing: Text(snapshot.data![index].track!.artistName.toString()),



)
                    ],
                  ),
                );
            }
        );
      }else {
        return Center(child: CircularProgressIndicator());
      }
    },

    )

    )
    );

  }


    }





