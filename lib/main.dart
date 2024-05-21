import 'package:flutter/material.dart';
import 'package:ecomm_app/spalsh_screen.dart';
import 'package:ecomm_app/product_details.dart';
import 'package:ecomm_app/NavBar.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodie\'s Delight',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
        textTheme: const TextTheme(
          headline6: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            fontFamily: 'cursive',
            color: Colors.white,
          ),
        ),
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: NavBar(),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'Foodie\'s Delight',
          style: Theme.of(context).textTheme.headline6,
        ),

        // actions: [
        // GestureDetector(
        //   onTap: () {
        //     Navigator.push(
        //         context, MaterialPageRoute(builder: (context) => Profile()));
        //   },
        //   child: const Padding(
        //     padding: EdgeInsets.all(10),
        //     child: Icon(
        //       Icons.account_box,
        //       color: Colors.white,
        //     ),
        //   ),
        // ),
        // ],
      ),
      body: ListView(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        child: const Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://bcassetcdn.com/public/blog/wp-content/uploads/2021/10/21193955/Pizza-Hut.png'),
                            ),
                            SizedBox(height: 5),
                            Text("Pizza Hut"),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        child: const Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRs6NyNp8EnLAROcuxkwH2XZFAuk8HBCOBtnqqz9yBkvOkiYVmeUo8R5K9fY6uUThrhD3U&usqp=CAU'),
                            ),
                            SizedBox(height: 5),
                            Text("Nestle"),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        child: const Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://www.zilliondesigns.com/blog/wp-content/uploads/Burger-King-logo-3.jpg'),
                            ),
                            SizedBox(height: 5),
                            Text("Burger King"),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        child: const Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://pngimg.com/d/starbucks_PNG17.png'),
                            ),
                            SizedBox(height: 5),
                            Text("Starbucks"),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        child: const Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://p7.hiclipart.com/preview/403/546/443/logo-cadbury-family-brand-chocolate.jpg'),
                            ),
                            SizedBox(height: 5),
                            Text("Cadbury"),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        child: const Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyIiTMKVh1CBAP8co2Uj64TmNSRXLbef-RB6o15HuTDA&s'),
                            ),
                            SizedBox(height: 5),
                            Text("Dominos"),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        child: const Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://www.designenlassen.de/blog/wp-content/uploads/2024/02/Dein-Abschnittstext-15.png'),
                            ),
                            SizedBox(height: 5),
                            Text("KFC"),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        child: const Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://i.pinimg.com/736x/d0/30/32/d0303219602badf245cb5d043124a936.jpg'),
                            ),
                            SizedBox(height: 5),
                            Text("McDonals"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                const Text(
                  "Cadbury Product's",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 150,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Card(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ProductDetailsPage(
                                    productName: 'Cadbury Dairy Milk',
                                    productDescription:
                                        'Cadbury Dairy Milk is a classic chocolate bar made with milk chocolate.',
                                    imageUrl:
                                        'https://rukminim2.flixcart.com/image/850/1000/xif0q/chocolate/v/b/i/-original-imagwdhzehd8fnas.jpeg?q=90&crop=false',
                                  ),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Image.network(
                                    'https://rukminim2.flixcart.com/image/850/1000/xif0q/chocolate/v/b/i/-original-imagwdhzehd8fnas.jpeg?q=90&crop=false',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Cadbury DairyMilk',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ProductDetailsPage(
                                    productName: 'Cadbury 5Star',
                                    productDescription:
                                        'Cadbury 5Star is a chocolate bar filled with caramel and nougat.',
                                    imageUrl:
                                        'https://ik.imagekit.io/dunzo/5742813ef48911edbc036272795fce5a_VARIANT_63da391adffa7a0026bf6c3e_1.jpg',
                                  ),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Image.network(
                                    'https://ik.imagekit.io/dunzo/5742813ef48911edbc036272795fce5a_VARIANT_63da391adffa7a0026bf6c3e_1.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Cadbury 5Star',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ProductDetailsPage(
                                    productName: 'Cadbury Bournvita',
                                    productDescription:
                                        'Cadbury Bournvita is a chocolate health drink made with malted barley and milk solids.',
                                    imageUrl:
                                        'https://www.quickpantry.in/cdn/shop/products/cadbury-bournvita-chocolate-health-drink-500-g-jar-quick-pantry_500x500.jpg?v=1710538489',
                                  ),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Image.network(
                                    'https://www.quickpantry.in/cdn/shop/products/cadbury-bournvita-chocolate-health-drink-500-g-jar-quick-pantry_500x500.jpg?v=1710538489',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Cadbury Bournvita',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ProductDetailsPage(
                                    productName: 'Cadbury Perk',
                                    productDescription:
                                        'Cadbury Perk is a crispy wafer coated with chocolate.',
                                    imageUrl:
                                        'https://www.bigbasket.com/media/uploads/p/xxl/40019375-2_8-cadbury-perk-chocolate-home-treats.jpg',
                                  ),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Image.network(
                                    'https://www.bigbasket.com/media/uploads/p/xxl/40019375-2_8-cadbury-perk-chocolate-home-treats.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Cadbury Perk',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Add more Cadbury products here
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.zero,
                  child: Image.network(
                      'https://st3.depositphotos.com/1006899/12789/i/450/depositphotos_127893414-stock-photo-special-offer-sign-symbol.jpg'),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          const Text(
            "Nestle Product's",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 150,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.network(
                            'https://kumaribasket.com/wp-content/uploads/2020/10/Nestle-Kitkat-Chocolate1.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Nestle KitKat',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.network(
                            'https://fattaak.in/cdn/shop/files/9063418-1687284722358.jpg?v=1704992340',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Nestle Munch',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkpCgbjjjuOGgEZjNzyDVJdCzrYF7TfDjZCTh6G5RzuA&s',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Nestle Milkybar',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.network(
                            'https://m.media-amazon.com/images/I/71KO+B2m5wL.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Nestle Cafe',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJ9F1Tww1EYqXLdQ6qMcV3ynEu4_16KBI7t0-9t-ZH-w&s',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Nestle Tea',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Card(
            margin: EdgeInsets.zero,
            child: Image.network(
                'https://d2pyicwmjx3wii.cloudfront.net/s/60a39f1801d30d79c4caa94b/62e268485ad1bccc988d8c21/webp/snacks-and-package-1080x529.jpg'),
          ),
          const Text(
            'Burger\'s',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            height: 200,
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5),
                      child: Card(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOK-9ooVek1Gng3S8I42VyWwGWwE3yAe6hToSbux8d6g&s',
                                width: 120,
                                height: 100,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              "Crispy \n Cheeseburgers ",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      child: Card(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://lh3.googleusercontent.com/rZWzyviR56To49USO8fljLh5kqMznrm6wNha76y3iXGI8ykCHhrvj-Vi5WyB4Fe6raksp3e4lkD_6ZagoWQ58O29CBamsGwRDfixexSz',
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              "Whooper Jr.",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      child: Card(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://lh3.googleusercontent.com/f2TLTlK3oIXdczf6klaFN0j-xsQ0Ja3QHL72jHAGvCD-rxJOhgWDt50xaGsQkx71r4aJYQJvHLg7d_D_7zwHs_xTOkxyV-3MQ6yEG1oo',
                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              "Double\n Crispy Veg",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      child: Card(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://b.zmtcdn.com/data/dish_photos/08d/9b73d7bcfc2ac839c9d36684f6bdc08d.jpeg',
                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              "Chicken \n Burger",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),
          Card(
            margin: EdgeInsets.zero,
            child: Image.network(
                'https://d1owyfakiq655n.cloudfront.net/products/Home/ms/2x_ms_20211228111746768190_750x400jpg'),
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  var status = "Loading...";
                });
              },
              child: const Text("View More"),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 55,
            color: Colors.green, // Change color to blue
            alignment: Alignment.center,
            child: const Text(
              'Copyright @Foodie\'sDelight',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 15,
                  fontFamily: 'cursive'),
            ),
          ),
        ],
      ),
    );
  }
}
