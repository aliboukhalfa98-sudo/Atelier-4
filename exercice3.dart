
class Compte {
  double _solde; // propriété privée
  final String numeroCompte;

  
  Compte(this.numeroCompte, [this._solde = 0.0]);

  String get solde {
    return "${_solde.toStringAsFixed(2)} \$";
  }

  void depot(double montant) {
    if (montant > 0) {
      _solde += montant;
    }
  }
}

void main() {
  Compte compte = Compte("CB-1001");
  compte.depot(150);
  compte.depot(-50); // refusé, car négatif
  print("Compte ${compte.numeroCompte} - Solde : ${compte.solde}");
}