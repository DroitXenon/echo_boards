//
//  ProPlaceholders.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2024-03-21.
//  Copyright © 2024 Daniel Saidi. All rights reserved.
//

import SwiftUI

#if os(iOS) || os(tvOS) || os(visionOS)
import UIKit
#endif

enum ProPlaceholderError: LocalizedError, View {
    
    case proPlaceholder
    case proFeature(_ name: String)
    
    var errorDescription: String {
        switch self {
        case .proPlaceholder: "👑 This is unlocked by KeyboardKit Pro."
        case .proFeature(let name): "👑 \(name) is unlocked by KeyboardKit Pro."
        }
    }
    
    var body: some View {
        Text(errorDescription)
    }
}

public extension Autocomplete {

    /// 👑 This is unlocked by KeyboardKit Pro.
    class LocalProvider {}

    /// 👑 This is unlocked by KeyboardKit Pro.
    class RemoteProvider {}
}

public extension Dictation {
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    struct BarVisualizer {}
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    struct BarVisualizerStyle {}
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    class ProService {}

    /// 👑 This is unlocked by KeyboardKit Pro.
    class ProKeyboardService {
        
        public func tryToReturnToKeyboard() {}
    }
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    struct Screen {}
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    struct ScreenStyle {}
}

/// 👑 This is unlocked by KeyboardKit Pro.
public struct EmojiKeyboard {}

/// 👑 This is unlocked by KeyboardKit Pro.
public struct EmojiKeyboardStyle {
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    public var itemFont: Font { .body }
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    static func standard(for context: KeyboardContext) -> Self {
        .init()
    }
}

/// 👑 This is unlocked by KeyboardKit Pro.
public class ExternalKeyboardContext: ObservableObject {}

public extension Feedback {
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    struct Toggle {}
}

public extension Image {
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    static func emojiCategory(
        _ category: EmojiCategory
    ) throws -> Image {
        throw ProPlaceholderError.proPlaceholder
    }
}

public extension InputSet {

    /// 👑 This is unlocked by KeyboardKit Pro.
    static var azerty: InputSet {
        get throws {
            throw ProPlaceholderError.proPlaceholder
        }
    }

    /// 👑 This is unlocked by KeyboardKit Pro.
    static var qwertz: InputSet {
        get throws {
            throw ProPlaceholderError.proPlaceholder
        }
    }
}

public extension Keyboard {
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    struct ToggleToolbar {}
}

public extension KeyboardApp {
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    struct HomeScreen {}
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    struct HomeScreenStyle {}
}

public extension KeyboardLayout {
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    class iPadProProvider: iPadProvider {}
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    func adjusted(
        for displayMode: Keyboard.InputToolbarDisplayMode,
        layoutConfiguration: KeyboardLayout.Configuration
    ) -> KeyboardLayout {
        return self
    }
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    func copy() -> KeyboardLayout {
        .init(
            itemRows: itemRows,
            iPadProLayout: ipadProLayout,
            idealItemHeight: idealItemHeight,
            idealItemInsets: idealItemInsets
        )
    }
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    func createIdealItem(
        for action: KeyboardAction,
        width: KeyboardLayout.ItemWidth = .available,
        alignment: Alignment = .center
    ) -> KeyboardLayout.Item {
        .init(
            action: action,
            size: .init(width: width, height: idealItemHeight),
            alignment: alignment,
            edgeInsets: idealItemInsets
        )
    }
}

public extension KeyboardStatus {
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    struct Section: View {
        public var body: some View {
            EmptyView()
        }
    }
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    struct SectionStyle {}
}

public extension KeyboardStyle {
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    class ThemeBasedProvider {}
}

public extension KeyboardStyleProvider {
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    static func themed(
        with theme: KeyboardTheme,
        context: KeyboardContext
    ) throws -> Self {
        throw ProPlaceholderError.proPlaceholder
    }
}

/// 👑 This is unlocked by KeyboardKit Pro.
public struct KeyboardTextField {}

/// 👑 This is unlocked by KeyboardKit Pro.
public struct KeyboardTextView {}

/// 👑 This is unlocked by KeyboardKit Pro.
public struct KeyboardTheme {
    
    public static var allPredefined: [KeyboardTheme] {
        get throws { throw ProPlaceholderError.proPlaceholder }
    }
    
    public static var standard: KeyboardTheme {
        get throws { throw ProPlaceholderError.proPlaceholder }
    }
    
    public static var swifty: KeyboardTheme {
        get throws { throw ProPlaceholderError.proPlaceholder }
    }
    
    public static var minimal: KeyboardTheme {
        get throws { throw ProPlaceholderError.proPlaceholder }
    }
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    public struct Shelf {}
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    public struct ShelfItem {}
}

public extension Proxy {
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    struct FullDocumentConfiguration {}
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    struct FullDocumentResult {
        
        /// The full document context before the input cursor.
        public var fullDocumentContextBeforeInput: String
        
        /// The full document context after the input cursor.
        public var fullDocumentContextAfterInput: String
    }
}

/// 👑 This is unlocked by KeyboardKit Pro.
public protocol SpeechRecognizer {}

/// 👑 This is unlocked by KeyboardKit Pro.
public struct SystemKeyboardBottomRow {}

/// 👑 This is unlocked by KeyboardKit Pro.
public struct SystemKeyboardPreview {}

/// 👑 This is unlocked by KeyboardKit Pro.
public struct SystemKeyboardButtonPreview {}

@available(*, deprecated, renamed: "KeyboardStyle.ThemeBasedProvider")
public typealias ThemeBasedKeyboardStyleProvider = KeyboardStyle.StandardProvider

#if os(iOS) || os(tvOS) || os(visionOS)
public extension UITextDocumentProxy {
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    func fullDocumentContext(
        config: Proxy.FullDocumentConfiguration
    ) async throws -> Proxy.FullDocumentResult {
        throw ProPlaceholderError.proPlaceholder
    }
}
#endif

public extension View {
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    func dictationBarVisualizerStyle(_ style: Dictation.BarVisualizerStyle) -> some View {
        self
    }
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    func dictationScreenStyle(_ style: Dictation.ScreenStyle) -> some View {
        self
    }
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    func emojiKeyboardStyle(
        _ style: EmojiKeyboardStyle
    ) -> some View {
        self
    }
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 9.0, *)
    func focused<DoneButton: View>(
        _ value: FocusState<Bool>.Binding,
        @ViewBuilder doneButton: @escaping () -> DoneButton
    ) -> some View { self }
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    func keyboardAppHomeScreenStyle(
        _ style: KeyboardApp.HomeScreenStyle
    ) -> some View {
        self
    }
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    func keyboardDictation<Overlay: View>() -> some View {
        self
    }
    
    /// 👑 This is unlocked by KeyboardKit Pro.
    func keyboardStatusSectionStyle(
        _ style: KeyboardStatus.SectionStyle
    ) -> some View {
        self
    }
}