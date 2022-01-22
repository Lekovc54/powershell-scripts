﻿function Decl-Const ($name, $value) { New-Variable -Name $name -Value $value -Option Constant -Scope Script -ErrorAction SilentlyContinue }
# Profile Type
Decl-Const NET_FW_PROFILE2_DOMAIN 1
Decl-Const NET_FW_PROFILE2_PRIVATE 2
Decl-Const NET_FW_PROFILE2_PUBLIC 4

# Action
Decl-Const NET_FW_ACTION_BLOCK 0
Decl-Const NET_FW_ACTION_ALLOW 1

#
Decl-Const NET_FW_MODIFY_STATE_OK 0
Decl-Const NET_FW_MODIFY_STATE_GP_OVERRIDE 1
Decl-Const NET_FW_MODIFY_STATE_NO_EXCEPTIONS 2


$fwPolicy2 = New-Object -ComObject "HNetCfg.FwPolicy2"

$FwRulesGroup = "File and Printer Sharing"

$fwPolicy2.EnableRuleGroup($NET_FW_PROFILE2_PRIVATE, $FwRulesGroup, $TRUE)
$fwPolicy2.EnableRuleGroup($NET_FW_PROFILE2_PUBLIC, $FwRulesGroup, $false)