using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Validierung
{
    //Für ValidatesOnDataErrors muss z.B. das Interface IDataErrorInfo implementiert werden. Dieses erfordert die Einbindung von zwei zusätzlichen
    public class Person : IDataErrorInfo
    {
        private string name;

        public string Name
        {
            get { return name; }
            set
            {
                //if (!value.All(delegate (char x) { return Char.IsLetter(x); }))

                if (!value.All(x => Char.IsLetter(x)))
                    throw new Exception("Bitte gib nur Buchstaben ein");
                else
                    name = value;
            }
        }

        private int alter;

        public int Alter
        {
            get { return alter; }
            set { alter = value; }
        }

        public string Error
        {
            get { return ""; }
        }

        //Diese Property wird zur Fehler- und Fehlermeldungsdefinition verwendet durch das Interface verwendet
        public string this[string columnName]
        {
            get
            {
                switch (columnName)
                {
                    case nameof(Alter):
                        if (Alter < 0 | Alter > 150) return "Bitte gib dein WAHRES Alter an";
                        break;

                    default:
                        break;
                }

                return "";
            }
        }
    }
}
