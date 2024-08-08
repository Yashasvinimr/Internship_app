import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Property1Default4 extends StatelessWidget {
  const Property1Default4({super.key});

  @override
  Widget build(BuildContext context) {
  double fem = MediaQuery.of(context).size.width / 295;
    return 
    Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF5A91C4)),
        borderRadius: BorderRadius.circular(0.5*fem),
        color: const Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: const Color(0x0D000000),
            offset: Offset(0*fem, 0.1*fem),
            blurRadius: 1,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            left: 0.6*fem,
            top: -0.4*fem,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
              ),
              child: SizedBox(
                width: 7.9*fem,
                height: 0.9*fem,
              ),
            ),
          ),
    Container(
            child: Positioned(
              left: 1*fem,
              top: -0.4*fem,
              child: SizedBox(
                height: 0.9*fem,
                child: Text(
                  'Email or Phone Number',
                  style: GoogleFonts.getFont(
                    'Lexend',
                    fontWeight: FontWeight.w300,
                    fontSize: 0.6*fem,
                    height: 0.1*fem,
                    color: const Color(0xFF000000),
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