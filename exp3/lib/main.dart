import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Scaffold(body: Login()),
      home: Scaffold(body: Login()),
    );
  }
}

class Login extends StatelessWidget {
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
        child: Form(
          key: _key,
          child: Column(
            children: [
              Text("Sign In",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "User Name", border: OutlineInputBorder()),
                initialValue: "",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "User Name cannot be empty";
                  } else if (value.length <= 5) {
                    return "Username should be greater than 5";
                  } else {
                    return null;
                  }
                },
              ),
              Text(""),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
                initialValue: "",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Password cannot be empty";
                  } else if (value.length <= 8) {
                    return "Password should be greater than 8";
                  } else {
                    return null;
                  }
                },
              ),
              Text(""),
              FlatButton(
                onPressed: () => {
                  if (_key.currentState!.validate())
                    {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Login Successfully'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Done'),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      ),
                    },
                },
                child: const Text('Login'),
                color: Colors.green,
                textColor: Colors.white,
              ),
              const Text(''),
              const Text('Does not have account?'),
              TextButton(
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 25),
                ),
                onPressed: () => SignUpalert(context),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void SignUpalert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Sign Up'),
        content: Signup(),
        actions: <Widget>[
          FlatButton(
            child: Text('Close'),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      );
    },
  );
}

class Signup extends StatelessWidget {
  final _key2 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Form(
            key: _key2,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "User Name", border: OutlineInputBorder()),
                  initialValue: "",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "User Name cannot be empty";
                    } else if (value.length <= 5) {
                      return "Username should be greater than 5";
                    } else {
                      return null;
                    }
                  },
                ),
                Text(""),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                  initialValue: "",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password cannot be empty";
                    } else if (value.length <= 8) {
                      return "Password should be greater than 8";
                    } else {
                      return null;
                    }
                  },
                ),
                Text(""),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Mobile No',
                  ),
                  initialValue: "",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Mobile no cannot be empty";
                    } else if (value.length <= 10) {
                      return "Mobile no should be 10 digit";
                    } else {
                      return null;
                    }
                  },
                ),
                Text(""),
                FlatButton(
                  onPressed: () => {
                    if (_key2.currentState!.validate())
                      {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('SignUp Successfully'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'Done'),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        ),
                      },
                  },
                  child: const Text('SignUp'),
                  color: Colors.green,
                  textColor: Colors.white,
                ),
              ],
            )),
      ),
    );
  }
}
