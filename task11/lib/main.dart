import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController locationController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadData(); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Sharedperformance')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
              
            ),
            TextField(
              controller: ageController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Age'),
              
            ),
            TextField(
              controller: locationController,
              decoration: InputDecoration(labelText: 'Location'),
             
            ),
            
            SizedBox( height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey
              ),
                    onPressed: _saveDataButton,
                    child: Text('Save'),
                  ),
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey
              ),
                    onPressed: _loadData,
                    child: Text('Load'),
                    
                
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey
              ),
                    onPressed: _clearData,
                    child: Text('Clear'),
                  ),
                  
                ],
              ),
            ),
            SizedBox(height: 50),

            Center(child: _buildSavedInfo('Name', 'name')),
            Center(child: _buildSavedInfo('Age', 'age')),
            Center(child: _buildSavedInfo('Location', 'location')),
            
          ],
        ),
      ),
    );
  }

  void _saveData(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  Future<String?> _getSavedData(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  void _loadData() async {
    String name = await _getSavedData('name') ?? '';
    int age = int.tryParse(await _getSavedData('age') ?? '') ?? 0;
    String location = await _getSavedData('location') ?? '';

    setState(() {
      nameController.text = name;
      ageController.text = age.toString();
      locationController.text = location;
    });

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('load')));
  }

  void _clearData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();

    setState(() {
      nameController.clear();
      ageController.clear();
      locationController.clear();
    });

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('clear')));
  }

  void _saveDataButton() {
    String name = nameController.text;
    String age = ageController.text;
    String location = locationController.text;

    _saveData('name', name);
    _saveData('age', age);
    _saveData('location', location);

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Saved Successfully')));
  }

  Widget _buildSavedInfo(String label, String key) {
    return FutureBuilder<String>(
      
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SizedBox.shrink(); 
        } else {
          String savedValue = snapshot.data ?? ''; 

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text('$label: $savedValue'),
          );
        }
      },
    );
  }
}
