# SwiftTableView
Simple Swift program on UITableView

------

Open Xcode and create a new project

NewProject --> Single Page Application

Language : swift

--------------

Auto generated files once you created the project

AppDelegate.swift
ViewController.swift
Main.Storyboard

--------------

Goto Main.Storyboard

1. Select the View controller in storyboard (the selection will makes the view controller border blue)
2. In Attributes Inspector , select preferred size (iphone 4, 4.7, 5)
3. Drag the Table view from the Object library to the ViewController
4. Enable Assistant Editor (which will open ViewController.swift)
5. Create @IBOutlet for UITableView by control+drag to the file from table view

    @IBOutlet weak var tableViewObject: UITableView!
    
6. Create Referencing outlets for DataSource and Delegate to the ViewController. 
    -> Select View controller, 

    -> From the Connection Inspector 
    
    -> Create New Referencing outlet by dragging to View Controller
    
    -> Create references for both Delegate and DataSource
    
7. Add UITableViewDelegate and UITableViewDataSource classes in ViewController.swift

    class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
8. In ViewController.swift add the below code
    
    // Initializing an arrary numbers
    
    var numbers : [String] = ["one", "two", "three", "four"]
    
    // Creating function numberOfRowsInSection to return the no of rows
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    
    // Creating the function cellForRowAtIndexPath to return value of the each cell
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell : UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "mycell")
        cell.textLabel!.text = numbers[indexPath.row]
        return cell
    }

9. Save it and Run
10. Now you can see rows in the simulator...
