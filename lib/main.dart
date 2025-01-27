import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Exemple dialog',
    home: const  MyHomePage(),
  ));
}


class MyHomePage extends StatefulWidget {
   const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class  _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Boites de dialogues"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              //afficherAlertDialog(context);
              afficherSimpleDialog(context);
            },
            child: const Text('Afficher dialogue')
        ),
      ),
    );
  }

}

Future<void> afficherAlertDialog(BuildContext context){
  return showDialog<void>(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: const Text('Confirmation'),
          content: const Text('Voulez-vous contnuer ?'),
          actions: [
            TextButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: const Text('Annuler')
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: const Text('continuer')
            ),
          ],
        );
      }
  );
}

Future<void> afficherSimpleDialog(BuildContext context){
  return showDialog(
      context: context,
      builder: (BuildContext context){
        return SimpleDialog(
          title: const Text('Choisissez une option'),
          children: [
            SimpleDialogOption(
                onPressed: (){
                  print('Option 1 choisie');
                  Navigator.of(context).pop();
                },
                child: const Text('Option 1')
            ),
            SimpleDialogOption(
                onPressed: (){
                  print('Option 2 choisie');
                  Navigator.of(context).pop();
                },
                child: const Text('Option 2')
            ),
          ],
        );
      }
  );

}