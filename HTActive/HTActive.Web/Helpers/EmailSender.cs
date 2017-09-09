using MailKit.Net.Smtp;
using MimeKit;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Web.Helpers
{
    public class SMTPConfiguration
    {
        public int Id { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string Bccs { get; set; }
        public string Name { get; set; }
        public string Host { get; set; }
        public int Port { get; set; }
    }
    public class EmailSender
    {
        public static async Task SendEmail(MimeMessage message, SMTPConfiguration smtpConfiguration)
        {
            message.From.Add(new MailboxAddress(smtpConfiguration.Name, smtpConfiguration.Email));
            var bccs = new List<string>();
            if (!string.IsNullOrEmpty(smtpConfiguration.Bccs))
            {
                bccs = smtpConfiguration.Bccs.Split(',').ToList();
            }
            foreach (var bcc in bccs)
            {
                message.Bcc.Add(new MailboxAddress(bcc, bcc));
            }

            using (var client = new SmtpClient())
            {
                // For demo-purposes, accept all SSL certificates (in case the server supports STARTTLS)
                client.ServerCertificateValidationCallback = (s, c, h, e) => true;

                client.Connect(smtpConfiguration.Host, smtpConfiguration.Port, false);

                // Note: since we don't have an OAuth2 token, disable
                // the XOAUTH2 authentication mechanism.
                client.AuthenticationMechanisms.Remove("XOAUTH2");

                // Note: only needed if the SMTP server requires authentication
                await client.AuthenticateAsync(smtpConfiguration.Email, smtpConfiguration.Password);

                await client.SendAsync(message);
                client.Disconnect(true);
            }
        }
    }
}
