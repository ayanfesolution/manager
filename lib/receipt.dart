// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:manager/transaction_model.dart';

class Receipt extends StatelessWidget {
  const Receipt({super.key, required this.transactionModel});
  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction Details'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 75,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: 580,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TransItemWidget(
                      firstItem: 'Transfer -Btc',
                      secondItem: transactionModel.status,
                    ),
                    TransItemWidget(
                      firstItem: 'Type of Transaction :',
                      secondItem: transactionModel.type,
                    ),
                    TransItemWidget(
                      firstItem: 'Type of Transaction :',
                      secondItem: transactionModel.type,
                    ),
                    TransItemWidget(
                      firstItem: 'Type of Transaction :',
                      secondItem: transactionModel.type,
                    ),
                    TransItemWidget(
                      firstItem: 'Type of Transaction :',
                      secondItem: transactionModel.type,
                    ),
                    TransItemWidget(
                      firstItem: 'Type of Transaction :',
                      secondItem: transactionModel.type,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TransItemWidget extends StatelessWidget {
  const TransItemWidget({
    Key? key,
    required this.secondItem,
    required this.firstItem,
  }) : super(key: key);
  final String firstItem, secondItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          firstItem,
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Text(
            secondItem,
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.right,
          ),
        )
      ],
    );
  }
}
