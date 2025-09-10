import 'package:get/get.dart';

class CounterController extends GetxController {
  int count1 = 0; // without called update function it's dose not update ui automitically.
  var count2 = 0.obs;// when the value will be change it update ui automitacilly.

    void increment1() {
    count1++;
    update(); // must call manually
  }
    void increment2() {
    count2++;
    // update(); // we don't need to call update
  }

}