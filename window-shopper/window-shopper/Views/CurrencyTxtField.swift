//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Igor Chernyshov on 07.09.17.
//  Copyright © 2017 Frostfell. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {

    override func draw(_ rect: CGRect) {    //Do not ever use this if you do not really want to draw something
                                            //let's say - it's kinda creating a Sub View in the Main View
        let size: CGFloat = 20      //We have to say it's CGFloat, because we do not need it CGDouble by default
        let currencyLbl = UILabel (frame: CGRect(x: 5, y: frame.size.height / 2 - size / 2, width: 20, height: 20)) //Put this label in the middle of the currency field
        currencyLbl.backgroundColor = #colorLiteral(red: 0.9025560021, green: 0.8971899748, blue: 0.906680882, alpha: 0.8)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()       //Represents text as a number with appropriate formatting
        formatter.numberStyle = .currency       //Sets formatting parametres of this constant
        formatter.locale = .current             //Sets current device's locale. This option is enabled by default so no need to turn it on like this
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)                 //Add this label somewhere, where the function is called
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) ])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }
    
}
