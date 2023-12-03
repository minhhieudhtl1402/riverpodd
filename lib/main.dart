import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final Provider<String> myProvider = Provider<String>((ref) {
  return "Hello world1";
});

void main() {
  runApp(ProviderScope(child: MyRiverpod()));
}

class MyRiverpod extends ConsumerWidget {
  const MyRiverpod({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text('Main')), body:
      Center(
        child: Column(children: [
            Consumer(builder: (context, ref, child) {
              final message=ref.watch(myProvider);
              return Text(message);
            },)
          ],),
      ),),
    );
  }

}

// class MyRiverpod extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return MyRiverpodState();
//   }
// }
//
// class MyRiverpodState extends State<MyRiverpod> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomeScreen(),
//     );
//   }
// }
