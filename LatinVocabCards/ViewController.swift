//
//  ViewController.swift
//  LatinVocabCards
//
//  Created by Dave Gumba on 2019-08-31.
//  Copyright © 2019 Dave's Organization. All rights reserved.
//

import UIKit
import Koloda

class ViewController: UIViewController {
    
    @IBOutlet weak var kolodaView: KolodaView!
    
    var words: [Word] = [
    .init(englishWord: "farmer", latinWord: "agricola, -ae"),
    .init(englishWord: "sailor", latinWord: "nauta, -ae"),
    .init(englishWord: "money", latinWord: "pecunia, -ae"),
    .init(englishWord: "night", latinWord: "nox, noctis"),
    .init(englishWord: "sheep", latinWord: "ovis, ovis"),
    .init(englishWord: "tree", latinWord: "silva, -ae"),
    .init(englishWord: "hand", latinWord: "manus, -ūs"),
    .init(englishWord: "too much", latinWord: "nimis"),
    .init(englishWord: "at once, immediately, then", latinWord: "statim"),
    .init(englishWord: "once", latinWord: "semel"),
    .init(englishWord: "after", latinWord: "postquam"),
    .init(englishWord: "unless, except, if not", latinWord: "nisi"),
    .init(englishWord: "and so", latinWord: "itaque"),
    .init(englishWord: "while", latinWord: "dum"),
    .init(englishWord: "enough", latinWord: "satis"),
    .init(englishWord: "without", latinWord: "sine"),
    .init(englishWord: "often", latinWord: "saepe"),
    .init(englishWord: "around", latinWord: "circum"),
    .init(englishWord: "air", latinWord: "āēr, -eris"),
    .init(englishWord: "summer", latinWord: "aestās, -ātis"),
    .init(englishWord: "lamb", latinWord: "agnus, -ī"),
    .init(englishWord: "wing", latinWord: "āla, -ae"),
    .init(englishWord: "mind, soul", latinWord: "animus, -ī"),
    .init(englishWord: "bow", latinWord: "arcus, -ūs"),
    .init(englishWord: "art", latinWord: "ars, artis"),
    .init(englishWord: "shoe", latinWord: "calceus, -ī"),
    .init(englishWord: "tail", latinWord: "cauda, -ae"),
    .init(englishWord: "brain", latinWord: "cerebrum, -ī"),
    .init(englishWord: "paper", latinWord: "charta, -ae"),
    .init(englishWord: "neck", latinWord: "collum, -ī"),
    .init(englishWord: "several", latinWord: "complūrēs, -a"),
    .init(englishWord: "horn", latinWord: "cornū, -ūs"),
    .init(englishWord: "leg", latinWord: "crūs, -ūris"),
    .init(englishWord: "(down) from, of, about", latinWord: "dē"),
    .init(englishWord: "day", latinWord: "diēs, -ēī"),
    .init(englishWord: "pain, grief", latinWord: "dolor, -ōris"),
    .init(englishWord: "sweet", latinWord: "dulcis, -e"),
    .init(englishWord: "only, just", latinWord: "dumtaxat"),
    .init(englishWord: "hard", latinWord: "dūrus, -a, -um"),
    .init(englishWord: "sword", latinWord: "ēnsis, -is"),
    .init(englishWord: "letter", latinWord: "epistula, -ae"),
    .init(englishWord: "even if, although", latinWord: "etsī"),
    .init(englishWord: "iron, steel", latinWord: "ferrum, -ī"),
    .init(englishWord: "flower", latinWord: "flōs, -ōris"),
    .init(englishWord: "leaf", latinWord: "folium, -ī"),
    .init(englishWord: "forehead", latinWord: "frōs, -ontis"),
    .init(englishWord: "thief", latinWord: "fūr, -is"),
    .init(englishWord: "knee", latinWord: "genū, -ūs"),
    .init(englishWord: "heavy, severe, grave", latinWord: "gravis, -e"),
    .init(englishWord: "winter", latinWord: "hiems, -mis"),
    .init(englishWord: "door", latinWord: "iānua, -ae"),
    .init(englishWord: "rain, shower", latinWord: "imber, -bris"),
    .init(englishWord: "attack, charge", latinWord: "impetus, -ūs"),
    .init(englishWord: "ignorant", latinWord: "indoctus, -a, -um"),
    .init(englishWord: "meanwhile", latinWord: "interim"),
    .init(englishWord: "inside", latinWord: "intus"),
    .init(englishWord: "again", latinWord: "iterum"),
    .init(englishWord: "wood", latinWord: "lignum, -ī"),
    .init(englishWord: "more", latinWord: "magis"),
    .init(englishWord: "sad, sorrowful", latinWord: "maestus, -a, -ums"),
    .init(englishWord: "honey", latinWord: "mel, mellis"),
    .init(englishWord: "better", latinWord: "melior, -ius"),
    .init(englishWord: "limb", latinWord: "membrum"),
    .init(englishWord: "merchant", latinWord: "mercātor, -ōris"),
    .init(englishWord: "only, just", latinWord: "modo"),
    .init(englishWord: "..ever?", latinWord: "-nam"),
    .init(englishWord: "for", latinWord: "namque"),
    .init(englishWord: "nest", latinWord: "nīdus, -ī"),
    .init(englishWord: "snow", latinWord: "nix, nivis"),
    .init(englishWord: "nut", latinWord: "nux, nucis"),
    .init(englishWord: "dark", latinWord: "obscūrus, -a, -um"),
    .init(englishWord: "speech", latinWord: "ōrātiō, -ōnis"),
    .init(englishWord: "east", latinWord: "oriēns, -entis"),
    .init(englishWord: "equal", latinWord: "pār, paris"),
    .init(englishWord: "worse", latinWord: "pēior, -ius"),
    .init(englishWord: "ghost", latinWord: "phantasma, -atis"),
    .init(englishWord: "hat", latinWord: "petasus, -ī"),
    .init(englishWord: "far", latinWord: "procul"),
    .init(englishWord: "near", latinWord: "proba"),
    .init(englishWord: "footprints", latinWord: "vestīgium, vestīgiī"),
    .init(englishWord: "eagle", latinWord: "aquila, -ae"),
    .init(englishWord: "lung", latinWord: "pulmō, pulmōnis"),
    .init(englishWord: "branch", latinWord: "rāmus, rāmī"),
    .init(englishWord: "mortar", latinWord: "pīla, -ae"),
    .init(englishWord: "liver", latinWord: "iecur, -inoris, -oris"),
    .init(englishWord: "belly, abdomen, body, stomach, gluttony", latinWord: "venter, ventris"),
    .init(englishWord: "knife, razor", latinWord: "culter, cultrī"),
    .init(englishWord: "January", latinWord: "Capricornus"),
    .init(englishWord: "February", latinWord: "Aquārius"),
    .init(englishWord: "March", latinWord: "Piscēs"),
    .init(englishWord: "April", latinWord: "Ariēs"),
    .init(englishWord: "May", latinWord: "Taurus"),
    .init(englishWord: "June", latinWord: "Geminī"),
    .init(englishWord: "July", latinWord: "Cancer"),
    .init(englishWord: "August", latinWord: "Leō"),
    .init(englishWord: "September", latinWord: "Virgō"),
    .init(englishWord: "October", latinWord: "Lībra"),
    .init(englishWord: "November", latinWord: "Scorpiō"),
    .init(englishWord: "December", latinWord: "Sagittārius"),
    .init(englishWord: "morning", latinWord: "māne"),
    .init(englishWord: "ruler", latinWord: "rēgula, -ae"),
    .init(englishWord: "every day", latinWord: "quotidie"),
    ]
    
    var copyWords = [Word]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        words = words.shuffled()
        copyWords = words.shuffled()
        kolodaView.delegate = self
        kolodaView.dataSource = self
        print(words.count)
    }

}

extension ViewController: KolodaViewDelegate {
    
    func koloda(_ koloda: KolodaView, didSelectCardAt index: Int) {
        print("swiped")
    }
    
    func kolodaDidRunOutOfCards(_ koloda: KolodaView) {
        koloda.reloadData()
        words = copyWords
    
    }
}

extension ViewController: KolodaViewDataSource {
    func kolodaSpeedThatCardShouldDrag(_ koloda: KolodaView) -> DragSpeed {
        return .slow
    }
    
  
  func kolodaNumberOfCards(_ koloda:KolodaView) -> Int {
    return words.count
  }
  
  func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
    let cardView = UIView()
    let latinWordLabel = UILabel()
    let englishWordLabel = UILabel()
    
    cardView.layer.cornerRadius = 20
    cardView.frame = CGRect(x: 0 , y: 0, width: self.view.frame.width, height: self.view.frame.height * 0.7)
    cardView.backgroundColor = #colorLiteral(red: 0.9801918864, green: 0.5104263425, blue: 0.3680477142, alpha: 1)
    cardView.clipsToBounds = true
    
    cardView.addSubview(latinWordLabel)
    latinWordLabel.translatesAutoresizingMaskIntoConstraints = false
    latinWordLabel.centerXAnchor.constraint(equalTo: cardView.centerXAnchor, constant: 0).isActive = true
    latinWordLabel.centerYAnchor.constraint(equalTo: cardView.centerYAnchor, constant: 0).isActive = true
    latinWordLabel.leadingAnchor.constraint(greaterThanOrEqualTo: cardView.leadingAnchor, constant: 5).isActive = true
    latinWordLabel.trailingAnchor.constraint(greaterThanOrEqualTo: cardView.trailingAnchor, constant: -5).isActive = true
    latinWordLabel.font = UIFont(name:"Avenir-Heavy", size: 35.0)
    latinWordLabel.textAlignment = .center
    latinWordLabel.lineBreakMode = .byWordWrapping
    latinWordLabel.numberOfLines = 0
    latinWordLabel.text = words[index].latinWord
    
    cardView.addSubview(englishWordLabel)
    englishWordLabel.translatesAutoresizingMaskIntoConstraints = false
    englishWordLabel.centerXAnchor.constraint(equalTo: cardView.centerXAnchor).isActive = true
    englishWordLabel.topAnchor.constraint(equalTo: latinWordLabel.bottomAnchor, constant: 20).isActive = true
    englishWordLabel.leadingAnchor.constraint(greaterThanOrEqualTo: cardView.leadingAnchor, constant: 5).isActive = true
    englishWordLabel.trailingAnchor.constraint(greaterThanOrEqualTo: cardView.trailingAnchor, constant: -5).isActive = true
    englishWordLabel.font = UIFont(name:"Avenir-Medium", size: 25.0)
    englishWordLabel.textAlignment = .center
    englishWordLabel.lineBreakMode = .byWordWrapping
    englishWordLabel.numberOfLines = 0
    englishWordLabel.text = words[index].englishWord
    
    return cardView
  }
}

