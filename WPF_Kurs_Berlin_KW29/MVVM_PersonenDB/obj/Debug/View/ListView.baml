   M S B A M L   `   `   `  ����J  FMVVM_PersonenDB, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:MVVM_PersonenDB.ViewMVVM_PersonenDB.View  5   	   1clr-namespace:MVVM_PersonenDBMVVM_PersonenDB  5   	   #    MVVM_PersonenDB.View.ListView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:MVVM_PersonenDB.View     5   	   .rootclr-namespace:MVVM_PersonenDB     5   	   c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	     � Title$  Personen Datenbank��5
   	   $	��450��6$   $��692.711��61      
StyWndMain#��[  5   	    � 	Resources 5      '   !MVVM_PersonenDB.StringToBrushConv  string2brush��%   &	         5   
   6!   5      .��5      ]� .+�5   
   o� $	��Top=�6   
������ .@�5      m� $��Datei��6   .@�5      m� $��Beenden��6    m� Command 6,   �� *SchliessenCmd+5      m� 5      $��
Bearbeiten��6   5      � 5   
   $��Bottom=�6   $��Right=�5      $��
10,0,10,10q�5      .+�5      �� -   5         ��Name$ BtnNeu��5      $��Neue Person��5      ��5      �� *NeuCmd+�� 5      -   5        $ 
BtnÄndern��5      $��Ändere Person��5      ��5      �� *
AendernCmd+��5      ��  �� ElementName$ DgdPersonen�� �� Path$ SelectedItem��� 5       -   5        $ BtnLöschen��5       $��Lösche Person��5!      ��5"      �� *LoeschenCmd+��5#      �� $ DgdPersonen��$ SelectedItem�5$      &   System.Windows.Controls.DataGrid  5%   
   -   5          Name$ DgdPersonen��5%      $��10q�5&         AutoGenerateColumns .   J� IsManipulationEnabled .  	   
IsReadOnly	 . ��5'      �� *PersonenListe+.  (System.Windows.Interactivity.Interaction
   Triggers
 5+      /  )System.Windows.Interactivity.EventTrigger  5,         	EventName$ MouseDoubleClick��6!   .  (System.Windows.Interactivity.TriggerBase   Actions. 5-      6  0System.Windows.Interactivity.InvokeCommandAction     Command 6,   �� *
AendernCmd+   CommandParameter 5.   ,   �� $ DgdPersonen��$ SelectedItem�5/         Columns 52      0  *System.Windows.Controls.DataGridTextColumn  53      ,  &System.Windows.Controls.DataGridColumn   Header$ Vorname��6%      Width5	  /System.Windows.Controls.DataGridLengthConverter$ *	 6R   1
  +System.Windows.Controls.DataGridBoundColumn 
  Binding 66   �� *	Vorname+6R     54      $ Nachname��6%   $ *	 6T    67   �� *
Nachname+6T     55      $ 
Geschlecht��6%   $
 Auto	 6X    69   �� *
Geschlecht+6X     56      $ Geburtsdatum��6%   $
 Auto	 6u    6;   �� *Geburtsdatum+ �� StringFormat$ 
dd.MM.yyyy��6u   4  .System.Windows.Controls.DataGridCheckBoxColumn  57      $ Verheiratet��6)   $
 Auto	 6^    6>   �� *Verheiratet+6^     58      $ Lieblingsfarbe��6%   $
 Auto	 6`    6=   �� *Lieblingsfarbe+   	CellStyle 59      �� 5:       �� 
TargetType*  $System.Windows.Controls.DataGridCell"  6    .�5;      ��  �� Property � �� �� Value 6;   �� *Lieblingsfarbe+ �� 	Converter# [ 5<      5>       � ContextMenu 5A      �� 5B      .@�5C      m� $��Neue Person��6    5D      �� *NeuCmd+m� 5E      $��Ändere Person��6    5F      �� *
AendernCmd+ m� CommandParameter 5G      �� $ DgdPersonen��$ SelectedItem�m� 5H      $��Lösche Person��6    5I      �� *LoeschenCmd+ 5J      �� $ DgdPersonen��$ SelectedItem�5K      5N      5O      5P      