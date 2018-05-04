//
//  ViewController.swift
//  UIScrollView2
//
//  Created by home on 2018/05/03.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // スクロールビュー
    @IBOutlet weak var myScrollView: UIScrollView!
    
    // スクロールビューのサブビュー
    @IBOutlet weak var contentView: UIView!
    
    // 全てのテキストフィールドの配列
    @IBOutlet var myTextFields: [UITextField]!
    
    // 編集中のテキストフィールド
    var editingField:UITextField?
    
    // 編集開始
    func textFieldDidBeginEditing(_ textField: UITextField) {
        // 編集中のテキストフィールド
        editingField = textField
    }
    
    // 編集終了
    func textFieldDidEndEditing(_ textField: UITextField) {
        editingField = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // スクロールビューの領域を指定する
        let scrollFrame = CGRect(x:0, y: 20, width: view.frame.width, height: view.frame.height-20)
        myScrollView.frame = scrollFrame
        // コンテンツのサイズを指定する
        let contentRect = contentView.bounds
        myScrollView.contentSize = CGSize(width: contentRect.width, height: contentRect.height)
        
        // 全てのテキストフィールドのデリゲートになる
        for fld in myTextFields {
            fld.delegate = self
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

