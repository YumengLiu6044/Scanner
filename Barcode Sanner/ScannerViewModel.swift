//
//  ScannerViewController.swift
//  War Card
//
//  Created by Yumeng Liu on 7/5/24.
//

import Foundation
import SwiftUI

final class ScannerViewModel: ObservableObject {
    @Published var barcodeValue = ""
    @Published var showSafari   = false
    
    var statusText: String {
        barcodeValue.isEmpty ? "Not Yet Found" : barcodeValue
    }
    
    var statusTextColor: Color {
        barcodeValue.isEmpty ? Color.red : Color.green
    }
    
    func handleTap() {
        if let _ = URL(string: barcodeValue) {
                showSafari = true
        }
            
        
        
    }
    
}