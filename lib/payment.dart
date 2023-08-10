import 'package:expansion_tile/selectable_expansion_tile.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  ExpansionController controller = ExpansionController();
  @override
  Widget build(BuildContext context) {
    return SelectableExpansionTile(
      controller: controller,
      header: Container(
        margin: const EdgeInsets.fromLTRB(12, 12, 12, 0),
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.2),
        ),
        child: RadioMenuButton(
          value: controller.value,
          groupValue: true,
          onChanged: (value) {
            if (controller.expanded == false) {
              setState(() {
                controller.expand();
              });
            } else {
              setState(() {
                controller.collapse();
              });
            }
          },
          child: const Text('Credit Card'),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 12, right: 12),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
        ),
        padding:
            const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
        child: const Text(
          'Credit Card is the general term used to cover a wide range of credit transfers, including cash payments, giro-payments, and wire transfer to local banks. They are the most common form of cashless consumer payments in most countries within the European Union and Asia–Pacific (references: www.ecb.org and www.bis.org)',
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
      ),
      onChanged: (value) {},
    );
  }
}
