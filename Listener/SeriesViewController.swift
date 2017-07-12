//
//  SeriesViewController.swift
//  Listener
//
//  Created by İtü Grafik on 5.07.2017.
//  Copyright © 2017 İtü Grafik. All rights reserved.
//

import UIKit
import AVFoundation

class SeriesViewController: UIViewController {

    
    
    @IBAction func ImBatman(_ sender: Any)
    {
        players1.play()
    }
    
    @IBAction func SuperHeroLanding(_ sender: Any)
    {
        players1.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        do
        {
            let audioPath = Bundle.main.path(forResource: "/cutted/Batman Begins- I'm Batman-region-2", ofType: "wav")
            try players1 = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch
        {
            //ERROR
        }
        
        
        do
        {
            let audioPath = Bundle.main.path(forResource: "/cutted/Deadpool - 'Superhero Landing' - Official HD Clip 2016-region-3", ofType: "wav")
            try players1 = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch
        {
            //ERROR
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
