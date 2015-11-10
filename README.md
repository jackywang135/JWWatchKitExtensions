# JWWatchKitExtensions

**Useful Functions & Extensions for Apple Watch Development in Swift**

* Extensions to determine watch 38mm or 42mm

```

    WKInterfaceDevice.watchSize()
    
    
    switch WKInterfaceDevice.watchSize() {
            
        case .Watch38mm:
            
            //Handle UI for Watch38mm
            
            break
            
        case .Watch42mm:
            
            //Handle UI for Watch42mm
            
            break
            
        case .Unknown:
            
            //Handle unknown device
            
            break
            
        }
    
```

* Extension to be use function animateWithDuration just like in UIKit on iOS.

```

    public func animateWithDuration(duration: NSTimeInterval, animations: () -> Void, completion: () -> ())
    
    animateWithDuration(0.5, animations: {
            
            //Animations
            
            }, completion: {
            
                //Completion
                
            })
    
```

* Public function for observing Notifications with closure  

```

    public func observe(notificationName: String, block: NSNotification -> ())
    
    
    observe("NotificationName") { notification in 
    
        //Handle Notification
        
    }
    
```
