import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DownPage3 extends StatefulWidget {
  const DownPage3({super.key});

  @override
  State<DownPage3> createState() => _DownPage3State();
}

class _DownPage3State extends State<DownPage3> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 100.0),
                child: Column(
                  children: [
                    SizedBox(
                      width: 370,
                      child: RichText(
                          text: TextSpan(
                              text: "LONDON - ",
                              style: GoogleFonts.montserrat().copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              children: [
                            TextSpan(
                              text:
                                  " Cryptocurrencies “have no intrinsic value” and people who invest in them should be prepared to lose all their money, Bank of England Governor Andrew Bailey said.\n\nDigital currencies like bitcoin, ether and even dogecoin have been on a tear this year, reminding some investors of the 2017 crypto bubble in which bitcoin blasted toward \$20,000, only to sink as low as \$3,122 a year later.\n\nAsked at a press conference Thursday about the rising value of cryptocurrencies, Bailey said: “They have no intrinsic value. That doesn’t mean to say people don’t put value on them, because they can have extrinsic value. But they have no intrinsic value.”",
                              style: GoogleFonts.montserrat().copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )
                          ])),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
