//
//  CanvasSKScene.swift
//  Book_Sources
//
//  Created by Alysson Moreira on 20/03/19.
//


import SpriteKit

class CanvasSKScene: SKScene {
    
    var x: CGFloat = 0
    var y: CGFloat = 0
    
    var shapesize: CGFloat = 10
    var fontSize: CGFloat = 40
    var fontName: String = "Chalkduster"
    
    var nodes = [SKNode]()
    
    public override func didMove(to: SKView) {
        //        let winner = SKLabelNode(fontNamed: "Chalkduster")
        //        winner.text = "You Win!"
        //        winner.fontSize = 65
        //        winner.fontColor = SKColor.green
        //        winner.position = CGPoint(x: 0, y: 0)
        //
        //        self.addChild(winner)
        //
        
    }
    
    public override func update(_ currentTime: TimeInterval) {
        
        
    }
    
    
}

extension CanvasSKScene: CanvasDelegate {
    func resetCanvas() {
        self.x = 0
        self.y = self.frame.height
        
        self.removeAllChildren()
        self.nodes = [SKNode]()
    }
    
    func backgroundWith(_ color: UIColor){
        self.scene?.backgroundColor = color
    }
    
    func setupWith(diameter: CGFloat) {
        self.shapesize = diameter
    }
    
    func setupWith(fontName: String, fontSize: CGFloat) {
        self.fontSize = fontSize
        self.fontName = fontName
        
        //        self.x = fontSize/1.5
        //        self.y = self.frame.height-fontSize/1.2
        
        resetCanvas()
        
    }
    
    
    func displayShapeOf(_ type: ShapeType, with color: UIColor)  {
        
        if self.y < 0 {
            //self.y = self.frame.height-fontSize*2
            return
        }
        
        var shape: SKShapeNode!
        
        switch type {
        case .circle:
            shape = SKShapeNode(circleOfRadius: self.shapesize/2)
        case .square:
            shape = SKShapeNode(rectOf: CGSize(width: self.shapesize, height: self.shapesize))
            
            
        }
        
        shape.fillColor = color
        shape.strokeColor = color
        shape.position = CGPoint(x: self.x, y: self.y)
        
        self.addChild(shape)
        self.nodes.append(shape)
        updateCoordinates()
    }
    
    func displayText(_ text: String, with color: UIColor) {
        
        if self.y < 0 {
            //self.y = self.frame.height-fontSize*2
            return
        }
        
        //        if self.x > self.frame.width {
        //            self.x = fontSize
        //            return
        //        }
        
        let label = SKLabelNode(fontNamed: self.fontName)
        label.text = text
        label.fontSize = self.fontSize
        label.fontColor = color
        label.position = CGPoint(x: self.x, y: self.y)
        label.verticalAlignmentMode = .center
        label.horizontalAlignmentMode = .center
        
        self.addChild(label)
        self.nodes.append(label)
        
        print("\(label)")
        
        
        updateCoordinates()
        
    }
    
    func updateCoordinates() {
        //self.x += self.fontSize
        let factor = CGFloat((self.fontSize*1.5)/20)
        self.x += self.fontSize/factor
        
        if self.x > self.frame.width {
            //self.x = fontSize/1.5
            self.x = 0
            self.y -= self.fontSize/1.2
            //self.y -= self.fontSize
            return
        }
    }
    
    
}
