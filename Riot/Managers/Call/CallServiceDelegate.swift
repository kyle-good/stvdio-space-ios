// 
// Copyright 2020 New Vector Ltd
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import Foundation

@objc
protocol CallServiceDelegate: class {
    //  New call
    func callService(_ service: CallService,
                     shouldHandleNewCall call: MXCall) -> Bool
    
    //  Call screens
    func callService(_ service: CallService,
                     presentCallViewController viewController: CallViewController,
                     completion:(() -> Void)?)
    func callService(_ service: CallService,
                     dismissCallViewController viewController: CallViewController,
                     completion:(() -> Void)?)
    
    //  Call Bar
    func callService(_ service: CallService,
                     presentCallBarFor activeCallViewController: CallViewController?,
                     numberOfPausedCalls: UInt,
                     completion:(() -> Void)?)
    func callService(_ service: CallService,
                     updateCallBarFor activeCallViewController: CallViewController?,
                     numberOfPausedCalls: UInt,
                     completion:(() -> Void)?)
    func callService(_ service: CallService,
                     dismissCallBar completion:(() -> Void)?)
}
