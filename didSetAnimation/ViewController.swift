//
//  ViewController.swift
//  didSetAnimation
//
//  Created by 游宗諭 on 2020/4/12.
//  Copyright © 2020 游宗諭. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var thatButton: UIButton!
	private var pi:CGFloat = 0 {
		didSet {
			UIView.animate(withDuration: 0.2) {
				self.thatButton.transform = CGAffineTransform(rotationAngle: self.pi)
			}
		}
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
	}
	
	@IBAction func didTapToAdd(_ sender: UIButton) {
		self.pi += (.pi / 2)
	}
	
}

