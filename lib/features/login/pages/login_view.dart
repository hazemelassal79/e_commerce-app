import 'package:e_commerce/core/config/page_route_names.dart';
import 'package:e_commerce/main.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart'; //animation
import 'package:e_commerce/features/login/widgets/custom_text_form_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}
TextEditingController userNameConroller = TextEditingController();
TextEditingController passwordConroller = TextEditingController();
var formKey = GlobalKey<FormState>(); //validate
bool isVisible = false;
class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {

    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: theme.primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeInDown(
                    delay: Duration(milliseconds: 50),
                    child: Image.asset(
                      "assets/images/route_logo.png"),
                  ),
                  Text(
                    "Welcome Back To Route",
                    style: theme.textTheme.titleLarge,
                  ),
                  Text(
                    "Please sign in with your mail",
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 40),
                  Text(
                    "User Name",
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    autofocus: false,
                    controller: userNameConroller,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty)
                        return "you must eneter your user name";
                      else{
                        return "null";
                      }
                      // var regex = RegExp(
                      //     r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                      // if (!regex.hasMatch(value)) {
                      //   return "Invalid user name";
                      // }
                      // return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      //icon: Icon(Icons.person),
                      hintText: 'enter your user name',
                      contentPadding: EdgeInsets.all(18),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 4.5,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "password",
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    autofocus: false,
                    controller: passwordConroller,
                    obscureText: !isVisible,
                    // suffixIcon: GestureDetector(
                    //     onTap: () {
                    //       isVisible=!isVisible;
                    //       setState(() {});
                    //     },
                    //     child: isVisible == true
                    //         ? Icon(Icons.visibility_off_outlined, size: 25)
                    //         : Icon(Icons.visibility_outlined, size: 25)),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "you must enter your password ";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      // icon: Icon(Icons.password),
                      hintText: 'enter your password',
                      contentPadding: EdgeInsets.all(18),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 4.5,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      textAlign: TextAlign.right,
                      "Forgot password?",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 64),
                  MaterialButton(
                    onPressed: () {
                      if(formKey.currentState!.validate()) {}
                    },
                    padding: EdgeInsets.all(0),
                    child: Container(
                      alignment: Alignment.center,
                      width: mediaQuery.size.width,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "login",
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      navigatorKey.currentState!.pushNamed(PageRouteNames.register);
                    },
                    child: Text(
                      textAlign: TextAlign.center,
                      "Don’t have an account? Create Account",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
