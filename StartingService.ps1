# Define the service name
$ServiceName = "Eventlog"

# Read the service
$ServiceInfo = Get-Service -Name $ServiceName


# If the service is not running(ne)
if ($ServiceInfo.status -ne "Running") {
    # Write to the console that the services is not running
    Write-Host "Service is not started, starting service"
    Start-Service -Name $ServiceName
}

echo $ServiceName


	## Write to the console that the service is not running
	Write-Host 'Service is not started, starting service'
	## Start the service
	Start-Service -Name $ServiceName
	## Update the $ServiceInfo object to reflect the new state
	$ServiceInfo.Refresh()
	## Write to the console the Status property which indicates the state of the service
	Write-Host $ServiceInfo.Status
} else { ## If the Status is anything but Running
	## Write to the console the service is already running
	Write-Host 'The service is already running.'
}