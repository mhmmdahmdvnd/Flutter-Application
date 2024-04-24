import 'package:flutter/material.dart';
import 'package:mystore/Product/product.dart';

class AllProductPage extends StatelessWidget {
  final List<Product> products = [
    Product(
      title: 'محصول 1',
      description: 'توضیحات محصول 1',
      imageUrl: 'https://via.placeholder.com/150',
      price: 100.0,
    ),
    Product(
      title: 'محصول 2',
      description: 'توضیحات محصول 2',
      imageUrl: 'https://via.placeholder.com/150',
      price: 150.0,
    ),
    Product(
      title: 'محصول 3',
      description: 'توضیحات محصول 3',
      imageUrl: 'https://via.placeholder.com/150',
      price: 200.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('لیست محصولات'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AllProductDetailPage(product: products[index]),
                ),
              );
            },
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('قیمت: ${products[index].price}'),
                Text(products[index].description),
              ],
            ),
            trailing: Image.network(products[index].imageUrl),
            title: Text(products[index].title),
          );
        },
      ),
    );
  }
}

class AllProductDetailPage extends StatelessWidget {
  final Product product;

  AllProductDetailPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(product.imageUrl),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('قیمت: ${product.price}'),
                Text(product.description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
