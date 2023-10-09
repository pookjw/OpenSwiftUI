//
//  AnimatableModifier.swift
//  OpenSwiftUI
//
//  Created by Kyle on 2023/10/9.
//  Lastest Version: iOS 15.5
//  Status: Blocked by Graph

@available(*, deprecated, message: "use Animatable directly")
public protocol AnimatableModifier: Animatable, ViewModifier {}

@available(*, deprecated, message: "use Animatable directly")
extension AnimatableModifier {
    public static func _makeView(modifier _: _GraphValue<Self>, inputs _: _ViewInputs, body _: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs {
        .init()
    }

    public static func _makeViewList(modifier _: _GraphValue<Self>, inputs _: _ViewListInputs, body _: @escaping (_Graph, _ViewListInputs) -> _ViewListOutputs) -> _ViewListOutputs {
        .init()
    }
}

extension ViewModifier where Self: Animatable {
    public static func _makeView(modifier _: _GraphValue<Self>, inputs _: _ViewInputs, body _: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs {
        .init()
    }

    public static func _makeViewList(modifier _: _GraphValue<Self>, inputs _: _ViewListInputs, body _: @escaping (_Graph, _ViewListInputs) -> _ViewListOutputs) -> _ViewListOutputs {
        .init()
    }
}
