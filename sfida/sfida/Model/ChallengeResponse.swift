//
//  ChallengeResponse.swift
//  sfida
//
//  Created by dgsw8th61 on 7/17/24.
//

import SwiftUI

struct ChallengeResponse: Decodable{
    let id: Int
    let title: String
    let content: String
    let image_path: String
}
