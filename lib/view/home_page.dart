import 'package:flutter/material.dart';
import 'package:jsonserialization/repository/serialization.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ElevatedButton(
                  onPressed: decodeJson,
                  child: Text('Decode'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: encodeJson,
                  child: Text('Encode'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
