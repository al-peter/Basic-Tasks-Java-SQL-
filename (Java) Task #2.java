package com.metanit;
import java.util.Scanner;
import java.util.Arrays;

/*You will be given a list of integers. You need to output the smallest
absolute difference you can get from any of the pairs you can of the pairs you can build
using the integers of the list. For clarity, you are required to find min(abs(A[i] - A[j])), i != j,
A being the list of integers. List size will be given in the first line of the input. List
elements will be given in the second line, separated by a single blank space. */

public class Main {

    public static void main(String[] args) {

        //Размерность массива
        Scanner in = new Scanner(System.in);
        System.out.print("Введите желаемое количество цифр в массиве: ");
        final int size = in.nextInt();

        System.out.print("Размерность массива: " + "\n" + size + "\n");

        //Определение и заполнение массива
        int[] array = new int[size];

        System.out.print("Массив: " + "\n");
        for (int i = 0; i < size; i++) {
            array[i] = (int) ((Math.random() * 21) + 1);
            System.out.print(array[i] + "\t");
        }

        //Cортировка массива
        boolean isSorted = false;
        int buf;
        while (!isSorted) {
            isSorted = true;
            for (int i = 0; i < size - 1; i++) {
                if (array[i] > array[i + 1]) {
                    isSorted = false;

                    buf = array[i];
                    array[i] = array[i + 1];
                    array[i + 1] = buf;
                }
            }
        }

        System.out.println("\n" + "Отсортированный массив: " + Arrays.toString(array));

        //Нахождение абсолютного значения наименьшей разности среди элементов массива
        int min = array[0];
        for (int i = 1; i < array.length - 1; i++) {
            int abs = Math.abs(array[i + 1] - array[i]);
            if (abs < min)
            {
                min = abs;
            }
        }
        System.out.println(min);
    }
}
    

 
