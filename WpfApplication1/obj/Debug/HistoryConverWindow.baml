   M S B A M L   `   `   `  ����=  9BE, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:BE;assembly=BEBE  5      E AmainWindow, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:mainWindow
mainWindow 5
      $   mainWindow.HistoryConverWindow   5      f bDevExpress.Xpf.Grid.v17.1.Core, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aa ]DevExpress.Xpf.Grid.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid   5      'BEclr-namespace:BE;assembly=BE   5      a ]DevExpress.Xpf.Core.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5      j fDevExpress.Xpf.LayoutControl.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aFdxlc;http://schemas.devexpress.com/winfx/2008/xaml/layoutcontrol  5      c _DevExpress.Xpf.Charts.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxc4http://schemas.devexpress.com/winfx/2008/xaml/charts  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W	 SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    	 5      R
 NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml 
   	 5	      *localclr-namespace:mainWindow 
   	 5
      @d2http://schemas.microsoft.com/expression/blend/2008 
   	 5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006 
   	 5      ` \Syncfusion.Linq.Base, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89b ^Syncfusion.SfInput.Wpf, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89` \Syncfusion.Tools.Wpf, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89e aSyncfusion.GridCommon.Wpf, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89a ]Syncfusion.Shared.Wpf, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89` \Syncfusion.Chart.Wpf, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89a ]Syncfusion.SfGrid.WPF, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89f bSyncfusion.SfAccordion.WPF, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89@
syncfusion!http://schemas.syncfusion.com/wpf         5      6cultureusing:System.Globalization         5      $	��700��5
   ,   $	��550��6;   $��432.801��5   0     � 	Resources  5      /  )Syncfusion.Windows.Shared.CurrencyTextBox �� 
TargetType �� Property �� Value��%�  '        '��     �� 5   
   "  6   .�5      ��  � ��$ 10q�6'   �� 5       � ��$	 280��6&   �� 5       � ��$ 30��6'   64   �� 5       � ��$
 Left=�64   �� 5       � ��$ 18(�6)   �� 5       � ��$ Light"�6+   5      �� 5   
   " ��6   .�5      ��  � ��$ 
10 0 10 10q�6'   �� 5       � ��$ 20(�6)   �� 5       � ��$ Light"�6+   5      5       .��5"      � $��50 0 0 0q�6    � ColumnDefinitions 5#   
   �� 5$      $	��650 �6   �� 5%      $��0* �6    � RowDefinitions 5'   
   �� 5(      $
��Auto �6   $	��401��6*   �� 5)      $
��Auto �6   $��5��6*   �� 5*      $
��Auto �6   $��13��6*   �� 5+      $
��Auto �6   $	��111��6*   �� 5,      $
��Auto �6   .+�5/   
   (  "DevExpress.Xpf.Charts.ChartControl  -   5        $��chartControl1��5/      $��
0,112,0,34q�60   $��4��6D   ,  &DevExpress.Xpf.Charts.ChartControlBase   Legends 50      "  DevExpress.Xpf.Charts.Legend  51         HorizontalPosition$
 Left=�6      VerticalPosition$	 Top=�67   	   Orientation$	 
Horizontal=�6N   
   Diagram.
 53      '  !DevExpress.Xpf.Charts.XYDiagram2D  #  DevExpress.Xpf.Charts.Diagram   SeriesItemsSource 6   �� *Series+   SeriesItemTemplate 54      �� 55      .R�56      (  "DevExpress.Xpf.Charts.LineSeries2D  "  DevExpress.Xpf.Charts.Series   ArgumentDataMember$ dateTime��58   +      ValueDataMember$ value��59   +      DisplayName 56   +   �� *FromTo+   
DataSource 57   +   �� *values+5:      5;      5=      5>      (	  "System.Windows.Controls.DatePicker	  5?   
   -   5        $��picker_1��5?      $
��Left=�6%   $��
250,42,0,0q�6@   $	��Top=�6T   $��42��6�   $	��130��6�    	  SelectedDate 6l   �� *
FromDate+6�   	  5@   
   -   5        $��picker_2��5@      $
��Left=�6%   $��
397,42,0,0q�6@   $	��Top=�6T   $��42��6�   $	��130��6�    6l   �� *ToDate+6�   �� 5A   
   $0��*Please select a currency and a date range:��6   $
��Bold"�6E   $��16(�6W   $
��Left=�6e   $��10,5,0,0q�6�   $	��Top=�6�   $	��383��6�   $��28��6�   �� 5B   
   -   5        $��currenciesComboBox��5B       �� Text$ Select Currency��6-   $
��Left=�6D   $��5,42,0,0q�6_   $	��Top=�6q   $	��105��6�   $��42��6�    �� SelectedValue 6�   �� *FromCurrency+��6�   �� *currnciesNames+6�   �� 5C   
   -   5         ��Name$ currenciesComboBox2��5C      $ Select Currency��60   $
��Left=�6G   $��
130,42,0,0q�6b   $	��Top=�6v   $	��102��6�   $��42��6�    6�   �� *
ToCurrency+��6�   �� *currnciesNames+6�   �� 5D   
   $��	calculate��6   $��Right=�6%   $��	0,42,30,0q�6A   $	��Top=�6T   $��80��6l   $��42��6�   ��6w   �� * getHistoricalCurrenciesCommand+��6�   �� 6�   5F      5G      