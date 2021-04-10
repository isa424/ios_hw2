//
//  InputVC.swift
//  IsaIshangulyyev_HW2
//
//  Created by Isa Ishangulyyev on 8.04.2021.
//

import UIKit

class InputVC: UIViewController {
	var mShape: String = "";
	@IBOutlet weak var mTitle: UINavigationItem!
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		mTitle.title = self.mShape
    }
    

	/*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
		print("Prepare")
		print(self.mShape)
    }
	*/
}
