//
//  CPResultsLabel.swift
//  CalculatorProject
//
//  Created by Johnny Hacking on 5/16/21.
//

import UIKit

class CPResultsLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpLabel()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUpLabel()
    }
    
    func setUpLabel() {
        textColor = .black
        font = UIFont(name: "Avenir Book", size: 48)
        clipsToBounds = true
    }

}
