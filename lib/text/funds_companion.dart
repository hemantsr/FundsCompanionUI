import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class FundsCompanionText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
          text: 'Funds Companion',
          style: GoogleFonts.poppins(
            color: Color(0xff4285F4),
            fontSize: 80,
            fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}