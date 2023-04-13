void main() {
  final List<OutPutProducts> productSales = [
    OutPutProducts(
        id: 01,
        name: 'refrigerator',
        value: 999.99,
        amount: 3,
        subtotal: 2997.00),
    OutPutProducts(
        id: 02, name: 'sound', value: 49.90, amount: 2, subtotal: 99.80),
    OutPutProducts(
        id: 03,
        name: 'cellPhone',
        value: 1300.00,
        amount: 2,
        subtotal: 2600.00),
    OutPutProducts(
        id: 04, name: 'support', value: 299.00, amount: 1, subtotal: 299.00),
    OutPutProducts(
        id: 05, name: 'bookcase', value: 499.00, amount: 3, subtotal: 499.00)
  ];

  double greatestListValue = productSales
      .reduce((curr, next) => curr.subtotal > next.subtotal ? curr : next)
      .subtotal;

  print(
      'The sum of the most expensive items on the list is $greatestListValue');
}

class OutPutProducts {
  final int id;
  final String name;
  final double value;
  final int amount;
  final double subtotal;

  OutPutProducts({
    required this.id,
    required this.name,
    required this.value,
    required this.amount,
    required this.subtotal,
  });
}
