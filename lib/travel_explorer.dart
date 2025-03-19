import 'package:flutter/material.dart';
import 'package:flutter_sliver_practise/category_button.dart';
import 'package:flutter_sliver_practise/destination_card.dart';
import 'package:flutter_sliver_practise/experience_card.dart';
import 'package:flutter_sliver_practise/hotel_card.dart';

class TravelExplorer extends StatelessWidget {
  const TravelExplorer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            expandedHeight: 220.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                "Wanderlust",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black45,
                      offset: Offset(1.0, 1.0),
                    ),
                  ],
                ),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80',
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.7)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.notifications_none),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.bookmark_border),
                onPressed: () {},
              ),
            ],
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Discover",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..shader = LinearGradient(
                          colors: [Colors.indigo, Colors.purple],
                        ).createShader(
                            const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                    ),
                  ),
                  const Text(
                    "Find your perfect getaway",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Where to?",
                        prefixIcon: Icon(Icons.search, color: Colors.indigo),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),

          // Categories Horizontal List
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: const [
                  CategoryButton(icon: Icons.beach_access, label: "Beaches"),
                  CategoryButton(icon: Icons.forest, label: "Nature"),
                  CategoryButton(icon: Icons.local_cafe, label: "Cafés"),
                  CategoryButton(icon: Icons.museum, label: "Culture"),
                  CategoryButton(icon: Icons.hiking, label: "Adventure"),
                  CategoryButton(icon: Icons.restaurant, label: "Food"),
                ],
              ),
            ),
          ),

          // Featured Destinations Header
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Featured Destinations",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("View all"),
                  ),
                ],
              ),
            ),
          ),

          // Featured Cards in a Horizontal List
          SliverToBoxAdapter(
            child: SizedBox(
              height: 320,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: const [
                  DestinationCard(
                    imageUrl:
                        "https://images.unsplash.com/photo-1537996194471-e657df975ab4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80",
                    title: "Bali, Indonesia",
                    rating: 4.8,
                    price: "\$1,200",
                  ),
                  DestinationCard(
                    imageUrl:
                        "https://images.unsplash.com/photo-1613395877344-13d4a8e0d49e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80",
                    title: "Santorini, Greece",
                    rating: 4.9,
                    price: "\$1,800",
                  ),
                  DestinationCard(
                    imageUrl:
                        "https://images.unsplash.com/photo-1493976040374-85c8e12f0c0e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80",
                    title: "Kyoto, Japan",
                    rating: 4.7,
                    price: "\$1,500",
                  ),
                  DestinationCard(
                    imageUrl:
                        "https://images.unsplash.com/photo-1525874684015-58379d421a52?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80",
                    title: "Paris, France",
                    rating: 4.8,
                    price: "\$1,400",
                  ),
                  DestinationCard(
                    imageUrl:
                        "https://images.unsplash.com/photo-1573843981267-be1999ff37cd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80",
                    title: "Machu Picchu, Peru",
                    rating: 4.9,
                    price: "\$1,600",
                  ),
                  DestinationCard(
                    imageUrl:
                        "https://images.unsplash.com/photo-1506665531195-3566af2b4dfa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80",
                    title: "New York, USA",
                    rating: 4.6,
                    price: "\$1,300",
                  ),
                ],
              ),
            ),
          ),

          // Popular Stays Header
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
            sliver: SliverToBoxAdapter(
              child: const Text(
                "Popular Stays",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // Popular Stays Grid
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.8,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final hotels = [
                    {
                      "name": "Ocean View Resort",
                      "location": "Maldives",
                      "price": "\$350",
                      "rating": 4.8,
                      "imageUrl":
                          "https://images.unsplash.com/photo-1540541338287-41700207dee6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80"
                    },
                    {
                      "name": "Mountain Retreat",
                      "location": "Switzerland",
                      "price": "\$280",
                      "rating": 4.6,
                      "imageUrl":
                          "https://images.unsplash.com/photo-1586375300773-8384e3e4916f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80"
                    },
                    {
                      "name": "Desert Oasis",
                      "location": "Morocco",
                      "price": "\$220",
                      "rating": 4.5,
                      "imageUrl":
                          "https://images.unsplash.com/photo-1518548419970-58e3b4079ab2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80"
                    },
                    {
                      "name": "Rainforest Lodge",
                      "location": "Costa Rica",
                      "price": "\$190",
                      "rating": 4.7,
                      "imageUrl":
                          "https://images.unsplash.com/photo-1597211833712-5e41faa202ea?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80"
                    },
                    {
                      "name": "Beachfront Villa",
                      "location": "Seychelles",
                      "price": "\$400",
                      "rating": 4.9,
                      "imageUrl":
                          "https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80"
                    },
                    {
                      "name": "Urban Loft",
                      "location": "Barcelona",
                      "price": "\$240",
                      "rating": 4.5,
                      "imageUrl":
                          "https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80"
                    },
                    {
                      "name": "Countryside Cottage",
                      "location": "Ireland",
                      "price": "\$170",
                      "rating": 4.6,
                      "imageUrl":
                          "https://images.unsplash.com/photo-1592229505726-ca121723b8ef?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80"
                    },
                    {
                      "name": "Lakeside Resort",
                      "location": "Canada",
                      "price": "\$210",
                      "rating": 4.7,
                      "imageUrl":
                          "https://images.unsplash.com/photo-1697689841030-000d3594c104?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8TGFrZXNpZGUlMjBSZXNvcnR8ZW58MHx8MHx8fDA%3D"
                    },
                  ];

                  final hotel = hotels[index % hotels.length];

                  return HotelCard(
                    name: hotel["name"] as String,
                    location: hotel["location"] as String,
                    price: hotel["price"] as String,
                    rating: hotel["rating"] as double,
                    imageUrl: hotel["imageUrl"] as String,
                  );
                },
                childCount: 8,
              ),
            ),
          ),

          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
            sliver: SliverToBoxAdapter(
              child: const Text(
                "Local Experiences",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // Local Experiences List
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final experiences = [
                  {
                    "title": "Balinese Cooking Class",
                    "duration": "3 hours",
                    "price": "\$45",
                    "rating": 4.8,
                    "imageUrl":
                        "https://images.unsplash.com/photo-1551218372-a8789b81b253?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80"
                  },
                  {
                    "title": "Sunset Sailing Trip",
                    "duration": "4 hours",
                    "price": "\$65",
                    "rating": 4.9,
                    "imageUrl":
                        "https://images.unsplash.com/photo-1534190239940-9ba8944ea261?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80"
                  },
                  {
                    "title": "Meditation Tour",
                    "duration": "2 hours",
                    "price": "\$30",
                    "rating": 4.7,
                    "imageUrl":
                        "https://plus.unsplash.com/premium_photo-1736781419751-fc33ec7830fd?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8TWVkaXRhdGlvbiUyMFRvdXJ8ZW58MHx8MHx8fDA%3D"
                  },
                  {
                    "title": "Local Market Food Walk",
                    "duration": "3 hours",
                    "price": "\$40",
                    "rating": 4.6,
                    "imageUrl":
                        "https://plus.unsplash.com/premium_photo-1686285541226-44d0d185ad4f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8TG9jYWwlMjBNYXJrZXQlMjBGb29kJTIwV2Fsa3xlbnwwfHwwfHx8MA%3D%3D"
                  },
                  {
                    "title": "Wildlife Safari",
                    "duration": "6 hours",
                    "price": "\$80",
                    "rating": 4.9,
                    "imageUrl":
                        "https://images.unsplash.com/photo-1516426122078-c23e76319801?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80"
                  },
                  {
                    "title": "Drink Tasting Tour",
                    "duration": "5 hours",
                    "price": "\$55",
                    "rating": 4.7,
                    "imageUrl":
                        "https://images.unsplash.com/photo-1506377247377-2a5b3b417ebb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80"
                  },
                  {
                    "title": "Historical Walking Tour",
                    "duration": "2 hours",
                    "price": "\$25",
                    "rating": 4.5,
                    "imageUrl":
                        "https://images.unsplash.com/photo-1732057030148-b5206e7bc428?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8SGlzdG9yaWNhbCUyMFdhbGtpbmclMjBUb3VyfGVufDB8fDB8fHww"
                  },
                  {
                    "title": "Scuba Diving Lesson",
                    "duration": "4 hours",
                    "price": "\$75",
                    "rating": 4.8,
                    "imageUrl":
                        "https://images.unsplash.com/photo-1544551763-46a013bb70d5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80"
                  },
                ];

                if (index >= experiences.length) return null;

                final experience = experiences[index];

                return Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: ExperienceCard(
                    title: experience["title"] as String,
                    duration: experience["duration"] as String,
                    price: experience["price"] as String,
                    rating: experience["rating"] as double,
                    imageUrl: experience["imageUrl"] as String,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
