//
//  WebView.swift
//  Sprig-iPad
//
//  Created by Viggo Jonathan on 10/18/23.
//

import SwiftUI
import WebKit
struct WebView: UIViewRepresentable {
    let request: URLRequest
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
      uiView.load(request)
    }
    
    
}

