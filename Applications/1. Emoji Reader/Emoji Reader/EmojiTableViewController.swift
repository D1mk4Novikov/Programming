//
//  EmojiTableViewController.swift
//  Emoji Reader
//
//  Created by Dimka Novikov on 07.08.2021.
//  Copyright © 2021 //DDEC. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var objects: Array<Emoji> = [
        Emoji(emoji: "🥰", name: "Love", description: "Let's love each other", isFavourite: false),
        Emoji(emoji: "🙈", name: "Monkey", description: "Very nice monkey", isFavourite: true),
        Emoji(emoji: "⚽️", name: "Football", description: "Let's play football together", isFavourite: false),
        Emoji(emoji: "🐱", name: "Cat", description: "Cat is the cutest anumal", isFavourite: false)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.largeTitleDisplayMode = .never
        
        self.navigationItem.leftBarButtonItem = self.editButtonItem
        
        self.title = "Emoji Reader"
        
//        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
    }
    
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        guard segue.identifier == "SaveSegue" else { return }
        
        let sourceTableViewController = segue.source as! NewEmojiTableViewController
        let emoji = sourceTableViewController.emoji
        
        if let selectedIndexPath = self.tableView.indexPathForSelectedRow {
            self.objects[selectedIndexPath.row] = emoji
            self.tableView.reloadRows(at: [selectedIndexPath], with: .fade)
        } else {
            let newIndexPath = IndexPath(row: self.objects.count, section: 0)
            self.objects.append(emoji)
            self.tableView.insertRows(at: [newIndexPath], with: .fade)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "EditEmoji" else { return }
        let indexPath = self.tableView.indexPathForSelectedRow!
        let emoji = self.objects[indexPath.row]
        let navigationViewController = segue.destination as! UINavigationController
        let tableViewController = navigationViewController.topViewController as! NewEmojiTableViewController
        tableViewController.emoji = emoji
        tableViewController.title = "Edit Emoji"
    }

}


// MARK: - UITableViewDataSource
extension EmojiTableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.objects.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell", for: indexPath) as! EmojiTableViewCell
        
        let object = self.objects[indexPath.row]
        
        cell.setup(for: object)
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        switch editingStyle {
        case .delete:
            self.objects.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .fade)
        default:
            break
        }
    }
    
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let movedEmoji = self.objects.remove(at: sourceIndexPath.row)
        self.objects.insert(movedEmoji, at: destinationIndexPath.row)
        self.tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let done = self.doneAction(at: indexPath)
        return UISwipeActionsConfiguration(actions: [done])
    }
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let favourite = self.favouriteAction(at: indexPath)
        return UISwipeActionsConfiguration(actions: [favourite])
    }
    
}


extension EmojiTableViewController {
    
    private func doneAction(at indexPath: IndexPath) -> UIContextualAction {
        let action = UIContextualAction(style: .destructive, title: "Done") { acton, view, completion in
            self.objects.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .automatic)
            completion(true)
        }
        action.backgroundColor = .systemGreen
        action.image = UIImage(systemName: "checkmark.seal")
        return action
    }
    
    private func favouriteAction(at indexPath: IndexPath) -> UIContextualAction {
        var object = self.objects[indexPath.row]
        let action = UIContextualAction(style: .normal, title: "Favourite") { acton, view, completion in
            object.isFavourite = !object.isFavourite
            self.objects[indexPath.row] = object
            completion(true)
        }
        action.backgroundColor = object.isFavourite ? .systemPink : .systemGray
        action.image = object.isFavourite ? UIImage(systemName: "heart.fill") : UIImage(systemName: "heart")
        return action
    }
    
}
