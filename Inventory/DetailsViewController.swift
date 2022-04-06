//
//  DetailsViewController.swift
//  Inventory
//
//  Created by Cambrian on 2022-03-23.
//
import UIKit

//protocol detailViewDelegate{
//    func saveItemList(items:Item)
//}
class DetailsViewController: UIViewController {
    
    //var itemList: ItemList!
    var itemList = ItemList()
    var index: Int!
    //var items = [Item]()
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var SKUField: UITextField!
    @IBOutlet weak var descField: UITextField!
    @IBOutlet weak var dateField: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if (index != nil) {
                nameField.text =  itemList.items[index].name
                SKUField.text = itemList.items[index].SKU
                descField.text = itemList.items[index].descriptions
                dateField.date = itemList.items[index].dateAdded
            
        }
    }
    
    
    @IBAction func save(_ sender: Any) {
        let items = Item(name: nameField.text!, SKU: SKUField.text!, descriptions: descField.text!, dateAdded: dateField.date)
//
        itemList.addItem(item: items)
      //  print(items.name)
           
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
