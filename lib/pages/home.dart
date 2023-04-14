import 'package:cachapuz_2/pages/calibration.dart';
import 'package:cachapuz_2/pages/file.dart';

import 'package:flutter/material.dart';

import 'about_page.dart';
import 'calibration_ensaios.dart';
import 'ensaios/ensaio_pesagem.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  PageController pageController = PageController(initialPage: 0);
  bool isDrawerOpen = false;

  void toggleDrawer() {
    setState(() {
      isDrawerOpen = !isDrawerOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    const double drawerWidth = 260;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Scale Calibration'),
        centerTitle: true,
        backgroundColor: Colors.redAccent.shade700,
      ),
      body: Row(
        children: [
          SizedBox(
            width: drawerWidth,
            child: NavDrawer(
              pageController: pageController,
            ),
          ),
          Expanded(
            child: PageView(
              controller: pageController,
              children: [
                Calibration(pageController: pageController),
                Ensaios(pageController: pageController),
                const Files(),
                const About(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NavDrawer extends StatelessWidget {
  const NavDrawer({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.redAccent.shade700,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.person,
                  size: 100,
                ),
                Text(
                  'Tester 4257',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.balance),
            title: const Text('Calibration'),
            onTap: () => pageController.jumpToPage(0),
          ),
          ListTile(
            leading: const Icon(Icons.edit_document),
            title: const Text('Files'),
            onTap: () => pageController.jumpToPage(2),
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About'),
            onTap: () => pageController.jumpToPage(3),
          ),
          ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Logout'),
              onTap: () => showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Logout"),
                        content: const Text("Are you sure you want to logout?"),
                        actions: <Widget>[
                          TextButton(
                            child: const Text("Cancel"),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                          TextButton(
                            child: const Text("Confirm"),
                            onPressed: () {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                  '/', (route) => false);
                            },
                          ),
                        ],
                      );
                    },
                  )),
        ],
      ),
    );
  }
}
