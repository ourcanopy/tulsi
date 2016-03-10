// Copyright 2016 The Tulsi Authors. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation
import TulsiGenerator

// Wraps a TulsiGenerator::RuleInfo with functionality to allow it to track selection and be
// accessed via bindings in the UI.
class UIRuleInfo: NSObject, Selectable {
  dynamic var targetName: String? {
    return ruleInfo.label.targetName
  }

  dynamic var type: String {
    return ruleInfo.type
  }

  dynamic var selected: Bool = false

  var fullLabel: String {
    return ruleInfo.label.value
  }

  let ruleInfo: RuleInfo

  init(ruleInfo: RuleInfo) {
    self.ruleInfo = ruleInfo
  }
}
