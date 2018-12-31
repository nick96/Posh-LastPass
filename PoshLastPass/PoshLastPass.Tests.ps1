$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "PoshLastPass" {

    # Test library functionality but mock network calls
    Context "Acceptance tests" {
        It "Should a login token with New-LastPassLoginToken" {

        }

        It "Should get an entry with Get-LastPassEntry" {

        }

        It "Should create an entry with Add-LastPassEntry" {

        }

        It "Should update an entry with Update-LastPassEntry" {

        }

        It "Should delete an entry wtih Remove-LastPassEntry" {

        }
    }

    # Test library functionality without mocking network calls
    Context "E2E tests" {
        It "Should create a login token with New-LastPassLoginToken" {

        }

        It "Should get an entry with Get-LastPassEntry" {

        }

        It "Should create an entry with Add-LastPassEntry" {

        }

        It "Should update an entry with Update-LastPassEntry" {

        }

        It "Should delete an entry wtih Remove-LastPassEntry" {

        }
    }
}
