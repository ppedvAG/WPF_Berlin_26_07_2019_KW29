using System;
using System.Collections.Generic;
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

namespace PersonenDB
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class PersonenDialog : Window
    {
        public Person AktuellePerson { get; set; }

        public PersonenDialog()
        {
            InitializeComponent();

            AktuellePerson = new Person();

            this.DataContext = this.AktuellePerson;
        }

        private void BtnOk_Click(object sender, RoutedEventArgs e)
        {
            //Person person = (this.DataContext as Person);

            //MessageBox.Show($"{person.Vorname} {person.Nachname}\n{person.Geburtsdatum.ToShortDateString()} {person.Geschlecht}\n{person.Lieblingsfarbe}");

            this.DialogResult = true;

            this.Close();
        }

        private void BtnAbbrechen_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
