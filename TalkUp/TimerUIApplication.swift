//
//  TimerUIApplication.swift
//  TalkUp
//
//  Created by Savannah McCoy on 4/8/17.
//  Copyright © 2017 Shumba Brown. All rights reserved.
//

import Foundation
import UIKit

class TimerUIApplication: UIApplication {
    static let ApplicationDidTimoutNotification = "AppTimout"
    
    // The timeout in seconds for when to fire the idle timer.
    let timeoutInSeconds: TimeInterval = 5
    
    var idleTimer: Timer?
    
    // Resent the timer because there was user interaction.
    func resetIdleTimer() {
        if let idleTimer = idleTimer {
            idleTimer.invalidate()
            
        }
        
        idleTimer = Timer.scheduledTimer(timeInterval: timeoutInSeconds, target: self, selector: #selector(TimerUIApplication.idleTimerExceeded), userInfo: nil, repeats: false)
    }
    
    // If the timer reaches the limit as defined in timeoutInSeconds, post this notification.
    func idleTimerExceeded() {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: TimerUIApplication.ApplicationDidTimoutNotification), object: nil)
        print("Timer Exceeded")
    }
    
    
    override func sendEvent(_ event: UIEvent) {
        
        super.sendEvent(event)
        print("activity")
        if idleTimer != nil {
            self.resetIdleTimer()
        }
        
        if let touches = event.allTouches {
            for touch in touches {
                if touch.phase == UITouchPhase.began {
                    self.resetIdleTimer()
                }
            }
        }
        
    }
}
