import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {

  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.arrow_back_ios_new_rounded ),
        onPressed: (){
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
            ElevatedButton(
              onPressed: () {}, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
              ),
              child: const Text('Elevated')
            ),
            const SizedBox(height: 15),
            const ElevatedButton(onPressed: null, child: Text('Elevated Disabled')),
            const SizedBox(height: 15),
    
            ElevatedButton.icon(
              onPressed: (){}, 
              icon: const Icon( Icons.access_alarm_rounded), 
              label: const Text('Elevated Icon'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                foregroundColor: Colors.black,
              ),
            ),
            const SizedBox(height: 15),

            FilledButton(
              onPressed: (){}, 
              style: FilledButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
              ),
              child: const Text('Filled')
            ),
            const SizedBox(height: 15),
            FilledButton.icon(
              onPressed: (){}, 
              icon: const Icon( Icons.accessibility_new ),
              label: const Text('Filled Icon'),
              style: FilledButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
            ),
            const SizedBox(height: 15),

            OutlinedButton(
              onPressed: (){}, 
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.red, width: 2),
                foregroundColor: Colors.red,
              ),
              child: const Text('Outline')
            ),
            const SizedBox(height: 15),
            OutlinedButton.icon(
              onPressed: (){}, 
              label: const Text('Outline Icon'),
              icon: const Icon( Icons.terminal),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.purple, width: 2),
                foregroundColor: Colors.purple,
              ),
            ),
            const SizedBox(height: 15),

            TextButton(
              onPressed: (){}, 
              style: TextButton.styleFrom(
                foregroundColor: Colors.indigo,
              ),
              child: const Text('Text')
            ),
            const SizedBox(height: 15),
            TextButton.icon(
              onPressed: (){}, 
              icon: const Icon( Icons.account_box_outlined),
              label: const Text('Text Icon'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.brown,
              ),
            ),
            const SizedBox(height: 15),

            const CustomButton(),
            const SizedBox(height: 15),

            IconButton(
              onPressed: (){}, 
              icon: const Icon( Icons.app_registration_rounded),
              style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(Colors.teal),
                iconColor: const MaterialStatePropertyAll(Colors.white),
              ),
            ),
            const SizedBox(height: 15),
            IconButton(
              onPressed: (){}, 
              icon: const Icon( Icons.app_registration_rounded),
              style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(Colors.pink),
                iconColor: const MaterialStatePropertyAll(Colors.white),
              ),
            ),
            const SizedBox(height: 15),

            ElevatedButton.icon(
              onPressed: () {
                context.go('/');
              },
              icon: const Icon(Icons.home),
              label: const Text('Volver a Home'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
              ),
            ),

          ],
          ),
        ),
      ),
    );
  }
}


class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;


    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric( horizontal: 20, vertical: 10),
            child: Text('Hola, vamos a crear un boron de subnautica (Terror psicológico)', style: TextStyle(color: Colors.white))
          ),
        ),
      ),
    );
  }
}

