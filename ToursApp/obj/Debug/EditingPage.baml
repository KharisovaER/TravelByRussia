   M S B A M L   `   `   `  ����C  ?ToursApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:ToursAppToursApp  5          ToursApp.EditingPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      (localclr-namespace:ToursApp     5        N� Title$  EditingPage��5	      .��5      �  � ColumnDefinitions 5   
   �� 5      $��3* �6   �� 5      $��7* �6    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� $!��Название отеля��6   $��0��6*   69   �� 5   
   $%��Количество звезд��6   $��1��6,   6;   �� 5   
   $��Страна��6   $��2��6"   61   �� 5   
    �� 	MaxLength$	 100��6)   $��0��69   $��1��6F   ��6   �� *Name+6X   �� 5   
   $ 2��60   $��1��6>   $��1��6K   $	��200��6[   ��6   �� *CountOfStars+6i   �� 5   
   -   5         ��Name$ ComboCountries��5   Q   $��2��64   $��1��6A    �� DisplayMemberPath$
 Name��6i    �� SelectedItem 6   �� *	Country+6�   �� 5   
   -   5        $��BtnSave��5   F   $��3��6   $��2��6   $��Сохранить��62   6m   5      5      