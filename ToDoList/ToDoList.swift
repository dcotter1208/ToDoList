//
//  ToDoList.swift
//  ToDoList
//
//  Created by Donovan Cotter on 10/7/15.
//  Copyright © 2015 DonovanCotter. All rights reserved.
//

import Foundation

//I have a ToDo class and a Task Struct. My Task struct has two properties of task and description are both of type String. The task property will be the name of the task and the description property will be the subtitle for that task. The description is a String optional because it doesn't have to have a description if the user doesn't add one.

//My ToDo Class has a taskList array that is of type Task(my struct).


//Created an instance of my
var toDo = ToDo()

struct Task {
    var taskName = String()
    var description = String?()
}


class ToDo {
    var taskList = [Task]()

    
func addItemToList(taskName: String, description: String?) {
        taskList.append(Task(taskName: taskName, description: description))

    func editTaskItem(taskName: String, description: String?) {
        
    }
    
    }
    
}


