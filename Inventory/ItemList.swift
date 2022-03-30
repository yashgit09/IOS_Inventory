//
//  ItemList.swift
//  Inventory
//
//  Created by Cambrian on 2022-03-23.
//

import Foundation

//enum ItemKey: String, CaseIterable{
//    case items
//}
class ItemList{
    //var items = [Item]()
    var items = [Item]()
//    init(autofill: Bool){
//        if autofill{
//            items = []
//        }
    
    
    func addItem(item: Item){
        // complete code
       
            items.append(item)
        
        let defaults = UserDefaults.standard
        defaults.set(items, forKey: "Saveditems")
        
       // let nItem = defaults.object(forKey: "Saveditems") as? [String] ?? [String]()
      //  print("******************")
       // print(nItem)
       // print("******************")
        

    }
    
    func deleteItem(row: Int){
        // complete code
    }
    
    func moveItem(from: Int, to: Int){
        // complete code
    }
    
}
