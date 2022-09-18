import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pwa/ui/tnc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String _storageTnc = 'show-tnc';

  @override
  void initState() {
    const storage = FlutterSecureStorage();
    storage.read(key: _storageTnc).then((value) {
      if (value == null) {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => const TncDialog(),
        ).then((value) {
          if (value) {
            storage.write(key: _storageTnc, value: true.toString()).then((value) {});
          }
        });
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pwa'),
      ),
    );
  }
}
