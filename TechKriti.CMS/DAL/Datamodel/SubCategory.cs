//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAL.Datamodel
{
    using System;
    using System.Collections.Generic;
    
    public partial class SubCategory
    {
        public SubCategory()
        {
            this.SelectionCriterias = new HashSet<SelectionCriteria>();
        }
    
        public int Id { get; set; }
        public string Code { get; set; }
        public string Name { get; set; }
        public Nullable<int> CategoryId { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
    
        public virtual Category Category { get; set; }
        public virtual ICollection<SelectionCriteria> SelectionCriterias { get; set; }
    }
}
