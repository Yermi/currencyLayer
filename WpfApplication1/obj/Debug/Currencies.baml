   M S B A M L   `   `   `  ����=  9BE, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:BE;assembly=BEBE  5      E AmainWindow, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:mainWindow
mainWindow 5
         mainWindow.Currencies   5      f bDevExpress.Xpf.Grid.v17.1.Core, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aa ]DevExpress.Xpf.Grid.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid   5      'BEclr-namespace:BE;assembly=BE   5      a ]DevExpress.Xpf.Core.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5      j fDevExpress.Xpf.LayoutControl.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aFdxlc;http://schemas.devexpress.com/winfx/2008/xaml/layoutcontrol  5      c _DevExpress.Xpf.Charts.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxc4http://schemas.devexpress.com/winfx/2008/xaml/charts  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W	 SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    	 5      R
 NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml 
   	 5	      *localclr-namespace:mainWindow 
   	 5
      @d2http://schemas.microsoft.com/expression/blend/2008 
   	 5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006 
   	 5      ` \Syncfusion.Linq.Base, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89b ^Syncfusion.SfInput.Wpf, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89` \Syncfusion.Tools.Wpf, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89e aSyncfusion.GridCommon.Wpf, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89a ]Syncfusion.Shared.Wpf, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89` \Syncfusion.Chart.Wpf, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89a ]Syncfusion.SfGrid.WPF, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89f bSyncfusion.SfAccordion.WPF, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89@
syncfusion!http://schemas.syncfusion.com/wpf         5      6cultureusing:System.Globalization         5      $	��700��5
   ,   $	��550��6;     � 	Resources  5       �� 
TargetType �� Property �� Value��%�   '��       �� 5   
   " ��6   .�5      ��  � ��$ 
10 0 10 10q�6'   �� 5       � ��$ 20(�6)   �� 5       � ��$ Light"�6+   5      5      .��5      � $��50 0 0 0q�6    � ColumnDefinitions 5   
   �� 5      $	��400 �6   �� 5       � RowDefinitions 5    
   �� 5!      $
��Auto �6   �� 5"      $
��Auto �6   �� 5#      $
��Auto �6   �� 5$      $
��Auto �6   �� 5%      $
��Auto �6   .+�5'   
   �� $��10,74,80,366q�6   $��2��6+   0  *DevExpress.Xpf.LayoutControl.LayoutControl  5(   
   $	��365��6   $��30,68,394,0q�6*   $	��Top=�6?   6Y   %  DevExpress.Xpf.Grid.GridControl  5+   
   )  #DevExpress.Xpf.Grid.DataControlBase   AutoGenerateColumns$ AddNew=�6   #   EnableSmartColumnsGeneration . $
��Left=�6�   $	��465��6�   $	��Top=�6�   $	��500��6�   $��	35,37,0,0q�6�   $��2��6�      ItemsSource 67   �� *CurrenciesList+	   View	 5,      #  DevExpress.Xpf.Grid.TableView  5-      
   AllowPerPixelScrolling
 . &   DevExpress.Xpf.Grid.GridViewBase   AllowGrouping . &   DevExpress.Xpf.Grid.DataViewBase   ShowTotalSummary . 6S   5/      53      54      