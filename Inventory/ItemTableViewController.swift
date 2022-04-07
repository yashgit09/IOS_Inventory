//
//  ItemTableViewController.swift
//  Inventory
//
//  Created by Cambrian on 2022-03-23.
//

import UIKit

class ItemTableViewController: UITableViewController {
	
    var itemList: ItemList!
    var items = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
         self.navigationItem.leftBarButtonItem = self.editButtonItem
        print(#function)
      //  itemList.save()
       // print(itemList.itemURL)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        //UserDefaults.standard.set(try? PropertyListEncoder().encode(items), forKey: "Saveditems")
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
//        print(itemList.items.count)
//        print(itemList.items)
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return itemList.items.count
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "item", for: indexPath)

        // Configure the cell...
       //let key: ItemKey = getItemKey(section: indexPath.section) ?? .items
        let item = itemList.items[indexPath.row].name
        cell.textLabel?.text = item
     //   print(itemList.items.count)
       return cell
        
        //let items = item[indexPath.row]
        //cell.textLabel?.text = items.name
             //  print(cell)
        //return cell
        
    }
    
//    func getItemKey(section: Int) -> ItemKey?{
//        return ItemKey.items
//    }
    
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            itemList.deleteItem(row: indexPath.row)
        
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        itemList.moveItem(from: fromIndexPath.row, to: to.row)
    }
    

    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        
        
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dst = segue.destination as! DetailsViewController
        dst.itemList = itemList
        dst.index = tableView.indexPathForSelectedRow?.row
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
    }

}
