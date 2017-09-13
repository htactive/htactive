using HTActive.Common;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Entities
{
    public class Product
    {
        [Key]
        public int Id { get; set; }
        public int Priority { get; set; }
        public ProductTypeEnums? ProductType { get; set; }

        public List<ProductLanguage> ProductLanguages { get; set; }
    }
    public class ProductLanguage
    {
        [Key]
        public int Id { get; set; }
        public SiteLanguageTypeEnums? Language { get; set; }
        public int? ProductId { get; set; }
        [ForeignKey("ProductId")]
        public Product Product { get; set; }

        [StringLength(512)]
        public string TypeName { get; set; }
        [StringLength(512)]
        public string ImageDetailText { get; set; }
        [StringLength(512)]
        public List<ProductLanguageImageDetail> ImageDetails { get; set; }
        public List<ProductLanguageProductDetail> ProductLanguageProductDetails { get; set; }
        [StringLength(512)]
        public string DescriptionDetailText { get; set; }
        [StringLength(512)]
        public string DescriptionDetailHeader { get; set; }
        public List<ProductLanguageDescriptionDetail> ProductLanguageDescriptionDetails { get; set; }
        [StringLength(512)]
        public string ReviewText { get; set; }
        public List<ProductLanguageReviewDetail> ProductLanguageReviewDetails { get; set; }
        [StringLength(512)]
        public string VideoDetailText { get; set; }
        [StringLength(512)]
        public string VideoDetailSrc { get; set; }
        [StringLength(512)]
        public string VideoDetailAlt { get; set; }
        [StringLength(512)]
        public string LinkStoreHeader { get; set; }
        [StringLength(512)]
        public string LinkStoreContent { get; set; }
        [StringLength(512)]
        public string Description { get; set; }
        [StringLength(512)]
        public string ImageSrc { get; set; }
        [StringLength(512)]
        public string ImageAlt { get; set; }
        [StringLength(512)]
        public string TitleTagForSEO { get; set; }
        [StringLength(512)]
        public string TitleText { get; set; }
        [StringLength(512)]
        public string ProductDetailText { get; set; }
        public List<ProductLanguageLinkStore> LinkStores { get; set; }
    }
    public class ProductLanguageImageDetail
    {
        public int Id { get; set; }
        public int? ProductLanguageId { get; set; }
        [ForeignKey("ProductLanguageId")]
        public ProductLanguage ProductLanguage { get; set; }

        [StringLength(512)]
        public string Src { get; set; }
        [StringLength(512)]
        public string Alt { get; set; }
    }
    public class ProductLanguageProductDetail
    {
        public int Id { get; set; }
        public int? Priority { get; set; }
        public int? ProductLanguageId { get; set; }
        [ForeignKey("ProductLanguageId")]
        public ProductLanguage ProductLanguage { get; set; }

        [StringLength(512)]
        public string Header { get; set; }
        [StringLength(2048)]
        public string Content { get; set; }
    }
    public class ProductLanguageDescriptionDetail
    {
        public int Id { get; set; }
        public int? ProductLanguageId { get; set; }
        [ForeignKey("ProductLanguageId")]
        public ProductLanguage ProductLanguage { get; set; }

        [StringLength(512)]
        public string Title { get; set; }
        [StringLength(512)]
        public string Content { get; set; }
    }
    public class ProductLanguageReviewDetail
    {
        public int Id { get; set; }
        public int? ProductLanguageId { get; set; }
        [ForeignKey("ProductLanguageId")]
        public ProductLanguage ProductLanguage { get; set; }

        [StringLength(512)]
        public string ImageUrl { get; set; }
        [StringLength(512)]
        public string Title { get; set; }
        [StringLength(512)]
        public string Detail { get; set; }
        [StringLength(512)]
        public float RateScore { get; set; }
        [StringLength(512)]
        public string RateDate { get; set; }
    }

    public class ProductLanguageLinkStore
    {
        public int Id { get; set; }
        public int? ProductLanguageId { get; set; }
        [ForeignKey("ProductLanguageId")]
        public ProductLanguage ProductLanguage { get; set; }

        [StringLength(512)]
        public string Text { get; set; }
        [StringLength(512)]
        public string Link { get; set; }
    }
}
