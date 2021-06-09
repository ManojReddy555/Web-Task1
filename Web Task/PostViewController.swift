//
//  PostViewController.swift
//  Web Task
//
//  Created by Manoj on 09/06/21.
//

import UIKit

class PostViewController: UIViewController {
    
    @IBOutlet weak var txtID: UITextField!
  
    @IBOutlet weak var txtEmail: UITextField!
 
    @IBOutlet weak var txtMobile: UITextField!
  
    @IBOutlet weak var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
   
    @IBAction func ClickTap(_ sender: Any) {
        postData()
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
extension PostViewController{
    
    func postData(){
        guard let uid = self.txtID.text else{return}
        guard let name = self.txtName.text else{return}
        guard let email = self.txtEmail.text else{return}
        guard let mobile = self.txtMobile.text else{return}
        
        if let url = URL(string: "https://5ec4c2c0628c160016e71369.mockapi.io/users"){
            var requset = URLRequest(url:url )
            requset.httpMethod = "POST"
            let parameters:[String:Any] = [
                "id":uid,
                "name":name,
                "email":email,
                "mobile":mobile
            
            ]
            URLSession.shared.dataTask(with: requset) { (data, responce, error) in
            print ("print data")
            }
            .resume()
        }
}
}
