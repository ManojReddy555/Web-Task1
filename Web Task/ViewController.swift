//
//  ViewController.swift
//  Web Task
//
//  Created by Manoj on 09/06/21.
//

import UIKit
//struct JsonParser:Codable {
//    var name:String?
//    var id:String?
//}

class ViewController: UIViewController {
    var MyData = [UserDetails]()
    
    @IBOutlet weak var Table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "User Details"
        Table.reloadData()
        getData()
    }


}
extension ViewController:UITableViewDelegate,UITableViewDataSource{
//    did selrct row indext path
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let SCViewController = (storyboard?.instantiateViewController(identifier: "SCViewController"))! as SCViewController
        SCViewController.data1 = MyData[indexPath.row]
        
       navigationController?.pushViewController(SCViewController, animated: true)

    }
//          height of the row
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 280
    }
//     number of sections in the row
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.MyData.count
    }
//     cell for row indext path
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Table.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! DetailsTableViewCell
        if MyData == nil {
            print("error")
        }else{
            
            cell.lblID.text = MyData[indexPath.row].id
                cell.lblName.text = MyData[indexPath.row].name
                cell.lblEmail.text = MyData[indexPath.row].email
                cell.lblMobile.text = MyData[indexPath.row].mobile
            cell.userID.text = MyData[indexPath.row].userId
            cell.userEmail.text = MyData[indexPath.row].useremail
            cell.userTittle.text = MyData[indexPath.row].usertitle
            cell.userMobile.text = MyData[indexPath.row].usermobile
    
        }
    
        
        return cell
    }
    
    
}



extension ViewController{
    
    func getData(){
        let url = URLRequest(url: URL(string: "https://5ec4c2c0628c160016e71369.mockapi.io/users")!)
        URLSession.shared.dataTask(with: url) { (data, responce, error) in
            do{
                if error == nil{
                    self.MyData = try JSONDecoder().decode([UserDetails].self, from: data!)
                    
                    for detsils in self.MyData{
                        DispatchQueue.main.async {
                            self.Table.reloadData()
                        }
//                        self.Table.reloadData()
//                        print(detsils.id!)
                    }
                }

            }catch{
                print(error.localizedDescription)
            }
                        
        }
        .resume()
        
    }
    
    
}
