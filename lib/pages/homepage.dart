import 'package:flutter/material.dart';
import 'package:login_ui/components/button.dart';
import 'package:login_ui/components/icons.dart';
import 'package:login_ui/components/textfield.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  //controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign in 
  void signUserIn(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                //logo
                Icon(
                  Icons.lock,
                  size: 100,
                ),
                SizedBox(
                  height: 50,
                ),
            
                //Welcome back
                Text(
                  'Welcome back you\'ve been missed!',
                  style: TextStyle(color: Colors.grey[700],fontSize: 16),
                ),
                SizedBox(
                  height: 25,
                ),
            
                //username textfield
                MyTextfield(controller: usernameController,hintText: "Username",obsureText: false),
          
                SizedBox(
                  height: 10,
                ),
            
                // password textfield
                MyTextfield(controller: passwordController,hintText: "Password",obsureText: true),
          
                SizedBox(
                  height: 10,
                ),
                //forgot password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
          
                SizedBox(
                  height: 25,
                ),
                //sign in button
                MyButton(onTap:signUserIn),
          
                SizedBox(
                  height: 50,
                ),
          
            
                // or continue with
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
                 child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      ), 
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('Or continue with',
                      style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    )
                  ],
                 ),
               ),
          
               SizedBox(height: 50,),
            
                // google and apple sign in
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyIcons(path: 'lib/images/google.png'),
                    SizedBox(width: 25,),
                    MyIcons(path: 'lib/images/apple.png'),
                  ],
                ),
          
                SizedBox(height: 50,),
            
                // not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a member?",
                    style: TextStyle(color: Colors.grey[700]),
                    ),
                    SizedBox(width: 4,),
                    Text("Register now",
                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      
      );
  }
}