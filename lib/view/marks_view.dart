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

                  final scoreData = appState.numeros[index];
                  final int score = scoreData['score'] as int;
                  final DateTime timestamp = scoreData['timestamp'] as DateTime;

                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: ListTile(
                      title: Text(
                        "Puntuación: $score",
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Fecha: ${timestamp.day}/${timestamp.month}/${timestamp.year} - Hora: ${timestamp.hour.toString().padLeft(2, '0')}:${timestamp.minute.toString().padLeft(2, '0')}:${timestamp.second.toString().padLeft(2, '0')}",
                        style: const TextStyle(fontSize: 14),
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
