import 'package:flutter/material.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan debug banner
      home: DefaultTabController(
        length: 5,
        child: Scaffold(

          
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.people),
                      Text("Profile", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
                Tab(
                  icon: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.music_video),
                      Text("Music", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
                Tab(
                  icon: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.camera_alt),
                      Text("Camera", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
                Tab(
                  icon: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.grade),
                      Text("Grade", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
                Tab(
                  icon: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.email),
                      Text("Email", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
              ],
              indicatorColor: Colors.white,
            ),
            title: const Text('FTI Tutorial'),
            backgroundColor: Colors.blue,
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text(
                    'Menu',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text('Home'),
                  onTap: () {
                    Navigator.pop(context); // Menutup drawer
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Settings'),
                  onTap: () {
                    Navigator.pop(context); // Menutup drawer
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.contact_mail),
                  title: const Text('Contact Us'),
                  onTap: () {
                    Navigator.pop(context); // Menutup drawer
                  },
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              MusicTab(),
              VideoTab(),
              CameraTab(),
              GradeTab(),
              EmailTab(),
            ],
          ),
        ),
      ),
    );
  }
}

class MusicTab extends StatelessWidget {
  const MusicTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.people, size: 100, color: Colors.blue),
          const SizedBox(height: 10),
          const Text('Profile', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class VideoTab extends StatelessWidget {
  const VideoTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.music_video, size: 100, color: Colors.red),
          const SizedBox(height: 10),
          const Text('Video', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class CameraTab extends StatelessWidget {
  const CameraTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.camera_alt, size: 100, color: Colors.green),
          const SizedBox(height: 10),
          const Text('Camera', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class GradeTab extends StatelessWidget {
  const GradeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.grade, size: 100, color: Colors.amber),
          const SizedBox(height: 10),
          const Text('Grade', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class EmailTab extends StatelessWidget {
  const EmailTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.email, size: 100, color: Colors.purple),
          const SizedBox(height: 10),
          const Text('Email', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
