//
//  ProfileViewController.swift
//  RollerBladeApp
//
//  Created by Miguel Abreu on 8/6/17.
//  Copyright © 2017 TED. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var stylesTableViewheightConstraint: NSLayoutConstraint!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var displayNameLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var stylesTableView: UITableView!
    @IBOutlet weak var ridesTableView: UITableView!
    
    let styleCellHeight = 30.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.stylesTableView.sizeToFit()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    // MARK: - View Update

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ProfileViewController:UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.stylesTableView{
            return 3
        }
        if tableView == self.ridesTableView{
            return 0
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == self.stylesTableView{
            let cell = tableView.dequeueReusableCell(withIdentifier: "style")!
            return cell
        }
        if tableView == self.ridesTableView{
            
        }
        return UITableViewCell()
    }
}

extension ProfileViewController:UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == self.stylesTableView{
            return CGFloat(self.styleCellHeight)
        }
        if tableView == self.ridesTableView{
            return 0
        }
        return 0
    }
    
    override func viewWillLayoutSubviews() {
        super.updateViewConstraints()
        self.stylesTableViewheightConstraint.constant = self.stylesTableView.contentSize.height
    }
}
