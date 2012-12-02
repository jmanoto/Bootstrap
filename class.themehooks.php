<?php if (!defined("APPLICATION")) exit();

//  Copyright 2012 Kasper Kronborg Isager
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

class BootstrapThemeHooks implements Gdn_IPlugin {

    public function AssetModel_StyleCss_Handler($Sender) {
        $Sender->AddCssFile("framework.css");
    }

    public function Base_Render_Before($Sender, $Args) {

        if ($Sender->MasterView == '' || $Sender->MasterView == 'default') {
            $Sender->AddJSFile("framework.min.js");
        }
        
    }

	public function Setup() {
		return TRUE;
	}

	public function OnDisable() {
		return TRUE;
	}

}