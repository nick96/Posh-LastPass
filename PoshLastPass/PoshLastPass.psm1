<#
.SYNOPSIS
    New-LastPassLoginToken creates the token that needs to be attached to the API calls.
.INPUTS
    username
        Username is the username to log in with.
    password
        Password is the password to log in with.
.OUTPUTS
    Login token for LastPass REST API.
#>
function New-LastPassLoginTokin {
    [CmdletBinding()]
    param (
        [string]$username,
        [string]$password
    )
    
    begin {
    }
    
    process {
    }
    
    end {
    }
}

<#
.SYNOPSIS
    Get an entry with the name matching NAME using TOKEN to authenticate.
.INPUTS
    token
        Token used to authenticate REST API.
    name
        Name of entry to search for.
.OUTPUTS
    Entry found by NAME.
#>
function Get-LastPassEntry {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true)]
        [string]$token,
        [Parameter(Mandatory=$true)]
        [string]$identifier
    )
    
    begin {
    }
    
    process {
    }
    
    end {
    }
}

<#
.SYNOPSIS
    Create a new LastPass entry.
.INPUTS
    token
        Token to authenticate API with
    name
        Name of new entry
    username
        Username of new entry
    password
        Password of new entry
    url
        URL of new entry
    notes
        Notes of new entry
    field
        Field of new entry
.OUTPUTS
    Newly created entry
#>
function Add-LastPassEntry {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true)]
        [string]$token,
        [Parameter(Mandatory=$true)]
        [string]$identifier,
        [string]$username,
        [string]$password,
        [string]$url,
        [string]$notes,
        [string]$field
    )
    
    begin {
    }
    
    process {
    }
    
    end {
    }
}

<#
.SYNOPSIS
    Update an existing LastPass entry.
.INPUTS
    token
        Token to authenticate API with
    name
        Name of entry
    username
        Username of entry
    password
        Password of entry
    url
        URL of entry
    notes
        Notes of entry
    field
        Field of entry
.OUTPUTS
    Updated entry
#>
function Update-LastPassEntry {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true)]
        [string]$token,
        [Parameter(Mandatory=$true)]
        [string]$identifier,
        [string]$newName,
        [string]$newUsername,
        [string]$newPassword,
        [string]$newUrl,
        [string]$newNotes,
        [string]$newField
    )
    
    begin {
    }
    
    process {
    }
    
    end {
    }
}

<#
.SYNOPSIS
    Remove the LastPass entry matching the identifier.
.INPUTS
    token
        Token to authenticate API.
    identifier
        String used to identify an entry.
.OUTPUTS
    Deleted entry
#>
function Remove-LastPassEntry {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true)]
        [string]$token,
        [Parameter(Mandatory=$true)]
        [string]$identifier
    )
    
    begin {
    }
    
    process {
    }
    
    end {
    }
}
