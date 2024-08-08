import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
class Property1Default2 extends StatelessWidget {
  const Property1Default2({super.key});

  @override
  Widget build(BuildContext context) {
  double fem = MediaQuery.of(context).size.width / 295;
    return 
    Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE0E0E0)),
        borderRadius: BorderRadius.circular(0.5*fem),
        color: const Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(0.9*fem, 0.7*fem, 0.9*fem, 0.7*fem),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.7*fem, 0*fem),
              child: SizedBox(
                width: 14.5*fem,
                child: Text(
                  'Password',
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
            Container(
              margin: EdgeInsets.fromLTRB(0*fem, 0.3*fem, 0*fem, 0.3*fem),
              child: SizedBox(
                width: 1.3*fem,
                height: 0.8*fem,
                child: SvgPicture.asset(
                  'assets/vectors/vector_2_x2.svg',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}