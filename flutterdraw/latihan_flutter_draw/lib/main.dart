import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  final String appTitle = 'Flutter Drawer Demo';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const SearchPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: const Color.fromARGB(255, 30, 192, 124),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        fixedColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.account_circle),
          ),
        ],
        onTap: _onItemTapped,
      ),
      drawer: _buildDrawer(context),
    );
  }

  Drawer _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _buildDrawerHeader(),
          _buildDrawerItem(
            icon: Icons.person,
            text: 'My Profile',
            onTap: () => Navigator.pop(context),
          ),
          _buildDrawerItem(
            icon: Icons.book,
            text: 'My Course',
            onTap: () => Navigator.pop(context),
          ),
          _buildDrawerItem(
            icon: Icons.workspace_premium,
            text: 'Go Premium',
            onTap: () => Navigator.pop(context),
          ),
          _buildDrawerItem(
            icon: Icons.video_label,
            text: 'Saved Videos',
            onTap: () => Navigator.pop(context),
          ),
          _buildDrawerItem(
            icon: Icons.edit,
            text: 'Edit Profile',
            onTap: () => Navigator.pop(context),
          ),
          _buildDrawerItem(
            icon: Icons.logout,
            text: 'LogOut',
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return UserAccountsDrawerHeader(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 17, 221, 204),
      ),
      accountName: const Text(
        "SekaeWayan",
        style: TextStyle(fontSize: 18),
      ),
      accountEmail: const Text("SekaeWayan@gmail.com"),
      currentAccountPictureSize: const Size.square(50),
      currentAccountPicture: CircleAvatar(
        backgroundColor: const Color.fromARGB(255, 11, 228, 228),
        child: Text(
          "S",
          style: TextStyle(
            fontSize: 30.0,
            color: const Color.fromARGB(255, 33, 243, 33),
          ),
        ),
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      onTap: onTap,
    );
  }
}

// Placeholder pages for bottom navigation
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Home Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Search Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Profile Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
