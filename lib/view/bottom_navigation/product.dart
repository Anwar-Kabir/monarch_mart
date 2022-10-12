import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monarch_mart/controller/fake_api_product_controller.dart';
import '../../model/fake_api_product_model.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  late Future<List<FakeApiProductModel>> fututeData;
  FakeStoreProductController fspc = Get.put(FakeStoreProductController());

  @override
  void initState() {
    super.initState();
    fututeData = fspc.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<List<FakeApiProductModel>>(
          future: fututeData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<FakeApiProductModel>? data = snapshot.data;
              return Expanded(
                child: ListView.builder(
                  itemCount: data!.length,
                  itemBuilder: ((context, index) {
                    return ListTile(
                        leading: CircleAvatar(
                            radius: 30,
                            child: Image.network(data[index].image.toString())),
                        title: Text("Product Name - ${data[index].title.toString()}"),
                        subtitle: Column(
                          children: [
                            Text("Product ID - ${data[index].id.toString()}"),
                          Text("Product Price - ${data[index].price.toString()}"),
                            //Text(data[index].description.toString()),
                            Text("Category - ${data[index].category.toString()}"),
                            Text("Rate of product - ${data[index].rating!.rate.toString()}"),
                            Text("Total rate count - ${data[index].rating!.count.toString()}"),
                          ],
                        ));
                  }),
                ),
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
