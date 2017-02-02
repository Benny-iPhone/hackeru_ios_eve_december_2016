//
//  ViewController.swift
//  DrawSomethingProject
//
//  Created by Benny Davidovitz on 26/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var drawView: DrawSomethingView!
    
    @IBAction func clearAction(_ sender: Any) {
        drawView.clear()
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        drawView.lineWidth = CGFloat(sender.value)
    }
    
    @IBAction func redAction(_ sender: Any) {
        drawView.strokeColor = .red
    }
    
    @IBAction func blueAction(_ sender: Any) {
        drawView.strokeColor = .blue
    }
    
    @IBAction func blackAction(_ sender: Any) {
        drawView.strokeColor = .black
    }
    
    @IBAction func shareAction(_ sender: Any) {
        
        let image = drawView.asImage()
        
        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        present(controller, animated: true, completion: nil)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextVC = segue.destination as? ColorViewController{
            nextVC.color = drawView.strokeColor
            nextVC.delegate = self
        }
    }
    
    
}


extension ViewController : ColorViewControllerDelegate{
    func colorViewController(_ controller: ColorViewController, didSelectColor color: UIColor?) {
        if let color = color{
            drawView.strokeColor = color
        }
    }
}

















