import 'package:flutter/material.dart';
import 'items.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const OrdersPage(),
    );
  }
}

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Orders',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView.builder(
            itemCount: 300,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // color: Colors.yellow,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image.asset('images/grocery 1.png'),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'ORDER # 123456',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text('Total Amount'),
                                Text('Rs 245'),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: TextButton(
                                onPressed: () {
                                  null;
                                },
                                child: Container(
                                    color: const Color.fromARGB(
                                        255, 120, 215, 123),
                                    child: const Text(
                                      "Delivered",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 41, 116, 44)),
                                    ))),
                          )
                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
                        child: Text(
                          "21 items",
                          style: TextStyle(
                              color: Color.fromARGB(255, 97, 92, 92),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                        child: Text(
                          "Placed on Wed 20 July 2021, 12:30 PM",
                          style: TextStyle(
                            color: Color.fromARGB(255, 120, 111, 111),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        // color: Colors.grey,
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "View Details",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 6, 124, 10),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Track Order",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold)),
                            ),
                            // Text("View Details"),
                            // Text("Track Order"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
              
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.production_quantity_limits_rounded),
              //title: Text('Business'),
               label: 'Items',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
             // title: Text('School'),
              label: 'Profile',
            ),
          ],
          currentIndex: 2,
          selectedItemColor: Colors.amber[800],
          onTap: (index) {
            if (index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ItemsPage()),
              );
            }
            // if (index == 2) {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => const ProfilePage()),
            //   );
            // }
          },
    )
    );
  }
}
