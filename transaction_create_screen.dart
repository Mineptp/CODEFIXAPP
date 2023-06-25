import 'package:flutter/material.dart';

class TransactionCreateScreen extends StatelessWidget {
  const TransactionCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var amountController = TextEditingController();
    var dateController = TextEditingController();
    var descriptionController = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: Text('Thêm thu chi'),
          actions: [
            IconButton(
              onPressed: () {
                var amountText = amountController.text;
                var dateText = dateController.text;
                var descriptionText = descriptionController.text;

                Navigator.of(context).pop({
                  'amount': double.parse(amountText),
                  'date': dateText,
                  'description': descriptionText,
                });
              },
              icon: Icon(
                Icons.check,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Text('Số tiền'),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              minLines: 3,
              maxLines: 3,
            ),
            Text('Ngày'),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              minLines: 3,
              maxLines: 3,
            ),
            Text('Diễn giả'),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              minLines: 3,
              maxLines: 3,
            ),
          ],
        ));
  }
}
