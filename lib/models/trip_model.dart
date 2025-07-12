class Trip {
  final String name;
  final String image;
  final String location;
  final double price;
  final String description;

  Trip({
    required this.name,
    required this.image,
    required this.location,
    required this.price,
    required this.description,
  });
}

// Dummy Trip List
List<Trip> tripList = [
  Trip(
    name: 'Everest Base Camp',
    image: 'img/trip1.webp',
    location: 'Nepal',
    price: 499.0,
    description: 'A challenging hike with breathtaking views of Mount Everest.',
  ),
  Trip(
    name: 'Alps Explorer',
    image: 'img/trip2.webp',
    location: 'Switzerland',
    price: 399.0,
    description: 'Explore the beautiful alpine region with snow and valleys.',
  ),
  Trip(
    name: 'Himalayan Adventure',
    image: 'img/trip3.webp',
    location: 'India',
    price: 299.0,
    description: 'Perfect for beginners seeking a mix of adventure and peace.',
  ),
];
