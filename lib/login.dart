import 'package:flutter/material.dart';
import 'package:flutter_application_1/registration.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcom Back',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            Text('Enter your credentials to login'),
            SizedBox(height: 20),
            // Username TextField
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                prefixIcon: Icon(Icons.person),
                filled: true,
                fillColor: Color.fromARGB(255, 241, 212, 240),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
              ),
            ),
            SizedBox(height: 15),
            // Email TextField
           

            // Password TextField
            TextField(
              obscureText: true, // to hide the password
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.password),
                filled: true,
                fillColor: Color.fromARGB(255, 241, 212, 240),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
              ),
            ),
            SizedBox(height: 40),
            // Confirm Password TextField
           
            // Sign Up Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width, 50),
                backgroundColor: Color.fromARGB(255, 127, 32, 156),
              ),
              onPressed: () {
                // Sign-up logic here
              },
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 15),
           

                
                Padding(
                  padding: const EdgeInsets.only(left: 85),
                  child: Row(children: [
                    Text('Dont have an account?',style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(width: 15),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Registrationpage()));
                      },
                      child: Text('Signu Up',style: TextStyle(color: const Color.fromARGB(255, 214, 64, 255),fontWeight: FontWeight.bold),))
                  ],),
                )
          ],
        ),
      ),
    );
  }
}
