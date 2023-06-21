import 'package:flutter/material.dart';
import 'package:manager/receipt.dart';
import 'package:manager/transaction_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            const Text(
              'History',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: listOfTransactionModel.length,
                itemBuilder: (context, index) {
                  TransactionModel dataToUse = listOfTransactionModel[index];
                  return TransactionWidget(
                    transactionModel: dataToUse,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({
    super.key,
    required this.transactionModel,
  });
  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Receipt(
                  transactionModel: transactionModel,
                ),
              ));
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(blurRadius: 9, color: Colors.black.withOpacity(0.06))
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
            child: Row(
              children: [
                Image.asset(transactionModel.imagePath),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transactionModel.status,
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        transactionModel.date,
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      transactionModel.amount,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      transactionModel.usdValue,
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
