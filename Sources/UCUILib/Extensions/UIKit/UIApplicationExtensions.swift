//
//  File.swift
//  
//
//  Created by Guy Umbright on 1/5/23.
//

import UIKit

extension UIApplication
{
    func currentUIWindow() -> UIWindow?
    {
        return UIApplication.shared.connectedScenes.flatMap { ($0 as? UIWindowScene)?.windows ?? [] }.first { $0.isKeyWindow }
    }    
}
