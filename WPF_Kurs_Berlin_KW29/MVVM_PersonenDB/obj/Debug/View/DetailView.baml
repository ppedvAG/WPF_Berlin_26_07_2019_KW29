   M S B A M L   `   `   `  ����J  FMVVM_PersonenDB, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:MVVM_PersonenDB.ViewMVVM_PersonenDB.View  5   	   1clr-namespace:MVVM_PersonenDBMVVM_PersonenDB  5   	   =#clr-namespace:MVVM_PersonenDB.ModelMVVM_PersonenDB.Model  5   	   %    MVVM_PersonenDB.View.DetailView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:MVVM_PersonenDB.View     5   	   .rootclr-namespace:MVVM_PersonenDB     5   	   1m#clr-namespace:MVVM_PersonenDB.Model     5   	   -   5          �Name$  WndDetailView��5   	    � Title$ Neue Person��5
   	   $��329.999��6   $	��270��6.   $��333.499��6>    � Topmost .    
StyWndMain#��[  5       � 	Resources 5        OdpColorsProperty S� ObjectInstance!  System.Windows.Media.Colors S� 
MethodName)  #MVVM_PersonenDB.EnumToBoolConverter  	enum2bool  CtpError �� Orientation ��Name ��Name  DoubleGlobalFontSize	 � AllowsTransparency
 � PlacementTarget �� ElementName �� Path �� Mode �� Padding��%�  &	       &	 9     &	 L     7  7  S� 5   
   "  5      $ GetProperties��5        5   
   6#   �� 5   
   .R�5      �� .+�5      �� $ 
Horizontal=�6   .+�5      �� $ BdrAep��6C   
���  ��$��1q�6/   ._�5      �� $	 Aep��64   5      �� 5      $��!��6    
���  ��8��  $	��3,0q�5       $
��Bold"�6-   $��Center=�6?   � 5      	 . $
��Fade=�66   $��Bottom=�5!      
 5      �� $ BdrAep����5       �� $	 Aep��$  AdornedElement.IsMouseOver�$ OneWay=�.��5"      �� 
�������
���  ��$ 2q�5#   H   8�� ��5"   $   �� $	 Aep��$8 2AdornedElement.(Validation.Errors)[0].ErrorContent�5#   T   5$      5&      5'      5(      5*      .��5,      � $��10q�6    � ColumnDefinitions 5-   
   �� 5.      $
��Auto �6   �� 5/      $��* �6    � RowDefinitions 51   
   �� 52      $
��Auto �6   �� 53      $
��Auto �6   �� 54      $
��Auto �6   �� 55      $
��Auto �6   �� 56      $
��Auto �6   �� 57      $
��Auto �6   �� 58      $��* �6   �� 59      $
��Auto �6   .+�5<   
   �� $��0��6   $��0��6!   $��Vorname��61   �� 5=   
   $��1��6   $��0��6!   $��Nachname��61   �� 5>   
   $��2��6   $��0��6!   $��
Geschlecht��61   $	��Top=�5?      $��0,2,5,0q�6,   �� 5@   
   $��3��6   $��0��6!   $��Geburtsdatum��61   �� 5A   
   $��4��6   $��0��6!   $��Verheiratet��61   �� 5B   
   $��5��6   $��0��6!   $��Lieblingsfarbe��61   �� 5D   
   -   5         ��Name$ 
TbxVorname��5D      $��0��5E      $��1��6    =� ErrorTemplate# [ 5G      ��5F      �� *AktuellePerson.Vorname+ �� ValidatesOnDataErrors .  �� UpdateSourceTrigger$ PropertyChanged=�5G      �� 5H   
   -   5        $ TbxNachname��5H      $��1��5I      $��1��6   # [ 5K      ��5J      �� *AktuellePerson.Nachname+ . $ PropertyChanged=�5K      �� 5L   
   $��2��6   $��1��6"   $��2q�5M      .+�5N      	� -   5         	�Name$ RbtGeschlechtM��5N      $��M��5O       	� 	GroupName$ RbgGeschlecht��5P       d� 	IsChecked 5Q      �� *AktuellePerson.Geschlecht+ �� 	Converter# [ "   MVVM_PersonenDB.Model.Gender   	Männlich �� ConverterParameter# Z 	� 5R      -   5        $ RbtGeschlechtW��5R      $��W��5S      $ RbgGeschlecht��5T       5U      �� *AktuellePerson.Geschlecht+# [    Weiblich# Z 	� 5V      -   5        $ RbtGeschlechtD��5V      $��D��5W      $ RbgGeschlecht��5X       5Y      �� *AktuellePerson.Geschlecht+# [    Divers# Z 5Z      (  "System.Windows.Controls.DatePicker  5[   
   -   5          Name$ DtpGeburtsdatum��5[      $��3��5\      $��1��6"   # [ 5^         SelectedDate 5]      �� *AktuellePerson.Geburtsdatum+ . $ PropertyChanged=�5^      �� 5_   
   -   5         ��Name$ ChbVerheiratet��5_      $��4��5`      $��1��6     5a      �� *AktuellePerson.Verheiratet+�� 5b   
   -	   5          ��Name$  CbbLieblingsfarbe��5b      $��5��5c      $��1��6    ! �� SelectedValuePath$
! Name��5e      # [ 5g      ��5d      �� " �� Source#" [ # �� SelectedValue# 5f      �� *AktuellePerson.Lieblingsfarbe+ . $ PropertyChanged=���5i      �� 5j      .R�5k      �� $ 
Horizontal=�6!   .+�5l      �� $��10��6:   $��10��6E   $	��5,0q�6Q   ��6$   �� *Name+6Q   �� 5m      ��6$   �� *Name+5n      5o      5q      � 5s   
   $��7��6   $��0��6!   $��2��61   $��Right=�5t      $��2q�60   .+�5u      �� -
   5        $ ��Name$$ BtnOk��5u      $��OK��5v      ��5w      �� *OkCmd+��5x      �� $ WndDetailView����5y      �� 5z      % �� 
TargetType"% ��6   .�5{      �� & �� Property& � {�' �� Value' .  66   �� 5|      & � ��$	' 120��62   �� 5}      & � ��$' 5,5,0,0q�63   �� 5~      & � ��#' [ 65   ( �� Triggers( 5�      ^� 5�      ) ^� 
Conditions) 5�   "   �� 5�   &   * �� Binding* 60   �� $ 
TbxVorname��$ (Validation.HasError)�+ �� Value	+ False6w   �� 5�   &   * 60   �� $ TbxNachname��$ (Validation.HasError)�	+ False6x   �� 5�   &   * 60   �� $ DtpGeburtsdatum��$ (Validation.HasError)�	+ False6|   �� 5�   &   * 60   �� $ CbbLieblingsfarbe��$ (Validation.HasError)�	+ False6~   .0�5�   "   �� & � {�' . 6>   5�      5�      5�      �� 5�      -   5        $$ BtnAbbrechen��5�      $��	Abbrechen��5�      ��5�      �� *
AbbruchCmd+��5�      �� $ WndDetailView��5�      5�      5�      