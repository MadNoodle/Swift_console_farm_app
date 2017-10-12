// /////////////// //
// MARK: VARIABLES //
// /////////////// //
var money = 0.0 // Double car j'ai des centimes
var barn = ["Milk":0, "Wheat":0, "Wool" : 0] //Déclaration du dictionnaire grange

// /////////////// //
// MARK: ACTIVITIES //
// /////////////// //

func displayBank (){
    print("Vous avez \(money) € sur votre compte en banque")
}

func displayBarn(){
    print("Voici le contenu de la grange:"
        + "\n- \(barn["Milk"]!) bidons de lait" //Force unwrap car c'est optionnel
        + "\n- \(barn["Wheat"]!) bottes de blé"
        + "\n- \(barn["Wool"]!) pelotes de laine")
}

func addActivities(){
    print("Quelle activité souhaitez-vous ajouter?"
        + "\n1. J'ai nourri les animaux"
        + "\n2. J'ai vendu mes produits"
        + "\n3. J'ai trait mes vaches"
        + "\n4. J'ai moissoné"
        + "\n5. J'ai tondu mes moutons")

    if let answer = readLine(){
        switch(answer){
        case "1":
            print("nourri")
        case "2":
            print("vendu")
        case "3":
            print("trait")
        case "4":
            print("moissoné")
        case "5":
            print("tondu")
        default:
            print("Je ne comprends pas votre réponse")
        }
    }

}

// ////////////////// //
// MARK: INTERACTIONS //
// ////////////////// //

//Prompt options 1st level
print("Que voulez-vous faire?"
    + "\n1. Enregistrez une nouvelle activité"
    + "\n2. Consultez ma banque"
    + "\n3. Consultez ma grange")

if let choice = readLine(){ // Renvoie un optionnel donc j unwrap
    switch(choice){
        case "1":
            addActivities()
        case "2":
            displayBank()
        case "3":
            displayBarn()
        default:
            print("je ne comprends pas")
    }
    
}
