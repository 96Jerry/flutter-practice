import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_flutter_project/src/components/message_popup.dart';
import 'package:my_first_flutter_project/src/pages/login.dart';

enum PageName { home, todo, pet, report, profile }

class BottomNavController extends GetxController {
  RxInt pageIndex = 0.obs;
  List bottomHistory = [0];

  void changeBottomNav(int value) {
    var page = PageName.values[value];
    switch (page) {
      case PageName.home:
        _changePageIndex(value);
        break;
      case PageName.todo:
        _changePageIndex(value);
        break;
      case PageName.pet:
        _changePageIndex(value);
        break;
      case PageName.report:
        _changePageIndex(value);
        break;
      case PageName.profile:
        Get.to(() => Login());

        break;
    }
  }

  void _changePageIndex(int value) {
    pageIndex(value);
    if (bottomHistory.last != value) {
      bottomHistory.add(value);
    }

    print(bottomHistory);
  }

  void popAction(bool didPop) {
    if (bottomHistory.length == 1) {
      showDialog(
        context: Get.context!,
        builder: (context) => MessagePopup(
          title: 'system',
          message: 'Are you sure to exit?',
          okCallback: () {
            exit(0);
          },
          cancelCallback: Get.back,
        ),
      );
    } else {
      bottomHistory.removeLast();
      print('go to before page!');
      _changePageIndex(bottomHistory.last);
    }

    print(bottomHistory);
  }
}
