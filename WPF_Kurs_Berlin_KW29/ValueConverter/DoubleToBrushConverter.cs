using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;
using System.Windows.Media;

namespace ValueConverter
{
    //Converter müssen immer das Interface IValueConverter implementieren. Hier wird dann die Umwandlungslogik definiert
    class DoubleToBrushConverter : IValueConverter
    {
        //Source -> Target
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return new SolidColorBrush(Color.FromRgb((byte)(double)value, 0, 0));
        }

        //Target -> Source
        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
