//
//  PaintingSelectionScreen.swift
//  MasterSocialSkillsPlay
//
//  Created by Cameron on 25/2/18.
//  Copyright © 2018 MasterSocialSkills. All rights reserved.
//

import UIKit

class ModeSelectionScreen: UIViewController {
    
    var sceneSelection : String = ""
    var finalArray = BuildRandomArrays(Selection: "Sandpit")
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print (sceneSelection)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ReturnToHome(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
