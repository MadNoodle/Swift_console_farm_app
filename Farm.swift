//======================
// MARK: - Variables
//======================
var money = 0.0
var barn = ["Milk":0, "Wheat":0, "Wool":0]


//======================
// MARK: - Activities
//======================
func feedCows() {
    money -= 4
}

func sell() {
    
    money += Double(barn["Milk"]!) * 0.50
    money += Double(barn["Wheat"]!) * 0.30
    money += Double(barn["Wool"]!) * 1
    
    barn = ["Milk" :0, "Wheat" : 0, "Wool": 0]
}

func harvest(nb:Int) {
    barn["Wheat"]! += nb
}

func mowSheep(nb:Int) {
    barn["Wool"]! += nb
}

func milkCows(nb:Int) {
    barn["Milk"]! += nb
}

func askQuantity(goods:String) -> Int?{
    print("quelle quantité de \(goods) avez vous récoltée?")
    if let line = readLine(){
        if let quantity = Int(line){
            return quantity
        }
    }
    print("Je n'ai pas compris")
    return nil
}
func addActivities() {
    print("Quelle activité avez-vous fait ? "
        + "\n1🥕 J'ai nourri les animaux"
        + "\n2💸 J'ai vendu mes produits"
        + "\n3🐄 J'ai trait mes vaches"
        + "\n4🐑 J'ai tondu mes moutons"
        + "\n5🌾 J'ai moissoné mes champs")
    
    if let choice2 = readLine() {
        switch(choice2){
            case "1":
                feedCows()
                print("💸  Votre solde est de \(money) €")
            case "2":
                sell()
                print("💸  Votre solde est de \(money) €")
            case "3":
                if let quantity = askQuantity(goods :"Milk"){
                milkCows(nb:quantity)
                    print("🍼  Vous avez \(barn["Milk"]!) bidons de lait")}
            case "4":
                if let quantity = askQuantity(goods :"Wool"){
                mowSheep(nb:quantity)
                    print("⚪️  Vous avez \(barn["Wool"]!) pelotes de laine")}
            case "5":
                if let quantity = askQuantity(goods :"Wheat"){
                    harvest(nb:quantity)}
                print("🌾  Vous avez \(barn["Wheat"]!) bottes de blé")
            default:
                print("Je n'ai pas compris")
        }
        print("🎉  Super 🎉")
    }
}

//======================
// MARK: - Menu
//======================
func menu(){

    print ("Que voulez-vous faire?"
        + "\n1. 🤸‍♂️  Enregistrer une nouvelle activité"
        + "\n2. 🏦  Consulter ma banque"
        + "\n3. 🏠  Consulter ma grange")

    //EXECUTION DU CHOIX NIVEAU 1
    if let choice = readLine() {
        switch (choice){
            case "1":
                addActivities()
            case "2":
                 print("Votre banque contient \(money) euros")
            case "3":
                print("Votre grange contient :"
                    + "\n🍼  \(barn["Milk"]!) bidons de lait"
                    + "\n🌾  \(barn["Wheat"]!) bottes de blé"
                    + "\n⚪️  \(barn["Wool"]!) pelottes de laines")
            default :
            print("je ne comprends pas")
        }
    }
    
}
while true {
    menu()
}

