using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MVVM_PersonenDB.ViewModel
{
    public class StartViewModel : INotifyPropertyChanged
    {
        public CustomCommand LadeDbCmd { get; set; }
        public CustomCommand OeffneDbCmd { get; set; }
        public int AnzahlPersonen { get { return Model.Person.PersonenListe.Count; } }

        public StartViewModel()
        {
            this.LadeDbCmd = new CustomCommand
                (
                    para => this.AnzahlPersonen == 0,
                    para =>
                    {
                        Model.Person.LadePersonenAusDb();
                        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs("AnzahlPersonen"));
                    }
                );

            this.OeffneDbCmd = new CustomCommand
                (
                    para => this.AnzahlPersonen > 0,
                    para =>
                    {
                        View.ListView datenbankFenster = new View.ListView();
                        datenbankFenster.DataContext = new ListViewModel();

                        datenbankFenster.Show();
                        (para as View.StartView).Close();
                    }
                );
        }

        public event PropertyChangedEventHandler PropertyChanged;
    }
}
