//
//  File.swift
//  IosAlertVIew
//
//  Created by Monisankar Nath on 18/11/24.
//

import Foundation

@MainActor
public func showGlobalAlert(
    title: String? = nil,
    message: String,
    primaryButtonTitle: String? = nil,
    secondaryButtonTitle: String? = nil,
    primaryAction: (() -> Void)? = nil,
    secondaryAction: (() -> Void)? = nil
) {
    AlertManager.shared.showAlert(
        title: title,
        message: message,
        primaryButtonTitle: primaryButtonTitle,
        secondaryButtonTitle: secondaryButtonTitle,
        primaryAction: primaryAction,
        secondaryAction: secondaryAction
    )
}

@MainActor
public func dismissGlobalAlert() {
    AlertManager.shared.dismiss()
}
