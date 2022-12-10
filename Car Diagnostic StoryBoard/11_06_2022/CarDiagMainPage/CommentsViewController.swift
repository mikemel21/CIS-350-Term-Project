//
//  CommentsViewController.swift
//  CarDiagMainPage
//
//  Created by Lily Baer on 12/9/22.
//

import SwiftUI
import UIKit
import FirebaseDatabase
import FirebaseAuth

class CommentsViewController: UIViewController {
    
    var ref : DatabaseReference!
    
    var numComments = 0;
    
    private let database = Database.database().reference()
    
  //  var userEmail: String = LoginViewController.userEmail
    
    @IBOutlet weak var CommentsTableView: UITableView!
    @IBOutlet weak var comment: UITextField!
    @IBOutlet weak var post: UIButton!
    

    
    @IBAction func postTapped(_ sender: UIButton){
        addComment()
        
    }
    public func addComment(){
        database.child("user").setValue(comment.text)
        numComments += 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return numComments
    }
    
    class commentTableViewCell: UITableViewCell{
    
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
            let commentTableViewCell = tableView.dequeueReusableCell(withIdentifier: "commentTableViewCell") as! commentTableViewCell
            return commentTableViewCell
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
}
    




