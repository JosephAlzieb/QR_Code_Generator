import 'package:flutter/material.dart';
import 'package:qr_code_generator/colors.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: QrImage(
                data: data,
                backgroundColor: Colors.white,
                version: QrVersions.auto,
                size: 300.0,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              width: 300.0,
              child: TextField(
                //we will generate a new qr code when the input value change
                onChanged: (value) {
                  setState(() {
                    data = value;
                  });
                },
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  hintText: "Type the Data",
                  filled: true,
                  fillColor: AppColors.textInputColor,
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
          ]),
    );
  }
}
