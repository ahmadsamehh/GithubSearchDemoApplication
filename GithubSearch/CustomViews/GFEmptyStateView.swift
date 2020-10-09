//
//  GFEmptyStateView.swift
//  GithubSearch
//
//  Created by Ahmad Sameh on 10/3/20.
//  Copyright © 2020 Ahmad Sameh. All rights reserved.
//

import UIKit

class GFEmptyStateView: UIView {

    let messageLabel = GSTitleLabel(textAllignment: .center, textSize: 28)
    let imageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    init(messageText : String) {
        super.init(frame: .zero)
        
        
        messageLabel.text = messageText
        configure()
        
    }
    
    func configure(){
        addSubview(messageLabel)
        addSubview(imageView)
        messageLabel.textColor = .secondaryLabel
        messageLabel.numberOfLines = 3
        
        imageView.image = UIImage(named: "empty-state-logo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
        
            messageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -150),
            messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            messageLabel.heightAnchor.constraint(equalToConstant: 200),
            
            
            imageView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            imageView.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 170),
            imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 40)
        
        ])
        
        
        
    }

}
