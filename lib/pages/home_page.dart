import 'package:flutter/material.dart';
import 'package:learn/models/food_model.dart';
import 'package:learn/themes/colors.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Food> foodMenu = [
    Food(
      name: "Biriyani",
      price: "60",
      image: "assets/images/biryani.png",
      rating: "4.5",
    ),
    Food(
      name: "Donut",
      price: "50",
      image: "assets/images/donut.png",
      rating: "4.8",
    ),
    Food(
      name: "Hamburger",
      price: "70",
      image: "assets/images/hamburger.png",
      rating: "4.4",
    ),
    Food(
      name: "Ramen",
      price: "100",
      image: "assets/images/ramen.png",
      rating: "4.9",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          elevation: 0,
          leading: const Icon(Icons.menu, color: Colors.black87),
          backgroundColor: Colors.transparent,
          title: const Text(
            "Home",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔥 Promo Banner
              Container(
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Get 30% off",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 12,
                              ),
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            onPressed: () {},
                            child: const Text("Buy Now"),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/hamburger.png",
                        height: 100,
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // 🔎 Search bar
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    hintText: "Search food...",
                    border: InputBorder.none,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // 🍴 Menu heading
              const Text(
                "Popular Foods",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // 🎨 Horizontal Food Cards (full width, auto height)
              SizedBox(
                height: 480, // enough space to fit card content
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodMenu.length,
                  itemBuilder: (context, index) {
                    final food = foodMenu[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *
                            0.8, // almost full width
                        margin: const EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.08),
                              blurRadius: 10,
                              offset: const Offset(0, 6),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Food Image
                            ClipRRect(
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset(
                                  food.image,
                                  width: double.infinity,
                                  height: 280,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    food.name,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "₹${food.price}",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: primaryColor,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    children: [
                                      const Icon(Icons.star,
                                          size: 18, color: Colors.amber),
                                      const SizedBox(width: 6),
                                      Text(
                                        food.rating,
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey[700],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
