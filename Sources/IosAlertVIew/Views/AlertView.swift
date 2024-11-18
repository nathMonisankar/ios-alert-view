//
//  SwiftUIView.swift
//  IosAlertVIew
//
//  Created by Monisankar Nath on 18/11/24.
//

import SwiftUI

public struct AlertView: View {
    @StateObject private var alertManager = AlertManager.shared

    public init() {}

    public var body: some View {
        ios14View
    }
}

extension AlertView {
    @available(iOS 14.0, *)
    private var ios14View: some View {
        ZStack {
            if alertManager.isPresented {
                VStack(spacing: 20) {
                    title
                    message
                    buttonGroup
                }
                .padding(20)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                )
                .cornerRadius(10)
                .frame(width: UIScreen.main.bounds.width * 0.9)
                .shadow(radius: 10)
            }
        }
        .animation(.easeInOut, value: alertManager.isPresented)
    }
    
    private var title: some View {
        Text(alertManager.alertModel?.title ?? "")
            .font(.headline)
            .fontWeight(.bold)
            .foregroundColor(.primary)
            .padding(.top, 20)
    }
    
    private var message: some View {
        Text(alertManager.alertModel?.message ?? "")
            .font(.body)
            .foregroundColor(.primary)
            .padding(.bottom, 20)
    }
    
    private var buttonGroup: some View {
        HStack {
            // Primary button
            Button(action: {
                if (alertManager.alertModel?.primaryButtonTitle) != nil {
                    alertManager.alertModel?.primaryAction?()
                } else {
                    alertManager.isPresented = false
                }
            }) {
                Text(alertManager.alertModel?.primaryButtonTitle ?? "OK")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(minWidth: 100, minHeight: 20)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            

            // Secondary button
            if let secondaryTitle = alertManager.alertModel?.secondaryButtonTitle {
                Button(action: {
                    alertManager.alertModel?.secondaryAction?()
                }) {
                    Text(secondaryTitle)
                        .font(.headline)
                        .foregroundColor(.blue)
                        .frame(minWidth: 100, minHeight: 20)
                        .padding()
                        .background(Color.white) // Secondary button background color
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.blue, lineWidth: 1) // Border color
                        )
                }
            }
        }
        .frame(width: UIScreen.main.bounds.width * 0.7)
    }
}

