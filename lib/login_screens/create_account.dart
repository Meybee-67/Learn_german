import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);
  @override
  State<CreateAccount> createState() => _CreateAccountState();

}
class _CreateAccountState extends State<CreateAccount>{
  // This widget is the root of your application.

  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account', style: GoogleFonts.roboto(color: Colors.purple[900],
              fontSize: 25,
              shadows: [
                    Shadow(
                      offset: const Offset(0, 4),
                      blurRadius: 4,
                      color: Colors.black.withOpacity(.15),
                    )
                  ])),
      centerTitle: true,
      backgroundColor: Colors.white,
      ),
      body : Stack(
        children : <Widget>[
          Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top:190,left:15,right:15),
            child: TextField(
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Username',
      ),
  ),
),
Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Email',
            hintText: 'Enter valid mail'
      ),
  ),
),
          Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
            obscureText: !_passwordVisible,
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
            hintText: 'Define password',
            suffixIcon: IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
              _passwordVisible
              ? Icons.visibility
              : Icons.visibility_off,
              color: Colors.purple[900],
              ),
            onPressed: () {
               // Update the state i.e. toogle the state of passwordVisible variable
              setState(() {
                  _passwordVisible = !_passwordVisible;
              });
            },
      ),
            )
    ),
),
ElevatedButton(
            onPressed: () {},
            child: Text('Sign up',style: GoogleFonts.roboto(color: Colors.purple[900], fontSize: 20),),
            style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple[50],
          ),
              ),
            SizedBox(
              height: 130,
            ),
            TextButton(
            onPressed: () {},
            child: Text('Already have an account ?',style: GoogleFonts.roboto(color: Colors.black, fontSize: 15),),
              ),
        ],
        )
        ]
      )
    );
  }
}