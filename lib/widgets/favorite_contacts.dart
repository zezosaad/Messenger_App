import 'package:chate_app/model/message_model.dart';
import 'package:flutter/material.dart';

import '../chat_screen.dart';

class FavoriteContacts extends StatefulWidget {
  @override
  _FavoriteContactsState createState() => _FavoriteContactsState();
}

class _FavoriteContactsState extends State<FavoriteContacts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 15),
        scrollDirection: Axis.horizontal,
        itemCount: favorite.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ChatsScreen(
                    user: favorite[index],
                  ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 35.0,
                      backgroundImage: AssetImage(
                        favorite[index].imageUrl,
                      ),
                    ),
                  ),
                  Text(
                    favorite[index].name,
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.8,
                        color: Colors.white38),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
