using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Entities
{
    public class Image
    {
        [System.ComponentModel.DataAnnotations.Key]
        public int Id { get; set; }
        [System.ComponentModel.DataAnnotations.StringLength(256)]
        public string Url { get; set; }
        [System.ComponentModel.DataAnnotations.StringLength(256)]
        public string S3FileKey { get; set; }
    }
}
