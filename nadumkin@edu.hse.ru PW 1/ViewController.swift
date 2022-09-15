//
//  ViewController.swift
//  nadumkin@edu.hse.ru PW 1
//
//  Created by Никита Думкин on 14.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let randomColorMax: Int = 0xFFFFFF;
    let randomColorMin: Int = 0x000000;
    
//    enum Consts: CGFloat{
//        case randomColorMax = 0xFFFFFF
//        case randomColorMin = 0x0
//    }
    
    @IBOutlet var views: [UIView]!
    @IBOutlet weak var colorChangeButton: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad();
        
        viewChange(animationDuration: 2); // initing the start values for color and corner radius
    }

    @IBAction func colorButtonPressed(_ sender: Any) {
        
        viewChange();
    }
    
    func colorSetGenerator() -> Set<UIColor>{ // generating set of UIColor elements to except color repeating
        var set = Set<UIColor>();
        
        while set.count < views.count{
            set.insert(UIColor(hex: .random(in: randomColorMin...randomColorMax)));
        }
        
        return set;
    }
    
    func cornerRadiusGenerator(view: UIView) -> CGFloat{ // generates a random cornerRadius for view
        
        let maxCornerValue = (view.frame.size.height < view.frame.size.width ? view.frame.size.height : view.frame.size.width) / 2; // compare the width and height to find out the maximum for cornerRadius and then value is divisioned by 2 for better appearance
        
        return .random(in: 0...maxCornerValue); // generating a random corneradius value
        
    }
    
    func viewChange(animationDuration: TimeInterval = 1){
        
        var set = colorSetGenerator();
        
        colorChangeButton.isEnabled = false;
        
        for view in views{
            UIView.animate(
                withDuration: animationDuration,
                animations:
                    {
                        view.backgroundColor = set.popFirst();
                        view.layer.cornerRadius = self.cornerRadiusGenerator(view: view);
                    },
                completion:
                    {
                        (finished: Bool) in
                        self.colorChangeButton.isEnabled = true;
                    }

            );
        }
    }
    
}

