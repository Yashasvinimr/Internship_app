import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app/pages/page_1.dart'; // Import Page1
import 'package:flutter_app/pages/page_3.dart'; // Import Page3
import 'package:flutter_app/pages/sign_in.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / 360;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(2.2 * fem, 7.3 * fem, 2.2 * fem, 2.8 * fem),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Page1()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 3 * fem),
                  width: 300 * fem,
                  height: 300 * fem,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10 * fem),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/image_2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20 * fem),
              Container(
                margin: EdgeInsets.only(bottom: 1.5 * fem),
                child: Text(
                  'Secure Internship Certificates',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lexend(
                    fontWeight: FontWeight.w500,
                    fontSize: 24 * fem,
                    color: const Color(0xFF5A91C4),
                  ),
                ),
              ),
              SizedBox(height: 20 * fem),
              Container(
                margin: EdgeInsets.only(bottom: 1.5 * fem),
                padding: EdgeInsets.symmetric(horizontal: 0.7 * fem),
                child: Text(
                  'Get industry experience, work on real time projects, guidance from domain experts and certificates',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lexend(
                    fontWeight: FontWeight.w500,
                    fontSize: 16 * fem,
                    color: const Color(0xFF343434),
                  ),
                ),
              ),
              SizedBox(height: 20 * fem),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Page1()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 3.0 * fem),
                      width: 12 * fem,
                      height: 12 * fem,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(6 * fem),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Page2()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 3.0 * fem),
                      width: 12 * fem,
                      height: 12 * fem,
                      decoration: BoxDecoration(
                        color: const Color(0xFF5A91C4),
                        borderRadius: BorderRadius.circular(6 * fem),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Page3()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 3.0 * fem),
                      width: 12 * fem,
                      height: 12 * fem,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(6 * fem),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20 * fem),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Page3()), // Navigate to Page 3
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10 * fem),
                  ),
                  minimumSize: Size(180 * fem, 40 * fem),
                  backgroundColor: const Color(0xFF5A91C4),
                ),
                child: Text(
                  'Next',
                  style: GoogleFonts.lexend(
                    fontWeight: FontWeight.w500,
                    fontSize: 18 * fem,
                    color: const Color(0xFFFFFFFF),
                  ),
                ),
              ),
              SizedBox(height: 20 * fem),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignIn()), // Navigate to Page 3
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10 * fem),
                  ),
                  minimumSize: Size(180 * fem, 40 * fem),
                  backgroundColor: const Color(0xFF5A91C4),
                ),
                child: Text(
                  'Skip',
                  style: GoogleFonts.lexend(
                    fontWeight: FontWeight.w500,
                    fontSize: 18 * fem,
                    color: const Color(0xFFFFFFFF),
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
