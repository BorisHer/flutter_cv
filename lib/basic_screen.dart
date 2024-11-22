import 'package:flutter/material.dart';
import 'immutable_widget.dart';

class BasicScreen extends StatefulWidget {
  const BasicScreen({super.key});

  @override
  _BasicScreenState createState() => _BasicScreenState();
}

class _BasicScreenState extends State<BasicScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          'My CV',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
        ],
      ),
      body: Center(
        child: IndexedStack(
          index: _selectedIndex,
          children: const [
            ImmutableWidget(), // Replace with actual content
            Text('Skills Page'),
            Text('Projects Page'),
            Text('Experience Page'),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue, // Blue header background
              ),
              child: Text(
                'CV Sections',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.circle, // Circle icon
                color: Colors.grey,
              ),
              title: const Text('Education'),
              onTap: () {
                /*_onItemTapped(0);
                Navigator.pop(context);*/
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.circle,
                color: Colors.grey,
              ),
              title: const Text('Skills'),
              onTap: () {
                /*_onItemTapped(1);
                Navigator.pop(context);*/
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.circle,
                color: Colors.grey,
              ),
              title: const Text('Projects'),
              onTap: () {
                /*_onItemTapped(2);
                Navigator.pop(context);*/
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.circle,
                color: Colors.grey,
              ),
              title: const Text('Experience'),
              onTap: () {
                /*_onItemTapped(3);
                Navigator.pop(context);*/
              },
            ),
          ],
        ),
      ),
    );
  }
}
