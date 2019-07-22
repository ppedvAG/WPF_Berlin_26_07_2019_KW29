using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace MVVM_PersonenDB.ViewModel
{
    public class ListViewModel
    {
        public CustomCommand NeuCmd { get; set; }
        public CustomCommand AendernCmd { get; set; }
        public CustomCommand LoeschenCmd { get; set; }
        public CustomCommand SchliessenCmd { get; set; }
        public ObservableCollection<Model.Person> PersonenListe { get { return Model.Person.PersonenListe; } }

        public ListViewModel()
        {
            this.NeuCmd = new CustomCommand
                (
                    para => true,
                    para =>
                    {
                        View.DetailView neuePersonDialog = new View.DetailView();
                        neuePersonDialog.DataContext = new ViewModel.DetailViewModel();
                        (neuePersonDialog.DataContext as ViewModel.DetailViewModel).AktuellePerson = new Model.Person();

                        if (neuePersonDialog.ShowDialog() == true)
                            Model.Person.PersonenListe.Add((neuePersonDialog.DataContext as ViewModel.DetailViewModel).AktuellePerson);
                    }
                );

            this.AendernCmd = new CustomCommand
                (
                    para => para is Model.Person,
                    para =>
                    {
                        View.DetailView neuePersonDialog = new View.DetailView();
                        neuePersonDialog.DataContext = new ViewModel.DetailViewModel();
                        (neuePersonDialog.DataContext as ViewModel.DetailViewModel).AktuellePerson = new Model.Person(para as Model.Person);
                        (neuePersonDialog as View.DetailView).Title = "Ändere " + (para as Model.Person).Vorname + " " + (para as Model.Person).Nachname;

                        if (neuePersonDialog.ShowDialog() == true)
                            Model.Person.PersonenListe[Model.Person.PersonenListe.IndexOf(para as Model.Person)] = (neuePersonDialog.DataContext as ViewModel.DetailViewModel).AktuellePerson;
                    }
                );

            this.LoeschenCmd = new CustomCommand
                (
                    para => para is Model.Person,
                    para =>
                    {
                        if (MessageBox.Show($"Soll {(para as Model.Person).Vorname} {(para as Model.Person).Nachname} wirklich gelöscht werden?", "Person löschen?", MessageBoxButton.YesNo) == MessageBoxResult.Yes)
                            Model.Person.PersonenListe.Remove(para as Model.Person);
                    }
                );
            this.SchliessenCmd = new CustomCommand
                (
                    para => true,
                    para => Application.Current.Shutdown()
                );

        }


    }
}
