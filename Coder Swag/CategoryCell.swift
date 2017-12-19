//
//  CategoryCell.swift
//  Coder Swag
//
//  Created by Vibhanshu Vaibhav on 30/08/17.
//  Copyright © 2017 Vibhanshu Vaibhav. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!

    func updateView(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryLabel.text = "\(category.title)"
    }
    
}
