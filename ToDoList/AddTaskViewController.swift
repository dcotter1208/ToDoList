//
//  AddTaskViewController.swift
//  ToDoList
//
//  Created by Donovan Cotter on 10/7/15.
//  Copyright © 2015 DonovanCotter. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {
    @IBOutlet weak var taskNameInput: UITextField!
    
    @IBOutlet weak var taskDescriptionInput: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func addTask(sender: UIButton) {
        
        if toDo.taskList.count >= 10 {
            let alert = UIAlertController(title: "Don't Overload Your Tasks", message: nil , preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: { (action: UIAlertAction!) in }))
            
            presentViewController(alert, animated: true, completion: nil)
//         let alert = UIAlertController(title: "Test", message: "Test", preferredStyle: UIAlertControllerStyle.Alert)
//            alert.addAction(UIAlertAction(title: "Cancel", style: .Default, handler: nil)
//            presentViewController(alert, animated: true, completion: nil)
            
        } else {
        
        toDo.addItemToList(taskNameInput.text!, description: taskDescriptionInput.text!)
        taskNameInput.text = nil
        taskDescriptionInput.text = nil
        
        }
        
        
    }

}
