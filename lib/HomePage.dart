import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR & Barcode'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/qr_scan'),
              child: Text('Scan QR Code'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/barcode_scan'),
              child: Text('Scan Barcode'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/qr_generator'),
              child: Text('Generate QR Code'),
            ),
          ],
        ),
      ),
    );
  }
}