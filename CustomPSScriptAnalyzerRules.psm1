function WarningAboutDoSomething {
    <#
    .DESCRIPTION
        Custom rule text when you call Invoke-Something.
    #>

    param (
        [System.Management.Automation.Language.CommandAst]$someAst
    )

    if ($someAst.GetCommandName() -eq 'Invoke-Something') {
        [Microsoft.Windows.Powershell.ScriptAnalyzer.Generic.DiagnosticRecord]@{
            RuleName             = $myinvocation.InvocationName
            Message              = 'Message about usage of Invoke-Something'
            Extent               = $someAst.Extent
        }
    }
}
