import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uts_tpm/components/google.dart';
import 'package:uts_tpm/components/my_button.dart';
import 'package:uts_tpm/components/my_textfield.dart';
import 'package:uts_tpm/services/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void signUserUp() async {
    // show dialog circle
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        });

    //try creating user
    try {
      // check if password is confirmed
      if (passwordController.text == confirmPasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController.text, password: passwordController.text);
      } else {
        //show error message, password don't match
        showErrorMessage("Password don\' match!");
      }

      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      showErrorMessage(e.code);
    }
  }

  //wrong log in message pop up
  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Center(
              child: Text(
            message,
            style: TextStyle(fontSize: 16),
          )),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                //logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),

                //Let\'s create an account for you!
                const SizedBox(height: 50),

                Text(
                  "Let\'s create an account for you!",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
                //email textfield
                const SizedBox(height: 50),
                MyTextField(
                  controller: emailController,
                  hintText: 'email',
                  obscureText: false,
                ),

                const SizedBox(height: 10),
                //password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'password',
                  obscureText: true,
                ),

                const SizedBox(height: 10),
                //confirm password textfield
                MyTextField(
                  controller: confirmPasswordController,
                  hintText: 'confirm password',
                  obscureText: true,
                ),

                const SizedBox(height: 25),
                //sign in button
                MyButton(
                  text: "Sign Up",
                  onTap: signUserUp,
                ),
                const SizedBox(height: 25),
                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Or continue with",
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                //google sign in buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GoogleLogin(
                        onTap: () => AuthService().SignInWithGoogle(),
                        imagePath: 'lib/images/google.png')
                  ],
                ),
                const SizedBox(height: 25),
                //not a member register now!

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'Login Now',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    )
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
