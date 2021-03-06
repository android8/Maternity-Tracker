﻿// Originally submitted to OSEHRA 2/21/2017 by DSS, Inc. 
// Authored by DSS, Inc. 2014-2017

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VA.Gov.Artemis.CDA.Common
{
    public class CdaAddressList: List<CdaAddress>
    {
        public AD[] ToADArray()
        {
            List<AD> returnList = new List<AD>();

            foreach (CdaAddress addr in this)
                returnList.Add(addr.ToAD());

            return returnList.ToArray(); 
        }
    }
}
