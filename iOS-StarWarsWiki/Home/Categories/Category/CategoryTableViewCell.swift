//
//  CategoryTableViewCell.swift
//  iOS-StarWarsWiki
//
//  Created by Jacob on 22/07/2024.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {

    @IBOutlet weak var categoryTableView: UIView!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var categoryImage: UIImageView!
    
    
    // Actua como el viewdidLoad
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
        
    }
    
    
    
    
    // Configuraciones personalizadas
    func setup(){
        categoryLabel.font = UIFont.systemFont(ofSize: 30)
        backgroundColor = .clear
        // Configuraciones de la imageView
        // Redondear todas las esquinas de la imageView
        categoryImage.layer.cornerRadius = 18
        // Sombreado
        categoryTableView.layer.shadowColor = UIColor.orange.cgColor
        categoryTableView.layer.shadowOffset = CGSize(width: 0, height: 5)
        categoryTableView.layer.shadowOpacity = 0.5
        categoryTableView.layer.shadowRadius = 1.7
        // Redondear solo las esquinas inferiores del label
        categoryLabel.layer.cornerRadius = 18
        categoryLabel.clipsToBounds = true
        categoryLabel.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
    }
    
    
    // Ciclo de vida de una view (Buscar)
    override func layoutSubviews() {
        //super.layoutSubviews()
        //self.contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 0, left: 0, bottom: 30, right: 0))
    }
    
    
  
}


