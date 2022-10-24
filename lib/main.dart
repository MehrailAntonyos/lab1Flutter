import 'package:flutter/material.dart';
import 'package:helloworld/models/recipe.dart';
import './screens/recipe.details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => MyHomePage(title: 'Sweete'),
      },
      debugShowCheckedModeBanner: false,
      title: 'Recipe Calculator',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        primaryColor: Colors.black,
        secondaryHeaderColor: Colors.blueGrey,
      ),
      // home: MyHomePage(title: 'Sweete'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  print(Recipe.samples[index].label);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => RecipeDetail(Recipe.samples[index])));
                },
                child: buildRecipeCard(Recipe.samples[index]));
          },
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.abc_rounded),
      //   onPressed: () {},
      // ),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      color: Color(0xfff990b3),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image(image: AssetImage(recipe.imageUrl)),
            const SizedBox(
              height: 10,
            ),
            Text(
              recipe.label,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
