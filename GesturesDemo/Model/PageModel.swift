//
//  PageModel.swift
//  GesturesDemo
//
//  Created by Victor Ulloa on 2023-10-02.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
