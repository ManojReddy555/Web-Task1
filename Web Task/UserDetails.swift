//
//  UserDetails.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on June 8, 2021

import Foundation



struct UserDetails : Codable {

  
        let email : String?
        let id : String?
        let mobile : String?
        let name : String?
        let useremail : String?
        let userId : String?
        let usermobile : String?
        let usertitle : String?

        enum CodingKeys: String, CodingKey {
                case email = "email"
                case id = "id"
                case mobile = "mobile"
                case name = "name"
                case useremail = "useremail"
                case userId = "userId"
                case usermobile = "usermobile"
                case usertitle = "usertitle"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                email = try values.decodeIfPresent(String.self, forKey: .email)
                id = try values.decodeIfPresent(String.self, forKey: .id)
                mobile = try values.decodeIfPresent(String.self, forKey: .mobile)
                name = try values.decodeIfPresent(String.self, forKey: .name)
                useremail = try values.decodeIfPresent(String.self, forKey: .useremail)
                userId = try values.decodeIfPresent(String.self, forKey: .userId)
                usermobile = try values.decodeIfPresent(String.self, forKey: .usermobile)
                usertitle = try values.decodeIfPresent(String.self, forKey: .usertitle)
        }

}

