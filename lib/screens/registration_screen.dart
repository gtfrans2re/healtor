import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends  State<RegistrationScreen> {
  // form key
  final _formKey = GlobalKey<FormState>();

  // editing controller
  final firstNameEditingController = TextEditingController();
  final lastNameEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  final confirmPasswordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    // first name field
    final firstNameField = TextFormField(
      autofocus: false,
      controller: firstNameEditingController,
      keyboardType: TextInputType.name,
      // validator: () {},
      onSaved: (value)
      {
        firstNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.account_circle),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "First Name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
      ),
    );

    // Last name field
    final lastNameField = TextFormField(
      autofocus: false,
      controller: lastNameEditingController,
      keyboardType: TextInputType.name,
      // validator: () {},
      onSaved: (value)
      {
        lastNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.account_circle),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Last Name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
      ),
    );

    // email field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,
      // validator: () {},
      onSaved: (value)
      {
        emailEditingController.text = value!;
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
      controller: passwordEditingController,
      obscureText: true,
      // validator: () {},
      onSaved: (value)
      {
        passwordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.vpn_key),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
      ),
    );

    // confirm password field
    final confirmPasswordField = TextFormField(
      autofocus: false,
      controller: confirmPasswordEditingController,
      obscureText: true,
      // validator: () {},
      onSaved: (value)
      {
        confirmPasswordEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.vpn_key),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Confirm Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
      ),
    );

    // signup field
    final signUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.blueAccent,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: const Text(
          "SignUp", textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold
          ),
        ),
      ),
    );

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.blue),
            onPressed: () {
              // passing this to our root
              Navigator.of(context).pop();
            },
          ),
        ),
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
                      const SizedBox(height: 45),

                      firstNameField,
                      const SizedBox(height: 20),

                      lastNameField,
                      const SizedBox(height: 20),

                      emailField,
                      const SizedBox(height: 20),

                      passwordField,
                      const SizedBox(height: 20),

                      confirmPasswordField,
                      const SizedBox(height:  20),

                      signUpButton,
                      const SizedBox(height: 15),
                    ]
                ),
              ),
            ),
          ),
        )
    );
  }
}