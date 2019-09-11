//
//  LambdaView.swift
//  Lambda-LogoCG
//
//  Created by Austin Potts on 9/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

@IBDesignable class LambdaView: UIView {
    
    private let borderWidth: CGFloat = 5.0
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext() {
            
            let topPoint = CGPoint(x: 50, y: 100)
            let bottomPoint = CGPoint(x: 50, y: 300)
            let rightPoint = CGPoint(x: 350, y: 100)
            let middleBottomPoint = CGPoint(x: 200, y: 400)
            let rightBottomPoint = CGPoint(x: 350, y: 300)
            
            //            let topPoint = CGPoint(x: rect.size.width / 6, y: rect.size.height / 10)
            //            let bottomPoint = CGPoint(x: rect.size.width / 5, y: rect.size.height * 0.75)
            //            let rightPoint = CGPoint(x: rect.size.width * 3, y: rect.size.height / 2)
            
            
            
            //Create the path
            context.move(to: topPoint)
            context.addLine(to: bottomPoint)
            context.addLine(to: middleBottomPoint)
            context.addLine(to: rightBottomPoint)
            context.addLine(to: rightPoint)
            
            context.addLine(to: topPoint)
            
            
            //Configure the path
            context.setFillColor(UIColor.red.cgColor)
            context.fillPath()
            
            if let slasherContext = UIGraphicsGetCurrentContext() {
                let whiteTop = CGPoint(x: 200, y: 125)
                let whiteSideLineLeft = CGPoint(x: 80, y: 240)
                let whiteSideLineRight = CGPoint(x: 300, y: 240)
                
                slasherContext.move(to: whiteTop)
                slasherContext.addLine(to: whiteSideLineLeft)
                slasherContext.move(to: whiteTop)
                slasherContext.addLine(to: whiteSideLineRight)
                slasherContext.setLineWidth(15)
                slasherContext.setStrokeColor(UIColor.white.cgColor)
                slasherContext.strokePath()
                
                
            }
        }
        
        
    }
    
    
}
