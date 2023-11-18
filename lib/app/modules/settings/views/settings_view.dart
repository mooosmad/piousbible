import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage("assets/img_profile.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        "Rachelle Nguessan",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Profil",
                                style: TextStyle(fontSize: 18),
                              ),
                              Image.asset(
                                "assets/arrow-right.png",
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Notification",
                                style: TextStyle(fontSize: 18),
                              ),
                              Switch(
                                  value: false,
                                  onChanged: (value) {
                                    print(value);
                                  })
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Langue",
                                style: TextStyle(fontSize: 18),
                              ),
                              Image.asset(
                                "assets/arrow-right.png",
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Dark mode",
                                style: TextStyle(fontSize: 18),
                              ),
                              Switch(
                                  value: false,
                                  onChanged: (value) {
                                    print(value);
                                  })
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
              //  Expanded(
              //  child: ListView.builder(
              //  itemCount: 3,
              // itemBuilder: (context, index) {
              //  return ListTile(
              //   title: Text(
              //    index == 0
              //       ? "Profile"
              //      : index == 1
              //         ? "Notifications"
              //         : "Langue",
              // style: TextStyle(fontSize: 18),
              //),
              //);
              // },
              //),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
