//
//  File.swift
//  IosAlertVIew
//
//  Created by Monisankar Nath on 18/11/24.
//

import Foundation

public struct AlertModel {
    public var title: String?
    public var message: String
    public var primaryButtonTitle: String?
    public var secondaryButtonTitle: String?
    public var primaryAction: (() -> Void)?
    public var secondaryAction: (() -> Void)?

    public init(
        title: String? = nil,
        message: String,
        primaryButtonTitle: String? = nil,
        secondaryButtonTitle: String? = nil
    ) {
        self.title = title
        self.message = message
        self.primaryButtonTitle = primaryButtonTitle
        self.secondaryButtonTitle = secondaryButtonTitle
    }
}

