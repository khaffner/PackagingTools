FROM khaffner/psadt-tester:32bitOffice365ProPlus
#FROM khaffner/psadt-tester:64bitOffice365ProPlus
#FROM khaffner/psadt-tester:NoOffice

# The following RUN/CMD/ENTRYPOINT should be executed in Powershell
SHELL ["powershell", "-Command"]

#Adding psadt content
ADD . C:/psadt-tester

#Running installation, uninstallation and detection method along the way
ENTRYPOINT  Function Test-DetectionMethod {;\
                Write-Host "------------------------------------------------------------------------------------------------";\
                if(C:\psadt-tester\DetectionMethod.ps1){Write-Host "Application is installed"}else{Write-Host "Application is NOT installed"};\
                Write-Host "------------------------------------------------------------------------------------------------";\
            };\
            Test-DetectionMethod;\
            C:\psadt-tester\Deploy-Application.ps1 Install;\
            Test-DetectionMethod;\
            C:\psadt-tester\Deploy-Application.ps1 Uninstall;\
            Test-DetectionMethod
