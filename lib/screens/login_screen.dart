import 'package:flutter/material.dart';
import 'package:healtor/screens/registration_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // form key
  final _formKey = GlobalKey<FormState>();

  // editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    // email field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      // validator: () {},
      onSaved: (value)
        {
          emailController.text = value!;
        },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        )
      ),
    );

    // password field
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
      // validator: () {},
      onSaved: (value)
      {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.vpn_key),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
      ),
    );

    // login field
    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.blueAccent,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: const Text(
          "Login", textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold
          ),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(36.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 150,
                    child: Image.asset(
                      "assets/logo-healtor.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 45),

                  emailField,
                  SizedBox(height: 25),

                  passwordField,
                  SizedBox(height: 35),

                  loginButton,
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Don't have an account? "),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      RegistrationScreen()
                              ));
                        },
                        child: Text(
                          "SignUp",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  )
                ]
              ),
            ),
          ),
        ),
      )
    );
  }
}