import 'package:e_commarce_site/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 2,),
            // logo 
            Padding(
              padding: EdgeInsets.all(30),
              child: Image.asset("assets/images/1.jpeg", scale: 0.8,),
            ),
        
            //
            Padding(
              padding:const EdgeInsets.all(23),
              child: Text(
                "We deliver cur at your doorstop", 
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSerif(fontSize: 36),
              ), 
            ),
            
            
            // Spacer(),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Text("Own Your Transport", textAlign: TextAlign.center, style: TextStyle(fontSize: 18),),
            ),
            
            GestureDetector(
              onTap: () {
                Get.to(()=>HomePage());
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                padding: EdgeInsetsGeometry.all(20),
                child: Text("Get Started", style: TextStyle(color: Colors.white),),
              ),
            ),
        
            Spacer(),
          ],
        ),
      ),
    );
  }
}