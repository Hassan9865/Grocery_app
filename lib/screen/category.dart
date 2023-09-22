import 'package:flutter/material.dart';
import 'package:mini_project/Listdata/GridDB.dart';

class ShopCategory extends StatefulWidget {
  const ShopCategory({super.key});

  @override
  State<ShopCategory> createState() => _ShopCategoryState();
}

class _ShopCategoryState extends State<ShopCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
      body: SafeArea(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 102, left: 30),
              ),
              const Text(
                "Hey Halal",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_shopping_cart_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                RichText(
                  text: const TextSpan(
                    text: 'Shop                       ',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w300,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'By Category',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 50,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: 380,
            height: 445,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  GridView.builder(
                    padding: const EdgeInsets.all(10.0),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2 / 3,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                    ),
                    itemCount: items.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 4.0,
                        child: Column(
                          children: [
                            Image.network(
                              items[index].imageUrl,
                              fit: BoxFit.cover,
                              height: 100,
                              width: double.infinity,
                            ),
                            SizedBox(height: 10),
                            Text(items[index].title,
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 10),
                            Text(items[index].description),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
