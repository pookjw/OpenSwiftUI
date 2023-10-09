//
//  _AnimatableView.swift
//  OpenSwiftUI
//
//  Created by Kyle on 2023/10/9.
//  Lastest Version: iOS 15.5
//  Status: Blocked by Graph

@available(*, deprecated, message: "use Animatable directly")
public protocol _AnimatableView: Animatable, View {}

@available(*, deprecated, message: "use Animatable directly")
extension _AnimatableView {
    public static func _makeView(view _: _GraphValue<Self>, inputs _: _ViewInputs) -> _ViewOutputs {
        .init()
    }

    public static func _makeViewList(view _: _GraphValue<Self>, inputs _: _ViewListInputs) -> _ViewListOutputs {
        .init()
    }
}

extension View where Self: Animatable {
    public static func _makeView(view _: _GraphValue<Self>, inputs _: _ViewInputs) -> _ViewOutputs {
        .init()
    }

    public static func _makeViewList(view _: _GraphValue<Self>, inputs _: _ViewListInputs) -> _ViewListOutputs {
        .init()
    }
}
