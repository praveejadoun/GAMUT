//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Gamut.WebAPI.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class FinancialResultType
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public FinancialResultType()
        {
            this.FinancialResultHeaders = new HashSet<FinancialResultHeader>();
        }
    
        public int TypeID { get; set; }
        public string TypeName { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public Nullable<bool> IsFinancialData { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<FinancialResultHeader> FinancialResultHeaders { get; set; }
    }
}
