import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_flutter_project/src/controller/bottom_nav_controller.dart';

class MyHomePage extends GetView<BottomNavController> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: controller.popAction,
      canPop: false,
      child: Obx(
        () => Scaffold(
          appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 33, 212, 243),
              leading: Icon(Icons.apple),
              title: Text('Family App'),
              actions: [Icon(Icons.notifications)]),
          body: IndexedStack(
            index: controller.pageIndex.value,
            children: [
              Text('data1'),
              Text('data2'),
              Text('data3'),
              Text('data4'),
              Text('data5')
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.pageIndex.value,
            onTap: controller.changeBottomNav,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.check,
                  ),
                  label: 'todo'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.pets,
                  ),
                  label: 'pet'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.analytics,
                  ),
                  label: 'report'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                  label: 'profile'),
            ],
          ),
        ),
      ),
    );
  }
}
