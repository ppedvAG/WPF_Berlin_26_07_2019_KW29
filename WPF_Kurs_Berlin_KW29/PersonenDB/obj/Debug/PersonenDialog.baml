   M S B A M L   `   `   `  ����E  APersonenDB, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:PersonenDB
PersonenDB  5   	       PersonenDB.PersonenDialog   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:PersonenDB     5   	     � Title$  Neue Person��5   	   $��329.999��6   $	��270��6.   $��333.499��6>    � Topmost .    
StyWndMain#��[  5	       � 	Resources 5        OdpColorsProperty S� ObjectInstance!  System.Windows.Media.Colors S� 
MethodName$  PersonenDB.EnumToBoolConverter  	enum2bool  CtpError �� Orientation ��Name ��Name  DoubleGlobalFontSize � AllowsTransparency	 � PlacementTarget
 �� ElementName �� Path �� Mode �� Padding��%�  &	       &	 9     &	 L     7  7  S� 5   
   "  5      $ GetProperties��5        5   
   6$   �� 5   
   .R�5      �� .+�5      �� $ 
Horizontal=�6   .+�5      �� $ BdrAep��6C   
���  ��$��1q�6/   ._�5      �� $	 Aep��64   5      �� 5      $��!��6    
���  ��8��  $	��3,0q�5       $
��Bold"�6-   $��Center=�6?   � 5       . $
��Fade=�66   $��Bottom=�5      	 5      �� $
 BdrAep����5      �� $	
 Aep��$  AdornedElement.IsMouseOver�$ OneWay=�.��5      �� 
�������
���  ��$ 2q�5    H   8�� ��5   $   �� $	
 Aep��$8 2AdornedElement.(Validation.Errors)[0].ErrorContent�5    T   5!      5#      5$      5%      5'      .��5-      � $��10q�6    � ColumnDefinitions 5.   
   �� 5/      $
��Auto �6   �� 50      $��* �6    � RowDefinitions 52   
   �� 53      $
��Auto �6   �� 54      $
��Auto �6   �� 55      $
��Auto �6   �� 56      $
��Auto �6   �� 57      $
��Auto �6   �� 58      $
��Auto �6   �� 59      $��* �6   �� 5:      $
��Auto �6   .+�5=   
   �� $��0��6   $��0��6!   $��Vorname��61   �� 5>   
   $��1��6   $��0��6!   $��Nachname��61   �� 5?   
   $��2��6   $��0��6!   $��
Geschlecht��61   $	��Top=�5@      $��0,2,5,0q�6,   �� 5A   
   $��3��6   $��0��6!   $��Geburtsdatum��61   �� 5B   
   $��4��6   $��0��6!   $��Verheiratet��61   �� 5C   
   $��5��6   $��0��6!   $��Lieblingsfarbe��61   �� 5E   
   -   5         ��Name$ 
TbxVorname��5E      $��0��5F      $��1��6    =� ErrorTemplate# [ 5H      ��5G      �� *	Vorname+ �� ValidatesOnDataErrors .  �� UpdateSourceTrigger$ PropertyChanged=�5H      �� 5I   
   -   5        $ TbxNachname��5I      $��1��5J      $��1��6   # [ 5L      ��5K      �� *
Nachname+ . $ PropertyChanged=�5L      �� 5M   
   $��2��6   $��1��6"   $��2q�5N      .+�5O      	� -   5         	�Name$ RbtGeschlechtM��5O      $��M��5P       	� 	GroupName$ RbgGeschlecht��5Q       d� 	IsChecked 5R      �� *
Geschlecht+ �� 	Converter# [    PersonenDB.Gender   	Männlich �� ConverterParameter# Z 	� 5S      -   5        $ RbtGeschlechtW��5S      $��W��5T      $ RbgGeschlecht��5U       5V      �� *
Geschlecht+# [    Weiblich# Z 	� 5W      -   5        $ RbtGeschlechtD��5W      $��D��5X      $ RbgGeschlecht��5Y       5Z      �� *
Geschlecht+# [    Divers# Z 5[      (  "System.Windows.Controls.DatePicker  5\   
   -   5          Name$ DtpGeburtsdatum��5\      $��3��5]      $��1��6"   # [ 5_         SelectedDate 5^      �� *Geburtsdatum+ . $ PropertyChanged=�5_      �� 5`   
   -   5         ��Name$ ChbVerheiratet��5`      $��4��5a      $��1��6     5b      �� *Verheiratet+�� 5c   
   -   5         ��Name$ CbbLieblingsfarbe��5c      $��5��5d      $��1��6      �� SelectedValuePath$
  Name��5f      # [ 5h      ��5e      �� ! �� Source#! [ " �� SelectedValue" 5g      �� *Lieblingsfarbe+ . $ PropertyChanged=���5j      �� 5k      .R�5l      �� $ 
Horizontal=�6!   .+�5m      �� $��10��6:   $��10��6E   $	��5,0q�6Q   ��6$   �� *Name+6Q   �� 5n      ��6$   �� *Name+5o      5p      5{      � 5}   
   $��7��6   $��0��6!   $��2��61   $��Right=�5~      $��2q�60   .+�5      �� -	   5        # ��Name$# BtnOk��5      $��OK��5�      ��5�      �� 5�      $ �� 
TargetType"$ ��6   .�5�      �� % �� Property% � {�& �� Value& .  66   �� 5�      % � ��$	& 120��62   �� 5�      % � ��$& 5,5,0,0q�63   �� 5�      % � ��#& [ 65   ' �� Triggers' 5�      ^� 5�      ( ^� 
Conditions( 5�   "   �� 5�   &   ) �� Binding) 60   �� $
 
TbxVorname��$ (Validation.HasError)�* �� Value	* False6w   �� 5�   &   ) 60   �� $
 TbxNachname��$ (Validation.HasError)�	* False6x   �� 5�   &   ) 60   �� $
 DtpGeburtsdatum��$ (Validation.HasError)�	* False6|   �� 5�   &   ) 60   �� $
 CbbLieblingsfarbe��$ (Validation.HasError)�	* False6~   .0�5�   "   �� % � {�& . 6>   5�      5�      5�      �� 5�      -
   5        $# BtnAbbrechen��5�      $��	Abbrechen��5�      5�      5�      5�      5�      