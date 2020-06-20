import 'package:flutter/material.dart';

import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey();

  void _submit()
  {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title:Text('Log In'),
       actions: <Widget>[
         FlatButton(
           child: Row(
            children: <Widget>[
              Text('Sign Up '),
              Icon(Icons.person_add)
            ],
           ),
           textColor: Colors.white,
           onPressed: (){
            Navigator.of(context).pushReplacementNamed(SignupScreen.routeName);
           },
         ),
       ],
     ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.lightBlueAccent,
                  Colors.blue,
                ]
              )
            ),
          ),
          Center(
            child:Card(
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                height: 250,
                width: 300,
                padding: EdgeInsets.all(16),
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                            //Email
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Email'),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value)
                            {
                              if(value.isEmpty || !value.contains('@'))
                                {
                                  return 'Invalid Email';
                                }
                              return null;
                            },
                          onSaved: (value)
                            {

                            }
                        ),
                                 //password
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Password'),
                          obscureText: true,
                          validator: (value)
                          {
                            if(value.isEmpty || value.length<8)
                              {
                                return 'Invalid Password';
                              }
                            return null;
                          },
                          onSaved: (value)
                          {

                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        RaisedButton(
                          child: Text(
                            'Submit'
                          ),
                          onPressed: ()
                          {
                          _submit();
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          color: Colors.blueAccent,
                          textColor: Colors.white,
                        ),
                       ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
