//
//  ViewController.swift
//  AlertOnboarding
//
//  Created by Philippe on 26/09/2016.
//  Copyright © 2016 CookMinute. All rights reserved.
//

import UIKit

class ViewController: UIViewController, AlertOnboardingDelegate {
    
    var alertView: AlertOnboarding!
    
    var arrayOfAlerts = [Alert]()
    
    let alert1 = Alert(image: UIImage(named: "image1")!, title: "CREATE ACCOUNT", text: "In your profile, you can view the statistics of its operations and the recommandations of friends")
    let alert2 = Alert(image: UIImage(named: "image2")!, title: "CHOOSE THE PLANET", text: "Purchase tickets on hot tours to your favorite planet and fly to the most comfortable intergalactic spaceships of best companies")
    let alert3 = Alert(image: UIImage(named: "image3")!, title:  "DEPARTURE", text: "In the process of flight you will be in cryogenic sleep and supply the body with all the necessary things for life bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla")

    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayOfAlerts = [alert1, alert2, alert3]
        alertView = AlertOnboarding(arrayOfAlerts: arrayOfAlerts)
        alertView.delegate = self
    }
    
    @IBAction func onTouch(_ sender: AnyObject) {
        self.alertView.show()
    }
    
    //--------------------------------------------------------
    // MARK: DELEGATE METHODS --------------------------------
    //--------------------------------------------------------
    
    func alertOnboardingSkipped(_ currentStep: Int, maxStep: Int) {
        print("Onboarding skipped the \(currentStep) step and the max step he saw was the number \(maxStep)")
    }
    
    func alertOnboardingCompleted() {
        print("Onboarding completed!")
    }
    
    func alertOnboardingNext(_ nextStep: Int) {
        print("Next step triggered! \(nextStep)")
    }
    
}
