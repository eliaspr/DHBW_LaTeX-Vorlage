# If the output file exists, try to remove it
# If it can't be removed, stop the script
if (Test-Path -Path "dokumentation.pdf" -PathType Leaf) {
    Remove-Item -Path "dokumentation.pdf" -ErrorAction SilentlyContinue
    if(Test-Path -Path "dokumentation.pdf" -PathType Leaf) {
        Add-Type -AssemblyName PresentationCore, PresentationFramework
        Write-Host '+---------------------------------------------------------------------------+'
        Write-Host '| dokumentation.pdf muss geschlossen werden, um das LaTeX-Projekt zu bauen! |'
        Write-Host '+---------------------------------------------------------------------------+'
        [System.Windows.MessageBox]::Show('dokumentation.pdf muss geschlossen werden, um das LaTeX-Projekt zu bauen!')
        Exit
    }
}

latexmk
Invoke-Item -Path "dokumentation.pdf"