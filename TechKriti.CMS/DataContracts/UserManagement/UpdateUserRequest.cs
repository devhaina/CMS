﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace Datacontracts.UserManagement
{
    [DataContract]
    public class UpdateUserRequest
    {
        [DataMember]
        public UserTypeDataContract UserToBeSaved { get; set; }
    }
}
