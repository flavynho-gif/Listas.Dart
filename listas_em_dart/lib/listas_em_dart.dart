void main() {
  final List<Product> myProducts = [
    Product(id: 01, name: 'sofa', value: 199.00, amount: 5),
    Product(id: 02, name: 'chair', value: 49.00, amount: 4),
    Product(id: 03, name: 'table', value: 99.00, amount: 1),
    Product(id: 04, name: 'television', value: 399.00, amount: 1)
  ];

  double totalValue =
      myProducts.fold(0, (prev, curr) => prev + (curr.value * curr.amount));
  print('The total value of the products on the list is $totalValue');

  for (final product in myProducts) {
    print(product.id);
  }
}

class Product {
  final int id;
  final String name;
  final double value;
  final int amount;

  Product(
      {required this.id,
      required this.name,
      required this.value,
      required this.amount});
}
