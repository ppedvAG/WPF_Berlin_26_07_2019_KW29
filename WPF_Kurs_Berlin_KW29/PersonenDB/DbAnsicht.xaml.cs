using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace PersonenDB
{
    /// <summary>
    /// Interaction logic for DbAnsicht.xaml
    /// </summary>
    public partial class DbAnsicht : Window
    {
        public ObservableCollection<Person> PersonenListe { get; set; }

        public DbAnsicht()
        {
            InitializeComponent();

            PersonenListe = new ObservableCollection<Person>();

            this.DataContext = this;
        }

        private void BtnNeu_Click(object sender, RoutedEventArgs e)
        {
            PersonenDialog personenDialog = new PersonenDialog();

            if (personenDialog.ShowDialog() == true)
                PersonenListe.Add(personenDialog.AktuellePerson);
        }

        private void BtnÄndern_Click(object sender, RoutedEventArgs e)
        {
            if (DgdPersonen.SelectedItem is Person)
            {
                PersonenDialog personenDialog = new PersonenDialog();
                personenDialog.AktuellePerson = new Person(DgdPersonen.SelectedItem as Person);
                personenDialog.DataContext = personenDialog.AktuellePerson;

                if (personenDialog.ShowDialog() == true)
                    PersonenListe[PersonenListe.IndexOf(DgdPersonen.SelectedItem as Person)] = personenDialog.AktuellePerson;
            }
        }

        private void BtnLöschen_Click(object sender, RoutedEventArgs e)
        {
            PersonenListe.Remove(DgdPersonen.SelectedItem as Person);
        }
    }
}
