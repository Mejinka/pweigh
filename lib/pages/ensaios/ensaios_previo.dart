import 'package:flutter/material.dart';

import '../../controlers/controladores.dart';

class EnsaioPrevio extends StatefulWidget {
  const EnsaioPrevio({super.key});

  @override
  State<EnsaioPrevio> createState() => _EnsaioPrevioState();
}

bool _switchbalanca = false;

class _EnsaioPrevioState extends State<EnsaioPrevio> {
  final Controllers _controladores = Controllers();

  @override
  Widget build(BuildContext context) {
    return Column(
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
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
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: TextField(
                        enabled: true,
                        decoration: const InputDecoration(
                          hintText: "Indicação na Balança",
                          border: OutlineInputBorder(),
                        ),
                        controller: _controladores.user,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(width: 5),
                    SizedBox(
                      width: 100,
                      child: TextField(
                        enabled: true,
                        decoration: const InputDecoration(
                          hintText: "----------",
                          border: OutlineInputBorder(),
                        ),
                        controller: _controladores.user,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                const Divider(height: 10),
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: TextField(
                        enabled: true,
                        decoration: const InputDecoration(
                          hintText: "Indicação na Balança",
                          border: OutlineInputBorder(),
                        ),
                        controller: _controladores.user,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(width: 5),
                    SizedBox(
                      width: 100,
                      child: TextField(
                        enabled: true,
                        decoration: const InputDecoration(
                          hintText: "----------",
                          border: OutlineInputBorder(),
                        ),
                        controller: _controladores.user,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
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
          ],
        ),
      ],
    );
  }
}
