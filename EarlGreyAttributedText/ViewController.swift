//
//  ViewController.swift
//  EarlGreyAttributedText
//
//  Created by haitao_li on 5/30/17.
//  Copyright © 2017 haitao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var label: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    let text = "Testing link in attributed text"
    let attributedString = NSMutableAttributedString(string: text)
    let foundRange = attributedString.mutableString.range(of: "link")
    attributedString.addAttribute(NSLinkAttributeName, value: "http://airbnb.com", range: foundRange)
    attributedString.addAttribute(NSForegroundColorAttributeName, value:UIColor.blue, range:foundRange)

    label.attributedText = attributedString
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

