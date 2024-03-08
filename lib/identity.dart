import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IdentityScreen extends StatelessWidget {
  const IdentityScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Container(
            width: size.width * 0.1,
            height: size.width * 0.1,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(110, 182, 255, 0.25),
              borderRadius: BorderRadius.circular(size.width * 0.05),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back),
              color: const Color.fromRGBO(110, 182, 255, 1),
              iconSize: size.width * 0.055,
            ),
          ),
          title: Center(
            child: Text(
              "Health Assessment",
              style: TextStyle(
                fontSize: size.width * 0.05,
                fontWeight: FontWeight.w600,
                fontFamily: "PlusJakartaSans",
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/images/Vector.svg',
                fit: BoxFit.cover,
                width: size.width * 0.08,
                height: size.width * 0.08,
              ),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Who is the assessment for?",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: size.width * 0.6,
                child: ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    side: const BorderSide(
                      color: Color.fromRGBO(110, 182, 255, 0.25),
                    ),
                  ),
                  child: const Text("Myself"),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: size.width * 0.6,
                child: ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    side: const BorderSide(
                      color: Color.fromRGBO(110, 182, 255, 0.25),
                    ),
                  ),
                  child: const Text("Someone else"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
