//
//  AppTextField.swift
//  Form
//
//  Created by Benny Davidovitz on 16/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class AppTextField: UITextField {

    //from storyboard
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    //from code
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    func shouldShowToolbar() -> Bool{
        switch self.keyboardType {
        case .decimalPad, .numberPad, .phonePad:
            return true
        default:
            return false
        }
    }
    
    private func configureToolbar(){
        let width = UIScreen.main.bounds.width
        let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: width, height: 44))

        let button = UIBarButtonItem(title: "next", style: .plain, target: self, action: #selector(AppTextField.toolBarButtonAction))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        toolBar.items = [spaceButton,button]
        
        self.inputAccessoryView = toolBar
    }
    
    //action for our next button
    func toolBarButtonAction(){
        self.sendActions(for: .editingDidEndOnExit)
    }
    
    func setup(){
        if shouldShowToolbar(){
            configureToolbar()
        }
    }


}


















