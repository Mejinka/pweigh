import 'package:cachapuz_2/pages/calibration.dart';
import 'package:cachapuz_2/pages/file.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../api.dart';
import '../controlers/time.dart';
import 'about_page.dart';
import 'calibration_ensaios.dart';
import 'ensaios/ensaio_pesagem.dart';
import 'login/login.dart';

class HomePage extends StatefulWidget {
  final String? username;
  final String? firstName;
  final String? lastName;

  const HomePage({Key? key, this.username, this.firstName, this.lastName})
      : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  PageController pageController = PageController(initialPage: 0);
  bool isDrawerOpen = false;
  bool _showIconsOnly = false;

  void toggleDrawer() {
    setState(() {
      isDrawerOpen = !isDrawerOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    const double drawerWidth = 250;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Calibração de Balanças'),
        centerTitle: true,
        backgroundColor: Colors.redAccent.shade700,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            setState(() {
              _showIconsOnly = !_showIconsOnly;
            });
          },
        ),
      ),
      body: Row(
        children: [
          SizedBox(
            width: _showIconsOnly ? 80 : drawerWidth,
            child: NavDrawer(
              firstName: widget.firstName,
              lastName: widget.lastName,
              pageController: pageController,
              showIconsOnly: _showIconsOnly,
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

String capitalize(String text) {
  if (text.isEmpty) {
    return text;
  }

  return text
      .split(' ')
      .map((word) => word[0].toUpperCase() + word.substring(1))
      .join(' ');
}

class NavDrawer extends StatelessWidget {
  const NavDrawer({
    Key? key,
    required this.firstName,
    required this.lastName,
    required this.pageController,
    required this.showIconsOnly,
  }) : super(key: key);

  final String? firstName;
  final String? lastName;
  final PageController pageController;
  final bool showIconsOnly;

  Future<void> logout(BuildContext context) async {
    await setLoggedIn(false);
    Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
    print('Usuário deslogou com sucesso');
  }

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
              children: [
                Icon(Icons.person, size: showIconsOnly ? 50 : 100),
                showIconsOnly
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              capitalize(firstName ?? ''),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              capitalize(lastName ?? ''),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ],
                      )
                    : FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          capitalize(firstName ?? '') +
                              ' ' +
                              capitalize(lastName ?? ''),
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )
              ],
            ),
          ),
          SizedBox(
            height: showIconsOnly ? 48 : null,
            child: Container(
              alignment: Alignment.center,
              child: ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(left: showIconsOnly ? 10 : 0),
                  child: const Icon(Icons.balance),
                ),
                title: Opacity(
                  opacity: showIconsOnly ? 0.0 : 1.0,
                  child: const Text('Calibração'),
                ),
                onTap: () => pageController.jumpToPage(0),
              ),
            ),
          ),
          SizedBox(
            height: showIconsOnly ? 48 : null,
            child: ListTile(
              leading: Padding(
                padding: EdgeInsets.only(left: showIconsOnly ? 10 : 0),
                child: const Icon(Icons.edit_document),
              ),
              title: Opacity(
                opacity: showIconsOnly ? 0.0 : 1.0,
                child: const Text('Arquivos'),
              ),
              onTap: () => pageController.jumpToPage(2),
            ),
          ),
          SizedBox(
            height: showIconsOnly ? 48 : null,
            child: ListTile(
              leading: Padding(
                padding: EdgeInsets.only(left: showIconsOnly ? 10 : 0),
                child: const Icon(Icons.info),
              ),
              title: Opacity(
                opacity: showIconsOnly ? 0.0 : 1.0,
                child: const Text('Info'),
              ),
              onTap: () => pageController.jumpToPage(3),
            ),
          ),
          SizedBox(
            height: showIconsOnly ? 48 : null,
            child: ListTile(
              leading: Padding(
                padding: EdgeInsets.only(left: showIconsOnly ? 10 : 0),
                child: const Icon(Icons.exit_to_app),
              ),
              title: Opacity(
                opacity: showIconsOnly ? 0.0 : 1.0,
                child: const Text('Logout'),
              ),
              onTap: () => showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text("Logout"),
                    content: const Text("Deseja realmente fazer o logout?"),
                    actions: <Widget>[
                      TextButton(
                        child: const Text("Cancelar"),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      TextButton(
                        child: const Text("Confirmar"),
                        onPressed: () async {
                          Provider.of<TimerManager>(context, listen: false)
                              .stopTimer();
                          Provider.of<TimerManager>(context, listen: false)
                              .setLoggedInStatus(false);
                          await logout(context);
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
