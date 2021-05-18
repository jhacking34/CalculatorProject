//
//  CPButton.swift
//  CalculatorProject
//
//  Created by Johnny Hacking on 5/16/21.
//

import UIKit

class CPButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupButton()
    }
    
    func setupButton() {
        setTitleColor(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), for: .normal)
        backgroundColor  = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        titleLabel?.font = UIFont(name: "Avenir Book", size: 28)
        clipsToBounds = true
        layer.cornerRadius = 28.0
        
    }

}

