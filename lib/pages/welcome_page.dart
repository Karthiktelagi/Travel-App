import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/pages/home_page.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final PageController _pageController = PageController();

  final List<String> images = [
    "img/welcome-one.png",
    "img/welcome-two.png",
    "img/welcome-three.png"
  ];

  final List<Map<String, String>> pageContent = [
    {
      "title": "Explore Nature",
      "subtitle": "Mountains",
      "desc": "Feel the thrill of climbing mountains with breathtaking views.",
    },
    {
      "title": "Dive Into Adventure",
      "subtitle": "Lakes",
      "desc": "Kayak through pristine lakes and explore hidden gems.",
    },
    {
      "title": "Discover New Paths",
      "subtitle": "Forests",
      "desc": "Walk through lush forests and reconnect with nature.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: images.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  // Background Image
                  Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                  ),

                  // Dark gradient overlay
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.7),
                          Colors.transparent,
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                  ),

                  // Text Content
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 120),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AnimatedOpacity(
                          duration: const Duration(milliseconds: 600),
                          opacity: 1.0,
                          child: AppLargeText(
                            text: pageContent[index]["title"]!,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        const SizedBox(height: 15),
                        AppText(
                          text: pageContent[index]["subtitle"]!,
                          color: Colors.white70,
                          size: 24,
                        ),
                        const SizedBox(height: 25),
                        SizedBox(
                          width: 250,
                          child: AppText(
                            text: pageContent[index]["desc"]!,
                            color: Colors.white.withOpacity(0.9),
                            size: 14,
                          ),
                        ),
                        const Spacer(),
                        if (index == images.length - 1)
                          Center(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (_) => const HomePage()),
                                );
                              },
                              child: const Text(
                                "Get Started",
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        const SizedBox(height: 100),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),

          // Page Indicator
          Positioned(
            bottom: 40,
            left: 30,
            child: SmoothPageIndicator(
              controller: _pageController,
              count: images.length,
              effect: const ExpandingDotsEffect(
                activeDotColor: Colors.white,
                dotColor: Colors.white54,
                dotHeight: 8,
                dotWidth: 8,
                spacing: 5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
