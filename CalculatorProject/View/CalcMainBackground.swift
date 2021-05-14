//
//  CalcMainBackground.swift
//  CalculatorProject
//
//  Created by Johnny Hacking on 5/14/21.
//

import UIKit

class CalcMainBackground: UIView {

    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView(){
        backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        layer.cornerRadius = 15
        
        
        clipsToBounds = true
    }
}
