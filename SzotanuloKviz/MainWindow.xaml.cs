using System.Windows;

namespace SzotanuloKviz
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            MainFrame.Navigate(new MainMenu());
        }
    }
}