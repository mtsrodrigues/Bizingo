//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: bizingo.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import Foundation
import GRPC
import NIO
import NIOHTTP1
import SwiftProtobuf


/// Usage: instantiate Bizingo_GameServiceClient, then call methods of this protocol to make API calls.
internal protocol Bizingo_GameService {
  func invite(_ request: Bizingo_InviteRequest, callOptions: CallOptions?) -> UnaryCall<Bizingo_InviteRequest, Bizingo_InviteReply>
  func start(_ request: Bizingo_StartRequest, callOptions: CallOptions?) -> UnaryCall<Bizingo_StartRequest, Bizingo_StartReply>
  func restart(_ request: Bizingo_RestartRequest, callOptions: CallOptions?) -> UnaryCall<Bizingo_RestartRequest, Bizingo_RestartReply>
  func end(_ request: Bizingo_EndRequest, callOptions: CallOptions?) -> UnaryCall<Bizingo_EndRequest, Bizingo_EndReply>
  func quit(_ request: Bizingo_QuitRequest, callOptions: CallOptions?) -> UnaryCall<Bizingo_QuitRequest, Bizingo_QuitReply>
  func move(_ request: Bizingo_MoveRequest, callOptions: CallOptions?) -> UnaryCall<Bizingo_MoveRequest, Bizingo_MoveReply>
  func message(_ request: Bizingo_MessageRequest, callOptions: CallOptions?) -> UnaryCall<Bizingo_MessageRequest, Bizingo_MessageReply>
}

internal final class Bizingo_GameServiceClient: GRPCClient, Bizingo_GameService {
  internal let connection: ClientConnection
  internal var defaultCallOptions: CallOptions

  /// Creates a client for the bizingo.Game service.
  ///
  /// - Parameters:
  ///   - connection: `ClientConnection` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  internal init(connection: ClientConnection, defaultCallOptions: CallOptions = CallOptions()) {
    self.connection = connection
    self.defaultCallOptions = defaultCallOptions
  }

  /// Asynchronous unary call to Invite.
  ///
  /// - Parameters:
  ///   - request: Request to send to Invite.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func invite(_ request: Bizingo_InviteRequest, callOptions: CallOptions? = nil) -> UnaryCall<Bizingo_InviteRequest, Bizingo_InviteReply> {
    return self.makeUnaryCall(path: "/bizingo.Game/Invite",
                              request: request,
                              callOptions: callOptions ?? self.defaultCallOptions)
  }

  /// Asynchronous unary call to Start.
  ///
  /// - Parameters:
  ///   - request: Request to send to Start.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func start(_ request: Bizingo_StartRequest, callOptions: CallOptions? = nil) -> UnaryCall<Bizingo_StartRequest, Bizingo_StartReply> {
    return self.makeUnaryCall(path: "/bizingo.Game/Start",
                              request: request,
                              callOptions: callOptions ?? self.defaultCallOptions)
  }

  /// Asynchronous unary call to Restart.
  ///
  /// - Parameters:
  ///   - request: Request to send to Restart.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func restart(_ request: Bizingo_RestartRequest, callOptions: CallOptions? = nil) -> UnaryCall<Bizingo_RestartRequest, Bizingo_RestartReply> {
    return self.makeUnaryCall(path: "/bizingo.Game/Restart",
                              request: request,
                              callOptions: callOptions ?? self.defaultCallOptions)
  }

  /// Asynchronous unary call to End.
  ///
  /// - Parameters:
  ///   - request: Request to send to End.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func end(_ request: Bizingo_EndRequest, callOptions: CallOptions? = nil) -> UnaryCall<Bizingo_EndRequest, Bizingo_EndReply> {
    return self.makeUnaryCall(path: "/bizingo.Game/End",
                              request: request,
                              callOptions: callOptions ?? self.defaultCallOptions)
  }

  /// Asynchronous unary call to Quit.
  ///
  /// - Parameters:
  ///   - request: Request to send to Quit.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func quit(_ request: Bizingo_QuitRequest, callOptions: CallOptions? = nil) -> UnaryCall<Bizingo_QuitRequest, Bizingo_QuitReply> {
    return self.makeUnaryCall(path: "/bizingo.Game/Quit",
                              request: request,
                              callOptions: callOptions ?? self.defaultCallOptions)
  }

  /// Asynchronous unary call to Move.
  ///
  /// - Parameters:
  ///   - request: Request to send to Move.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func move(_ request: Bizingo_MoveRequest, callOptions: CallOptions? = nil) -> UnaryCall<Bizingo_MoveRequest, Bizingo_MoveReply> {
    return self.makeUnaryCall(path: "/bizingo.Game/Move",
                              request: request,
                              callOptions: callOptions ?? self.defaultCallOptions)
  }

  /// Asynchronous unary call to Message.
  ///
  /// - Parameters:
  ///   - request: Request to send to Message.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func message(_ request: Bizingo_MessageRequest, callOptions: CallOptions? = nil) -> UnaryCall<Bizingo_MessageRequest, Bizingo_MessageReply> {
    return self.makeUnaryCall(path: "/bizingo.Game/Message",
                              request: request,
                              callOptions: callOptions ?? self.defaultCallOptions)
  }

}

/// To build a server, implement a class that conforms to this protocol.
internal protocol Bizingo_GameProvider: CallHandlerProvider {
  func invite(request: Bizingo_InviteRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Bizingo_InviteReply>
  func start(request: Bizingo_StartRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Bizingo_StartReply>
  func restart(request: Bizingo_RestartRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Bizingo_RestartReply>
  func end(request: Bizingo_EndRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Bizingo_EndReply>
  func quit(request: Bizingo_QuitRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Bizingo_QuitReply>
  func move(request: Bizingo_MoveRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Bizingo_MoveReply>
  func message(request: Bizingo_MessageRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Bizingo_MessageReply>
}

extension Bizingo_GameProvider {
  internal var serviceName: String { return "bizingo.Game" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  internal func handleMethod(_ methodName: String, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "Invite":
      return UnaryCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.invite(request: request, context: context)
        }
      }

    case "Start":
      return UnaryCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.start(request: request, context: context)
        }
      }

    case "Restart":
      return UnaryCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.restart(request: request, context: context)
        }
      }

    case "End":
      return UnaryCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.end(request: request, context: context)
        }
      }

    case "Quit":
      return UnaryCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.quit(request: request, context: context)
        }
      }

    case "Move":
      return UnaryCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.move(request: request, context: context)
        }
      }

    case "Message":
      return UnaryCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.message(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

