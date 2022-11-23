//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Johnny Bravo on 21/11/2022.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButten!
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectedLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectedLeague(leagueType: "womens")
    }
    @IBAction func onCoedTapped(_ sender: Any) {
            selectedLeague(leagueType: "coed")
    }
    func selectedLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
                           override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                if let skillVC = segue.destination as? SkillVC {
                    skillVC.player = player
                }
            }
}
