   M S B A M L   `   `   `  ����E  AmainWindow, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:mainWindow
mainWindow  5      m iSyncfusion.SfChromelessWindow.Wpf, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89tTclr-namespace:Syncfusion.Windows.Controls;assembly=Syncfusion.SfChromelessWindow.WpfSyncfusion.Windows.Controls 5
          mainWindow.view   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aW SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      *localclr-namespace:mainWindow     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      ` \Syncfusion.Linq.Base, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89b ^Syncfusion.SfInput.Wpf, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89`	 \Syncfusion.Tools.Wpf, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89e
 aSyncfusion.GridCommon.Wpf, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89a ]Syncfusion.Shared.Wpf, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89` \Syncfusion.Chart.Wpf, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89a ]Syncfusion.SfGrid.WPF, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89f bSyncfusion.SfAccordion.WPF, Version=15.3451.0.26, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89@
syncfusion!http://schemas.syncfusion.com/wpf   	 
     5	      r	controls2Tclr-namespace:Syncfusion.Windows.Controls;assembly=Syncfusion.SfChromelessWindow.Wpf   	 
     5
      -   5        4  .Syncfusion.Windows.Controls.SfChromelessWindow   Name$  pageRoot��5       � WindowStartupLocation$ CenterScreen=�5	   K      ResizeBorderThickness$ 8q�5      $��0q�6      CaptionHeight$	 100Q�63   $
��1110��6G   $	��680��6W      CaptionBackground �	#FF939E44 � Title$ Unit Converter��5   $      CaptionFontSize$ 35Q�6;    � 	Resources 5      2 	 ,Syncfusion.Windows.Tools.Controls.TabItemExt �� 
TargetType	 �� Property
 �� Value � LayoutTransform �� Angle �� 
TargetType J� SnapsToDevicePixels �� CornerRadius � ToolTip �� Path �� RelativeSource �� AncestorType �� FallbackValue ��Name   HeaderMargin �� Triggers �� Value �� Binding �� 
TargetName5 	 /Syncfusion.Windows.Tools.Controls.TabControlExt�� 5   
   %�  '        �� 5      "  6   .�5      �� 	 � ��$
 25(�6-   �� 5      	 � ��$
 Light"�6/   �� 5      	 � ��$
 0q�64   6@   �� 5      	 � ��

 �����6?   �� 5      	 � ��$
 60��6*   �� 5      	 � ��$	
 300��6+   69   �� 5      	 � ��$
 0 0 0 0q�6+   6=   �� 5      	 �@ HeaderMargin$
 0 45 0 0q�61   6D   �� 5      	 � ��$
 Center=�6G   �� 5      	 � ��$	
 Top=�6E   �� 5      	 � ��
 5      �� 5      .R�5      �� #��z��6/    5    "   �� 5!   &   $ 90Q�66   5#      5$      5&      �� 5'      	 � ��
 5(      �� 5)      "  6*   .R�5*      �� $��Bd��5+   %   #��z��5*   %   #��z��6Q    . #��z��5+   /   #��z��6c   $ 0��5,   �    6   �� $ ItemToolTip� �� *FindAncestor+"  $  ��._�5.   "   �� $ Content��6J   $��Header��63   #��z 6[   ��. #��z��5/   F   #��z��50   +   #��z��51   +   #��z��52   +   # z 53   +   ��5.   �   �� $ 
Foreground� �� *FindAncestor+"  $ Transparent��53   +   54       55      �� 56   "   $
 True��6x    6.   �� $ 
IsSelected� �� *Self+.a�57   &   �� $ Bd��6C   
 6S   �� $ TabItemSelectedBackground� �� *FindAncestor+"  $ Transparent��	 � ���� 58   &   $ Bd��6D   
 6T   �� $  TabItemSelectedBorderBrush� �� *FindAncestor+"  $ Transparent��	 � ���� 59   &   $ Content��6O   
 5:      �� $ TabItemSelectedForeground� �� *FindAncestor+"  $ Transparent��	 � ���� 5;   &   $ Content��6O   
 6d   �� $ SelectedItemFontWeight� �� *FindAncestor+"  $ SemiBold��	 � ��5=   #   5?      5A      5B      5C      .��5M      �  � RowDefinitions 5N   
   �� 5O      $��0 �6   �� 5P      $��* �6   .+�5T   
   � $��1��6   ���	#FFEDEDEB � ColumnDefinitions 5U      �� 5V      $	��299 �6#   �� 5W      $��* �6#   .+�5Y      � $��0��6   
�������6#     5Z       �� TabStripPlacement$
 Left=�6'   $��0q�6@   $
��Left=�6T   $	��Top=�6v   $��	-5 30 0 0q�6�      ShowTabListContextMenu .     ShowTabItemContextMenu .      CloseButtonType$
  Hide=�5[   c    !   TabItemSelectedBackground! �	#FF939E44 "   TabItemSelectedForeground
" �����$��2��5\   m   #   TabPanelBackground
# ��������	#FFEDEDEB$   SelectedItemFontWeight$$ Normal"�5]   W   % �� SelectedIndex$% 0��5^   $    &   TabScrollButtonVisibility$& Hidden=�66   $
��Left=�5_   $   $	��Top=�6?   .@�5`        $��Currency��6)   .��5a         mainWindow.Currencies  5b        5c      $��History��6)   .��5d      $   mainWindow.HistoryConverWindow  5e      5h      5i      5j      5k      