
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final hello = Provider<String>((ref){
  return "Hello, I am Dixit Pambhar";
});

final age = Provider<int>((ref){
  return 24;
});
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final intro = ref.watch(hello);
    final ageOfMine = ref.watch(age);
    return Scaffold(
        body: Center(
            child: Text("$intro $ageOfMine",style: TextStyle(fontSize: 30),),
        ),
    );
  }
}