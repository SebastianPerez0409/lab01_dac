import 'package:flutter/material.dart';

class BeerApp extends StatefulWidget {
  const BeerApp({Key? key}) : super(key: key);

  @override
  State<BeerApp> createState() => _BeerAppState();
}

class _BeerAppState extends State<BeerApp> {
  String _selectedItem = 'Light';
  int valor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Laboratorio DAC - Unipiloto'),
          backgroundColor: Colors.red),
      body: Padding(
        padding: EdgeInsets.only(top: 50),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                'Por favor seleccione el tipo de cerveza: ',
              ),
              DropdownButton<String>(
                value: _selectedItem,
                items: const [
                  DropdownMenuItem<String>(
                    value: 'Light',
                    child: Text('Light'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Amber',
                    child: Text('Amber'),
                  ),
                ],
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedItem = newValue!;
                  });
                },
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.blue,
                ),
                onPressed: () {
                  if (_selectedItem == 'Light') {
                    setState(() {
                      valor = 1;
                    });
                  } else {
                    setState(() {
                      valor = 2;
                    });
                  }
                },
                child: Text('ENVIAR'),
              ),
              pruebaxd(valor)
              /* (valor == 1)
                      ? Column(
                          children: [
                            Text('Cerveza Light 01'),
                            Text('Cerveza Light 02'),
                          ],
                        )
                      : Container(),
                  (valor == 2)
                      ? Column(
                          children: [
                            Text('Cerveza Amber 01'),
                            Text('Cerveza Amber 02'),
                          ],
                        )
                      : Container(), */
            ],
          ),
        ),
      ),
    );
  }

  pruebaxd(int value) {
    switch (value) {
      case 1:
        return Column(
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(
                    width: 90,
                    height: 90,
                    child: Image.asset('assets/JAIL_PALE_ALE.png'),
                  ),
                  Text('Jail Pale Ale'),
                  SizedBox(
                    width: 90,
                    height: 90,
                    child: Image.asset('assets/GOUT_STOUT.png'),
                  ),
                  Text('Gout Stout'),
                ],
              ),
            ),
          ],
        );
        break;
      case 2:
        return Column(
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(
                    width: 90,
                    height: 90,
                    child: Image.asset('assets/RED_MOOSE.png'),
                  ),
                  Text('Red Moose'),
                  SizedBox(
                    width: 90,
                    height: 90,
                    child: Image.asset('assets/JACK_AMBER.png'),
                  ),
                  Text('Jack Amber'),
                ],
              ),
            ),
          ],
        );
        break;
      default:
        return Container();
    }
  }
}
