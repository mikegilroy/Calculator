//
//  Stack.swift
//  Calculator
//
//  Created by Michael Wilkowski on 10/30/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import Foundation

class Stack{
    
    private var array: [Float] = []
    
    func pop()->Float?{
        return array.removeLast()
    }
    
    func push(add: Float){
        self.array.append(add)
    }
    
    func log(){
        print(self.array)
    }
    
    func count()->Int{
        return self.array.count
    }
    
    
    
}