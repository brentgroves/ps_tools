$SCRIPT:INSECUREPASSWORD = 'MyTopSecretPassword'

Write-Information `
    -MessageData "What is my insecure Password? $SCRIPT:INSECUREPASSWORD" `
    -InformationAction 'Continue'

$SCRIPT:SECUREPASSWORD = ConvertTo-SecureString `
    -String 'MyTopSecretPassword' `
    -AsPlainText `
    -Force

Write-Information `
    -MessageData "What is my secure Password? $SCRIPT:SECUREPASSWORD" `
    -InformationAction 'Continue'