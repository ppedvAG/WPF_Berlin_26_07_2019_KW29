   M S B A M L   `   `   `  ����F  BValidierung, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:ValidierungValidierung  5   	       Validierung.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:Validierung     5   	     � Title$  
MainWindow��5   	   $��572.449��6   $��369.679��6-    � 	Resources 5
         CtpErrorTextbox ��Name �� ElementName �� Path��%�   &	        �� 5   
   .R�5      �� .+�5      �� 
���  ��$��3q�6+   ._�5      �� $	 Aep��60   5      �� 5      
���  ����5      �� $	 Aep��$8 2AdornedElement.(Validation.Errors)[0].ErrorContent�5      5      5       � DataContext 5         Validierung.Person  5   
   .��5      �� $��20q�6   .+�5   
   �� -   5         ��Name$ 
TbxIpInput��5       =� ErrorTemplate# [  6&   .��6b   ��5      �� 5      $ TblIpOutput��6   $
 Text�64    �� UpdateSourceTrigger$ PropertyChanged=�6@   	 �� ValidationRules	 5      !   Validierung.Ipv4Validierung  5      5!      .��5"      5#      �� 5$   
   -   5        
 ��Name$
 TblIpOutput��5$      �� 5&   
   -   5        $ TbxName��5&      # [  5'      ��5&   #   �� *Name+$ PropertyChanged=� �� ValidatesOnExceptions . 5'      �� 5)   
   -   5        $ TbxAlter��5)      # [  5*      ��5)   $   �� *Alter+$ PropertyChanged=� �� ValidatesOnDataErrors . 5*      5+      5,      