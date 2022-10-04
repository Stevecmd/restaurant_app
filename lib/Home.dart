// This will be the home screen after one has successfully logged in
//Not yet connected
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
        debugShowCheckedModeBanner: false,
        title: 'Restaurant App HomeScreen',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            centerTitle: false,
            title: Text('Jays Jikoni Order Now'),
            actions: [
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {},
              ),
            ],
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search for something to eat',
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.camera_alt)),
                  ),
                ),
              ),
            ),
          ),
          // Other Sliver Widgets
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                height: 400,
                child: Center(
                  child: Text(
                    'This is an awesome food shopping platform',
                  ),
                ),
              ),
              Container(
                height: 1000,
                color: Colors.pink,
              ),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.purple,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20,),
          child: GNav(
            gap: 10,
            onTabChange: (index){},
            backgroundColor: Colors.purple,
            color: Colors.white,
            activeColor: Colors.black,
            tabBackgroundColor: Colors.deepPurple,
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(icon: Icons.home,text: 'Home',),
              GButton(icon: Icons.favorite_border,text: 'Favourites',),
              GButton(icon: Icons.search_off,text: 'Search',),
              GButton(icon: Icons.settings,text: 'Settings',),
            ],
          ),
        ),
      ),
    );
  }
}