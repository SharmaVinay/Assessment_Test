//
//  ViewController.swift
//  Assessment_Xebia
//
//  Created by Vinay Sharma on 23/07/19.
//  Copyright © 2019 Vinay Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var newsListArray = NSMutableArray()
    @IBOutlet weak var newsListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newsListTableView.accessibilityIdentifier = "myUniqueTableViewIdentifier"

        self.callNewsListAPI ()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsListArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let element = self.newsListArray.object(at: indexPath.row) as! NewsModelClass
        // Instantiate a cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell",for: indexPath) as! TableViewCell
        cell.accessibilityIdentifier = "myCTableViewCell_\(indexPath.row)"
        cell.setCellContent(dict: element)
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let element = self.newsListArray.object(at: indexPath.row) as! NewsModelClass
        let link = element.url
        print("link", link)
        let detailVC = self.storyboard!.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detailVC.webLink = link
        self.navigationController!.pushViewController(detailVC, animated: true)
    }
    
    
    
    //MARK: - API Call
    /// Method for calling the Employer List API
    func callNewsListAPI()
    {
        let params : APIParams = [:]
        Utilities.showHUDInView(view)
        
        APIManager.sharedInstance.getNewsList(params, onSuccessClosure: { (response) in
            Utilities.hideHUD()
            let listArray = response[APIConstants.ResultsKey] as! NSArray
            for object in listArray
            {
                if let obj = object as? NSDictionary
                {
                    let yourModel = NewsModelClass.init(dictionary: obj)
                    self.newsListArray.add(yourModel!)
                }
            }
            if self.newsListArray.count == 0 {
                Utilities.showAlert(inViewController: self, message:"No record exists.")
            }
            self.newsListTableView.reloadData()
        }, onFailureClosure: { (errorResponse) in
            Utilities.hideHUD()
            Utilities.showAlert(inViewController: self, message: errorResponse)
        })
        
    }
}

