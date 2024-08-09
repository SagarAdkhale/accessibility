import 'package:accessibility/settings.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Hello, Welcome to Accessibility app",
                style: TextStyle(color: Colors.blue, fontSize: 40),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Accessibility refers to the design and development practices that ensure your app can be used effectively by everyone, including people with disabilities. This involves making the app content and features accessible to users with visual, auditory, motor, and cognitive impairments by leveraging features like screen readers, keyboard navigation, voice control, and more.',
              ),
              const SizedBox(
                height: 30,
              ),
              OutlinedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Settings()));
                
              }, child: 
               const Text(
                "Next Page",
                style: TextStyle(color: Colors.green, fontSize: 16),
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
