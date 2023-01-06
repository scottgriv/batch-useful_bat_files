:: Created by: Scott Grivner
:: Website: scottgrivner.dev

powershell -ExecutionPolicy ByPass -Command Send-MailMessage ^
    -SmtpServer smtp.your_domain.com ^
    -To to_email@your_domain.com ^
    -From from_email@your_domain.com ^
    -Subject Email Subject Test ^
    -Body Email Body Test