import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: IconButton(
              icon: Icon(Icons.settings, size: 40, color: Color.fromARGB(255, 255, 255, 255)),
              onPressed: () {
                // Handle settings button press
              },
            ),
          ),
          title: Text("NutriDiary"),
          backgroundColor: Color.fromARGB(237, 35, 48, 0),
          surfaceTintColor: Color.fromARGB(237, 35, 48, 0),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 42,
            letterSpacing: 8,
            fontFamily: "DancingScript"
          ),
          centerTitle: true,
          toolbarHeight: 75,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                icon: Icon(Icons.info, size: 40, color: Color.fromARGB(255, 255, 255, 255)),
                onPressed: () {
                  // Handle about us button press
                },
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            FavFoodItem(
              imageUrl: "images/apple pic.webp",
              name: "Apple",
              description: "An apple a day keeps the doctor away. \nApples are extremely rich in important antioxidants, flavanoids, and dietary fiber."
            ),
            Divider(height: 8, color: Color.fromARGB(255, 0, 0, 0)),
            FavFoodItem(
              imageUrl: "images/orange pic.jpeg",
              name: "Orange",
              description: "Oranges are a good source of vitamin C and potassium. \nThey also contain fiber, antioxidants, and other vitamins."
            ),
            Divider(height: 8, color: Color.fromARGB(255, 0, 0, 0)),
            FavFoodItem(
              imageUrl: "images/apple pic.webp",
              name: "Apple",
              description: "An apple a day keeps the doctor away. \nApples are extremely rich in important antioxidants, flavanoids, and dietary fiber."
            ),
            Divider(height: 8, color: Color.fromARGB(255, 0, 0, 0)),
            FavFoodItem(
              imageUrl: "images/orange pic.jpeg",
              name: "Orange",
              description: "Oranges are a good source of vitamin C and potassium. \nThey also contain fiber, antioxidants, and other vitamins."
            ),
            Divider(height: 8, color: Color.fromARGB(255, 0, 0, 0)),
            FavFoodItem(
              imageUrl: "images/apple pic.webp",
              name: "Apple",
              description: "An apple a day keeps the doctor away. \nApples are extremely rich in important antioxidants, flavanoids, and dietary fiber."
            ),
            Divider(height: 8, color: Color.fromARGB(255, 0, 0, 0)),
            FavFoodItem(
              imageUrl: "images/orange pic.jpeg",
              name: "Orange",
              description: "Oranges are a good source of vitamin C and potassium. \nThey also contain fiber, antioxidants, and other vitamins."
            ),
            Divider(height: 8, color: Color.fromARGB(255, 0, 0, 0)),
            FavFoodItem(
              imageUrl: "images/apple pic.webp",
              name: "Apple",
              description: "An apple a day keeps the doctor away. \nApples are extremely rich in important antioxidants, flavanoids, and dietary fiber."
            ),
            Divider(height: 8, color: Color.fromARGB(255, 0, 0, 0)),
            FavFoodItem(
              imageUrl: "images/orange pic.jpeg",
              name: "Orange",
              description: "Oranges are a good source of vitamin C and potassium. \nThey also contain fiber, antioxidants, and other vitamins."
            ),
          ],
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.only(top: 25.0),
          height: 110, // Increase the height of the bottom navigation bar
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "NutriChecker"
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "Favorites"
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Insight"
              ),
            ],
            selectedItemColor: Color.fromARGB(255, 255, 255, 255),
            unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
            iconSize: 30,
            selectedFontSize: 20,
            unselectedFontSize: 20,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            elevation: 10,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      )
    );
  }
}

class FavFoodItem extends StatelessWidget {
  final String name;
  final String description;
  final String imageUrl;
  
  const FavFoodItem({super.key, 
    required this.name,
    required this.description,
    required this.imageUrl
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255))),
      subtitle: Text(description, style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 255, 255, 255))),
      leading: CircleAvatar(backgroundImage: AssetImage(imageUrl), radius: 50),
      trailing: Icon(Icons.arrow_forward_ios),
      tileColor: Color.fromARGB(255, 0, 0, 0),
      minTileHeight: 100,
    );
  }
}