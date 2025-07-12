import 'package:flutter/material.dart';
import 'package:travel_app/pages/home_page.dart'; // ✅ Import it

class ResponsiveButton extends StatelessWidget {
  final double? width;
  final PageController? pageController;
  final int totalPages;

  const ResponsiveButton({
    super.key,
    this.width,
    this.pageController,
    required this.totalPages,
  });

  void _goToNextPage(BuildContext context) {
    if (pageController != null && pageController!.hasClients) {
      final currentPage = pageController!.page?.round() ?? 0;
      final nextPage = currentPage + 1;

      if (nextPage < totalPages) {
        pageController!.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      } else {
        // ✅ Last page: go to home
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const HomePage()),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _goToNextPage(context), // 👈 context passed here
      child: Container(
        width: width ?? 60,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 16, 98, 241),
        ),
        child: const Center(
          child: Text(
            ">>",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
