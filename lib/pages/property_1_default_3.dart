import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Property1Default3 extends StatelessWidget {
  const Property1Default3({super.key});

  @override
  Widget build(BuildContext context) {
  double fem = MediaQuery.of(context).size.width / 295;
    return 
    Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE0E0E0)),
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
      child: Container(
        child: Positioned(
          left: 1*fem,
          bottom: 0.8*fem,
          child: SizedBox(
            height: 1.3*fem,
            child: Text(
              'Email or Phone Number',
              style: GoogleFonts.getFont(
                'Lexend',
                fontWeight: FontWeight.w300,
                fontSize: 0.9*fem,
                height: 0.1*fem,
                color: const Color(0xFF000000),
              ),
            ),
          ),
        ),
      ),
    );
  }
}