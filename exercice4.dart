
class Media {
  final String titre;

  // Constructeur simplifié
  Media(this.titre);

  void afficherType() {
    print("Ceci est un média générique.");
  }
}

class Livre extends Media {
  final String auteur;

  Livre(super.titre, this.auteur);

  @override
  void afficherType() {
    print("Ceci est un Livre : $titre par $auteur.");
  }
}

class Film extends Media {
  final int dureeMinutes;

  Film(super.titre, this.dureeMinutes);

  @override
  void afficherType() {
    print("Ceci est un Film : $titre d'une durée de $dureeMinutes minutes.");
  }
}

void main() {
  // Q9 : liste catalogue de type List<Media>
  List<Media> catalogue = [];

  // Q10 : ajout de livres et de films
  catalogue.add(Livre("Le Petit Prince", "Antoine de Saint-Exupéry"));
  catalogue.add(Livre("Les Misérables", "Victor Hugo"));
  catalogue.add(Film("Inception", 148));
  catalogue.add(Film("Le Roi Lion", 88));

  // Q11 : parcours de la liste
  for (var media in catalogue) {
    media.afficherType();
  }
}