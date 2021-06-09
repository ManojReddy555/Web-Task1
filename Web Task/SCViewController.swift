//
//  SCViewController.swift
//  Web Task
//
//  Created by Manoj on 09/06/21.
//

import UIKit

class SCViewController: UIViewController {
    
    @IBOutlet weak var id: UILabel!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var email: UILabel!
    
    @IBOutlet weak var mobile: UILabel!
    
    @IBOutlet weak var userTittle: UILabel!
    
    @IBOutlet weak var userEmail: UILabel!
    
    @IBOutlet weak var userMobile: UILabel!
    
    @IBOutlet weak var userId: UILabel!
    var data1:UserDetails!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
      
        names()
        // Do any additional setup after loading the view.
    }
    func names(){
        if data1 == nil{
            print("error")
        }else{
            DispatchQueue.main.async {
                self.id.text = "\(self.data1.id!)"
                self.name.text = "\(self.data1.name!)"
                self.email.text = "\(self.data1.email!)"
                self.mobile!.text = "\(self.data1.mobile!)"
                
                if self.userId == nil && self.userEmail == nil && self.userMobile == nil && self.userTittle == nil{
                    self.userId.text = "\(self.data1.userId!)"
                    self.userEmail.text = "\(self.data1.useremail!)"
                    self.userMobile.text = "\(self.data1.usermobile!)"
                    self.userTittle.text = "\(self.data1.usertitle!)"
                }else{
                    self.userId.text = "\("Empty")"
                    self.userEmail.text = "\("Empty")"
                    self.userMobile.text = "\("Empty")"
                    self.userTittle.text = "\("Empty")"
                }
                    
                }
               
               
            }
        }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
