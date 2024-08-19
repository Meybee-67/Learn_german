import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_german/login_screens/create_account.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();

}
class _LoginPageState extends State<LoginPage>{
  // This widget is the root of your application.

  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login', style: GoogleFonts.roboto(color: Colors.purple[900],
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
            padding: EdgeInsets.only(top:240,left:15,right:15),
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
            child: Text('Sign in',style: GoogleFonts.roboto(color: Colors.purple[900], fontSize: 20),),
            style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple[50],
          ),
              ),
            SizedBox(
              height: 130,
            ),
            TextButton(
            onPressed: ()=> Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const CreateAccount())),
            child: Text('New User? Create account',style: GoogleFonts.roboto(color: Colors.black, fontSize: 15),),
              ),
        ],
        )
        ]
      )
    );
  }
}