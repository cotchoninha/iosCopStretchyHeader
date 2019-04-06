//
//  HeaderView.swift
//  iOScopStretchyHeader
//
//  Created by Marcela Auslenter on 06/04/2019.
//  Copyright © 2019 Marcela Auslenter. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {
	
	let imageView: UIImageView = {
		let image = UIImageView(image: #imageLiteral(resourceName: "dog"))
		image.contentMode = .scaleAspectFill
		return image
	}()
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		addSubview(imageView)
		imageView.translatesAutoresizingMaskIntoConstraints = false
		imageView.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
		imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
		imageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
		imageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
		setupVisualEffectBlur()
	}
	
	//STEP ② - Cool, you got to step 2! So, we're splitting step 2 in 2 parts so you can start with the bigger picture and then apply it to what you actually want, ok?
	
	//STEP ②.①
	//this property animates changes to the view and allows the dynamic modification of those animations.
	//inside your effect function initialize this property with a built-in UIKit timing curve (try it out setting its parameters with random values to see your output)
	//you want your block to execute your desired blur effect. ***not working?//2//
	//there's a property from UIViewPropertyAnimator where you can determine the intensity of your blur, play with it because you'll need for the next step. ***not working?//3//
	//remember, your animation will only start if you ask it to start.
	//run your code and see  what happens. If you're getting a blurred image that's great! Now let's apply this to what we really want.
	//first remove your code that starts the animation and let's jump to the View Controller to make it animate accordinly with your offset. Follow STEP ②.②
	var animator: UIViewPropertyAnimator!
	
	//STEP ONE
	private func setupVisualEffectBlur() {
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
}

//1//UIVisualEffectView class is just like any other view, needs to be added to its superview and have constraints set.
//2//to prevent a retain cicle - [weak self] in 👍🏼
//3//UIViewPropertyAnimator has a property that sets the completion percentage of the animation.
