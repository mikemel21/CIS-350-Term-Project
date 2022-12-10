//
//  MainPageController.swift
//  CarDiagMainPage
//
//  Created by Alex Espinoza on 12/4/22.
//

import UIKit
import Firebase
import FirebaseAuth

class MainPageController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signOutTapped(_ sender: Any) {
        signOut()
    }
    
    func signOut() {
        
        //Sign user out
        let firebaseAuth = Auth.auth()
    do {
      try firebaseAuth.signOut()
    } catch let signOutError as NSError {
      print("Error signing out: %@", signOutError)
    }
        
        //Return user to login Screen
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "login")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    


}

