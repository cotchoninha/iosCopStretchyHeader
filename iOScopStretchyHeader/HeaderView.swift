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
	//(1) this property animator (below) animates changes to the view and allows the dynamic modification of those animations.
	
	//(2) inside your effect function initialize this property with a built-in UIKit timing curve (try it out setting its parameters with random values to see your output)
	
	//(3) you want your block to execute your desired blur effect (see tip 2 below if you're stuck).
	
	//(4) there's a property from UIViewPropertyAnimator where you can determine the intensity of your blur by changing the completion percentage of the animation. Play with it because you'll need for the next step (see tip 3 below if you're stuck).
	
	//(5) remember, your animation will only start if you ask it to start.
	
	//(6) run your code and see  what happens. If you're getting a blurred image that's great! Now let's apply this to what we really want.
	
	//(7) first remove your code from items 4 and 5 and lets jump to the View Controller to make it animate according to your offset. Follow STEP ②.②
	var animator: UIViewPropertyAnimator!
	
	
	//STEP ①
	private func setupVisualEffectBlur() {
		
		//(1) create an object that implements some complex visual effects, passing an effect to it. After writing your code to implement it, run it and see if your image is blurred. If yes, start working on the animations on Step ② above. (Not working? See tip 1 below if you're stuck)
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
}

//***TIPS***//

//1// UIVisualEffectView class is just like any other view, needs to be added to its superview and have constraints set.

//2// to prevent a retain cicle - [weak self] in 👍🏼

//3// UIViewPropertyAnimator has a property that sets the completion percentage of the animation.
