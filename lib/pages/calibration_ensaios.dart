import 'package:cachapuz_2/pages/ensaios/ensaio_pesagem.dart';
import 'package:cachapuz_2/pages/ensaios/grid.dart';
import 'package:flutter/material.dart';

import '../controlers/controladores.dart';
import 'ensaios/ensaio_excen.dart';
import 'ensaios/ensaios_previo.dart';

class Ensaios extends StatefulWidget {
  final PageController pageController;
  const Ensaios({Key? key, required this.pageController}) : super(key: key);

  @override
  State<Ensaios> createState() => _EnsaiosState();
}

class _EnsaiosState extends State<Ensaios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }

  body() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 10,
          ),
          const EnsaioPrevio(),
          const Divider(
            height: 10,
          ),
          const EnsaioExcentrico(),
          const EnsaioPesagem(),
          const Divider(
            height: 40,
            color: Colors.transparent,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 100,
                height: 50,
                child: ElevatedButton(
                  child: const Text('Voltar'),
                  onPressed: () {
                    widget.pageController.animateToPage(0,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut);
                  },
                ),
              ),
              Container(width: 10),
              SizedBox(
                width: 100,
                height: 50,
                child: ElevatedButton(
                  child: const Text('Proximo'),
                  onPressed: () {
                    //widget.pageController.animateToPage(1,
                    //    duration: const Duration(milliseconds: 400),
                    //    curve: Curves.easeInOut);
                    //Navigator.pushReplacement(
                    //  context,
                    //  MaterialPageRoute(
                    //    builder: (context) => MyApp1(),
                    //  ),
                    //);
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
