import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                child: Image.asset(
                  'assets/images/logo3.png',
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
              ),
            ),
            const Divider(
              height: 20,
              color: Colors.transparent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    TextButton(
                      child: const Text(
                        "Parque Industrial de Sobreposta",
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () async {
                        const url = 'https://goo.gl/maps/NTGWshtAyWest9en7';
                        if (await canLaunchUrl(Uri.parse(url))) {
                          await launchUrl(Uri.parse(url));
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                    TextButton(
                      child: const Text(
                        'Apartado 2012',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {},
                    ),
                    TextButton(
                      child: const Text(
                        '4701-952 Braga',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () async {
                        const url = 'https://goo.gl/maps/NTGWshtAyWest9en7';
                        if (await canLaunchUrl(Uri.parse(url))) {
                          await launchUrl(Uri.parse(url));
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                    TextButton(
                      child: const Text(
                        'Portugal',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                //1231231231231231231212312312312312312312312123
                //1231231231231231231212312312312312312312312123
                //1231231231231231231212312312312312312312312123
                //1231231231231231231212312312312312312312312123
                Column(
                  children: [
                    TextButton(
                      child: const Text(
                        "T. +351 253 603 480",
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () async {
                        const url = 'tel:+5511987654321';

                        if (await canLaunchUrl(Uri.parse(url))) {
                          await launchUrl(Uri.parse(url));
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                    TextButton(
                      child: const Text(
                        'E. info@cachapuz.com',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () async {
                        String url =
                            'mailto://compose?to=info@cachapuz.com&cc=gabriel.teixeira@cachapuz.com&subject=Duvidas';
                        if (await canLaunchUrl(Uri.parse(url))) {
                          await launchUrl(Uri.parse(url));
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
