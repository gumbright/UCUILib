//
//  File.swift
//  
//
//  Created by Guy Umbright on 1/5/23.
//

import UIKit

public extension UIApplication
{
    func currentUIWindow() -> UIWindow?
    {
        return connectedScenes.flatMap { ($0 as? UIWindowScene)?.windows ?? [] }.first { $0.isKeyWindow }
    }    
}
