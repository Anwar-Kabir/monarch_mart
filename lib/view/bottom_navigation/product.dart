import 'package:flutter/material.dart';
import 'package:monarch_mart/controller/get_api_responce_controller.dart';
import 'package:monarch_mart/model/fake_api_model.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  final getproductapicontroller = GetAPI();
  late Future<Fakeapi> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = getproductapicontroller.fetchfakeAPI();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Expanded(
            child: FutureBuilder<Fakeapi>(
              future: futureAlbum,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data!.title.toString());
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }
                return const Center(child: CircularProgressIndicator());
              },
            ),
          ),
        ]),
      ),
    );
  }
}
