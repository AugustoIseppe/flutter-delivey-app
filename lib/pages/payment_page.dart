import 'package:delivery_app_with_backend/components/my_button.dart';
import 'package:delivery_app_with_backend/pages/delivey_progress_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool showBackView = false;

  void userTappedPay() {
    if (formKey.currentState!.validate()) {
      // Process payment
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              'Confirmar pagamento',
              style: GoogleFonts.abel(fontSize: 12),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text(
                    'Número do cartão: $cardNumber',
                    style: GoogleFonts.abel(fontSize: 12),
                  ),
                  Text(
                    'Data de validade: $expiryDate',
                    style: GoogleFonts.abel(fontSize: 12),
                  ),
                  Text(
                    'CVV: $cvvCode',
                    style: GoogleFonts.abel(fontSize: 12),
                  ),
                  Text(
                    'Nome do titular: $cardHolderName',
                    style: GoogleFonts.abel(fontSize: 12),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Cancelar',
                  style: GoogleFonts.abel(
                    color:
                        Theme.of(
                          context,
                        ).colorScheme.primary,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) =>
                              DeliveyProgressPage(),
                    ),
                  );
                },
                child: Text(
                  'Confirmar',
                  style: GoogleFonts.abel(
                    color:
                        Theme.of(
                          context,
                        ).colorScheme.primary,
                  ),
                ),
              ),
            ],
          );
        },
      );
    } else {
      // Show error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor:
            Theme.of(context).colorScheme.primary,
        title: Text(
          'CHECKOUT',
          style: GoogleFonts.abel(
            color: Theme.of(context).colorScheme.primary,
            letterSpacing: 2,
            fontSize: 15,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.stretch,
              children: [
                CreditCardWidget(
                  cardNumber: cardNumber,
                  expiryDate: expiryDate,
                  cardHolderName: cardHolderName,
                  cvvCode: cvvCode,
                  showBackView: showBackView,
                  onCreditCardWidgetChange: (p0) {},
                ),
                const SizedBox(height: 20),
                CreditCardForm(
                  cardNumber: cardNumber,
                  expiryDate: expiryDate,
                  cardHolderName: cardHolderName,
                  cvvCode: cvvCode,
                  onCreditCardModelChange: (data) {
                    setState(() {
                      cardNumber = data.cardNumber;
                      expiryDate = data.expiryDate;
                      cardHolderName = data.cardHolderName;
                      cvvCode = data.cvvCode;
                    });
                  },
                  formKey: formKey,
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 300,
                  child: MyButton(
                    onTap: () => userTappedPay(),
                    text: 'Pagar agora',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DeliveryProgressPage {
  const DeliveryProgressPage();
}
