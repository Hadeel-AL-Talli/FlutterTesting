import 'package:flutter_test/flutter_test.dart';
import 'package:counter_app/counter.dart';


void main(){
 group('Testing the counter', () { 

   test('Testing the increment counter ', (){
    //setup 
    Counter counter = Counter(value: 5);
    //do 
    counter.incrementCounter();
    //test 

    expect(counter.value, 6);
  });


  test('Testing the decrement counter',(){
    //setup 
    Counter counter2 = Counter(value: 5);
    //do
    counter2.decrementCounter();
    //test
    expect(counter2.value, 4);
  });
 });
}