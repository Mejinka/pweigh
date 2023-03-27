import 'package:flutter/material.dart';

import '../controlers/controladores.dart';

class Ensaios extends StatefulWidget {
  final PageController pageController;
  const Ensaios({Key? key, required this.pageController}) : super(key: key);

  @override
  State<Ensaios> createState() => _EnsaiosState();
}

bool _switchbalanca = false;

class _EnsaiosState extends State<Ensaios> {
  final Controllers _controladores = Controllers();

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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text(
                    " Ensaio Previo",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const Divider(height: 10),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(width: 20),
                    const Divider(height: 80),
                    Column(
                      children: [
                        const Text('Pontos de Calibração'),
                        const Divider(height: 10),
                        SizedBox(
                          width: 100,
                          child: Column(
                            children: [
                              TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "Ponto de Calibração",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladores.user,
                                textAlign: TextAlign.center,
                              ),
                              const Divider(height: 10),
                              TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "Ponto de Calibração",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladores.user,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(width: 20),
                    Column(
                      children: [
                        const Text('Peso(s) Padrão (mc)'),
                        const Divider(height: 10),
                        SizedBox(
                          width: 100,
                          child: Column(
                            children: [
                              TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "Peso(s) Padrão (mc)",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladores.user,
                                textAlign: TextAlign.center,
                              ),
                              const Divider(height: 10),
                              TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "Peso(s) Padrão (mc)",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladores.user,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(width: 20),
                    Column(
                      children: [
                        const Text('Indicação na Balança'),
                        const Divider(height: 10),
                        SizedBox(
                          width: 100,
                          child: Column(
                            children: [
                              TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "Indicação na Balança",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladores.user,
                                textAlign: TextAlign.center,
                              ),
                              const Divider(height: 10),
                              TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "Indicação na Balança",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladores.user,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          child: Column(
                            children: [
                              TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "Indicação na Balança",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladores.user,
                                textAlign: TextAlign.center,
                              ),
                              const Divider(height: 10),
                              TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "Indicação na Balança",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladores.user,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(width: 20),
                    Column(
                      children: [
                        const Text('Erro'),
                        const Divider(height: 10),
                        SizedBox(
                          width: 100,
                          child: Column(
                            children: [
                              TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "Erro",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladores.user,
                                textAlign: TextAlign.center,
                              ),
                              const Divider(height: 10),
                              TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "Erro",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladores.user,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(width: 50),
                    Column(
                      children: [
                        const Text('Ajuste?'),
                        const Divider(height: 10),
                        SizedBox(
                          width: 100,
                          child: Column(
                            children: [
                              const Text("Não"),
                              Switch(
                                value: _switchbalanca,
                                onChanged: (bool newValue) {
                                  setState(() {
                                    _switchbalanca = newValue;
                                  });
                                },
                              ),
                              const Text("Sim"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(width: 50),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text('Carga de Ajuste/ Peso Padrão:'),
                        const Divider(height: 10),
                        SizedBox(
                          width: 100,
                          child: Column(
                            children: [
                              TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "Carga de Ajuste/ Peso Padrão:",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladores.user,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(width: 20),
                    Column(
                      children: [
                        const Text('Ref.ª:'),
                        const Divider(height: 10),
                        SizedBox(
                          width: 100,
                          child: Column(
                            children: [
                              TextField(
                                enabled: true,
                                decoration: const InputDecoration(
                                  hintText: "Ref.ª:",
                                  border: OutlineInputBorder(),
                                ),
                                controller: _controladores.user,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ]),
            ],
          ),
          const Divider(
            height: 10,
          ),
          //ROW FVCKING TWO
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(width: 20),
            const Divider(height: 80),
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  const Text(
                    "Cliente",
                  ),
                  TextField(
                    onChanged: (value) {
                      setState(() {});
                    },
                    decoration: const InputDecoration(
                      hintText: "Cliente",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.cliente,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(width: 100),
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  const Text('Morada'),
                  TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "Morada",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.morada,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(width: 100),
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  const Text("Codigo Postal"),
                  TextField(
                    controller: _controladores.cepController,
                    decoration: const InputDecoration(
                      hintText: "Codigo Postal",
                      border: OutlineInputBorder(),
                    ),
                    inputFormatters: [_controladores.cepF],
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ]),
          //FVCKING ROW 3

          /////////////////////////////////
          ///////THIS SHIT A 4 ROW/////////
          /////////////////////////////////

          const Divider(height: 1),

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
                    widget.pageController.animateToPage(1,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut);
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
