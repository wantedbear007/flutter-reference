import "package:flutter/material.dart";
import "package:flutter_garbage/utils/routes.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "Bhanu !";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      // color: Colors.cyanAccent,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_logo.png",
              fit: BoxFit.contain,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.00,
            ),
            Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter Username", labelText: "Username"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password", hintText: "Enter password"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.00,
            ),
            Material(
              borderRadius: BorderRadius.circular(changeButton ? 10 : 50),
              color: Colors.green,
              child: InkWell(
                onTap: () async {
                  // Navigator.pushNamed(context, MyRoutes.homeRoute);
                  setState(() {
                    changeButton = true;
                  });

                  await Future.delayed((Duration(seconds: 1)));
                  await Navigator.pushNamed(context, MyRoutes.homeRoute);
                  setState(() {
                    changeButton = false;
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height: 50,

                  width: changeButton ? 70 : 200,
                  // color: Colors.green,
                  alignment: Alignment.center,
                  // decoration: BoxDecoration(
                  //     // shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                  //     borderRadius: BorderRadius.circular(changeButton ? 10 : 50),
                  //     color: Colors.green),
                  child: changeButton
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                ),
              ),
            )
            // ElevatedButton(
            //
            //     style: TextButton.styleFrom(
            //         padding:
            //             const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
            //     onPressed: () => {
            //       Navigator.pushNamed(context, MyRoutes.homeRoute)
            //       // validateUser()
            //     },
            //     child: const Text(
            //       "Login",
            //       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //     ))
          ],
        ),
      ),
    );
  }
}
