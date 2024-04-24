import 'product.dart';

class ProductService {
  // لیستی از کالاها
  List<Product> _products = [];

  // افزودن کالای جدید
  void addProduct(Product product) {
    _products.add(product);
  }

  // ویرایش کالا بر اساس شناسه
  void editProduct(String id, Product updatedProduct) {
    final index = _products.indexWhere((product) => product.id == id);
    if (index != -1) {
      _products[index] = updatedProduct;
    }
  }
    // حذف کالا بر اساس شناسه
  void deleteProduct(String id) {
    _products.removeWhere((product) => product.id == id);
  }

  // دریافت لیست کامل کالاها
  List<Product> getProducts() {
    return _products;
  }

  // دریافت یک کالا بر اساس شناسه
  Product getProductById(String id) {
    return _products.firstWhere((product) => product.id == id);
  }
    
}
