import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'AllProduct/allProductPage.dart';
import 'ProductDetail/productDetailPage.dart';
import 'package:mystore/Product/product.dart';
import 'ProductReview/productReviewPage.dart';
import 'ProductQA/productQAPage.dart';

class MainMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        '/allProducts': (context) => AllProductPage(),
        '/productDetail': (context) => ProductDetailPage(),
          '/productReview': (context) => ProductReviewPage(),
          '/productQA': (context) => ProductQAPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {

//List<Product>
   Product product = 
        //[
 new Product(
    title: 'محصول',
    description: 'توضیحات محصول ',
    imageUrl: 'https://via.placeholder.com/150',
    price: 120.0,
  );
//];
    
  var imgUrl_150 = 'https://via.placeholder.com/150';
    
  final List<String> imageList = [
    'https://via.placeholder.com/600',
    'https://via.placeholder.com/600',
    'https://via.placeholder.com/600'
  ];

  final List<String> itemList = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView( //A
        child: Column( //Chief
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CarouselSlider( //A
              items: imageList.map((url) {
                return Container(
                  margin: EdgeInsets.all(5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Image.network(
                      url,
                      fit: BoxFit.cover,
                      width: 1000.0,
                    ),
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),//End CarouselSlider A
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: itemList.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Center(
                    child: Text(itemList[index]),
                  ),
                );
              },
            ),//End GridView
            SizedBox(height: 10),
            SingleChildScrollView( //B
              scrollDirection: Axis.horizontal,
              reverse: true,
              child: Row(
               children: List.generate(15, (index) {
               return Card(
                margin: EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Image.network(
                    imgUrl_150,
                    width: 100,
                    height: 100,
         ),
            SizedBox(height: 8),
            Text('Item ${15 - index}',
             style: TextStyle(fontSize: 16, 
             fontWeight: FontWeight.bold),
                    ),
                   ],
                 ),
                );
              }),
             ),
            ),//End SingleChildScrollView B
            SizedBox(height: 16),
            Column( //Column Set A
              crossAxisAlignment: CrossAxisAlignment.end,  
              children: [
               Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                child: Text('عنوان تیتر',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ), //End Text
               ), //End Padding
              Row( //A
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Image.network(imgUrl_150),
                 Image.network(imgUrl_150),
                ],
               ), //End Row A
             SizedBox(height: 8),
             Row( //B
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Image.network(imgUrl_150),
                 Image.network(imgUrl_150),
               ],
             ),//End Row B
            SizedBox(height: 8),
            Row( //C
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Text('متن مرکزی',
            style: TextStyle(fontSize: 16),
               ),
                Icon(Icons.favorite),
               ],
              ), //End Row C
             ],
            ), //End Column Set A
            SizedBox(height: 16),
            Column( //Column Set B
               crossAxisAlignment: CrossAxisAlignment.end,  
               children: [
                Padding(
                 padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                child: Text('عنوان تیتر',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ), //End Text
               ), //End Padding
              Row( //A
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Image.network(imgUrl_150),
                 Image.network(imgUrl_150),
                ],
               ), //End Row A
             SizedBox(height: 8),
             Row( //B
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Image.network(imgUrl_150),
                 Image.network(imgUrl_150),
               ],
             ),//End Row B
            SizedBox(height: 8),
            Row( //C
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
               GestureDetector( 
                 onTap: () {           
 Navigator.pushNamed(context, '/productDetail', arguments: product);
                 }, 
           child: Text('اطلاعات یک کالا',) 
               ),
                Icon(Icons.favorite),
               ],
              ), //End Row C
             ],
            ), //End Column Set B
            SizedBox(height: 16),
            Column( //Column Set C
               crossAxisAlignment: CrossAxisAlignment.end,  
               children: [
                Padding(
                 padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                child: Text('عنوان تیتر',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ), //End Text
               ), //End Padding
              Row( //A
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Image.network(imgUrl_150),
                 Image.network(imgUrl_150),
                ],
               ), //End Row A
             SizedBox(height: 8),
             Row( //B
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Image.network(imgUrl_150),
                 Image.network(imgUrl_150),
               ],
             ),//End Row B
            SizedBox(height: 8),
            Row( //C
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               GestureDetector( 
                 onTap: () {           
 Navigator.pushNamed(context, '/allProducts');
                 }, 
         child: Text('همه کالاهای یک گروه',) 
               ),
               Icon(Icons.favorite),
              ],
             ), //End Row C
        SizedBox(height: 8),
             Row( //D
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               GestureDetector( 
                 onTap: () {           
 Navigator.pushNamed(context, '/productReview');
                 }, 
         child: Text('نظرات',) 
               ),
               Icon(Icons.favorite),
              ],
             ), //End Row D
           SizedBox(height: 8),
             Row( //E
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               GestureDetector( 
                 onTap: () {           
 Navigator.pushNamed(context, '/productQA');
                 }, 
         child: Text('پرسش و پاسخ',) 
               ),
               Icon(Icons.favorite),
              ],
             ), //End Row E
               ],
           ), //End Column Set C
         ],
       ), //End Column Chief
     ), //End SingleChildScrollView A
   );//End Scaffold
  } //End build
} //End HomePage
                
