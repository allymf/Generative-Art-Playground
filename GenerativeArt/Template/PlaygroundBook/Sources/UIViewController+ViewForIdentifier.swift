//
//  ViewController+ViewForIdentifier.swift
//  Book_Sources
//
//  Created by Alysson Moreira on 15/03/19.
//

import UIKit

extension UIViewController {
    
    func viewFor<T: UIView>(restorationIdentifier id: String, of type: T.Type) -> T? {
        
        let view = self.viewWithin(self.view, restorationIdentifier: id, of: type)
        
        return view
    }
    
    func viewWithin<T: UIView>(_ view: UIView, restorationIdentifier id: String, of type: T.Type) -> T? {
        
        
        let view = view.subviews.filter {$0.restorationIdentifier == id}.first as? T
        
        return view
        
    }
    
    
}
