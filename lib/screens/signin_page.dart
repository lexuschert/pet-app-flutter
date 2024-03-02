import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SigninState();
  }
}

class _SigninState extends State<SignInPage> {
  String _email = '';
  String _password = '';

  _onChangeEmail(String val) {
    setState(() => _email = val);
  }

  _onChangePassword(String val) {
    setState(() => _password = val);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align(
            alignment: Alignment.center,
            child: Container(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: TextField(
                      onChanged: _onChangeEmail,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          hintText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: TextField(
                      onChanged: _onChangePassword,
                      decoration: const InputDecoration(
                          hintText: 'Пароль',
                          border: OutlineInputBorder(),
                          hintStyle: TextStyle(color: Colors.grey)),
                      obscureText: true,
                    ),
                  ),
                  Text(_email),
                  Text(_password),
                ],
              ),
            )));
  }
}
