import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';

class Registrationpage extends StatelessWidget {
  const Registrationpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Sign up',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            Text('Create your account'),
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
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
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
            SizedBox(height: 15),
            // Confirm Password TextField
            TextField(
              obscureText: true, // to hide the password
              decoration: InputDecoration(
                labelText: 'Confirm Password',
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
            SizedBox(height: 20),
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
                'Sign up',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 15),
            Text('Or'),
            SizedBox(height: 15,),
            ElevatedButton(style: ElevatedButton.styleFrom(
                              fixedSize: Size(MediaQuery.of(context).size.width, 50),

              side: BorderSide(color: const Color.fromARGB(255, 214, 64, 255),width: 2)
            ),
                onPressed: () {},
                child: Text(
                  'Sign in with Google',
                  style:
                      TextStyle(color: const Color.fromARGB(255, 214, 64, 255),fontWeight: FontWeight.bold),
                )),
                            SizedBox(height: 15),

                
                Padding(
                  padding: const EdgeInsets.only(left: 85),
                  child: Row(children: [
                    Text('Already have an account?',style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(width: 15),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                      },
                      child: Text('Login',style: TextStyle(color: const Color.fromARGB(255, 214, 64, 255),fontWeight: FontWeight.bold),))
                  ],),
                )
          ],
        ),
      ),
    );
  }
}
