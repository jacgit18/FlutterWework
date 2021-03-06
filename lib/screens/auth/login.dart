import 'package:flutter/material.dart';
import 'package:social_app_ui/components/custom_button.dart';
import 'package:social_app_ui/components/custom_text_field.dart';
import 'package:social_app_ui/screens/auth/register.dart';
import 'package:social_app_ui/util/const.dart';
import 'package:social_app_ui/util/router.dart';
import 'package:social_app_ui/util/validations.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:social_app_ui/services/auth.dart';


//class Login extends StatefulWidget {
//  final String email;
////  final FirebaseAuth _auth = FirebaseAuth.instance;
//
//  Login({@required this.email});
//
////  @override
////  _LoginState createState() => _LoginState();
//}
//
//class _LoginState extends State<Login> {
////  bool loading = false;
////  bool validate = false;
////  GlobalKey<FormState> formKey = GlobalKey<FormState>();
////  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
////  String email, password = '';
////  FocusNode emailFN = FocusNode();
////  FocusNode passFN = FocusNode();
////
////  login() async {
////    FormState form = formKey.currentState;
////    form.save();
////    if (!form.validate()) {
////      validate = true;
////      setState(() {});
////      showInSnackBar('Please fix the errors in red before submitting.');
////    } else {
////      Router.pushPage(
////          context,
////          Register(
////            email: email,
////          ));
////    }
////  }
////
////
////
////  void showInSnackBar(String value) {
////    _scaffoldKey.currentState.removeCurrentSnackBar();
////    _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(value)));
////  }
//
////  @override
////  Widget build(BuildContext context) {
////    return Scaffold(
////      key: _scaffoldKey,
////      body: Center(
////        child: Padding(
////          padding: const EdgeInsets.symmetric(horizontal: 20.0),
////          child: Column(
////            mainAxisSize: MainAxisSize.min,
////            children: <Widget>[
////              Hero(
////                tag: 'appname',
////                child: Material(
////                  type: MaterialType.transparency,
////                  child: Text(
////                    '${Constants.appName}',
////                    style: TextStyle(
////                      fontSize: 40.0,
////                      fontWeight: FontWeight.bold,
////                    ),
////                  ),
////                ),
////              ),
////              SizedBox(
////                height: 100.0,
////              ),
////              Form(
////                autovalidate: validate,
////                key: formKey,
////                child: Column(
////                  mainAxisSize: MainAxisSize.min,
////                  children: <Widget>[
////                    CustomTextField(
////                      enabled: false,
////                      hintText: "jideguru@gmail.com",
////                      textInputAction: TextInputAction.next,
////                      validateFunction: Validations.validateEmail,
////                      onSaved: (String val) {
////                        email = val;
////                      },
////                      initialValue: widget.email,
////                      focusNode: emailFN,
////                      nextFocusNode: passFN,
////                    ),
////                    SizedBox(
////                      height: 20.0,
////                    ),
////                    CustomTextField(
////                      enabled: !loading,
////                      hintText: "Password",
////                      textInputAction: TextInputAction.done,
////                      validateFunction: Validations.validatePassword,
////                      submitAction: login,
////                      obscureText: true,
////                      onSaved: (String val) {
////                        password = val;
////                      },
////                      focusNode: passFN,
////                    ),
////                  ],
////                ),
////              ),
////              SizedBox(
////                height: 40.0,
////              ),
////              buildButton(),
////            ],
////          ),
////        ),
////      ),
////    );
////  }
//
////  buildButton() {
////    return loading
////        ? Center(child: CircularProgressIndicator())
////        : CustomButton(
////            label: "Login",
////            onPressed: () => login(),
////          );
////  }
////  buildButton() {
////    return loading
////        ? Center(child: CircularProgressIndicator())
////        : CustomButton(
////            label: "Login",
////            onPressed: () async {
////              dynamic result = await _auth.signInAnon();
////              if(result == null){
////                print('error signing in');
////              } else {
////                print('signed in');
////                print(result);
////              }
////            }, => login(),
////          );
//
////  @override
////  Widget build(BuildContext context) {
////    return Scaffold(
////      backgroundColor: Colors.brown[100],
////      appBar: AppBar(
////        backgroundColor: Colors.brown[400],
////        elevation: 0.0,
////        title: Text('Sign in to Brew Crew'),
////      ),
////      body: Container(
////        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
////        child: RaisedButton(
////          child: Text('sign in anon'),
////          onPressed: () async {
////            dynamic result = await _auth.signInAnon();
////            if(result == null){
////              print('error signing in');
////            } else {
////              print('signed in');
////              print(result);
////            }
////          },
////        ),
////      ),
////    );
////  }
//}
