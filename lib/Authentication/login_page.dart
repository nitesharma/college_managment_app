import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_4/Authentication/signup.dart';
import 'package:project_4/pages/hom_page.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();

    super.dispose();
  }

  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Form(
          key: formKey,
          child: Container(
            padding: EdgeInsets.all(50),
            decoration: BoxDecoration(color: Theme.of(context).accentColor),
            child: Column(
              children: <Widget>[
                100.heightBox,
                "Sign In"
                    .text
                    .bold
                    .size(50)
                    .color(Theme.of(context).primaryColor)
                    .make(),
                60.heightBox,

                //

                Container(
                  height: 60,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).accentColor,
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
                      await auth.signInWithEmailAndPassword(
                          email: _email, password: _password);

                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomePage()));
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).accentColor,
                        boxShadow: [
                          BoxShadow(blurRadius: 6, offset: Offset(0, 2))
                        ]),
                    child: "Sign In"
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
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: "Don't Have an Account ?"
                        .text
                        .color(Theme.of(context).primaryColor)
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
