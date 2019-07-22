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

namespace Uebung_Textbox
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void BtnCancel_Click(object sender, RoutedEventArgs e)
        {
            //Fenster schließen
            this.Close();
            //Applikation beenden
            Application.Current.Shutdown();
        }

        private void BtnOk_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show(TbxInput.Text, "Textausgabe", MessageBoxButton.YesNo, MessageBoxImage.Error) == MessageBoxResult.Yes)
                MessageBox.Show("Du hast auf Ja geklickt!");
        }

        private void TbxInput_GotFocus(object sender, RoutedEventArgs e)
        {
            (sender as TextBox).SelectAll();
        }
    }
}
