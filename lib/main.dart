import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:morphism_card/frosted_glass_button.dart';
import 'package:morphism_card/frosted_glass_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Morphism Card',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://images.pexels.com/photos/64296/pexels-photo-64296.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          ),
        ),
        child: Center(
          child: FrostedGlassCard(
            child: Container(
              width: 300,
              height: 500,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage(
                        "https://www.nicepng.com/png/full/182-1829287_cammy-lin-ux-designer-circle-picture-profile-girl.png"),
                  ),
                  Text(
                    "Name",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  Text(
                    textAlign: TextAlign.justify,
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  FrostedGlassButton(
                      text: "Edit Profile",
                      height: 50,
                      width: 200,
                      onPressed: () {}),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
