using ConsoleApp6;
using static System.Formats.Asn1.AsnWriter;
using System.Xml.Linq;
using static System.Runtime.InteropServices.JavaScript.JSType;

List<Student> students = new List<Student>();

students.Add(new Student() { id = 1, name = "Alice", score = 3 });
students.Add(new Student() { id = 2, name = "Bob", score = 7.87 });
students.Add(new Student() { id = 3, name = "Charlie", score = 9.001 });
students.Add(new Student() { id = 4, name = "David", score = 1 });
students.Add(new Student() { id = 5, name = "Eve", score = 13 });
students.Add(new Student() { id = 6, name = "Frank", score =8  });
students.Add(new Student() { id = 7, name = "Grace", score= 9.5 });
students.Add(new Student() { id = 8, name = "Issac", score= 8.86 });

foreach (Student student in students)
{
	if (Math.Round(student.score) >= 10)
	{
		student.passed = true;
	}
	else
	{
        student.passed = false;
    }
}

foreach (var std in students)
{
	string result = $"id: {std.id}, name: {std.name}, score:{std.score}, isPassed: {std.passed}";
    Console.WriteLine(result);
}

Console.ReadKey();