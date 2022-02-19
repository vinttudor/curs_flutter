import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController controller = TextEditingController();
  String? errorText;
  String resultText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      Cand se deschidea tastatura aveam eroare "Bottom overflowed by..." si am ajuns la resizeToAvoidBottomInset
      Nu stiu daca e cea mai corecta si eleganta metoda de rezolvare.
      Eventual, astept o parere.

      Daaaaar, intre timp am aflat din cursul 3 ca daca folosesc in loc de Column, ListView si ii pun EdgeInsetsDirectional rezolv problema :)
       */
      //resizeToAvoidBottomInset: false,

      appBar: AppBar(
        title: Center(
          child: Text(
            'Currency convertor',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
              'https://store-images.s-microsoft.com/image/apps.23742.13816767389916056.fa9940e3-4993-4c31-bbf8-e6218cf3239b.52f1ef74-e53c-416c-81c6-7746e97d305c?mode=scale&q=90&h=1080&w=1920'),
          Container(
            margin: EdgeInsetsDirectional.all(16.0),
            child: TextField(
              controller: controller,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                hintText: 'Enter the amount in EUR',
                errorText: errorText,
              ),
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.fromSTEB(150, 0, 150, 0),
            child: ElevatedButton(
              onPressed: () {
                final String value = controller.text;
                final double? doubleValue = double.tryParse(value);

                setState(() {
                  if (doubleValue == null) {
                    errorText = 'please enter a number';
                    resultText = '';
                  } else {
                    errorText = null;

                    final result = doubleValue * 4.95;
                    resultText = '${result.toStringAsFixed(2)}';
                  }
                });
              },
              child: Text('Convert!'),
            ),
          ),
          Text(
            resultText,
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
