import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: ID_Card(),
));

class ID_Card extends StatelessWidget {
  const ID_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Virtual World Characters"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/pingu.jpg"),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 100.0,
              color: Colors.grey[800],
            ),
            Text("NAME",
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
            SizedBox(
              height: 9.0,
            ),
            Text("PINGU",
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 30.0),
            Text("CURRENT LEVEL",
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
            SizedBox(
              height: 10.0,
            ),
            Text("6 ",
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.blueGrey[400],
                ),
                SizedBox(width: 10.0),
                Text("pinguzuzu@gmail.com",
                    style: TextStyle(
                      color: Colors.blueGrey[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                    )),
              ],
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(child:Text("description"),
              decoration: BoxDecoration(
                  color: Colors.grey.shade400
              ),),
            ListTile(
              title: const Text("create world"),
            ),
            Column(
              children: [
              ],

            )
          ],
        ),
      ),
    );
  }
}


