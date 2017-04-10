//
//  Themes.swift
//  TalkUp
//
//  Created by Savannah McCoy on 4/1/17.
//  Copyright © 2017 Shumba Brown. All rights reserved.
//
//
//  There are 5 Different Themes
//  A Theme Object Contains:
//  - Name
//  - Primary Color
//  - Secondary Color
//  - Tertiary Color
//  - Quaternary Color
//  - Character Type (robots, animals, etc)
//  - Chat Background Image
//  - Font
//

import Foundation
import UIKit


class Theme: AnyObject {
    
    var primaryColor: UIColor?
    var secondaryColor: UIColor?
    var tertiaryColor: UIColor?
    var quaternaryColor: UIColor?
    var characterType: String?
    var backgroundImage: UIImage?
    var font: String?
   
    init(primaryColor: UIColor, secondaryColor: UIColor, tertiaryColor: UIColor, quaternaryColor: UIColor, characterType: String, backgroundImage: UIImage, font: String){
        
        self.primaryColor = primaryColor
        self.secondaryColor = secondaryColor
        self.tertiaryColor = tertiaryColor
        self.quaternaryColor = quaternaryColor
        self.characterType = characterType
        self.backgroundImage = backgroundImage
        self.font = font

    }

  
    func setDefaultTheme() -> Theme {
        
        primaryColor = UIColor.white
        secondaryColor = UIColor.black
        tertiaryColor = UIColor.gray
        quaternaryColor = UIColor.lightGray
        characterType = "Robots"
        backgroundImage = UIImage(named: "Selected.png")
        font = "gillSans.ttf"
        
        return Theme.init(primaryColor: primaryColor!, secondaryColor: secondaryColor!, tertiaryColor: tertiaryColor!, quaternaryColor: quaternaryColor!, characterType: characterType!, backgroundImage: backgroundImage!, font: font!)
    }
    
    
}
