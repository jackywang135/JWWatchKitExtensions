//
//  WKExtensions.swift
//  WKExtensions
//
//  Created by Jacky Wang on 11/10/15.
//  Copyright © 2015 Jacky Wang. All rights reserved.
//

import Foundation
import WatchKit

//Public Functions

public func observe(notificationName: String, block: (NSNotification) -> ()) {
    NSNotificationCenter.defaultCenter().addObserverForName(notificationName, object: nil, queue: nil, usingBlock: block)
}

public func delay(delay: NSTimeInterval, closure:() -> ()) {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(delay * Double(NSEC_PER_SEC))), dispatch_get_main_queue(), closure)
}

// WatchKit Extensions

enum WatchSize {
    case Watch38mm, Watch42mm, Unknown
}

extension WKInterfaceDevice {
    
    class func watchSize() -> WatchSize {
        
        switch WKInterfaceDevice.currentDevice().screenBounds.size{
            
        case CGSize(width: 136, height: 170):
            
            return .Watch38mm
            
        case CGSize(width: 156, height: 195):
            
            return .Watch42mm
            
        default:
            
            return .Unknown
            
        }
    }
}

extension WKInterfaceController {
    
    public func animateWithDuration(duration: NSTimeInterval, animations: () -> Void, completion: () -> ()) {
        
        animateWithDuration(duration) {
            animations()
        }
        delay(duration) {
            
            completion()
        }
    }
}

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
