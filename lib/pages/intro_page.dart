import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // logo
              Image.asset(
                'lib/images/logo.png',
                height: 200,
              ),

              const SizedBox(height: 50,),

              // companion of better life
              Text(
                'Companion of better life',
                style: TextStyle(
                  fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[400],
                ),
              ),

             const SizedBox(height: 20,),

              // it's your love. it's our commitment. walton again is a super brand.
              Text(
                'It\'s your love. It\'s our commitment. Walton again is a super brand.',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 60,),

              // shop now button
              GestureDetector(
                onTap: () => Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => HomePage(),
                ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: Colors.blue[400],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        'Shop now',
                        style: TextStyle(
                          color: Colors.grey[200],
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
