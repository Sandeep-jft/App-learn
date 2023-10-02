import 'package:flutter/material.dart';

class LoginPageState extends StatefulWidget {
  @override
  LoginPage createState() => LoginPage();
}

class LoginPage extends State<LoginPageState> {
  // LoginPage({super.key});
  String name = "Sandeep";
  bool showAnimation = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(title: const Text("Home page")),
        body: SingleChildScrollView(
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
                  onChanged: (value) {
                    // name = value;
                    setState(() {
                      name = value;
                    });
                  },
                  decoration: InputDecoration(
                      hintText: "Enter Username", labelText: "Username"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                )
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () async {
                // Navigator.pushNamed(context, '/home');
                setState(() {
                  showAnimation = true;
                });

                await Future.delayed(Duration(seconds: 2));
                Navigator.pushNamed(context, '/home');
              },
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
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius:
                        BorderRadius.circular(showAnimation ? 50 : 5)),
              ),
            )
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/home');
            //   },
            //   child: Text("Login"),
            //   style: TextButton.styleFrom(
            //       foregroundColor: Colors.white, minimumSize: Size(150, 50)
            //       //  padding: EdgeInsets.all(20.0)
            //       ),
            //   // style: ButtonStyle(
            //   //     foregroundColor:
            //   //         MaterialStateColor.resolveWith((states) => Colors.white)),
            // )
          ]),
        ),
        drawer: Drawer(),
      ),
    );
  }
}
