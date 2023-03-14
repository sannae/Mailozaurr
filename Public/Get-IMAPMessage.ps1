<#
    Once initialized $Client, messages are accessible using $Client.Folder
    This pattern is used also in the other providers
    Example:
        $Client.Folder | Select-Object -Property From, To, CC, Bcc, Subject, HtmlBody | Format-Table

    TODO: Add parameters To, From, CC, TotalCount, SubjectContains, BodyContains, ecc. 
#>
function Get-IMAPMessage {
    [cmdletBinding()]
    param(
        [Parameter()][System.Collections.IDictionary] $Client,
        [MailKit.FolderAccess] $FolderAccess = [MailKit.FolderAccess]::ReadOnly
    )
    if ($Client) {
        $Folder = $Client.Data.Inbox
        $null = $Folder.Open($FolderAccess)

        Write-Verbose "Get-IMAPMessage - Total messages $($Folder.Count), Recent messages $($Folder.Recent)"
        $Client.Folder = $Folder
    } else {
        Write-Verbose 'Get-IMAPMessage - Client not connected?'
    }
}