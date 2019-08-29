//
//  RootViewController.swift
//  Challenge2.2
//
//  Created by Encompass on 8/28/19.
//  Copyright © 2019 gcharplaytime. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    
    let extPadding: CGFloat = 50.0
    let intPadding: CGFloat = 25.0
    
    let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        return view
    }()
    
    let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.autoresizingMask = [.flexibleWidth, .flexibleLeftMargin, .flexibleRightMargin, .flexibleTopMargin, .flexibleBottomMargin]
        return view
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
    }
    
    override func viewWillLayoutSubviews() {
      
        if greenView.superview == nil  {
            view.addSubview(greenView)
            let width = view.bounds.width - (extPadding * 2)
            let height = view.bounds.height - (extPadding * 2)
            greenView.frame = CGRect(x: extPadding, y: extPadding, width: width, height: height)
        }
        
        if redView.superview == nil  {
            greenView.addSubview(redView)
            let width = greenView.bounds.width - (intPadding * 2)
            let height: CGFloat = 100.0
            let x = (greenView.bounds.width / 2).rounded() - (width / 2).rounded()
            let y = (greenView.bounds.height / 2).rounded() - (height / 2).rounded()
            redView.frame = CGRect(x: x, y: y, width: width, height: height )
        }
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
