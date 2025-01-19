/**
 * Copyright © 2024 IAV GmbH Ingenieurgesellschaft Auto und Verkehr, All Rights Reserved.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * 
 * SPDX-License-Identifier: Apache-2.0
 */

import { WHITE } from "@work-test-2/frontend-framework/constants";
import { Button } from "primereact/button";

export interface Props {
  exampleText: string;
  onAddTab: () => void;
}

export const ContentbarExample = (props: Props) => {
  return (
    <div className="w-full" style={{ backgroundColor: WHITE }}>
      <h2>{props.exampleText}</h2>
      <h3>Normal useCase Contentbar</h3>
      <Button onClick={props.onAddTab}>Add Tab</Button>
    </div>
  );
};