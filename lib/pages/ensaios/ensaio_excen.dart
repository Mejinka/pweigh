import 'package:cachapuz_2/controlers/controladores.dart';
import 'package:flutter/material.dart';

class EnsaioExcentrico extends StatefulWidget {
  const EnsaioExcentrico({super.key});

  @override
  State<EnsaioExcentrico> createState() => _EnsaioExcentricoState();
}

class _EnsaioExcentricoState extends State<EnsaioExcentrico> {
  final Controllers _controladores = Controllers();
  int? _numFields;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Text(
              " Ensaio Excentricidade",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        const Divider(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('N.º Pontos de Apoio:'),
                const Divider(height: 10),
                SizedBox(
                  width: 100,
                  child: TextField(
                    enabled: true,
                    onChanged: (value) {
                      setState(() {
                        _numFields = int.tryParse(value);
                      });
                    },
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: "",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.user,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(height: 5),
                const Text('Carga utilizada (Lexc):'),
                const Divider(height: 10),
                SizedBox(
                  width: 100,
                  child: TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.user,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(height: 5),
              ],
            ),
            Container(width: 20),
            Column(
              children: [
                const Text('Centro - 1'),
                const Divider(height: 10),
                SizedBox(
                  width: 50,
                  child: TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.user,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(height: 10),
                SizedBox(
                  width: 50,
                  child: TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.user,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(height: 5),
              ],
            ),
            Container(width: 5),
            Column(
              children: [
                const Text('2'),
                const Divider(height: 10),
                SizedBox(
                  width: 50,
                  child: TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.user,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(height: 10),
                SizedBox(
                  width: 50,
                  child: TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.user,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(height: 5),
              ],
            ),
            Container(width: 5),
            Column(
              children: [
                const Text('3'),
                const Divider(height: 10),
                SizedBox(
                  width: 50,
                  child: TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.user,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(height: 10),
                SizedBox(
                  width: 50,
                  child: TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.user,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(height: 5),
              ],
            ),
            Container(width: 5),
            Column(
              children: [
                const Text('4'),
                const Divider(height: 10),
                SizedBox(
                  width: 50,
                  child: TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.user,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(height: 10),
                SizedBox(
                  width: 50,
                  child: TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.user,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(height: 5),
              ],
            ),
            Container(width: 5),
            Column(
              children: [
                const Text('5'),
                const Divider(height: 10),
                SizedBox(
                  width: 50,
                  child: TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.user,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(height: 10),
                SizedBox(
                  width: 50,
                  child: TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.user,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(height: 5),
              ],
            ),
            Container(width: 5),
            Column(
              children: [
                const Text('6'),
                const Divider(height: 10),
                SizedBox(
                  width: 50,
                  child: TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.user,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(height: 10),
                SizedBox(
                  width: 50,
                  child: TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.user,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(height: 5),
              ],
            ),
            Container(width: 5),
            Column(
              children: [
                const Text('7'),
                const Divider(height: 10),
                SizedBox(
                  width: 50,
                  child: TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.user,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(height: 10),
                SizedBox(
                  width: 50,
                  child: TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.user,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(height: 5),
              ],
            ),
            Container(width: 5),
            Column(
              children: [
                const Text('8'),
                const Divider(height: 10),
                SizedBox(
                  width: 50,
                  child: TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.user,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(height: 10),
                SizedBox(
                  width: 50,
                  child: TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.user,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(height: 5),
              ],
            ),
            Container(width: 5),
            Column(
              children: [
                const Text('9'),
                const Divider(height: 10),
                SizedBox(
                  width: 50,
                  child: TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.user,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(height: 10),
                SizedBox(
                  width: 50,
                  child: TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.user,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(height: 5),
              ],
            ),
            Container(width: 5),
            Column(
              children: [
                const Text('10'),
                const Divider(height: 10),
                SizedBox(
                  width: 50,
                  child: TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.user,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(height: 10),
                SizedBox(
                  width: 50,
                  child: TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.user,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(height: 5),
              ],
            ),
            Container(width: 5),
            Column(
              children: [
                const Text('11'),
                const Divider(height: 10),
                SizedBox(
                  width: 50,
                  child: TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.user,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(height: 10),
                SizedBox(
                  width: 50,
                  child: TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "",
                      border: OutlineInputBorder(),
                    ),
                    controller: _controladores.user,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(height: 5),
              ],
            ),
            Column(
              children: [
                const Text('Erro de '),
                const Text('Excentricidade'),
                const Text('máx. |∆Iexc,i|max:'),
                const Divider(height: 10),
                SizedBox(
                  width: 50,
                  child: TextField(
                    enabled: true,
                    decoration: const InputDecoration(
                      hintText: "",
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
        const Divider(height: 1),
      ],
    );
  }
}
