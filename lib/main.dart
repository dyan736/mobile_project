import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade900),
      ),
      home: const MyProfilePage(title: 'Profil'),
    );
  }
}

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key, required this.title});
  final String title;

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        centerTitle: true,
        title: Text(widget.title, style: const TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          const SizedBox(height: 60),
          CircleAvatar(
            radius: 90,
            backgroundImage: AssetImage('assets/foto.jpg'),
          ),
          const SizedBox(height: 30),
          const Text(
            'Luh Putu Dian Satriani',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 17, 78, 169),
            ),
            textAlign: TextAlign.center,
          ),
          const Text(
            'NIM. 2315091050',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 17, 78, 169),
            ),
          ),
          const SizedBox(height: 50),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 20,
                children: const [
                  MenuButton(
                    icon: Icons.gps_fixed,
                    label: 'Singaraja',
                    color: Colors.green,
                  ),
                  MenuButton(
                    icon: Icons.store,
                    label: 'Veteran',
                    color: Colors.orange,
                  ),
                  MenuButton(
                    icon: Icons.music_note,
                    label: 'K-pop, J-pop',
                    color: Colors.purple,
                  ),
                  MenuButton(
                    icon: Icons.apartment,
                    label: 'Undiksha',
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const MenuButton({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 2),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Icon(
                  icon,
                  color: color,
                  size: constraints.maxHeight * 0.5,
                );
              },
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 5),
            color: Colors.blue,
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
