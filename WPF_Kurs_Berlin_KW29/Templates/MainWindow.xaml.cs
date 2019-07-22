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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Templates
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public ObservableCollection<Person> PersonenListe { get; set; }

        public MainWindow()
        {
            InitializeComponent();

            this.PersonenListe = new ObservableCollection<Person>();

            this.PersonenListe.Add(new Person() { Nachname = "Schmidt", Vorname = "Maria", Alter = 65 });
            this.PersonenListe.Add(new Person() { Nachname = "Meier", Vorname = "Otto", Alter = 23 });
            this.PersonenListe.Add(new Person() { Nachname = "Jürgens", Vorname = "Anna", Alter = 45 });

            //Setzen des DataContext  auf das Windows (d.h. der DataContext der Xaml-Elemente sind die Properties der Window-Klasse im CodeBehind)
            this.SplListBox.DataContext = this;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Du hast geklickt");
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            (SplDataContext.DataContext as Person).Alter++;
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            this.PersonenListe.Add(new Person());
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            if (LbxPersonen.SelectedItem is Person)
                this.PersonenListe.RemoveAt(LbxPersonen.SelectedIndex);
        }
    }
}
