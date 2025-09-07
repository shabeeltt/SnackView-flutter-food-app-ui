import 'package:flutter/material.dart';
import 'package:learn/pages/home_page.dart';
import 'package:learn/themes/colors.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor, // deep warm red
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // App Name
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "SnackView",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "Epunda Slab",
                    letterSpacing: 1.2,
                  ),
                ),
              ),

              // Hero Image with some spacing
              Expanded(
                child: Center(
                  child: Image.asset(
                    "assets/images/ramen.png",
                    fit: BoxFit.contain,
                    width: MediaQuery.of(context).size.width * 0.7,
                  ),
                ),
              ),

              // Text Content
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Taste the world, one click away",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontFamily: "Epunda Slab",
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "A digital gateway to global cuisines, bringing authentic flavors, recipes, and culinary experiences from around the world directly to your fingertips.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.w400,
                      color: Colors.white70,
                      fontFamily: "Epunda Slab",
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Modern Button
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 24),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFFE53935), Color(0xFFB71C1C)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.2),
                            offset: const Offset(0, 4),
                            blurRadius: 8,
                          )
                        ],
                      ),
                      child: const Text(
                        "Continue",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontFamily: "Epunda Slab",
                          letterSpacing: 1.1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
