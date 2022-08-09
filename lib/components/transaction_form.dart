import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TransactionForm extends StatelessWidget {
  TransactionForm({Key? key}) : super(key: key);

  final titleController = TextEditingController();
  final valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            CustomTextField(
              controller: titleController,
              label: 'Título'
            ),
            CustomTextField(
              controller: valueController,
              label: 'Valor (R\$)',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    print(titleController.text);
                    print(valueController.text);
                  },
                  child: Text('Nova Transação'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple.shade700
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget{
  final String label;

  const CustomTextField({
    Key? key,
    required this.label,
    required TextEditingController controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
      ),
    );
  }
}