import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import 'add_new_card_page.dart';

class MoneyTransferMainPage extends StatefulWidget {
  const MoneyTransferMainPage({Key? key}) : super(key: key);

  @override
  _MoneyTransferMainPageState createState() => _MoneyTransferMainPageState();
}

class _MoneyTransferMainPageState extends State<MoneyTransferMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffefdfd),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.keyboard_arrow_left,
                      color: Color(0xff0e0d0d),
                      size: 24,
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Get.to(AddNewCardPage());
                      },
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Text(
                                "Add New",
                                style: TextStyle(
                                  color: Color(0xff0c0c0c),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Icon(
                                Icons.add_circle_outline,
                                color: Color(0xff0f0f0f),
                                size: 20,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Container(
                            height: 0.8,
                            width: 74,
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    "My Cards",
                    style: TextStyle(
                      color: Color(0xff111111),
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                    color: Color(0xfffdbf16),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Athos White",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Icon(
                            LineIcons.visaCreditCard,
                            size: 24,
                          )
                        ],
                      ),
                      const Spacer(),
                      const Text(
                        "4566  ****  ****  5237",
                        style:
                            const TextStyle(fontSize: 12, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        "\$2,425.00",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Container(
                    height: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(right: 8, left: 8),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border:
                                        Border.all(color: Color(0xff050505)),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.location_searching,
                                      color: Color(0xff0a0a0a),
                                      size: 14,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                const Text(
                                  "Location",
                                  style:
                                      const TextStyle(color: Color(0xff0f0f0f)),
                                ),
                                const Text(
                                  "Transfer",
                                  style:
                                      const TextStyle(color: Color(0xff030303)),
                                )
                              ],
                            ),
                          ),
                        )),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border:
                                        Border.all(color: Color(0xff0c0c0c)),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.person_outline,
                                      color: Color(0xfff9c109),
                                      size: 14,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                const Text(
                                  "My",
                                  style:
                                      const TextStyle(color: Color(0xff0a0a0a)),
                                ),
                                const Text(
                                  "Contacts",
                                  style:
                                      const TextStyle(color: Color(0xff070707)),
                                )
                              ],
                            ),
                          ),
                        )),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border:
                                          Border.all(color: Color(0xff030303)),
                                    ),
                                    padding: const EdgeInsets.all(4),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                            color: Color(0xfff1a61b)),
                                      ),
                                    )),
                                const Spacer(),
                                const Text(
                                  "Saved",
                                  style:
                                      const TextStyle(color: Color(0xff080808)),
                                ),
                                const Text(
                                  "Transfers",
                                  style:
                                      const TextStyle(color: Color(0xff030303)),
                                )
                              ],
                            ),
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
                const Text(
                  "Today",
                  style: TextStyle(
                    color: Color(0xff111111),
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 42,
                            width: 42,
                            decoration: BoxDecoration(
                                color: Color(0xff050505),
                                borderRadius: BorderRadius.circular(4)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "You received a payment",
                                  style: TextStyle(
                                    color: Color(0xff070707),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Athos White",
                                  style: TextStyle(
                                    color: Color(0xff0c0c0c),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          const Text(
                            "\$220.00",
                            style: const TextStyle(
                              color: Color(0xff070707),
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 42,
                            width: 42,
                            decoration: BoxDecoration(
                                color: Color(0xff0a0a0a),
                                borderRadius: BorderRadius.circular(4)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "You received a payment",
                                  style: TextStyle(
                                    color: Color(0xff050505),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Athos White",
                                  style: TextStyle(
                                    color: Color(0xff0f0f0f),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          const Text(
                            "\$50.00",
                            style: TextStyle(
                              color: Color(0xff070707),
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const Text(
                  "Yesterday",
                  style: TextStyle(
                    color: Color(0xff0e0d0d),
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: [
                      Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                            color: Color(0xff080808),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "You received a payment",
                              style: TextStyle(
                                color: Color(0xff030303),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Athos White",
                              style: TextStyle(
                                color: Color(0xff050505),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        "\$50.00",
                        style: TextStyle(
                          color: Color(0xff030303),
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
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
