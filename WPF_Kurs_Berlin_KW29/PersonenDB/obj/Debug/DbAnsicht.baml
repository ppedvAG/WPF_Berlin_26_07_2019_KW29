   M S B A M L   `   `   `  ����E  APersonenDB, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:PersonenDB
PersonenDB  5   	       PersonenDB.DbAnsicht   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:PersonenDB     5   	     � Title$  
PersonenDB��5   	   $��458.163��6   $��644.898��6-      
StyWndMain#��[  5	   
    � 	Resources 5      )  #PersonenDB.SelectionToBoolConverter  selection2bool��%   &	         5   
   6)   5      .��5      ]� .+�5   
   o� $	��Top=�6   
������ .@�5      m� $��Datei��6   .@�5      m� $��Beenden��6   5      m� 5      $��
Bearbeiten��6   5      � 5   
   $��Bottom=�6   $��Right=�5      $��
10,0,10,10q�5      .+�5      �� -   5         ��Name$ BtnNeu��5      $��Neue Person��5      5      �� 5      -   5        $ 
BtnÄndern��5      $��Ändere Person��5      {�5      ��  �� ElementName$ DgdPersonen�� �� Path$ SelectedItem� �� 	Converter# [ �� 5       -   5        $ BtnLöschen��5       $��Lösche Person��5!      {�5#      �� $ DgdPersonen��$ SelectedItem�# [ 5$      &   System.Windows.Controls.DataGrid  5%   
   -   5          Name$ DgdPersonen��5%      $��10q�5&         AutoGenerateColumns .   J� IsManipulationEnabled .  	   
IsReadOnly	 . ��5'      �� *PersonenListe+
   Columns
 5+      0  *System.Windows.Controls.DataGridTextColumn  5,      ,  &System.Windows.Controls.DataGridColumn   Header$ Vorname��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6R   1  +System.Windows.Controls.DataGridBoundColumn   Binding 66   �� *	Vorname+6R     5-      $ Nachname��6%   $ * 6T    67   �� *
Nachname+6T     5.      $ 
Geschlecht��6%   $
 Auto 6X    69   �� *
Geschlecht+6X     5/      $ Geburtsdatum��6%   $
 Auto 6u    6;   �� *Geburtsdatum+ �� StringFormat$ 
dd.MM.yyyy��6u   4  .System.Windows.Controls.DataGridCheckBoxColumn  50      $ Verheiratet��6)   $
 Auto 6^    6>   �� *Verheiratet+6^     51      $ Lieblingsfarbe��6%   $
 Auto 6`    6=   �� *Lieblingsfarbe+6`    � ContextMenu 54      �� 55      .@�56      m� -   5        $��Neue Person��56      64   m� 57      -   5        $��Ändere Person��57      {�58      �� $ DgdPersonen��$ SelectedItem�# [ m� 59      -   5        $��Lösche Person��59      {�5:      �� $ DgdPersonen��$ SelectedItem�# [ 5;      5>      5?      5@      