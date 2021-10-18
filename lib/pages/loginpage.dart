import 'package:flutter/material.dart';
import 'package:mehedi/pages/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(
              width: 300,
              height: 200,
              child: Image.asset(
                "assets/images/login3.png",
                fit: BoxFit.fill,
              )),
          const SizedBox(
            height: 20,
          ),
          const Text("Creative BD",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter your user ID",
                    labelText: "User ID",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter your Password",
                    labelText: "Password",
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
            child: Text("Login"),
            style: TextButton.styleFrom(
                backgroundColor: Colors.red, minimumSize: const Size(100, 40)),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text("Forget Password?"),
        ],
      ),
    );
  }
}
