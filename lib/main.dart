import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Intro",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image(image:NetworkImage("https://png.pngtree.com/background/20220714/original/pngtree-cool-blue-background-aesthetic-picture-image_1606288.jpg"),
            fit:BoxFit.cover,
            color: Colors.black,
            colorBlendMode: BlendMode.overlay,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(

                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Email",

                        ),
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                      )
                    ],
                  ),
                )
                ),
                Form(child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Enter Password",

                        ),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                      )
                    ],
                  ),
                )
                )

              ],
            )

          ],
        ),

      ),
    );
  }
}



