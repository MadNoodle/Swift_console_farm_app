//Prompt options 1st level
print("Que voulez-vous faire?"
    + "\n1. Enregistrez une nouvelle activité"
    + "\n2. Connsultez ma banque"
    + "\n3. Consultez ma grange")

if let choice = readLine(){ // Renvoie un optionnel donc j unwrap
    switch(choice){
        case "1":
            print("Vous voulez ajouter une activité")
        case "2":
            print("Vous voulez consulter votre banque")
        case "3":
            print("Vous voulez consulter votre grange")
        default:
            print("je ne comprends pas")
    }
    
}
