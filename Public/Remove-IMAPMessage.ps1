<#
    TODO: https://github.com/jstedfast/MailKit/issues/552
    TODO: handle piping only from Get-IMAPMessage (even filtered), or provide List(MessageId) as parameter
#>
function Remove-IMAPMessage {
    [cmdletBinding()]
    param(
        [Parameter()][System.Collections.IDictionary] $Client,
        [MailKit.FolderAccess] $FolderAccess = [MailKit.FolderAccess]::ReadOnly
    )

    

}