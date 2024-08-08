import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app/pages/sign_up.dart';
import 'package:flutter_app/pages/main.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _obscurePassword = true;
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _emailFocusNode.addListener(_updateEmailFocus);
    _passwordFocusNode.addListener(_updatePasswordFocus);
  }

  @override
  void dispose() {
    _emailFocusNode.removeListener(_updateEmailFocus);
    _passwordFocusNode.removeListener(_updatePasswordFocus);
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _updateEmailFocus() {
    setState(() {}); // Trigger a rebuild
  }

  void _updatePasswordFocus() {
    setState(() {}); // Trigger a rebuild
  }

  void _signIn() {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    )
        .then((UserCredential userCredential) {
      // Successfully signed in
      // Navigate to the main page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Main()),
      );
    }).catchError((error) {
      String errorMessage;
      if (error.code == 'user-not-found') {
        errorMessage = 'No user found for that email.';
      } else if (error.code == 'wrong-password') {
        errorMessage = 'Wrong password provided.';
      } else {
        errorMessage = 'An error occurred. Please try again.';
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorMessage)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / 360;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(2 * fem, 7.3 * fem, 2 * fem, 2.8 * fem),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 4 * fem), // Increased space
              Text(
                'Sign In',
                style: GoogleFonts.lexend(
                  fontWeight: FontWeight.w700,
                  fontSize: 28 * fem, // Increased font size
                  color: const Color(0xFF000000),
                ),
              ),
              SizedBox(height: 24 * fem), // Increased space
              Container(
                width: 300 * fem,
                padding: EdgeInsets.symmetric(horizontal: 0.9 * fem),
                margin: EdgeInsets.only(bottom: 2 * fem), // Increased margin
                decoration: BoxDecoration(
                  border: Border.all(
                      color: _emailFocusNode.hasFocus
                          ? const Color(0xFF5A91C4)
                          : const Color(0xFFE0E0E0)),
                  borderRadius: BorderRadius.circular(10.0 * fem),
                  color: const Color(0xFFFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x0D000000),
                      offset: Offset(0 * fem, 0.1 * fem),
                      blurRadius: 1,
                    ),
                  ],
                ),
                child: Focus(
                  focusNode: _emailFocusNode,
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email or Phone Number',
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      labelStyle: GoogleFonts.lexend(
                        fontWeight: FontWeight.w300,
                        fontSize: 16 * fem,
                        color: _emailFocusNode.hasFocus
                            ? const Color(0xFF5A91C4)
                            : const Color(0xFF000000).withOpacity(0.5),
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(10 * fem),
                    ),
                    style: GoogleFonts.lexend(
                      fontWeight: FontWeight.w300,
                      fontSize: 16 * fem,
                      color: const Color(0xFF000000),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20 * fem), // Increased space
              Container(
                width: 300 * fem,
                padding: EdgeInsets.symmetric(horizontal: 1 * fem),
                margin: EdgeInsets.only(bottom: 2 * fem),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: _passwordFocusNode.hasFocus
                          ? const Color(0xFF5A91C4)
                          : const Color(0xFFE0E0E0)),
                  borderRadius: BorderRadius.circular(10.0 * fem),
                  color: const Color(0xFFFFFFFF),
                ),
                child: Focus(
                  focusNode: _passwordFocusNode,
                  child: TextField(
                    controller: _passwordController,
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      labelStyle: GoogleFonts.lexend(
                        fontWeight: FontWeight.w300,
                        fontSize: 16 * fem,
                        color: _passwordFocusNode.hasFocus
                            ? const Color(0xFF5A91C4)
                            : const Color(0xFF000000).withOpacity(0.5),
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(10 * fem),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.all(0.5 * fem),
                          child: Transform.translate(
                            offset: Offset(-4.0 * fem, 0),
                            child: _obscurePassword
                                ? Icon(
                              Icons.visibility_off,
                              color: Colors.grey,
                              size: 20 * fem,
                            )
                                : Icon(
                              Icons.visibility,
                              color: const Color(0xFF5A91C4),
                              size: 20 * fem,
                            ),
                          ),
                        ),
                      ),
                    ),
                    style: GoogleFonts.lexend(
                      fontWeight: FontWeight.w300,
                      fontSize: 16 * fem,
                      color: const Color(0xFF000000),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20 * fem), // Increased space
              GestureDetector(
                onTap: _signIn,
                child: Container(
                  width: 300 * fem,
                  height: 50 * fem,
                  decoration: BoxDecoration(
                    color: const Color(0xFF5A91C4),
                    borderRadius: BorderRadius.circular(10.0 * fem),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.lexend(
                      fontWeight: FontWeight.w500,
                      fontSize: 18 * fem,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20 * fem),
              GestureDetector(
                onTap: () {
                  // Navigate to the sign-up page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUp()),
                  );
                },
                child: RichText(
                  text: TextSpan(
                    text: 'Don’t have an account? ',
                    style: GoogleFonts.lexend(
                      fontWeight: FontWeight.w400,
                      fontSize: 16 * fem,
                      color: const Color(0xFF000000),
                    ),
                    children: [
                      TextSpan(
                        text: 'Sign Up',
                        style: GoogleFonts.lexend(
                          fontWeight: FontWeight.w400,
                          fontSize: 16 * fem,
                          color: const Color(0xFF5A91C4),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
