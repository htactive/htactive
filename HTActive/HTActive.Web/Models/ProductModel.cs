using HTActive.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Web.Models
{
    public class ProductModel
    {
        public int Id { get; set; }
        public int Priority { get; set; }
        public ProductTypeEnums? ProductType { get; set; }

        public List<ProductLanguageModel> ProductLanguages { get; set; }
    }
    public class ProductLanguageModel
    {
        public int Id { get; set; }
        public SiteLanguageTypeEnums? Language { get; set; }
        public int? ProductId { get; set; }
        public ProductModel Product { get; set; }
        public string TypeName { get; set; }
        public string ImageDetailText { get; set; }
        public List<ProductLanguageImageDetailModel> ImageDetails { get; set; }
        public List<ProductLanguageProductDetailModel> ProductLanguageProductDetails { get; set; }
        public string DescriptionDetailText { get; set; }
        public string DescriptionDetailHeader { get; set; }
        public List<ProductLanguageDescriptionDetailModel> ProductLanguageDescriptionDetails { get; set; }
        public string ReviewText { get; set; }
        public List<ProductLanguageReviewDetailModel> ProductLanguageReviewDetails { get; set; }
        public List<ProductLanguageLinkStoreModel> LinkStores { get; set; }
        public string VideoDetailText { get; set; }
        public string VideoDetailSrc { get; set; }
        public string VideoDetailAlt { get; set; }
        public string LinkStoreHeader { get; set; }
        public string LinkStoreContent { get; set; }
        public string Description { get; set; }
        public string ImageSrc { get; set; }
        public string ImageAlt { get; set; }
        public string TitleTagForSEO { get; set; }
        public string TitleText { get; set; }
        public string ProductDetailText { get; set; }
    }
    public class ProductLanguageImageDetailModel
    {
        public int Id { get; set; }
        public int? ProductLanguageId { get; set; }
        public ProductLanguageModel ProductLanguage { get; set; }

        public string Src { get; set; }
        public string Alt { get; set; }
    }
    public class ProductLanguageProductDetailModel
    {
        public int Id { get; set; }
        public int? ProductLanguageId { get; set; }
        public ProductLanguageModel ProductLanguage { get; set; }
        public int? Priority { get; set; }
        public string Header { get; set; }
        public string Content { get; set; }
    }
    public class ProductLanguageDescriptionDetailModel
    {
        public int Id { get; set; }
        public int? ProductLanguageId { get; set; }
        public ProductLanguageModel ProductLanguage { get; set; }

        public string Title { get; set; }
        public string Content { get; set; }
    }
    public class ProductLanguageReviewDetailModel
    {
        public int Id { get; set; }
        public int? ProductLanguageId { get; set; }
        public ProductLanguageModel ProductLanguage { get; set; }

        public string ImageUrl { get; set; }
        public string Title { get; set; }
        public string Detail { get; set; }
        public float RateScore { get; set; }
        public string RateDate { get; set; }
    }
    public class ProductLanguageLinkStoreModel
    {
        public int Id { get; set; }
        public int? ProductLanguageId { get; set; }
        public ProductLanguageModel ProductLanguage { get; set; }

        public string Text { get; set; }
        public string Link { get; set; }
    }
}
