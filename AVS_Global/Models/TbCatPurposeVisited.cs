﻿using System;
using System.Collections.Generic;

#nullable disable

namespace AVS_Global.Models
{
    public partial class TbCatPurposeVisited
    {
        public int IdPurpose { get; set; }
        public string DescPurpose { get; set; }
        public bool? BitActive { get; set; }
        public int? IdCountry { get; set; }
    }
}
