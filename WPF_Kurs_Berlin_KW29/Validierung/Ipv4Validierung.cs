using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace Validierung
{
    //ValidationRules müssen von der Klasse ValidationRule erben und die abstrakte Methode Validate() implementieren.
    //Diese liefert ein ValidationResult zurück, je nachdem, ob die Regel erfüllt wurde oder nicht.
    public class Ipv4Validierung : ValidationRule
    {
        public override ValidationResult Validate(object value, CultureInfo cultureInfo)
        {
            if(Regex.IsMatch(value.ToString(), @"^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"))
            {
                return ValidationResult.ValidResult;
            }
            else
            {
                return new ValidationResult(false, "Bitte gib eine IPv4-Adresse ein");
            }


        }
    }
}
