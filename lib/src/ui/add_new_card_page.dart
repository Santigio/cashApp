import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardInputController extends GetxController {
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController cardNumberTextEditingController =
      TextEditingController();

  TextEditingController dayTextEditingController = TextEditingController();
  TextEditingController monthTextEditingController = TextEditingController();
  TextEditingController yearTextEditingController = TextEditingController();

  clear() {
    nameTextEditingController.clear();
    cardNumberTextEditingController.clear();
    dayTextEditingController.clear();
    monthTextEditingController.clear();
    yearTextEditingController.clear();
  }

  debugInput() {
    debugPrint("${nameTextEditingController.text}, "
        "${cardNumberTextEditingController.text}, "
        "${dayTextEditingController.text}, ${monthTextEditingController.text}, "
        "${yearTextEditingController.text}");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameTextEditingController.dispose();
    cardNumberTextEditingController.dispose();
    dayTextEditingController.dispose();
    monthTextEditingController.dispose();
    yearTextEditingController.dispose();
  }
}

class AddNewCardPage extends StatefulWidget {
  const AddNewCardPage({Key? key}) : super(key: key);

  @override
  _AddNewCardPage1State createState() => _AddNewCardPage1State();
}

class _AddNewCardPage1State extends State<AddNewCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfffdf9f9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Icon(
                  Icons.keyboard_arrow_left_outlined,
                  color: Color(0xff080808),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "Add New Card",
                style: TextStyle(color: Color(0xff050505), fontSize: 32),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "Name On Card",
                style: TextStyle(color: Color(0xff050505)),
              ),
              GetBuilder(
                init: CardInputController(),
                builder: (CardInputController controller) {
                  return TextField(
                    controller: controller.nameTextEditingController,
                    style: const TextStyle(color: Color(0xff030303)),
                    decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xff070707),
                          width: 0.5,
                        )),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xff030303),
                          width: 0.5,
                        )),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff0c0c0c),
                            width: 0.5,
                          ),
                        )),
                  );
                },
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(
                "Card Number",
                style: TextStyle(color: Color(0xff070707)),
              ),
              GetBuilder(
                init: CardInputController(),
                builder: (CardInputController controller) {
                  return TextField(
                    controller: controller.cardNumberTextEditingController,
                    style: const TextStyle(color: Color(0xff030303)),
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xff050505),
                        width: 0.5,
                      )),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xff0a0a0a),
                        width: 0.5,
                      )),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff0f0f0f),
                          width: 0.5,
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(
                "EXPIRE DAY (DD/MM/YYYY)",
                style: TextStyle(color: Color(0xff0a0a0a)),
              ),
              GetBuilder<CardInputController>(
                builder: (controller) {
                  return Row(
                    children: [
                      Expanded(
                          child: TextField(
                        controller: controller.dayTextEditingController,
                        style: const TextStyle(color: Color(0xff0a0a0a)),
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xff080808),
                            width: 0.5,
                          )),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xff070707),
                            width: 0.5,
                          )),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff030303),
                              width: 0.5,
                            ),
                          ),
                        ),
                      )),
                      const SizedBox(
                        width: 24,
                      ),
                      Expanded(
                          child: TextField(
                        controller: controller.monthTextEditingController,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(color: Color(0xff0c0c0c)),
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xff020202),
                            width: 0.5,
                          )),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xff020202),
                            width: 0.5,
                          )),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff111111),
                              width: 0.5,
                            ),
                          ),
                        ),
                      )),
                      const SizedBox(
                        width: 24,
                      ),
                      Expanded(
                          child: TextField(
                        keyboardType: TextInputType.number,
                        controller: controller.yearTextEditingController,
                        style: const TextStyle(color: Color(0xff080808)),
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xff020202),
                            width: 0.5,
                          )),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xff070707),
                            width: 0.5,
                          )),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff161616),
                              width: 0.5,
                            ),
                          ),
                        ),
                      )),
                    ],
                  );
                },
              ),
              const SizedBox(
                height: 32,
              ),
              GestureDetector(
                onTap: () {
                  final c = Get.find<CardInputController>();
                  c.debugInput();
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: Color(0xffe5961f),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text(
                      "Add Card",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xff0a0a0a)),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
