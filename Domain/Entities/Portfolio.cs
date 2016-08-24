using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Domain.Entities;

namespace Domain.Entities
{
    public class Portfolio
    {
        public string PortfolioId { get; set; }
        public string PortolioName { get; set; }
        public Type Type { get; set; }

        public double ExchangeRate { get; set; }

        public double NetAssertValue { get { return getNAV(); } }

        private List<SecurityLine> securityHoldList = new List<SecurityLine>();

        
        private double getNAV()
        {
            //throw new NotImplementedException();
            //will calculate the value of this protfolio based on its positions
            return 0;
        }

        public bool Trade(Security security, double price, int position, bool marketPrice)
        {
            // increase or decrease security position, or add new security
            // persist 
            return false;
        }

        public void AddSecurity(Security security, int position)
        {
            
        }

        public void RemoveSecurity(Security security)
        {
            
        }

        public void ChangeSecurity(Security security, int positionToChange)
        {
            
        }

        
    }

    public class SecurityLine
    {
        public Security Security { get; set; }
        public int Position { get; set; }
        public double Weight { get; set; }
    }

    public enum Type
    {
        Long,
        Short
    }

    public enum TradeType
    {
        BuyLong,
        SellLong,
        SellShort,
        ButToCover
    }
}