import 'package:flutter/material.dart';
import 'package:mini_project/Listdata/homeDB.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
      body: SafeArea(
        child: Column(
          children: [
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
                  icon: Icon(
                    Icons.add_shopping_cart_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: Colors.white,
                hintText: "Search Product or store",
                border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black12, width: 32.0),
                    borderRadius: BorderRadius.circular(25.0)),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red, width: 32.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: 380,
              height: 510,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 123,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: home_item.length,
                      itemBuilder: ((context, index) {
                        return Container(
                          margin: EdgeInsets.all(8.0),
                          height: 150,
                          width: 194,
                          decoration: BoxDecoration(
                            color: Color(0xffF9B023),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: Center(
                                  child: RichText(
                                    text: const TextSpan(
                                        text: "Get             ",
                                        style: TextStyle(
                                          fontSize: 28,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "50% OFF",
                                            style: TextStyle(
                                                fontSize: 28,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ]),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Deals on Fruits & Tea",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(10.0),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio: 3 / 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                      ),
                      itemCount: home_item.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          elevation: 4.0,
                          child: Column(
                            children: [
                              Image.network(
                                home_item[index].imageUrl,
                                fit: BoxFit.cover,
                                height: 194,
                                cacheWidth: 128,
                                width: double.infinity,
                              ),
                              SizedBox(height: 10),
                              Text(home_item[index].title,
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(height: 10),
                              Text(home_item[index].description),
                              SizedBox(height: 10),
                              Text(home_item[index].price,
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
