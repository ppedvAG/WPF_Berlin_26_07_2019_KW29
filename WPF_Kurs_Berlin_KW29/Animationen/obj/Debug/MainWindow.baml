   M S B A M L   `   `   `  ����F  BAnimationen, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:AnimationenAnimationen  5   	       Animationen.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:Animationen     5   	     � Title$  
MainWindow��5   	   $	��450��6   $��289.213��6)   .��5	      �� -   5         ��Name$ CvsMain��5	      
�������.+�5
   
   �� $%��Möchtest du mehr Gehalt haben?��6    �� Left$ 50��6:   �� 5   
   -   5         ��Name$ BtnJa��5      $��	Ja, klar!��5      $ 20��5      
 �� Top$ 50��5       � Triggers 5      :� 5       :� RoutedEvent$ 
MouseEnter��6   .[�5      �� .��5      �� .��5      W�  �� 
TargetName$ BtnJa��6.    �� TargetProperty$ (Canvas.Top)�5   .   	 W� From$	 50X�5   .   	
 W� To$	
 400X�5   .    g� Duration$ 0:0:0.5D�5   .    g� AutoReverse . 5   .   5      5      5      5      �� 5!   
   $��Ändere Farbe��6   $	 100��6(   $	 100��6:    5"      :� 5#      $ PreviewMouseDown��6   .[�5$      �� .��5%      �� .��5&      �� $ CvsMain��6-   $( "Background.(SolidColorBrush.Color)�5'   -    �� From$ LightYellowX�5(   -   	 �� To$ 
DarkVioletX�5)   -    .  g� RepeatBehavior$ 0:0:20��5+   -   $ 0:0:2D�5,   -   5-      5.      5/      51      53      54      