//
//  ChallengeViewModel.swift
//  sfida
//
//  Created by dgsw8th61 on 7/17/24.
//

import SwiftUI


@MainActor
class DiaryViewModel: ObservableObject {
//    @Published var success: Bool = false
//    func getDiary(pageRequest: PageRequest,email : String) async throws -> Response<[DiaryResponse]> {
//        let url = "/diary?page=\(pageRequest.page)&size=\(pageRequest.size)&email=\(email)"
//        
//        return try await withCheckedThrowingContinuation { continuation in
//            AF.request( ApiContent.url + url, method: .get,interceptor: MyRequestInterceptor())
//                .responseDecodable(of: Response<[DiaryResponse]>.self) { response in
//                    switch response.result {
//                    case .success(let responseData):
//                        continuation.resume(returning: responseData)
//                    case .failure(let error):
//                        continuation.resume(throwing: error)
//                    }
//                }
//        }
//    }
}
