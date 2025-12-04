import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './tombol_registrasi.dart';
import './tombol_login.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'assets/img/welcome_logo.jpg',
            fit: BoxFit.cover,
          ),
          // Gradient Overlay to make text more readable
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withAlpha(153),
                  Colors.black.withAlpha(77),
                  Colors.black.withAlpha(204)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.0, 0.5, 1.0],
              ),
            ),
          ),
          // Content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 80),
                  // Slogan
                  Text(
                    "Sewa Mobil Praktis, Perjalanan Jadi Dinamis",
                    style: GoogleFonts.lato(
                      fontSize: 24,
                      color: Colors.white.withAlpha(230),
                      fontWeight: FontWeight.w600,
                       shadows: [
                        Shadow(
                          blurRadius: 8.0,
                          color: Colors.black.withAlpha(179),
                          offset: const Offset(1.0, 1.0),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                   // Spacer to push buttons to the bottom
                  const Spacer(),
                  // Buttons
                  const TombolRegistrasi(),
                  const SizedBox(height: 16),
                  const TombolLogin(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
