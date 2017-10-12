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
        + "\n \(barn["Milk"]!) bidons de lait" //Force unwrap car c'est optionnel
        + "\n \(barn["Wheat"]!) bottes de blé"
        + "\n \(barn["Wool"]!) pelotes de laine")
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
            print("Vous voulez ajouter une activité")
        case "2":
            displayBank()
        case "3":
            displayBarn()
        default:
            print("je ne comprends pas")
    }
    
}
