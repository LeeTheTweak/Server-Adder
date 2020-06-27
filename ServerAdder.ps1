# This is the 'foreach' loop.
# This program starts out with a blank array of servers.
# User can add to the list of servers.

### LOOP WON'T EXIT OUT. FIX THE LOOP ###

$servers = [System.Collections.ArrayList]@(" ")

do {
    $choice = Read-Host "DO YOU WANT TO ADD SERVERS?[y/n]: "
        
        switch ($choice) {
            ($choice = "y") {
                $addServer = Read-Host "ENTER THE NAME OF YOUR SERVER."
                $servers.Add($addServer)
            }
        default {
            Write-Host "Goodbye!"
        }
    }
    $servers

    $repeat = Read-Host "Want to add more?[y/n]: "
} while ($repeat = "y")