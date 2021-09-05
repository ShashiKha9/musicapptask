
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:musicapptask/Components/Listtile.dart';
import 'package:http/http.dart' as http;
import 'package:musicapptask/test.dart';

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

  Future<List<Track_list>> getData() async {
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
    print("hii");
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
        print("print check $snapshot.data[0]");
        return ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: snapshot.data!.length,
            itemBuilder: (BuildContext context, int index) {
              return
                Card(
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                            radius: 30,
                            /*backgroundImage: NetworkImage(
                                snapshot.data[index]['picture']['large'])*/),
                        title: Text(snapshot.data![index].track!.trackName.toString()),
                        subtitle: Text(snapshot.data![index].track!.albumName.toString()),
                        trailing: Text(snapshot.data![index].track!.trackName.toString()),

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





