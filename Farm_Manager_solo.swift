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
        + "\n- \(barn["Milk"]!) bidons de lait"
        + "\n- \(barn["Wheat"]!) bottes de blé"
        + "\n- \(barn["Wool"]!) pelotes de laine")
}

func feed(){
    money -= 4
    print("Vous avez nourri les animmaux")
}
func sell() {
    money += Double(barn["Milk"]!) * 0.3 //Force unwrap car CONVERSION donc c'est optionnel
    money += Double(barn["Wheat"]!) * 0.3
    money += Double(barn["Wool"]!) * 0.5
    
    //videz la grange
    barn = ["Milk":0, "Wheat":0, "Wool" : 0]
}
func harvest(){
    barn["Wheat"]! += 100
}
func milk(){
    barn["Milk"]! += 30
}
func wool(){
    barn["Wool"]! += 20
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
            feed()
        case "2":
            sell()
        case "3":
            milk()
        case "4":
            harvest()
        case "5":
            wool()
        default:
            print("Je ne comprends pas votre réponse")
        }
    }

}

// ////////////////// //
// MARK: INTERACTIONS //
// ////////////////// //

//Prompt options 1st level
func interactMenu(){
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
    
}

// ////////////////// //
// MARK: INIT LOOP    //
// ////////////////// //
while true {
    interactMenu()
}
