using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.IO;

namespace ToursApp
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            MainFrame.Navigate(new ToursPage());
            Manager.MainFrame = MainFrame ;

           // ImportTour();
        }

        /// <summary>
        /// Метод для импорта данных о турах в базу данных
        /// </summary>
        private void ImportTour()
        {
            var fileData = File.ReadAllLines(@"C:\Users\Admin\Downloads\ДЭ\ДЭ\import\Туры.txt");
            var Images = Directory.GetFiles(@"C:\Users\Admin\Downloads\ДЭ\ДЭ\import\Туры фото");

            foreach (var line in fileData)
            {
                var data = line.Split('\t');

                var tempTour = new Tour
                {
                    Name = data[0].Replace("\"", ""),
                    TicketCount = int.Parse(data[2]),
                    Price = decimal.Parse(data[3]),
                    IsActual = (data[4] == "0" ? false : true)
                };
                foreach (var tourType in data[5].Split(new string[] { ", "}, StringSplitOptions.RemoveEmptyEntries))
                {
                    var currentType = TurismEntities.GetContext().Type.ToList().FirstOrDefault(p => p.Name == tourType);
                    if (currentType != null)
                        tempTour.Type.Add(currentType);
                }

                try
                {
                    tempTour.ImagePreview = File.ReadAllBytes(Images.FirstOrDefault(predicate => predicate.Contains(tempTour.Name)));
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }

                TurismEntities.GetContext().Tour.Add(tempTour);
                TurismEntities.GetContext().SaveChanges();
            }

        }
        private void BtnHotels_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new HotelsPage());
        }

        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.GoBack();
        }

        private void MainFrame_ContentRendered(object sender, EventArgs e)
        {
            if(MainFrame.CanGoBack)
            {
                BtnBack.Visibility = Visibility.Visible;
            }
            else
            {
                BtnBack.Visibility = Visibility.Hidden;
            }

            if (MainFrame.CanGoBack)
            {
                BtnHotels.Visibility = Visibility.Hidden;
            }
            else
            {
                BtnHotels.Visibility = Visibility.Visible;
            }
        }
    }
}
