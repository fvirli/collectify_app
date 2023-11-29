import 'package:flutter/material.dart';

class TargetScreen extends StatefulWidget {
  const TargetScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TargetScreenState createState() => _TargetScreenState();
}

class _TargetScreenState extends State<TargetScreen> {
  TextEditingController targetNameController = TextEditingController();
  String selectedTargetType = 'Daily'; // Default value

  List<String> targetTypes = ['Daily', 'Weekly', 'Monthly', 'Yearly'];
  List<String> targets = [];

  void addTarget() {
    setState(() {
      String newTarget =
          '$selectedTargetType Target: ${targetNameController.text}';
      targets.add(newTarget);
      targetNameController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Target Screen'),
        backgroundColor: const Color(0xFF7553F6),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropdownButton<String>(
            value: selectedTargetType,
            onChanged: (String? newValue) {
              setState(() {
                selectedTargetType = newValue!;
              });
            },
            items: targetTypes.map((String type) {
              return DropdownMenuItem<String>(
                value: type,
                child: Text(type),
              );
            }).toList(),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: targetNameController,
            decoration: const InputDecoration(
              labelText: 'Target Name',
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: addTarget,
            child: const Text('Add Target'),
          ),
          const SizedBox(height: 16),
          const Text(
            'Targets:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: SingleChildScrollView(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: targets.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      color: const Color(0xFF7553F6),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      targets[index],
                      style: const TextStyle(color: Colors.white),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: TargetScreen(),
  ));
}
