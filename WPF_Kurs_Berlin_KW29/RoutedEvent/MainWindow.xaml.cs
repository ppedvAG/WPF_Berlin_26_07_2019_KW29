﻿using System;
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

namespace RoutedEvent
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

        private void SP_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            TblOutput.Text += (sender as StackPanel).Name + "Tunnel\n";
        }

        private void SP_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            TblOutput.Text += (sender as StackPanel).Name + "Bubble\n";

            if ((sender as StackPanel).Name == "Green") e.Handled = true;
        }
    }
}
