using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Domain.Entities
{
    public class Security
    {
        public string Ticker { get; }
        public string Name { get; }
        public double Price { get; set; }
    }
}