   M S B A M L   `   `   `  ����=  9BE, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:BE;assembly=BEBE  5      E AmainWindow, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:mainWindow
mainWindow 5
      =#clr-namespace:mainWindow.ConvertersmainWindow.Converters 5         mainWindow.convert   5      f bDevExpress.Xpf.Grid.v17.1.Core, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aa ]DevExpress.Xpf.Grid.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid   5      'BEclr-namespace:BE;assembly=BE   5      a ]DevExpress.Xpf.Core.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5      j fDevExpress.Xpf.LayoutControl.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aFdxlc;http://schemas.devexpress.com/winfx/2008/xaml/layoutcontrol  5      c _DevExpress.Xpf.Charts.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxc4http://schemas.devexpress.com/winfx/2008/xaml/charts  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W	 SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    	 5      R
 NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml 
   	 5	      *localclr-namespace:mainWindow 
   	 5
      4conv#clr-namespace:mainWindow.Converters 
   	 5      @d2http://schemas.microsoft.com/expression/blend/2008 
   	 5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006 
   	 5      ` \Syncfusion.Linq.Base, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89b ^Syncfusion.SfInput.Wpf, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89` \Syncfusion.Tools.Wpf, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89e aSyncfusion.GridCommon.Wpf, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89a ]Syncfusion.Shared.Wpf, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89` \Syncfusion.Chart.Wpf, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89a ]Syncfusion.SfGrid.WPF, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89f bSyncfusion.SfAccordion.WPF, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89@
syncfusion!http://schemas.syncfusion.com/wpf         5      6cultureusing:System.Globalization         5      ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5      $	��800��5
   ,   $	��500��6;     � 	Resources  5         AnimatedSwitch �� 
TargetType �� Property �� Value �� 
TargetType (� Stretch �� Left
 �� Top A�Name	 T� X
 T� Y J� BitmapEffect F� Softness F� ShadowDepth F� 	Direction F� Color �� Triggers P� Property P� Value N� EnterActions �� TargetProperty	 �� To g� Duration �� 
TargetName O� KeyTime O� Value �� 	KeySpline N� ExitActions/  )Syncfusion.Windows.Shared.CurrencyTextBox4  .mainWindow.Converters.BoolToVisibiltyConverter  boolToVisibilityConverter�� 5   
   %]	  &	        '  �    '�� �    &	 "	    �� 5      " d�6+   .�5      ��  � ��
 �   �6/   �� 5       � �� �#FAFAFB6/   �� 5       � �� �#EAEAEB60   �� 5       � �� 5      �� 5      " d�6*   .R�5      (� $ Uniform=�6&   .��5   "   �� $��Layer_1��6)   $��20��68   $��20��6C   $ 10��6O   $ 0��6`   .+�5   &   A� $ 0��6/   $��20��6?   $��20��6J   #��z��6V   #��z��6z   $	��0.5��6�   A� 5   &   $ 15��6/   $��20��6@   $��20��6K   #��z��6W   #��z��6{   $	��0.5��6�   �� 5   &   $��
rect416927��6U   $ 10��6-   $��15��6>   $��20��6I   #��z��6g   #��z��6�   $��0,0.5,0,0.5q�6�   A� 5    &   $ ellipse��6.   $ 0��6@   $��20��6P   $��20��6[   
�������#��z��6t   $	��0.3��6�   z�5!   *   T� 5"   .   $	 0Q�6A   $
 0Q�6G    5$   *   F� 5%   .   $	 0.1Q�6E   $	 0.7Q�6T   $	 270Q�6f   $ #BBBBBB��6v   5'   '   5(   #   5)       5*      P� 5+   "    �@d�	IsChecked$
 TrueY�6?    5,   &   �� 5-   *   .��5.   .   �� .��5/   2   �� $ Background.Color�6A   $ #52D468X�6n   $ 0:0:0.2D�6{   �� 50   2   $ BorderBrush.Color�6A   $ #41C955X�6o   $ 0:0:0.2D�6|   U� 51   2   $6 0(Ellipse.RenderTransform).(TranslateTransform.X)�6P   $ ellipse��6�   .\�52   6   �� $ 0��6K    06W   �� 53   6   $ 0:0:0.4��6K   $ 0, 1, 0.6, 1��6h    156]   6h   54   3   55   /   56   +    58   &   �� 59   *   .��5:   .   �� .��5;   2   �� $ Background.Color�6A   $ #FAFAFBX�6n   $ 0:0:0.2D�6{   �� 5<   2   $ BorderBrush.Color�6A   $ #EAEAEBX�6o   $ 0:0:0.2D�6|   U� 5=   2   $6 0(Ellipse.RenderTransform).(TranslateTransform.X)�6P   $ ellipse��6�   .\�5>   6   �� $ 0��6K    156W   �� 5?   6   $ 0:0:0.3��6K   $ 0, 0.5, 0.5, 1��6g    06]   6g   5@   3   5A   /   5B   +   5D   #   5F      5H      5I      �� 5J      "  6   .�5K      ��  � ��$ 10q�6+   �� 5L       � ��$	 280��6*   �� 5M       � ��$ 30��6+   68   �� 5N       � ��$
 Left=�68   �� 5O       � ��$ 18(�6-   �� 5P       � ��$ Light"�6/   5Q      �� 5R      " ��6   .�5S      ��  � ��$ 
10 0 10 10q�6+   �� 5T       � ��$ 20(�6-   �� 5U       � ��$ Light"�6/   5W        5X      6P   5Z      .��5^      � $��50 0 0 0q�6    � RowDefinitions 5_   
   �� 5`      $��* �6   �� 5a      $��* �6   �� 5b      $��* �6   �� 5c      $��* �6   �� 5d      $
��0.8* �6   �� 5e      $��* �6   �� 5f      $��2* �6   �� 5g      $
��0.7* �6    � ColumnDefinitions 5k   
   �� 5l      $	��175 �6   �� 5m      $	��175 �6   �� 5n      $	��1.5 �6   �� 5o      $
��Auto �6   .+�5q   
   '  !DevExpress.Xpf.Editors.Calculator  $��0��6   $��8��6&   $��4��67   $��7,7,7,7q�6G   y�6X   ��  �� ElementName$ showCalculator�� �� Path$ 	IsChecked�  �� 	Converter#  [ 6�   �� 5r   
   $��1��6   $��0��6   $��Convert from:��6-   $��Right=�6E   $��	0,10,10,8q�6a   $
��Bold"�6t   6�   �� 5s   
   $��1��6   $��1��6    $��
10,10,10,7q�6}   ��60   �� *currnciesNames+! �� SelectedValue! 6W   �� *ConvertFrom+6�   �� 5t   
   $��2��6   $��0��6   $��Convert to:��6-   $��Right=�6C   $��
10,10,10,8q�6_   $
��Bold"�6s   6�   �� 5u   
   $��2��6   $��1��6    $��
10,10,10,7q�6{   ��60   �� *currnciesNames+! 6W   �� *	ConvertTo+6�   �� 5v   
   $��3��6   $��0��6   $��amount:��6-   $��Right=�6?   $��
10,10,10,8q�6[   $
��Bold"�6o   6�   �� 5w   
   $��3��6   $��1��6   $��
10,10,10,7q�6G   ��6/   �� *Amount+6]   �� 5x   
   $��5��6   $��0��6   $��2��6.   $��	Calculate��6B   $��22(�6V   $
��Bold"�6d   $��	40,7,40,7q�6v   ��6�   �� *convertCurrenciesCommand+��6�   �� 6�   �� 5y   
   $��6��6   $��0��6   $��2��6-   $��20,10,10,10q�6f   $��Center=�6{   $��Center=�6�   $
��Bold"�6�   ��6A   �� *ConversionResult+6�   �� 5z   
   " �� Orientation$" 
Horizontal=�6   $��7��6.   $��0��6;   $��2��6K   $��Right=�6_   $��0,0,20,5q�6{   .+�5{      �� $��Switch to use ��6   $��0,0,0,0q�6-   $
��Bold"�6>   6R   �� 5|      $��Pictures/calculator.ico��6   $��25��65   $��25��6@   $��0,0,10,0q�6L   6`   d� 5}      -   5        $��showCalculator��5}      #��[  61   $��15��6Y   # d� 	IsChecked$# FalseY�6e   6y   5~      5�      5�      