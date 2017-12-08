//
//  TopTabBarController.swift
//  TabbarOnTop
//
//  Created by Svyatoshenko "Megal" Misha on 08/12/2017.
//  Copyright © 2017 megal. All rights reserved.
//

import UIKit

class TopTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

	override func viewWillLayoutSubviews() {
		super.viewWillLayoutSubviews()

		self.tabBar.invalidateIntrinsicContentSize()
		self.tabBar.frame.origin.y = self.topLayoutGuide.length
		updateTransluciency()
	}

}

private extension TopTabBarController {

	// Set the translucent property to NO then back to YES to
	// force the UITabBar to reblur, otherwise part of the
	// new frame will be completely transparent if we rotate
	// from a landscape orientation to a portrait orientation.
	func updateTransluciency() {
		if self.tabBar.isTranslucent {
			self.tabBar.isTranslucent = false
			self.tabBar.isTranslucent = true
		}
	}

}

