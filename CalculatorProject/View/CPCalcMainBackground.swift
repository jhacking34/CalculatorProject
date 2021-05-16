//
//  CalcMainBackground.swift
//  CalculatorProject
//
//  Created by Johnny Hacking on 5/14/21.
//

import UIKit

class CPCalcMainBackground: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        customizeView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        customizeView()
    }
    
    func customizeView(){
        backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        layer.cornerRadius = 15
        
        
        clipsToBounds = true
    }
}
