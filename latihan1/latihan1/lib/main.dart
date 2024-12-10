import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ahmadi M. KOM',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.purple,
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ahmadi M. KOM',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'ahmad@unika-bjm.ac.id',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Expanded(
                    child: ListView(
                      children: [
                        ListTile(
                          selected: _selectedIndex == 0,
                          selectedTileColor: Colors.purple[700],
                          title: Text(
                            'My Profile',
                            style: TextStyle(color: Colors.white),
                          ),
                          onTap: () => _onItemTapped(0),
                        ),
                        ListTile(
                          selected: _selectedIndex == 1,
                          selectedTileColor: Colors.purple[700],
                          title: Text(
                            'My Course',
                            style: TextStyle(color: Colors.white),
                          ),
                          onTap: () => _onItemTapped(1),
                        ),
                        ListTile(
                          selected: _selectedIndex == 2,
                          selectedTileColor: Colors.purple[700],
                          title: Text(
                            'Go Premium',
                            style: TextStyle(color: Colors.white),
                          ),
                          onTap: () => _onItemTapped(2),
                        ),
                        ListTile(
                          selected: _selectedIndex == 3,
                          selectedTileColor: Colors.purple[700],
                          title: Text(
                            'Saved Videos',
                            style: TextStyle(color: Colors.white),
                          ),
                          onTap: () => _onItemTapped(3),
                        ),
                        ListTile(
                          selected: _selectedIndex == 4,
                          selectedTileColor: Colors.purple[700],
                          title: Text(
                            'Edit Profile',
                            style: TextStyle(color: Colors.white),
                          ),
                          onTap: () => _onItemTapped(4),
                        ),
                        ListTile(
                          selected: _selectedIndex == 5,
                          selectedTileColor: Colors.purple[700],
                          title: Text(
                            'LogOut',
                            style: TextStyle(color: Colors.white),
                          ),
                          onTap: () => _onItemTapped(5),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.grey[200],
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  'Konten yang tidak terlihat.',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}