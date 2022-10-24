class Recipe {
  // ? for nullable availability before constructor step
  String label;
  String imageUrl;
  int servings;
  List<Ingredients> ingredients;

  // constructor
  Recipe(this.label, this.imageUrl, this.servings, this.ingredients);

  static List<Recipe> samples = [
    Recipe('Birthday Cake Cupcake', 'assets/flutterPhoto1.jpg', 4, [
      Ingredients(1, 'box', 'flour'),
      Ingredients(4, 'packet', 'cream'),
      Ingredients(2, 'bottel', 'milk'),
    ]),
    Recipe('Macron Box', 'assets/flutterPhoto2.jpeg', 10, [
      Ingredients(3, 'box', 'flour'),
      Ingredients(6, 'packet', 'cream'),
      Ingredients(3, 'bottel', 'milk'),
      Ingredients(1, 'packet', 'chocolate flavour'),
    ]),
    Recipe('Donut Box', 'assets/flutterPhoto4.jpg', 12, [
      Ingredients(6, 'box', 'flour'),
      Ingredients(9, 'packet', 'cream'),
      Ingredients(5, 'bottel', 'milk'),
      Ingredients(4, 'packet', 'chocolate Souce'),
    ]),
    Recipe('Pan Cake', 'assets/flutterPhoto3.jpg', 4, [
      Ingredients(0.5, 'box', 'flour'),
      Ingredients(0.5, 'cup', 'cream'),
      Ingredients(1, 'bottel', 'milk'),
      Ingredients(3, 'number', 'egg'),
    ]),
  ];
}

class Ingredients {
  double quantity;
  String measure;
  String name;

  Ingredients(this.quantity, this.measure, this.name);
}
