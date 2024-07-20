import 'package:brew_buddy/screens/home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
        
            //image
        
            Center(
              child: SizedBox( height: 200, width: 200,
                child: Image.asset("assets/coffee-latte.png")),
            ),

        
            //app name
            const Text("Welcome to Brew Buddy!", style: 
            TextStyle( fontSize: 20, fontWeight: FontWeight.w900, color: Colors.brown),),

            //some space
            const SizedBox(height: 20,),
        
            //next button
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );

              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Container(
                    padding: const EdgeInsets.all(16.0),
                    width: double.infinity,
                    decoration:  BoxDecoration(color: Colors.brown,
                    borderRadius: BorderRadius.circular(10)),
                    
                    child: const Center(
                      child: Text("Next",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22
                      ),
                      ),
                    ),
                   ),
              ),
            )
        
        
          ],
        ),
      )
    );
  }
}