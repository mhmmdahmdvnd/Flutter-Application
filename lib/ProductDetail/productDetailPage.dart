import 'package:flutter/material.dart';
import 'package:mystore/Product/product.dart';

class ProductDetailPage extends StatelessWidget {
  //final Product product;

//ProductDetailPage({required this.product});
    
List<Product> similarProducts = [
  Product(
    title: 'محصول مشابه 1',
    description: 'توضیحات محصول مشابه 1',
    imageUrl: 'https://via.placeholder.com/150',
    price: 120.0,
  ),
  Product(
    title: 'محصول مشابه 2',
    description: 'توضیحات محصول مشابه 2',
    imageUrl: 'https://via.placeholder.com/150',
    price: 130.0,
  ),
  Product(
    title: 'محصول مشابه 3',
    description: 'توضیحات محصول مشابه 3',
    imageUrl: 'https://via.placeholder.com/150',
    price: 110.0,
  ),
];

  @override
  Widget build(BuildContext context) {
      
  final product = ModalRoute.of(context)!.settings.arguments as Product;
    
      
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // عکس محصول
            Image.network(product.imageUrl),
            // اطلاعات محصول (توضیحات، قیمت و ...)
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('قیمت: ${product.price}'),
                  Text(product.description),
                  // دکمه افزودن به سبد خرید
                  ElevatedButton(
                    onPressed: () {
                      // اضافه کردن محصول به سبد خرید
                    },
                    child: Text('افزودن به سبد خرید'),
                  ),
                ],
              ),
            ),
            // کالاهای مشابه
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'محصولات مشابه',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  // لیست محصولات مشابه
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: similarProducts.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Image.network(similarProducts[index].imageUrl),
                        title: Text(similarProducts[index].title),
                        subtitle: Text('قیمت: ${similarProducts[index].price}'),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}