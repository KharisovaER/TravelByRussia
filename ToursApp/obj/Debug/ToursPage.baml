   M S B A M L   `   `   `  ����C  ?ToursApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:ToursAppToursApp  5          ToursApp.ToursPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      (localclr-namespace:ToursApp     5        N� Title$  	ToursPage��5	      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $��* �6   .+�5   
   �  � Orientation$ 
Horizontal=�6   $��Center=�6-   .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      �� $:��4Введите название для поиска:��6   $	��175��6@   $��Right=�6L   6j   �� 5      -   5        $��
TBoxSearch��5   &   $	��225��6   6_   5      �� 5      $ 
Horizontal=�6   .+�5      �� $��Выберите тип:��6   $	��175��61   $��Right=�6=   6[   �� 5      -   5        $��	CombyType��5   '   $	��225��6    �� DisplayMemberPath$
 Name��6f   6�   �� 5      -   5         ��Name$ CheckActual��5      $E��?показывать только актуальные туры��6N   $��Center=�6z   6�   5      5      �� 5   
   -   5        $��	ListTours��5       $��1��6   $��Disabled=�61   $��Center=�6g   ��5      �� 5      .R�5      � $ 
Horizontal=�6    $��Center=�69   6X   5      ��5!      �� 5"      .R�5#      � $��20q�6   $	��400��6'    5$      �� 5%      $��70 �6,   �� 5&      $	��310 �6,   �� 5'      $
��auto �6,   �� 5(      $
��auto �6,   .+�5*      �� $	��400��6    $��1��6,   $��UniformToFill=�69   $��Center=�6Q   $��5q�6n   ��5+      �� 5,   "    �� Path$ ImagePreview�6*    �� TargetNullValue 5-   &   ��5.   *   Resources/picture.png��50   +   52   #   54      �� 55      $��Center=�6;    �� TextAlignment$ Center=�6V   $	��390��6m   $
��Wrap=�56      $��Center=�61   $	��5,5q�6N   $��26(�6[   $��0��6i   ��55   $   �� *Name+56   x   �� 57      $��2��6W   $��5,5,5,15q�6d   $��Center=�6v   $��26(�6�   $
��Bold"�6�   ��6$   �� *Price+	 �� StringFormat$	 {0:N2} РУБ��6�   �� 58      $��3��6g   $��14(�6t   $��Right=�6�   ��6$   �� *TicketCount+$*	 $Билетов осталось: {0}��6�   �� 59      $��3��6b   $��14(�6o   $
��Left=�6}   ��6$   �� *
ActualText+��6@   �� *
colorBrush+6�   5:      5;      5=      5>      5?      