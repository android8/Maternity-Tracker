﻿// Originally submitted to OSEHRA 2/21/2017 by DSS, Inc. 
// Authored by DSS, Inc. 2014-2017

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace VA.Gov.Artemis.Commands.Vpr.Data
{
    [Serializable]
    public class FatherOfFetus: FamilyMember
    {
        public override string Relationship
        {
            get
            {
                return "FOF";
            }
        }
    }
}
