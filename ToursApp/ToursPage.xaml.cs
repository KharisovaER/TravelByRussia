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

namespace ToursApp
{
    /// <summary>
    /// Логика взаимодействия для ToursPage.xaml
    /// </summary>
    public partial class ToursPage : Page
    {
        public ToursPage()
        {
            InitializeComponent();
            
            var allTypes = TurismEntities.GetContext().Type.ToList();
            allTypes.Insert(0, new Type
            {
                Name = "Все типы"
            });

            CombyType.ItemsSource = allTypes;
            CheckActual.IsChecked = true;
            CombyType.SelectedIndex = 0;
            UpdateTours();
        }
        /// <summary>
        /// Выполнение фильтрации, поиска, сортировки и дальнейшая загрузка в коллекцию
        /// </summary>
        private void UpdateTours()
        {
            var currentTour = TurismEntities.GetContext().Tour.ToList();
            if (CombyType.SelectedIndex > 0)
                currentTour = currentTour.Where(p => p.Type.Contains(CombyType.SelectedItem as Type)).ToList();

            currentTour = currentTour.Where(p => p.Name.ToLower().Contains(TBoxSearch.Text.ToLower())).ToList();

            if (CheckActual.IsChecked.Value)
                currentTour = currentTour.Where(p => p.IsActual).ToList();

            ListTours.ItemsSource = currentTour.OrderBy(p => p.TicketCount).ToList();
        }
        private void TBoxSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateTours();
        }

        private void CombyType_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            UpdateTours();
        }

        private void CheckActual_Checked(object sender, RoutedEventArgs e)
        {
            UpdateTours();
        }

    }
}
