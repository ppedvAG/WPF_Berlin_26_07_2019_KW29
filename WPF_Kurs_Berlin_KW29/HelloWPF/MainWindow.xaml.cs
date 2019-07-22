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

namespace HelloWPF
{
    //Die Main()-Methode des Projekts, welche beim Start der Applikation aufgerufen wird und definiert, welches Fenster zuerst aufgerufen wird
    //befindet sich in der App.g.i.cs - Datei (dies ist die zweite partial-Datei der App-Klasse)
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            //Hier wird ein neuer Button über den CodeBehind erzeugt und durch Hinzufügen zu der Children-Liste des 
            //splMain-Stackpanels in die GUI gezeichnet 
            Button btnTest = new Button();
            btnTest.Content = "Ich bin ein CodeBehind-Button";
            btnTest.Width = 100;
            SplMain.Children.Add(btnTest);
        }
    }
}
