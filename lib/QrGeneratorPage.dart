import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrGeneratorPage extends StatefulWidget {
  @override
  _QrGeneratorPageState createState() => _QrGeneratorPageState();
}

class _QrGeneratorPageState extends State<QrGeneratorPage> {
  String qrText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Genera QR Code'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              onChanged: (text) {
                setState(() {
                  qrText = text;
                });
              },
              decoration: InputDecoration(
                labelText: 'Enter text',
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: Center(
                child: qrText.isNotEmpty
                    ? QrImageView(
  data: qrText,
  version: QrVersions.auto,
  size: 200.0,
)
                    : Text('Ingrese el Texto para su QR'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
