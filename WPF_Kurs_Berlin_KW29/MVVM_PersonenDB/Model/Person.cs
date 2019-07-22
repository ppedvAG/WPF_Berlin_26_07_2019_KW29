using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media;

namespace MVVM_PersonenDB.Model
{
    public enum Gender { Männlich, Weiblich, Divers}
    public class Person : INotifyPropertyChanged, IDataErrorInfo
    {
        #region Statische Member
        public static ObservableCollection<Person> PersonenListe { get; set; } = new ObservableCollection<Person>();

        public static void LadePersonenAusDb()
        {
            PersonenListe.Add(new Person() { Vorname = "Anna", Nachname = "Meier", Geburtsdatum = new DateTime(1989, 3, 15), Verheiratet = false, Geschlecht = Gender.Weiblich, Lieblingsfarbe = Colors.DarkOrange });
            PersonenListe.Add(new Person() { Vorname = "Hugo", Nachname = "Schmidt", Geburtsdatum = new DateTime(1975, 5, 12), Verheiratet = true, Geschlecht = Gender.Männlich, Lieblingsfarbe = Colors.LightPink });
            PersonenListe.Add(new Person() { Vorname = "Otto", Nachname = "Müller", Geburtsdatum = new DateTime(2002, 12, 13), Verheiratet = true, Geschlecht = Gender.Divers, Lieblingsfarbe = Colors.Violet });
            PersonenListe.Add(new Person() { Vorname = "Maria", Nachname = "Fischer", Geburtsdatum = new DateTime(1996, 1, 2), Verheiratet = false, Geschlecht = Gender.Weiblich, Lieblingsfarbe = Colors.Black });
        } 
        #endregion

        #region Properties
        public event PropertyChangedEventHandler PropertyChanged;

        private string vorname;
        public string Vorname
        {
            get { return vorname; }
            set { vorname = value; PropertyChanged?.Invoke(this, new PropertyChangedEventArgs("Vorname")); }
        }

        private string nachname;
        public string Nachname
        {
            get { return nachname; }
            set { nachname = value; PropertyChanged?.Invoke(this, new PropertyChangedEventArgs("Nachname")); }
        }

        private Gender geschlecht;
        public Gender Geschlecht
        {
            get { return geschlecht; }
            set { geschlecht = value; PropertyChanged?.Invoke(this, new PropertyChangedEventArgs("Geschlecht")); }
        }

        private DateTime geburtsdatum;
        public DateTime Geburtsdatum
        {
            get { return geburtsdatum; }
            set { geburtsdatum = value; PropertyChanged?.Invoke(this, new PropertyChangedEventArgs("Geburtsdatum")); }
        }

        private bool verheiratet;
        public bool Verheiratet
        {
            get { return verheiratet; }
            set { verheiratet = value; PropertyChanged?.Invoke(this, new PropertyChangedEventArgs("Verheiratet")); }
        }

        private Color lieblingsfarbe;
        public Color Lieblingsfarbe
        {
            get { return lieblingsfarbe; }
            set { lieblingsfarbe = value; PropertyChanged?.Invoke(this, new PropertyChangedEventArgs("Lieblingsfarbe")); }
        }

        public string Error
        {
            get { return ""; }
        }

        public string this[string columnName]
        {
            get
            {
                switch (columnName)
                {
                    case nameof(Vorname):
                        if (Vorname.Length <= 0 || Vorname.Length > 50) return "Bitte geben Sie Ihren Vornamen ein";
                        if (!Vorname.All(x => char.IsLetter(x))) return "Der Vorname darf nur Buchstaben enthalten";
                        break;

                    case nameof(Nachname):
                        if (Nachname.Length <= 0 || Nachname.Length > 50) return "Bitte geben Sie Ihren Nachnamen ein";
                        if (!Nachname.All(x => char.IsLetter(x))) return "Der Nachname darf nur Buchstaben enthalten";
                        break;

                    case nameof(Geburtsdatum):
                        if (Geburtsdatum > DateTime.Now) return "Das Geburtsdatum darf nicht in der Zukunft liegen";
                        if (DateTime.Now.Year - Geburtsdatum.Year > 150) return "Das Geburtsdatum darf nicht mehr als 150 Jahre in der Vergangenheit liegen";
                        break;

                    case nameof(Lieblingsfarbe):
                        if (Lieblingsfarbe.ToString().Equals("#00000000")) return "Wähle eine Farbe aus";
                        break;

                    default:
                        break;
                }

                return "";
            }
        } 
        #endregion

        public Person()
        {
            this.Vorname = "";
            this.Nachname = "";
            this.Geburtsdatum = DateTime.Now;
            //this.Verheiratet = true;
            //this.Lieblingsfarbe = Colors.Green;
            //this.Geschlecht = Gender.Weiblich;
        }

        public Person(Person altePerson)
        {
            this.Vorname = altePerson.Vorname;
            this.Nachname = altePerson.Nachname;
            this.Geschlecht = altePerson.Geschlecht;
            this.Geburtsdatum = new DateTime(altePerson.Geburtsdatum.Year, altePerson.Geburtsdatum.Month, altePerson.Geburtsdatum.Day);
            this.Verheiratet = altePerson.Verheiratet;
            this.Lieblingsfarbe = altePerson.Lieblingsfarbe;
        }

    }
}
