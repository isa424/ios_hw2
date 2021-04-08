//
//  ViewController.swift
//  IsaIshangulyyev_HW2
//
//  Created by Isa Ishangulyyev on 23.03.2021.
//

import UIKit

class StartVC: UIViewController {
	@IBOutlet weak var mSegmentControl: UISegmentedControl!
	@IBOutlet weak var mImage: UIImageView!
	@IBOutlet weak var mLabel: UILabel!
	let mImages = ["Calculation", "Currency", "Player", "About"]
	var mIndex = 0
	
	@IBAction func unwindToStart(_ sender: UIStoryboardSegue) {}

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	@IBAction func onLongPressGestureRecognizer(_ sender: UILongPressGestureRecognizer) {
		if (sender.state == .began && self.mIndex > -1 && self.mIndex < self.mImages.count) {
			performSegue(withIdentifier: self.mImages[self.mIndex].lowercased(), sender: self)
		}
	}

	@IBAction func onTapGestureRecognizer(_ sender: UITapGestureRecognizer) {
		self.mIndex += 1
		
		if (self.mIndex >= mImages.count) {
			self.mIndex = 0
		}
		
		self.updateByIndex(index: mIndex)
		self.mSegmentControl.selectedSegmentIndex = mIndex
	}

	@IBAction func onSegmentChanged(_ sender: UISegmentedControl) {
		self.mIndex = self.mSegmentControl.selectedSegmentIndex
		self.updateByIndex(index: self.mIndex)
	}

	/**
	 * Updates the mLabel text and mImage image with the specified index
	 */
	private func updateByIndex(index: Int) {
		if (index < self.mImages.count && index > -1) {
			self.mImage.image = UIImage(named: self.mImages[index])
			self.mLabel.text = "LongPress Image to open \(self.mImages[index]) Controller"
		}
	}
}
