
import 'package:flutter/material.dart';

Widget customListTile (
{
  required String title,
  required  String Album,
  required String Singer,
onTap
}
)
{
  return Container(
    padding: EdgeInsets.all(8),
    child: Row(
      children: [
        Icon(Icons.my_library_music_outlined),
    SizedBox(width: 10.0,),
    Column(
      children: [
        Text(title),
        Text(Album),
        Text(Singer)

      ],
    )






      ],
    ),
  );
}

