import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:musicapptask/test.dart';
import 'package:musicapptask/trackjson.dart';

class TaskScreen extends StatefulWidget{
  TaskScreenState createState()=> TaskScreenState();
}

class TaskScreenState extends State  <TaskScreen> {
  @override
  void initState() {
    super.initState();
    this.taskData();
  }

  Future taskData() async {
    var response = await http.get(Uri.parse(
        "https://api.musixmatch.com/ws/1.1/track.get?track_id=TRACK_ID&apikey=2d782bc7a52a41ba2fc1ef05b9cf40d7"));

    Map<String, dynamic> track = json.decode(response.body);
    final tracklist = Trackjson.fromJson(track);
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

    Map<String, dynamic> track = json.decode(response.body);
    // print(track);
    final tracklist = Test.fromJson(track);
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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: FutureBuilder(
            future: getData(),
            builder: (BuildContext context,
                AsyncSnapshot<List<Track_list>> snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    Text("Name"),
                    Text(snapshot.data![3].track!.trackName.toString()),
                    Text(snapshot.data![3].track!.trackShareUrl.toString())


                  ],
                );
              }else {
                return Center(child: CircularProgressIndicator());
              }
            }
        )

    );
  }
}