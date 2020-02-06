<#
Created:    2020-02-06
Updated:    2020-02-06
Version:    1.0
Author :    Marcus Wahlstam
Company:    Advitum AB
Disclaimer:
This script is provided "AS IS" with no warranties, confers no rights and
is not supported by the author

Updates
1.0 - Initial release

Usage
Convert-PasswordToVeeam.ps1 -Password "supersecretpassword"

License:
The MIT License (MIT)
Copyright (c) 2018 Marcus Wahlstam, Advitum AB
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
#>

param([Parameter(Mandatory=$true)][string] $Password)

$encoder = New-Object System.Text.UTF8Encoding
$byteArray = $encoder.GetBytes("$Password")
$base64string = [Convert]::ToBase64String($byteArray)

return $base64string