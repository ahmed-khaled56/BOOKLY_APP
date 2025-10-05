class PriceListModel {
  final String? amount;
  final String? currencyCode;

  PriceListModel({this.amount, this.currencyCode});

  factory PriceListModel.fromMap(Map<String, dynamic> data) {
    return PriceListModel(
      amount: (data['amount'] as num?)?.toString(),
      currencyCode: data['currencyCode'],
    );
  }
}
