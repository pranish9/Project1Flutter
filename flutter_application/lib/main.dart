import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(children: [
          Center(
            child: Image.asset(
              "assets/images/log.png",
              height: 300,
              width: 300.76,
            ),
          ),
          const Text(
            "Sign Up",
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 32,
            ),
          ),
          const SizedBox(height: 10),
          const Center(
            child: Text(
              "You can use your Fingerprint \n       to grant acces to app",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 18,
                color: Color.fromARGB(122, 0, 0, 0),
              ),
            ),
          ),
          const SizedBox(height: 25),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Color.fromARGB(122, 0, 0, 0),
                ),
                hintText: "Email address",
                contentPadding: EdgeInsets.symmetric(horizontal: 0),
              ),
            ),
          ),
          const SizedBox(height: 25),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Color.fromARGB(122, 0, 0, 0),
                ),
                hintText: "Password",
              ),
            ),
          ),
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 60),
            decoration: BoxDecoration(
                color: const Color.fromRGBO(54, 148, 143, 100),
                borderRadius: BorderRadius.circular(0)),
            child: const Center(
              child: Text(
                "Log In",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Center(
            child: Text(
              "Forgot password?",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 18,
                color: Color.fromRGBO(54, 148, 143, 100),
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const SizedBox(height: 60),
          RichText(
            text: TextSpan(
                text: "Still without Account?",
                style: const TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: " Create one.",
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print("acconut creating");
                      },
                    style: const TextStyle(
                      color: Color.fromRGBO(54, 148, 143, 100),
                    ),
                  )
                ]),
          )
        ]),
      ),
    );
  }
}
