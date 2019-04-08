//
//  StretchyHeaderCustomLayout.swift
//  iOScopStretchyHeader
//
//  Created by Marcela Auslenter on 06/04/2019.
//  Copyright © 2019 Marcela Auslenter. All rights reserved.
//

import UIKit

class StretchyHeaderCustomLayout: UICollectionViewFlowLayout {
	
	//use the function layoutAttributesForElements to modify the attributes of your header component
	override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
		let layoutAttributes = super.layoutAttributesForElements(in: rect)
		
		//loop through your layoutAttributes in order to set the necessary attributes
		//check if the represented element of the attributes you're trying to customize is your elementKindSectionHeader, if yes:
		
		//you need to access the collection view frame
		
		//you need to set your attributes frame (try it out first with some random numbers to see what happens). Cool, now that you know how it behaves think of a way to track down the content offset y of your collection view for when you're dragging it down. ***there're more tips if needed in the end....//1//
		//considering that you want your image to expand when you drag it down you need to set it's height to the result of the attributes frame height + your content offset Y - run your code to see the behaviour *** not working? check the tip in the bottom of the page//2//
		//ok, looks good, but you don't want this top image to loose from the top of the screen, so make sure you fix that. *** not working? check the tip in the bottom of the page//3//
		
		//YEI - almost there. Run your code and interact with your collection view. Notice that there's a bug in your UI. Can you figure it out  on your own?***tip on the bottom if needed//4//
		return layoutAttributes
	}
}

//1//your collection view has a property for its y offset. Get that and print it out to see your offset changing everytime you drag it down.
//1//Not printing all the time? Don't forget to reset your bounds to get it to calculate every time you interact with it - there's a method that returns a boolean to invalidate your layout. (shouldInvalidateLayout)

//2//Don't forget your content offset when dragging it down is negative. So make it sum to your height not subtract ✚

//3//Set your frame y to your content OffsetⓎ.

//4//dragging your collection view up will make your offsetY positive and you don't want that. So, make sure you return the function before it gets positive.👍🏼

