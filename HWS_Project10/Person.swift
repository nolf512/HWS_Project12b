//
//  Person.swift
//  HWS_Project10
//
//  Created by J on 2021/03/24.
//

import UIKit

//nameとimageのデータ保持するカスタムクラス
class Person: NSObject,Codable {
    
    var name: String
    var image: String
    
    init(name: String, image: String){
        self.name = name
        self.image = image
        
    }

}
