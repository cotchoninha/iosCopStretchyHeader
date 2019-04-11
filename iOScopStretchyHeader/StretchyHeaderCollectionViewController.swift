//
//  ViewController.swift
//  iOScopStretchyHeader
//
//  Created by Marcela Auslenter on 06/04/2019.
//  Copyright © 2019 Marcela Auslenter. All rights reserved.
//

import UIKit

class StretchyHeaderCollectionViewController: UICollectionViewController {
	
	fileprivate let reuseIdentifier = "Cell"
	fileprivate let headerId = "headerId"
	private let padding: CGFloat = 16
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setupCollectionView()
		setupLayout()
	}
	
	private func setupCollectionView() {
		collectionView.backgroundColor = .white
		collectionView.contentInsetAdjustmentBehavior = .never
		collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
		collectionView.register(HeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
	}
	
	private func setupLayout() {
		if let layout = collectionViewLayout as? UICollectionViewFlowLayout {
			layout.sectionInset = .init(top: padding, left: padding, bottom: padding, right: padding)
		}
	}
	
	override var preferredStatusBarStyle: UIStatusBarStyle {
		return .lightContent
	}
	
	//STEP ②.②
	override func scrollViewDidScroll(_ scrollView: UIScrollView) {
		//(1) again, you need to get your scrollView content offset y to play with your effect. If you want print it out to see what this value actually is.
		
		//(2) remember from the previous step you had to play with your animator property to change the intensity of your blur? Yep, so now you'll have to use it.
		
		//(3) you have to somehow, access your headerView object within this function in order to set its fraction animator property here (see tip 1 below if you're stuck).
		
		//(4) now that you have your header, find its animator and sets its blur to some random number. Run your code and see the result.
		
		//(5) Cool, now comes the tricky part. What you actually want is the blur animation to be executed dependent on your offset, right? So as you can see in your debugger screen the content offset is from 0 to negative something, correct? That means that you'll need to get the (1)decimal value of the (2)absolute value of your content offset (see tip 2 below if you're stuck).
		
		//(6) just to give you a little bit of explanation on what's going on: As you scroll down you get your visual blur effect to gradually blur and once you let go you'll see as the content offset y goes back down to 0 it takes the decimal value of the fraction complete and brings it back to 0 as well.
		
		//(7) GREAT! your code is working, now work out your bonus. Make it non blur when you scroll up. Good luck! (see tip 3 below if you're stuck)
	}
}

//***TIPS***//

//1// create a property to be an optional of headerView and in your dequeue element function make it return your headerView (don't forget to cast it)

//2// use the fuction abs on your content offset and divide it by 100

//3// you've already implemented something very very similar before in your code

extension StretchyHeaderCollectionViewController: UICollectionViewDelegateFlowLayout {
	
	// MARK: UICollectionViewDataSource
	override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 25
	}
	
	override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
		cell.backgroundColor = .black
		return cell
	}
	
	override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
		let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath)
		return header
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
		return CGSize(width: view.frame.width, height: 340)
	}
	
	// MARK: UICollectionViewDelegateFlowLayout
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize(width: view.frame.width - 2 * padding, height: 50)
	}
}
