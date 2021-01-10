//
//  ViewController.swift
//  tableViewNew
//
//  Created by helpmac on 21/10/20.
//  Copyright © 2020 TechnoTouch Infotech. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   

    @IBOutlet weak var ListTableView: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ListTableView.register(UINib(nibName: "ListTableViewCell", bundle: nil), forCellReuseIdentifier: "ListTableViewCell")

        
        
        ListTableView.delegate = self
        ListTableView.dataSource = self
        ListTableView.reloadData()
        
    }
        
        //MARK: ======== UITableViewDataSource ==============

         func numberOfSections(in tableView: UITableView) -> Int {
             return 1
             
         }

         func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
             return  10
         }

         func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
         {
             
             return 65//UITableView.automaticDimension
             
         }

         func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
             
             let cell = tableView.dequeueReusableCell(withIdentifier: "ListTableViewCell", for: indexPath) as! ListTableViewCell
            
             
            
             
             cell.selectionStyle = .none
             return cell
             
         }
        
        
    }




