import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(Icons.search_rounded),
          ),
          Expanded(
            child: TextField(
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration.collapsed(
                hintText: 'Search',
                hintStyle: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.add_a_photo_rounded,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
