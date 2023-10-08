//
//  UniqueID.swift
//  OpenSwiftUI
//
//  Created by Kyle on 2023/10/8.
//  Lastest Version: iOS 15.5
//  Status: Complete

#if OPENSWIFTUI_USE_AG
@_implementationOnly import AttributeGraph
#else
@_implementationOnly import OpenGraph
#endif

struct UniqueID: Hashable {
    static let zero = UniqueID(value: 0)

    let value: Int

    @inline(__always)
    init() {
        #if OPENSWIFTUI_USE_AG
        self.value = Int(AGMakeUniqueID().rawValue)
        #else
        self.value = Int(OGMakeUniqueID().rawValue)
        #endif
    }

    private init(value: Int) {
        self.value = value
    }
}
