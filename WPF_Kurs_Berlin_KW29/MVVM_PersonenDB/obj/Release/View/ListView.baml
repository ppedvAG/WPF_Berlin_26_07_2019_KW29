   M S B A M L   `   `   `  ���� J  FMVVM_PersonenDB, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:MVVM_PersonenDB.ViewMVVM_PersonenDB.View  1clr-namespace:MVVM_PersonenDBMVVM_PersonenDB  #    MVVM_PersonenDB.View.ListView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     4local"clr-namespace:MVVM_PersonenDB.View     .rootclr-namespace:MVVM_PersonenDB     c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity    � Title$  Personen Datenbank��$	��450��$��692.711��   
StyWndMain#��[   � 	Resources '   !MVVM_PersonenDB.StringToBrushConv  string2brush��%   &	         .��]� .+�o� $	��Top=�
������ .@�m� $��Datei��.@�m� $��Beenden�� m� Command �� *SchliessenCmd+m� $��
Bearbeiten��� $��Bottom=�$��Right=�$��
10,0,10,10q�.+��� -    ��Name$ BtnNeu��$��Neue Person������ *NeuCmd+�� -   $ 
BtnÄndern��$��Ändere Person������ *
AendernCmd+����  �� ElementName$ DgdPersonen�� �� Path$ SelectedItem��� -   $ BtnLöschen��$��Lösche Person������ *LoeschenCmd+���� $ DgdPersonen��$ SelectedItem�&   System.Windows.Controls.DataGrid  -     Name$ DgdPersonen��$��10q�   AutoGenerateColumns .   J� IsManipulationEnabled .  	   
IsReadOnly	 . ���� *PersonenListe+.  (System.Windows.Interactivity.Interaction
   Triggers
 /  )System.Windows.Interactivity.EventTrigger     	EventName$ MouseDoubleClick��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *
AendernCmd+   CommandParameter �� $ DgdPersonen��$ SelectedItem�   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Vorname��   Width5	  /System.Windows.Controls.DataGridLengthConverter$ *	 1
  +System.Windows.Controls.DataGridBoundColumn 
  Binding �� *	Vorname+  $ Nachname��$ *	  �� *
Nachname+  $ 
Geschlecht��$
 Auto	  �� *
Geschlecht+  $ Geburtsdatum��$
 Auto	  �� *Geburtsdatum+ �� StringFormat$ 
dd.MM.yyyy��4  .System.Windows.Controls.DataGridCheckBoxColumn  $ Verheiratet��$
 Auto	  �� *Verheiratet+  $ Lieblingsfarbe��$
 Auto	  �� *Lieblingsfarbe+   	CellStyle ��  �� 
TargetType*  $System.Windows.Controls.DataGridCell"  .���  �� Property � �� �� Value �� *Lieblingsfarbe+ �� 	Converter# [  � ContextMenu �� .@�m� $��Neue Person�� �� *NeuCmd+m� $��Ändere Person�� �� *
AendernCmd+ m� CommandParameter �� $ DgdPersonen��$ SelectedItem�m� $��Lösche Person�� �� *LoeschenCmd+ �� $ DgdPersonen��$ SelectedItem�