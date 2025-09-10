import 'package:e_commarce_site/controller/count_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterPage extends StatelessWidget {
  final controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            
            // when we called update the inside getbuilder whole section will be updated.
            GetBuilder<CounterController>(
              // init: CounterController(),
              builder: (controller) => Text("Count: ${controller.count1}"),
            ),
            
            // it binded with ".obs" type variable, when the value will be change it will triger automatically.
            Obx(()=>Text("Count: ${controller.count2}")), 
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: ()=> Get.find<CounterController>().increment(),
        onPressed: (){
          controller.increment1();
          controller.increment2();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
