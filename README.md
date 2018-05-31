# PSScriptAnalyzer-VSCodeIntegration

This is a dummy project that shows a practical example of how PSScriptAnalyzer (PSSA) can be customized (choosing the rules that are of interest or not) AND integrated with VSCode.
The VSCode integration happens in the .vscode/settings.json file via the `powershell.scriptAnalysis.settingsPath` setting that can point to a PSSA setting file (absolute or relative to the workspace root).
The PSSA customization is defined in this PSSA settings file, for details please refer to the PSSA documentation [here](https://github.com/PowerShell/PSScriptAnalyzer/#explicit) and more example files [here](https://github.com/PowerShell/PSScriptAnalyzer/tree/development/Engine/Settings). The settings file name was chosen to be `PSScriptAnalyzerSettings.psd1` so that `Invoke-ScriptAnalyzer` can pick it up [implicitly](https://github.com/PowerShell/PSScriptAnalyzer#implicit) when you run the command from this location.
