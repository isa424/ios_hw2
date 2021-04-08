//
//  CalculationVCViewController.swift
//  IsaIshangulyyev_HW2
//
//  Created by Isa Ishangulyyev on 24.03.2021.
//

import UIKit

class CalculationVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
	@IBOutlet weak var mPicker: UIPickerView!
	@IBOutlet weak var mShapeImg: UIImageView!
	var mShapes = ["Triangle", "Circle", "Rectangle"]
	
	func numberOfComponents(in pickerView: UIPickerView) -> Int {
		return 1
	}

	// The number of items/rows in the components
	func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
		return self.mShapes.count
	}

	// Called when an item in pickerView is selected
	 func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
		if (row > -1 && row < self.mShapes.count) {
			self.mShapeImg.image = UIImage(named: self.mShapes[row])
		}
	 }

	// Called automatically multiple times. To attach the data
	func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
		return self.mShapes[row]
	}

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		self.mPicker.selectRow(0, inComponent: 0, animated: true)
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
