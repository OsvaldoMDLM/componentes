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
              child:const CircleAvatar(
                child: Text('OM'),
                backgroundColor: Colors.blue,
              ),
            )
          ],
        ),
        body: const Center(
          child: FadeInImage(
            image: NetworkImage(
                "https://pley.today/__export/1596724374551/sites/mui/img/2020/08/06/image_23.png_1131826337.png"),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
          ),
        ));
  }
}
