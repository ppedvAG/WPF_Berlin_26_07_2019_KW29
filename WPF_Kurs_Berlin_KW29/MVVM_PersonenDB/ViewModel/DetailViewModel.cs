using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace MVVM_PersonenDB.ViewModel
{
    public class DetailViewModel
    {
        public Model.Person AktuellePerson { get; set; }

        public CustomCommand OkCmd { get; set; }
        public CustomCommand AbbruchCmd { get; set; }

        public DetailViewModel()
        {
            this.OkCmd = new CustomCommand
                (
                    para => true,
                    para =>
                    {
                        String ausgabe = AktuellePerson.Vorname + " " + AktuellePerson.Nachname + " (" + AktuellePerson.Geschlecht + ")\nGeboren am " + AktuellePerson.Geburtsdatum.ToLongDateString() + "\n";
                        if (AktuellePerson.Verheiratet) ausgabe += "Verheiratet";
                        else ausgabe += "Nicht Verheiratet";
                        ausgabe += "\nLieblingsfarbe: " + AktuellePerson.Lieblingsfarbe;
                        ausgabe += "\n\nEingaben übernehmen?";

                        if (MessageBox.Show(ausgabe, AktuellePerson.Vorname + " " + AktuellePerson.Nachname, MessageBoxButton.YesNo, MessageBoxImage.Information) == MessageBoxResult.Yes)
                        {
                            (para as View.DetailView).DialogResult = true;
                            (para as View.DetailView).Close();
                        }
                    }
                );
            this.AbbruchCmd = new CustomCommand
                (
                    para => true,
                    para => (para as View.DetailView).Close()
                );
        }
    }
}
