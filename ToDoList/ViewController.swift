//
//  ViewController.swift
//  ToDoList
//
//  Created by Donovan Cotter on 10/7/15.
//  Copyright © 2015 DonovanCotter. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableViewTasks: UITableView!

    @IBOutlet weak var listNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Reloads the data after the task is added. This is so when we go back to the main task screen the task we just added is now displayed.
    override func viewWillAppear(animated: Bool) {
        tableViewTasks.reloadData()
    }
    
    //This function is so we can delete something from the table using the swipe action on the cell.
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        //This is saying if when you swipe the cell that the cell editing style is the delete button then remove that row. This removes it from my taskList array with removeAtIndex(indexpath.row) <- indexPath.row is selecting the specific item in the array that is in the row using that item's index.
        if editingStyle == UITableViewCellEditingStyle.Delete {
        toDo.taskList.removeAtIndex(indexPath.row)
            
            //This reloads the data after a task is deleted.
            tableViewTasks.reloadData()
            
        }
    }
    
    //TablewView - number of rows. This is where I decide how many rows will be in my table view. It just counts over my taskList array and returns that back.
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDo.taskList.count
    }
    
    //Tableview - Cell for tow at index path. - this is where I set up the cell and pass it the data from my taskList array that is inside of my ToDo class.
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: "Default")
        
        //I set up the cell's text to display the name of my task (taskName)
        cell.textLabel?.text = toDo.taskList[indexPath.row].taskName
        //I set up the cell's subtitle text to display the description of my task (description)
        cell.detailTextLabel?.text = toDo.taskList[indexPath.row].description
        
        return cell
    }
    
    

}

