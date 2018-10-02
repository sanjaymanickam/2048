//
//  AccessoryViews.swift
//  swift-2048
//
//  Created by Sanjay on 27/10/16.
//  Copyright (c) 2016 Sanjay.
//
import UIKit

protocol ScoreViewProtocol {
  func scoreChanged(newScore s: Int)
}

class ScoreView : UIView, ScoreViewProtocol {
  var score : Int = 0 {
    didSet {
      label.text = "SCORE: \(score)"
    }
  }

  let defaultFrame = CGRectMake(0, 0, 140, 40)
  var label: UILabel

  init(backgroundColor bgcolor: UIColor, textColor tcolor: UIColor, font: UIFont, radius r: CGFloat) {
    label = UILabel(frame: defaultFrame)
    label.textAlignment = NSTextAlignment.Center
    super.init(frame: defaultFrame)
    backgroundColor = bgcolor
    label.textColor = tcolor
    label.font = font
    layer.cornerRadius = r
    self.addSubview(label)
  }

  required init(coder aDecoder: NSCoder) {
    fatalError("NSCoding not supported")
  }

  func scoreChanged(newScore s: Int)  {
    score = s
  }
}


class ControlView {
  let defaultFrame = CGRectMake(0, 0, 140, 40)
}
