//
//  MyJSClass.swift
//  CCTvOS
//
//  Created by Chad on 10/13/15.
//  Copyright © 2015 Chad. All rights reserved.
//

import UIKit
import TVMLKit
import CCMockData

@objc protocol MyJSClass : JSExport {
  func getEdtiorListStr() -> String
  
  func setItem(key:String, data:String)
}
class MyClass: NSObject, MyJSClass {
  func getEdtiorListStr() -> String {
    let motionKit = CCMockFrameworks.init()
    let editorList =  motionKit.getEditorPickList()
    
    var str:String = ""
    
    for product:Product in editorList
    {
      
      str += "<lockup videoURL=''><img src='"+product.imageUrl+"' width='500' height='350' /><title></title> <description>"+product.title+"</description></lockup>"

    }
    return str
  }
  
  func setItem(key: String, data: String) {
  
      print("Set key:\(key) value:\(data)")
  }
}