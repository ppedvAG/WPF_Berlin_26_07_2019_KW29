   M S B A M L   `   `   `  ���� J  FMVVM_PersonenDB, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:MVVM_PersonenDB.ViewMVVM_PersonenDB.View  1clr-namespace:MVVM_PersonenDBMVVM_PersonenDB  =#clr-namespace:MVVM_PersonenDB.ModelMVVM_PersonenDB.Model  %    MVVM_PersonenDB.View.DetailView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     4local"clr-namespace:MVVM_PersonenDB.View     .rootclr-namespace:MVVM_PersonenDB     1m#clr-namespace:MVVM_PersonenDB.Model     -     �Name$  WndDetailView�� � Title$ Neue Person��$��329.999��$	��270��$��333.499�� � Topmost .    
StyWndMain#��[   � 	Resources   OdpColorsProperty S� ObjectInstance!  System.Windows.Media.Colors S� 
MethodName)  #MVVM_PersonenDB.EnumToBoolConverter  	enum2bool  CtpError �� Orientation ��Name ��Name  DoubleGlobalFontSize	 � AllowsTransparency
 � PlacementTarget �� ElementName �� Path �� Mode �� Padding��%�  &	       &	      &	 #     7  7  S� "  $ GetProperties��  �� .R��� .+��� $ 
Horizontal=�.+��� $ BdrAep��
���  ��$��1q�._��� $	 Aep���� $��!��
���  ��8��  $	��3,0q�$
��Bold"�$��Center=�� 	 . $
��Fade=�$��Bottom=�
 �� $ BdrAep������ $	 Aep��$  AdornedElement.IsMouseOver�$ OneWay=�.���� 
�������
���  ��$ 2q�8�� ���� $	 Aep��$8 2AdornedElement.(Validation.Errors)[0].ErrorContent�.��� $��10q� � ColumnDefinitions �� $
��Auto ��� $��* � � RowDefinitions �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $��* ��� $
��Auto �.+��� $��0��$��0��$��Vorname���� $��1��$��0��$��Nachname���� $��2��$��0��$��
Geschlecht��$	��Top=�$��0,2,5,0q��� $��3��$��0��$��Geburtsdatum���� $��4��$��0��$��Verheiratet���� $��5��$��0��$��Lieblingsfarbe���� -    ��Name$ 
TbxVorname��$��0��$��1�� =� ErrorTemplate# [ ���� *AktuellePerson.Vorname+ �� ValidatesOnDataErrors .  �� UpdateSourceTrigger$ PropertyChanged=��� -   $ TbxNachname��$��1��$��1��# [ ���� *AktuellePerson.Nachname+ . $ PropertyChanged=��� $��2��$��1��$��2q�.+�	� -    	�Name$ RbtGeschlechtM��$��M�� 	� 	GroupName$ RbgGeschlecht�� d� 	IsChecked �� *AktuellePerson.Geschlecht+ �� 	Converter# [ "   MVVM_PersonenDB.Model.Gender   	Männlich �� ConverterParameter# Z 	� -   $ RbtGeschlechtW��$��W��$ RbgGeschlecht�� �� *AktuellePerson.Geschlecht+# [    Weiblich# Z 	� -   $ RbtGeschlechtD��$��D��$ RbgGeschlecht�� �� *AktuellePerson.Geschlecht+# [    Divers# Z (  "System.Windows.Controls.DatePicker  -     Name$ DtpGeburtsdatum��$��3��$��1��# [    SelectedDate �� *AktuellePerson.Geburtsdatum+ . $ PropertyChanged=��� -    ��Name$ ChbVerheiratet��$��4��$��1�� �� *AktuellePerson.Verheiratet+�� -	     ��Name$  CbbLieblingsfarbe��$��5��$��1��! �� SelectedValuePath$
! Name��# [ ���� " �� Source#" [ # �� SelectedValue# �� *AktuellePerson.Lieblingsfarbe+ . $ PropertyChanged=����� .R��� $ 
Horizontal=�.+��� $��10��$��10��$	��5,0q����� *Name+�� ���� *Name+� $��7��$��0��$��2��$��Right=�$��2q�.+��� -
   $ ��Name$$ BtnOk��$��OK������ *OkCmd+���� $ WndDetailView������ % �� 
TargetType"% ��.��� & �� Property& � {�' �� Value' .  �� & � ��$	' 120���� & � ��$' 5,5,0,0q��� & � ��#' [ ( �� Triggers( ^� ) ^� 
Conditions) �� * �� Binding* �� $ 
TbxVorname��$ (Validation.HasError)�+ �� Value	+ False�� * �� $ TbxNachname��$ (Validation.HasError)�	+ False�� * �� $ DtpGeburtsdatum��$ (Validation.HasError)�	+ False�� * �� $ CbbLieblingsfarbe��$ (Validation.HasError)�	+ False.0��� & � {�' . �� -   $$ BtnAbbrechen��$��	Abbrechen������ *
AbbruchCmd+���� $ WndDetailView��