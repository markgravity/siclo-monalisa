//
//  ViewController.swift
//  recruitment test ios
//
//  Created by Maxime POUWELS on 06/05/16.
//  Copyright © 2016 Siclo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
//        let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: "cell")
        cell.thumbnailImageView?.image = UIImage(named: "MonaLisa")
        cell.titleLabel?.text = "Mona Lisa"
        cell.subTitleLabel?.text = "Leonardo Da Vinci, Louvre"
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
    }


}

