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
    var itemURL: URL = {
        let documentDirectories = FileManager.default.urls(for: .documentDirectory, in:
                .userDomainMask)
        let documentDirectory = documentDirectories.first!
        return documentDirectory.appendingPathComponent("item.archive")
    }()
    
    init(){
        do{
            let data = try Data(contentsOf: itemURL)
            items = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as! [Item]
        } catch let err {
            print(err)
        }
    }
    
    
    func addItem(item: Item){
        items.append(item)
        
    }
    
    func deleteItem(row: Int){
        // complete code
    }
    
    func moveItem(from: Int, to: Int){
        // complete code
    }
    
    func save(){
        do{
            let data = try NSKeyedArchiver.archivedData(withRootObject: items, requiringSecureCoding: false)
            try data.write(to: itemURL)
        }
        catch let err{
            print(err)
        }
    }
    
}
