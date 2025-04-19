<powershell>
# Install Chocolatey 
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = "Tls12"
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install Python and Git
choco install -y python git

# Add Python to path
$env:Path += ";C:\Python311\;C:\Python311\Scripts\"

# Clone  GitHub repo 
git clone https://github.com/your-username/devops-project.git C:\flaskapp

# Install app requirements
cd C:\flaskapp\app
python -m pip install --upgrade pip
pip install -r requirements.txt

# Run Flask app 
$env:FLASK_APP = "app.py"
Start-Process -NoNewWindow -FilePath "python" -ArgumentList "app.py"
</powershell>
