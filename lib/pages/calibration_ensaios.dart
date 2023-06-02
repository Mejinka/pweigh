import 'package:provider/provider.dart';

import '../off/off_ensaios_previo.dart';
import 'ensaios/ensaio_pesagem.dart';
import 'package:flutter/material.dart';

import 'ensaios/ensaio_excen.dart';
import 'ensaios/ensaios_previo.dart';
import '../controlers/controladores.dart';

class Ensaios extends StatefulWidget {
  final PageController pageController;
  const Ensaios({Key? key, required this.pageController}) : super(key: key);

  @override
  State<Ensaios> createState() => _EnsaiosState();
}

class _EnsaiosState extends State<Ensaios> {
  late ControllersEnsarioPrevio controladores2;

  @override
  Widget build(BuildContext context) {
    controladores2 = Provider.of<ControllersEnsarioPrevio>(context);

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
              Flexible(
                child: SizedBox(
                  width: 100,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStatePropertyAll(Colors.red.shade600),
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.red),
                    ),
                    child: const Text('Limpar'),
                    onPressed: () {
                      controladores2.clearAllFieldsEP();
                      checkboxAjuste = false;
                      setState(() {});
                    },
                  ),
                ),
              ),
              Container(width: 10),
              Flexible(
                child: SizedBox(
                  width: 100,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStatePropertyAll(Colors.red.shade600),
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.red),
                    ),
                    child: const Text('Voltar'),
                    onPressed: () {
                      widget.pageController.animateToPage(0,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut);
                    },
                  ),
                ),
              ),
              Container(width: 10),
              Flexible(
                child: SizedBox(
                  width: 100,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStatePropertyAll(Colors.red.shade600),
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.red),
                    ),
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
              ),
            ],
          )
        ],
      ),
    );
  }
}
