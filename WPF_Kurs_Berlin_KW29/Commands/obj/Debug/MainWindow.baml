   M S B A M L   `   `   `  ����C  ?Commands, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:CommandsCommands  5   	       Commands.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:Commands     5   	   -   5          �Name$  WndMain��5	   	    � Title$ 
MainWindow��5   	   $	��450��6   $��234.957��6)    J� CommandBindings 5      )  #System.Windows.Input.CommandBinding  5   
      Command$	 Cut��6     5   
   $
 Copy��6     5   
   $ Paste��6   .��5      �� .+�5   
   �� $	��200��6    �� AcceptsReturn . .��64    � ContextMenu 5      �� 5      .@�5      m�  m� Command$	 Cut��6   m� 5      $
 Copy��6   m� 5      $ Paste��6   5      .��5   #   5      �� 5   
   $��Schließe Fenster��6   ��6,   �� *
CloseCmd+��6I   ��  �� ElementName$ WndMain�� �� UpdateSourceTrigger$ PropertyChanged=�5      5      