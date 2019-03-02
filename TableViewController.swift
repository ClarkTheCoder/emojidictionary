//
//  TableViewController.swift
//  EmjoiLaugh
//
//  Created by carson on 2019-02-28.
//  Copyright © 2019 carson. All rights reserved.

import UIKit

class TableViewController: UITableViewController {
    
    var emojis = ["😀", "😂", "😍", "😇", "🍆", "💿",  "⏱", "📎"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // returns the emoji array length (int)
        return emojis.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        // fills the table with emojis from array
        cell.textLabel?.text = emojis[indexPath.row]
        
        return cell
    }
    
    // perform segue to emojiDef view
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // get the current emjoi that's been selected via indexPath.row
        let emoji = emojis[indexPath.row]
        // sends emoji as argument 
        performSegue(withIdentifier: "ourSegue", sender: emoji)
    }
    
    // function that passes over information from previous view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // viewController we're moving to is emojiDefVC
       let emojiDefViewController = segue.destination as! EmojiDefinitionViewController
        
        // this is the same as the emoji on the EmojiDefVC
        // in other words we have access now to variables in the other controller
        emojiDefViewController.emoji = sender as! String
    }
    
}
