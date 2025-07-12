class WelcomeContent {
  final String title;
  final String subtitle;
  final String description;

  WelcomeContent({
    required this.title,
    required this.subtitle,
    required this.description,
  });
}

List<WelcomeContent> welcomeTexts = [
  WelcomeContent(
    title: "Explore",
    subtitle: "The World",
    description: "Embark on breathtaking journeys and uncover hidden destinations waiting to be explored.",
  ),
  WelcomeContent(
    title: "Connect",
    subtitle: "With Nature",
    description: "Find peace in mountain trails, tranquil lakes, and the whispering winds of the wild.",
  ),
  WelcomeContent(
    title: "Begin",
    subtitle: "Your Adventure",
    description: "Start your next chapter filled with excitement, freedom, and memories that last forever.",
  ),
];
