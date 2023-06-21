class TransactionModel {
  final String status;
  final String type;
  final String amount;

  final String usdValue;

  final String date;

  final String time;

  final String networkFee;

  final String transactionID;

  final String imagePath;

  TransactionModel({
    required this.status,
    required this.type,
    required this.amount,
    required this.usdValue,
    required this.date,
    required this.time,
    required this.networkFee,
    required this.transactionID,
    required this.imagePath,
  });
}

List<TransactionModel> listOfTransactionModel = [
  TransactionModel(
    status: 'Successful',
    type: 'Send',
    amount: '+0.03102401  BTC',
    usdValue: '30 USD',
    date: 'Feb 24, 2012',
    time: '2:12 PM',
    networkFee: '0.000223...BTC=N50.23',
    transactionID: '76685644325',
    imagePath: 'assest/eft.png',
  ),
   TransactionModel(
    status: 'Failed',
    type: 'Recieve',
    amount: '+0.03102401  ETH',
    usdValue: '28 USD',
    date: 'Feb 30, 2020',
    time: '4:12 PM',
    networkFee: '0.000223...BTC=N50.23',
    transactionID: '76685644325',
    imagePath: 'assest/btc.png',
  ),
];
