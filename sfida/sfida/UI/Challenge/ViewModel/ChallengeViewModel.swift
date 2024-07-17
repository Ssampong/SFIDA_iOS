//
//  ChallengeViewModel.swift
//  sfida
//
//  Created by dgsw8th61 on 7/17/24.
//

import SwiftUI
import Alamofire

//final class RemoteChallengeService {
//    func Challenge() async throws -> [ChallengeResponse]{
//        let url = "/api/challenges"
//        
//        return try await withCheckedThrowingContinuation { continuation in
//            AF.request( baseUrl + url, method: .get)
//                .responseDecodable(of: [ChallengeResponse].self) { response in
//                    switch response.result {
//                    case .success(let responseData):
//                        continuation.resume(returning: responseData)
//                    case .failure(let error):
//                        continuation.resume(throwing: error)
//                    }
//                }
//        }
//    }
//    
//}
@MainActor
class ChallengeViewModel: ObservableObject {
    @Published var success = [ChallengeResponse]()
    func Challenge() async throws -> [ChallengeResponse]{
        let url = "/api/challenges"
        
        return try await withCheckedThrowingContinuation { continuation in
            AF.request( baseUrl + url, method: .get)
                .responseDecodable(of: [ChallengeResponse].self) { response in
                    switch response.result {
                    case .success(let responseData):
                        continuation.resume(returning: responseData)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                    }
                }
        }
    }
    
//    func getChallenge() async {
//        do {
//            let response = try await Challenge()
//            print(response)
//        
//        } catch {
//            print(error)
//        }
//        
//    }
//    func upload(image: UIImage) async throws -> Response<String> {
//        
//        let headers: HTTPHeaders = [
//            .authorization(bearerToken: LoginUserHashCache.shared.checkAccessToken() ?? LoginUserHashCache.accessToken),
//            .contentType("multipart/form-data")
//        ]
//        
//        return try await withCheckedThrowingContinuation { continuation in
//            AF.upload(multipartFormData: { multipartFormData in
//                if let imageData = image.jpegData(compressionQuality: 0.1) {
//                    multipartFormData.append(imageData, withName: "file", fileName: "image", mimeType: "image/jpeg")
//                }
//            }, to: ApiContent.url + "/upload", method: .post, headers: headers)
//            .responseDecodable(of: Response<String>.self) { response in
//                switch response.result {
//                case .success(let data):
//                    continuation.resume(returning: data)
//                case .failure(let error):
//                    continuation.resume(throwing: error)
//                }
//            }
//        }
//    }
}

