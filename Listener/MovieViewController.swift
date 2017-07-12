//
//  MovieViewController.swift
//  Listener
//
//  Created by İtü Grafik on 5.07.2017.
//  Copyright © 2017 İtü Grafik. All rights reserved.
//

import UIKit
import AVFoundation

class MovieViewController: UIViewController {

    
    @IBAction func Afteralltomorrow(_ sender: Any)
    {
        playerm1.play()
    }
    
    @IBAction func Barneysuitup(_ sender: Any)
    {
        playerm1.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
        
        do
        {
            let audioPath = Bundle.main.path(forResource: "/cutted/After all tomorrow is another day", ofType: "wav")
            try playerm1 = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch
        {
            //ERROR
        }
        
        
        do
        {
            let audioPath = Bundle.main.path(forResource: "/cutted/Barney Stinson - Suit Up-region-1", ofType: "wav")
            try playerm1 = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
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
