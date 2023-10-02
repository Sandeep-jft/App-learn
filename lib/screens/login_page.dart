import 'package:flutter/material.dart';

class LoginPageState extends StatefulWidget {
  @override
  LoginPage createState() => LoginPage();
}

class LoginPage extends State<LoginPageState> {
  // LoginPage({super.key});
  String name = "Sandeep";
  bool showAnimation = false;

  final _formKey = GlobalKey<FormState>();

  handleFormSubmit(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        showAnimation = true;
      });

      await Future.delayed(Duration(seconds: 2));
      Navigator.pushNamed(context, '/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(title: const Text("Home page")),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(children: [
              Image.asset(
                'assets/images/login_image.jpg',
                fit: BoxFit.cover,
                // height: MediaQuery.sizeOf(context),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome To Shopping $name",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(children: [
                  TextFormField(
                    // onChanged: (value) {
                    //   // name = value;
                    //   setState(() {
                    //     name = value;
                    //   });
                    // },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter username";
                      }

                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "Username"),
                  ),
                  TextFormField(
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter password';
                      } else if (value.length < 6) {
                        return "Password must be at least 6 characters";
                      }

                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  )
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              Material(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(showAnimation ? 50 : 5),
                child: InkWell(
                  // splashColor: Colors.purple,s
                  onTap: () => handleFormSubmit(context),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 2),
                    alignment: Alignment.center,
                    child: showAnimation
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                    height: 50,
                    width: showAnimation ? 50 : 150,
                    // decoration: BoxDecoration(
                    //     color: Colors.green,
                    //    ),
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
