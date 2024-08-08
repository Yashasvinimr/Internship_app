import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
class Property1Default1 extends StatelessWidget {
  const Property1Default1({super.key});

  @override
  Widget build(BuildContext context) {
  double fem = MediaQuery.of(context).size.width / 295;
    return 
    Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF5A91C4)),
        borderRadius: BorderRadius.circular(0.5*fem),
        color: const Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(0.9*fem, 0*fem, 0.9*fem, 2.4*fem),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
              ),
              child: SizedBox(
                width: 4.5*fem,
                height: 1*fem,
                child: Positioned(
                  left: 0.8*fem,
                  bottom: 0*fem,
                  child: SizedBox(
                    height: 0.9*fem,
                    child: Text(
                      'Password',
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
            ),
            Positioned(
              right: 0.6*fem,
              top: 1*fem,
              child: SizedBox(
                width: 1.3*fem,
                height: 0.8*fem,
                child: SvgPicture.asset(
                  'assets/vectors/vector_5_x2.svg',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}