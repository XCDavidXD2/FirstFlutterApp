import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_guess_the_number/viewmodel/view_model.dart';

class MarksView extends StatelessWidget {
  const MarksView({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<ViewModel>();
    return ChangeNotifierProvider(
      create: (context) => ViewModel(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Marks"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Your marks here: ", style: TextStyle(fontSize: 24)),
              ListView.builder(
                shrinkWrap: true,
                itemCount: appState.numeros.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: Center(
                      child: Text(
                        appState.numeros[index].toString(),
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
