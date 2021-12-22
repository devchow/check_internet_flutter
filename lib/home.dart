import "package:flutter/material.dart";
import 'package:connectivity_plus/connectivity_plus.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Internet Status"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Check Internet'),
          onPressed: () async {
            var status = await checkConnection();
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("$status"),
              duration: const Duration(milliseconds: 3000),
            ));
          },
            textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30))),
        ),
      ),
    );
  }

  // Check Internet Connection
  checkConnection() async {
    final result = await Connectivity().checkConnectivity();

    var net_status = "";

    if (result == ConnectivityResult.mobile) {
      // ignore: avoid_print
      // print("Connected to Mobile Network");
      net_status = "Connected to Mobile Network";
    } else if (result == ConnectivityResult.wifi) {
      // ignore: avoid_print
      // print("Connected to WiFi");
      net_status = "Connected to WiFi";
    } else if (result == ConnectivityResult.none) {
      // ignore: avoid_print
      // print("No Internet Connection");
      net_status = "No Internet Connection";
    }

    return net_status;
  }
  // end of check internet
}
