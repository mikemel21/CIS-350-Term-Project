//
//  LoginViewController.swift
//  CarDiagMainPage
//
//  Created by Alex Espinoza on 11/1/22.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
        // Do any additional setup after loading the view.
    
    @IBAction func loginTapped(_ sender: Any) {
        validateFields()
    }
    
    @IBAction func createAccountTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "signUp")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
    func validateFields(){
        if email.text?.isEmpty == true{
            print("No Email Text")
            return
        }
        
        if password.text?.isEmpty == true{
            print("No Password")
            return
        }
        
        login()
    }
    
    func login(){
        Auth.auth().signIn(withEmail: email.text!, password: password.text!) { [weak self] authResult, err in
            guard let strongSelf = self else {return}
            if let err = err {
                print(err.localizedDescription)
            }
            self!.checkUserInfo()
        }
    }
    
    func checkUserInfo() {
        if Auth.auth().currentUser == nil{
            let labelRect = CGRect(x: 100, y: 420, width: 200, height: 100)
            let label = UILabel(frame: labelRect)
            label.text = "Incorrect password or email"
            label.numberOfLines = 2
            view.addSubview(label)
        }
        else if Auth.auth().currentUser != nil{
            print(Auth.auth().currentUser?.uid)
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(identifier: "mainHome")
            vc.modalPresentationStyle = .overFullScreen
            present(vc, animated: true)
        }
    }
}
