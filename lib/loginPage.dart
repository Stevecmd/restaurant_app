import 'package:flutter/material.dart';
import './main.dart';
import 'Home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image( //contains the app logo
                image: AssetImage("assets/images/logo.png"),
                fit: BoxFit.contain,
              ),

              const Text(
                "Jays Jikoni",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Please enter your email",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              const SizedBox( //space between username and password textboxes
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Please enter Your Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {}, child: const Text("Forgot Password?"))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient:
                      const LinearGradient(colors: [Colors.purple, Colors.deepOrange]),
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/screen2');
                  },
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Icon(
                Icons.fingerprint,
                size: 60,
                color: Colors.teal,
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                height: 5,
                color: Colors.black,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an Account?",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                  TextButton(
                      onPressed: () {}, child: const Text("Register."))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
