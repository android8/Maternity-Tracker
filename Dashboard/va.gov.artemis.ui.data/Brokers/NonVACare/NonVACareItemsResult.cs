﻿// Originally submitted to OSEHRA 2/21/2017 by DSS, Inc. 
// Authored by DSS, Inc. 2014-2017

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VA.Gov.Artemis.UI.Data.Models.NonVACare;
using VA.Gov.Artemis.UI.Data.Brokers.Common; 

namespace VA.Gov.Artemis.UI.Data.Brokers.NonVACare
{
    public class NonVACareItemsResult: BrokerOperationResult
    {
        public List<NonVACareItem> Items { get; set; }

        public int TotalResults { get; set; }

        public NonVACareItemsResult()
        {
            this.Items = new List<NonVACareItem>(); 
        }
    }
}
