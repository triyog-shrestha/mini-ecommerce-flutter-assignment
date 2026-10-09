import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widgets/products_categories.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  catergoriesScroll(size, String img, String name){
    return Stack(

      children: [
        Container(
          margin: EdgeInsets.only(left: 4, right: 4),
          width: size.width/1.5,
          height: size.height/4,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              img,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 15,
          left: 20,
          child: Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
    ]
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.shopping_bag, color: Colors.white,),
        title: Text("My Shop", style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white
          ),
        ),
        actions: [
          Icon(Icons.search_sharp, color: Colors.white,),
          SizedBox(width: 20),
          Icon(Icons.shopping_cart, color: Colors.white,),
          SizedBox(width: 20),
        ],
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(height: 250.0),
              items: [
                "assets/images/banner/banner.jpg",
                "assets/images/banner/summersale.jpg",
                "assets/images/banner/newarrivals.jpg",
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            color: Colors.black
                        ),
                        child: Image.asset(
                          i,
                          fit: BoxFit.cover,
                        )
                    );
                  },
                );
              }).toList(),
            ),
        
            SizedBox(height: 20,),
        
            Text("What are you looking for?", style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500
              )
            ),
            SizedBox(height: 10,),
        
        
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  catergoriesScroll(size, "assets/images/categories/rap.jpg", "Hip-Hop"),
                  catergoriesScroll(size, "assets/images/categories/rnb.jpg", "R&B"),
                  catergoriesScroll(size, "assets/images/categories/pop.jpg", "Pop"),
                  catergoriesScroll(size, "assets/images/categories/rock.jpg", "Rock"),
                  catergoriesScroll(size, "assets/images/categories/metal.jpg", "Metal"),
                  catergoriesScroll(size, "assets/images/categories/country.jpg", "Country"),
                  catergoriesScroll(size, "assets/images/categories/kpop.jpg", "K-Pop"),
                ],
              ),
            ),
            
            SizedBox(height: 20,),

            Row(
              children: [
                SizedBox(width: 60,),
                Text("Popular Products", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                  )
                ),
                SizedBox(width: 30,),
                TextButton.icon(onPressed: (){}, label: Text("View All"), icon: Icon(Icons.arrow_right), style: TextButton.styleFrom(
                  foregroundColor: Colors.black
                )),
                SizedBox(height: 10,),
              ],
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductCard(name: "Abbey Road", image: "assets/images/products/abbey.jpg", price: '\$17.99', isFavorite: true, isSale: true,),
                  ProductCard(name: "Blonde", image: "assets/images/products/blonde.jpg", price: '\$10.99', isFavorite: true, isSale: false,),
                  ProductCard(name: "Dark Side of The Moon", image: "assets/images/products/dsotm.jpg", price: '\$8.99', isFavorite: true, isSale: true,),
                  ProductCard(name: "The Chronic", image: "assets/images/products/chronic.jpg", price: '\$9.99', isFavorite: true, isSale: true,),
                  ProductCard(name: "GKMC", image: "assets/images/products/gkmc.jpg", price: '\$15.99', isFavorite: true, isSale: false,),
                  ProductCard(name: "Illmatic", image: "assets/images/products/illmatic.jpg", price: '\$19.99', isFavorite: true, isSale: false,),
                  ProductCard(name: "Low End Theory", image: "assets/images/products/let.jpg", price: '\$10.99', isFavorite: false, isSale: false,),
                  ProductCard(name: "Aquemini", image: "assets/images/products/aquemini.jpg", price: '\$11.99', isFavorite: true, isSale: false,),
                  ProductCard(name: "Purple Rain", image: "assets/images/products/purple.jpg", price: '\$8.99', isFavorite: true, isSale: true,),
                  ProductCard(name: "Thriller", image: "assets/images/products/thirller.jpg", price: '\$19.99', isFavorite: true, isSale: false,),


                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
