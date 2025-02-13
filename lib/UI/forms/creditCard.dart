import 'package:flutter/material.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({super.key});

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20)
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  color: const Color(0xFF616161) ,
                  child: Stack(
                    children: [
                      Positioned(
                          top: 10,
                          left: 15,
                          child: Image.asset(
                          'assets/icons8-wallet-96.png',
                          height: 40,
                      )
                      ),
                      const Positioned(
                          bottom: 16,
                          left: 16,
                          child: Text(
                            "**** **** **** 4522",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                            ),
                          )
                      ),
                    ],
                  ),
                )
              ),
            Expanded(
                flex: 1,
                child: Container(
                  color: const Color.fromARGB(255, 14, 19, 29),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '\$23000',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.white.withOpacity(0.8),
                            ),
                            Transform.translate(
                              offset: const Offset(-10 ,0),
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.white.withOpacity(0.8),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ))
            ],
          )
        ));
  }
}
