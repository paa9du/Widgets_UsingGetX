import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class EmailStorage extends StatefulWidget {
  const EmailStorage({super.key});

  @override
  State<EmailStorage> createState() => _EmailStorageState();
}

class _EmailStorageState extends State<EmailStorage> {
  var emailEditingController = TextEditingController();
  var storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetStorage and Email Validation'),
      ),
      body: Column(
        children: [
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: TextField(
                      controller: emailEditingController,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: ElevatedButton(
                      onPressed: () {
                        if (GetUtils.isEmail(emailEditingController.text)) {
                          storage.write("email", emailEditingController.text);
                        } else {
                          Get.snackbar("InCorrect Email",
                              "Provide Email in valid Format",
                              colorText: Colors.white,
                              backgroundColor: Colors.red,
                              snackPosition: SnackPosition.BOTTOM);
                        }
                      },
                      child: Text("Write"),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("The Email is ${storage.read("email")}");
                    },
                    child: Text("Read"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
