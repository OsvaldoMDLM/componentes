import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: const EdgeInsets.all(5.0),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cronicaglobal.elespanol.com/uploads/s1/61/11/50/7/main-700b9bff30.jpeg'),
              radius: 30,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: const CircleAvatar(
              child: Text('OM'),
              backgroundColor: Colors.blue,
            ),
          )
        ],
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: ListView(
        padding: const EdgeInsets.all(10.5),
        children: <Widget>[
          _userAvatar(),
        ],
      ),
    );
  }

  Widget _userAvatar() {
    // ignore: avoid_unnecessary_containers
    final card = Container(
      //clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image:
                NetworkImage("https://images3.alphacoders.com/997/997848.jpg"),
            fadeInDuration: Duration(milliseconds: 150),
            height: 250.0,
            fit: BoxFit.cover,
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(1.0,20),
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: card,
      ),
    );
  }
}
