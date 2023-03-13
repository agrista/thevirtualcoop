using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace VFWholesaleMVC.Models
{
    public class ApiResponseViewModel
    {
        public bool IsSuccess { get; set; }
        public string ErrorMessage { get; set; }
        public dynamic Data { get; set; }
    }

    public class CreateQuoteRequestModel
    {

        public string ExternalRefNo { get; set; }
        public int ProductID { get; set; }
        public int SalesTermID { get; set; }
        public string DeliveryGPSCoordinates { get; set; }
        public int SupplierPointID { get; set; }
        public decimal Units { get; set; }
    }

    public class QuoteResponseModel
    {
        public List<APIQuoteOpco> QuoteOpco { get; set; }
        public List<APIQuoteBody> QuoteBody { get; set; }
        public List<APIQuoteDetail> QuoteDetail { get; set; }
        public List<APIQuoteBankingDetail> QuoteBankingDetail { get; set; }
        public List<APIQuoteNote> QuoteNote { get; set; }
    }

    public class APIQuoteOpco
    {
        public int QuoteId { get; set; }
        public Stream QuoteLogo { get; set; }
        public string OpcoName { get; set; }
        public string OpcoEmailAddress { get; set; }
        public string OpcoWebAddress { get; set; }
        public string OpcoLoginURL { get; set; }
        public string OpcoVatNumber { get; set; }
        public string OpcoRegNumber { get; set; }
        public string OpcoWholesaleLicenceNumber { get; set; }
        public string OpcoStreetAddress { get; set; }
        public string OpcoPostalAddress { get; set; }
        public string OpcoQueryContact { get; set; }        
    }

    public class APIQuoteBody
    {
        public int QuoteID { get; set; }
        public string StatusName { get; set; }
        public string ClientName { get; set; }
        public string InternalRefType { get; set; }
        public string InternalRefNo { get; set; }
        public string ExternalRefType { get; set; }
        public string ExternalRefNo { get; set; }
        public string SalesTerms { get; set; }
        public string PaymentTerms { get; set; }
        public string QuoteTypeName { get; set; }
        public string QuoteDate { get; set; }
        public string AgencyName { get; set; }
        public string AgentName { get; set; }
        public string Identification_or_Reg_Number { get; set; }
    } 
    
    public class APIQuoteDetail
    {
        public int QuoteId { get; set; }
        public int QuoteDetailId { get; set; }
        public int ProductID { get; set; }
        public string ProductName { get; set; }
        public string Address { get; set; }
        public string Town{ get; set; }
        public decimal Units { get; set; }
        public decimal GridPricePerUnit { get; set; }
        public decimal GridDiscount { get; set; }
        public decimal PricePerUnit { get; set; }
        public decimal TotalPrice { get; set; }

    }

    public class APIQuoteBankingDetail
    {
        public int QuoteId { get; set; }
        public string BankName { get; set; }
        public string BankBranchCode { get; set; }
        public string BankBranchName { get; set; }
        public string AccountNumber { get; set; }

    }

    public class APIQuoteNote
    {
        public int QuoteId { get; set; }
        public string Note { get; set; }
        public string NoteOrderSequence { get; set; }

    }

}