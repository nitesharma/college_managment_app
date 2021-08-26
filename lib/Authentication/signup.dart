import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'login_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }

  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).accentColor,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Form(
          key: formKey,
          child: Container(
            padding: EdgeInsets.all(50),
            color: Theme.of(context).primaryColor,
            child: Column(
              children: <Widget>[
                100.heightBox,
                "Sign Up"
                    .text
                    .bold
                    .size(50)
                    .color(Theme.of(context).accentColor)
                    .make(),
                60.heightBox,

                //

                Container(
                  height: 60,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).accentColor,
                      // gradient: LinearGradient(
                      //     colors: [Color(0xffE8CBC0), Color(0xff636FA4)]),
                      boxShadow: [
                        BoxShadow(blurRadius: 6, offset: Offset(0, 2))
                      ]),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email",
                        prefixIcon: Icon(
                          Icons.email,
                          color: Theme.of(context).primaryColor,
                        )),
                    validator: (value) =>
                        value != null && !EmailValidator.validate(value)
                            ? 'Enter a valid email'
                            : null,
                    onChanged: (value) {},
                  ),
                ),
                30.heightBox,

                //password field
                Container(
                  height: 60,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).accentColor,
                      // gradient: LinearGradient(
                      //     colors: [Color(0xffE8CBC0), Color(0xff636FA4)]),
                      boxShadow: [
                        BoxShadow(blurRadius: 6, offset: Offset(0, 2))
                      ]),
                  child: TextFormField(
                    controller: passController,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Theme.of(context).primaryColor,
                        )),
                    validator: (value) => value!.length < 6
                        ? "Password must be greator than 6"
                        : null,
                    onChanged: (value) {},
                  ),
                ),

                50.heightBox,

                InkWell(
                  onTap: () async {
                    final form = formKey.currentState!;
                    if (form.validate()) {
                      final _email = emailController.text;
                      final _password = passController.text;
                      await auth.createUserWithEmailAndPassword(
                          email: _email, password: _password);
                      ScaffoldMessenger.of(context)
                        ..removeCurrentSnackBar()
                        ..showSnackBar(
                            SnackBar(content: Text('your email is $_email')));
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).accentColor,
                        // gradient: LinearGradient(
                        //     colors: [Color(0xffE8CBC0), Color(0xff636FA4)]),
                        boxShadow: [
                          BoxShadow(blurRadius: 6, offset: Offset(0, 2))
                        ]),
                    child: "Sign Up"
                        .text
                        .bold
                        .size(25)
                        .color(Theme.of(context).primaryColor)
                        .make(),
                  ),
                ),
                10.heightBox,

                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: "Already Have an Account ?"
                        .text
                        .color(Theme.of(context).accentColor)
                        .size(20)
                        .make())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
