//
//  BorderButten.swift
//  app-swoosh
//
//  Created by Johnny Bravo on 16/10/2022.
//

import UIKit

class BorderButten: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
        
    }

}
