//
//  GSButton.swift
//  GithubSearch
//
//  Created by Ahmad Sameh on 9/24/20.
//  Copyright © 2020 Ahmad Sameh. All rights reserved.
//

import UIKit

class GSButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame : frame)
        customBtnSettings()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    init(backgroundColor : UIColor , title : String) {
        super.init(frame : .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        customBtnSettings()
    }
    
    private func customBtnSettings(){
        
        layer.cornerRadius = 10
        translatesAutoresizingMaskIntoConstraints = false 
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)

    }
    
    func setButtonProperties( color : UIColor ,  text : String){
        
        self.backgroundColor = color
        self.setTitle(text, for: .normal)
    }
    

}
