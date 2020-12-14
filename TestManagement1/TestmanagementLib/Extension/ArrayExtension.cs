﻿using System.Linq;

namespace TestmanagementLib.Extension
{
    public static class ArrayExtension
    {
        public static bool ItemsEqual<TSource>(this TSource[] array1, TSource[] array2)
        {
            if (array1 == null && array2 == null)
                return true;
            if (array1 == null || array2 == null)
                return false;
            return array1.Count() == array2.Count() && !array1.Except(array2).Any();
        }
    }
}
