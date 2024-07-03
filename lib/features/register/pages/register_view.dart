import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  RegisterView({super.key});
  @override
  State<RegisterView> createState() => _LoginViewState();
}
TextEditingController fullNameConroller = TextEditingController();
TextEditingController emailConroller = TextEditingController();
TextEditingController phoneConroller = TextEditingController();
TextEditingController passwordConroller = TextEditingController();
var formKey = GlobalKey<FormState>(); //validate

class _LoginViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    bool isVisible = false;
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 35,
      ),
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
                    child: Image.asset("assets/images/route_logo.png"),
                  ),
                  SizedBox(height: 40),
                  Text(
                    "full Name",
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    autofocus: false,
                    controller: fullNameConroller,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty)
                        return "you must eneter your full name";
                      else {
                        return "null";
                      }
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
                      hintText: 'enter your full name',
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
                  SizedBox(height: 10),
                  Text(
                    "mobile Number",
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    autofocus: false,
                    controller: phoneConroller,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty)
                        return "you must eneter your mobile no";
                      else {
                        return "null";
                      }
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
                      hintText: 'enter your mobile no',
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
                  SizedBox(height: 10),
                  Text(
                    "E-mail address",
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    autofocus: false,
                    controller: emailConroller,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty)
                        return "you must eneter your email address";
                      else {
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
                      hintText: 'enter your email address',
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
                  SizedBox(height: 10),
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
                  SizedBox(height: 30),
                  MaterialButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {}
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
                        "sign up",
                        style: theme.textTheme.titleMedium,
                      ),
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
