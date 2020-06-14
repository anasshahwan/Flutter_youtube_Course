import 'dart:io';

main() async{

  func1();
  String myvalue = await func2();
  func3(myvalue);

}


void func1() {
  print("task 1 ");
}

Future<String> func2() async{

  String myTitle;
  Duration twoSeconds = Duration(seconds: 4);

  await Future.delayed(twoSeconds,(){
    myTitle = "this is From Function 2 ";
    print('end Task 2 $myTitle');

  });

  return myTitle;

}

void func3(title) {
  print("task 3 $title");
}


   //  Synchronous : Same Order   (wait until the funciton finished)

    // Asynchronous : Different Order