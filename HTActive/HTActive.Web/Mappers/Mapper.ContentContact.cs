using HTActive.Entities;
using HTActive.Web.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Web.Mappers
{
    public partial class Mapper
    {
        public static ContentContactModel ToModel(ContentContact entity)
        {
            if (entity == null) return null;
            return new ContentContactModel()
            {
                Id = entity.Id,
                Language = entity.Language,
                ContactUs = entity.ContactUs,
                Title = entity.Title,
                Phone = entity.Phone,
                Address = entity.Address,
                Skype = entity.Skype,
                HTEmail = entity.HTEmail,
                Content = entity.Content,
                Name = entity.Name,
                NameHolder = entity.NameHolder,
                Mail = entity.Mail,
                MailHolder = entity.MailHolder,
                Message = entity.Message,
                MessageHolder = entity.MessageHolder,
                Subject = entity.Subject,
                SubjectHolder = entity.SubjectHolder,
                Button = entity.Button,
                Received = entity.Received,
                ErrorMessage = entity.ErrorMessage,
                ThanksMessage = entity.ThanksMessage,
                Thanks = entity.Thanks,
                SorryMessage = entity.SorryMessage,
                Sorry = entity.Sorry,
                Loading = entity.Loading,
            };
        }
    }
}
