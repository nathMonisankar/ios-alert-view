//
//  File.swift
//  IosAlertVIew
//
//  Created by Monisankar Nath on 18/11/24.
//

import SwiftUI

@MainActor
public class AlertManager: ObservableObject {
    public static let shared = AlertManager() // Singleton
    
    @Published public var isPresented: Bool = false
    @Published public var alertModel: AlertModel?

    private init() {}

    /// Displays an alert with the specified parameters.
    public func showAlert(
        title: String? = nil,
        message: String,
        primaryButtonTitle: String? = nil,
        secondaryButtonTitle: String? = nil,
        primaryAction: (() -> Void)? = nil,
        secondaryAction: (() -> Void)? = nil
    ) {
        alertModel = AlertModel(
            title: title,
            message: message,
            primaryButtonTitle: primaryButtonTitle,
            secondaryButtonTitle: secondaryButtonTitle
        )
        alertModel?.primaryAction = primaryAction
        alertModel?.secondaryAction = secondaryAction
        isPresented = true
    }
    public func dismiss() {
        isPresented = false
        alertModel = AlertModel(
            title: nil,
            message: "",
            primaryButtonTitle: nil,
            secondaryButtonTitle: nil
        )
        alertModel?.primaryAction = nil
        alertModel?.secondaryAction = nil
        
    }
}
