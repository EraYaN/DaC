﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace DesignReporter
{
    class Program
    {
        //static DirectoryInfo srcPath = new DirectoryInfo("src\\controller");
        static DirectoryInfo hwPath = new DirectoryInfo("hardware\\gpu");
        static DirectoryInfo docsPath = new DirectoryInfo("docs");
        static FileInfo outputPath = new FileInfo("sourceBijlage.tex");
		static String start = @"\documentclass{report}
\input{docs/library/preamble}
\input{docs/library/style}
\addbibresource{docs/library/bibliography.bib}

\title{EPO-2: Source code}
\author{Erwin de Haan \and Others}


\begin{document}";

        /// <summary>
        /// Count the number of lines in the file specified.
        /// </summary>
        /// <param name="f">The filename to count lines.</param>
        /// <returns>The number of lines in the file.</returns>
        static long CountLinesInFile(string f)
        {
            long count = 0;
            using (StreamReader r = new StreamReader(f))
            {
                string line;
                while (!r.EndOfStream)
                {
                    line = r.ReadLine();
                    line = line.Trim();
                    if(line!=null&&line!=String.Empty)
                        count++;
                }
            }
            return count;
        }
        static void Main(string[] args)
        {
            Console.WriteLine("DesignReporter started.");
			Console.WriteLine(Directory.GetCurrentDirectory());
            long hardwareLines = 0;
            long softwareLines = 0;
            List<FileInfo> files = new List<FileInfo>();
			//files.AddRange(srcPath.GetFiles("*",SearchOption.AllDirectories));
			files.AddRange(hwPath.GetFiles("*", SearchOption.AllDirectories));
			files.Sort((x, y) => StringComparer.OrdinalIgnoreCase.Compare(x.FullName, y.FullName));
			IEnumerable<FileInfo> fileQuery =
			from fileQ in files
            where !fileQ.FullName.Contains("obj") && !fileQ.FullName.Contains("Visual Micro") && !fileQ.FullName.Contains("robotsim") && !fileQ.FullName.Contains("Properties") && !fileQ.FullName.Contains("App") && !fileQ.FullName.Contains("quartus")
			select fileQ;
			
			StreamWriter file = outputPath.CreateText();
			file.WriteLine(start);
			file.WriteLine("\r\n\r\n");
			foreach (FileInfo fi in fileQuery)
            {
                string ext = fi.Extension;
                string caption = fi.Directory.Name + @"/" + fi.Name;
				caption = caption.Replace("_","-");
				string filename = fi.Name;
				filename = filename.Replace("_", "-");
				string pathescaped = fi.FullName.Replace(outputPath.Directory.FullName+"\\", "").Replace('\\', '/');
                if (ext == ".cs")
                {
                    //caption = fi.Directory.Name+@"\"+fi.Name;
                    file.WriteLine(String.Format("\\section{{{2}}}\r\n\\label{{appsec:{2}}}\r\n\\includecode[csharp]{{{1}}}{{{0}}}\r\n", pathescaped, caption, filename));
                }
                else if (ext == ".c" || ext == ".h")                
                {
                    //caption = Path.GetDirectoryName(f) + Path.GetFileName(f);
                    file.WriteLine(String.Format("\\section{{{2}}}\r\n\\label{{appsec:{2}}}\r\n\\includecode[c]{{{1}}}{{{0}}}\r\n", pathescaped, caption, filename));
                }
                else if (ext == ".vhdl" || ext == ".vhd")
                {
                    //caption = Path.GetDirectoryName(f) + Path.GetFileName(f);
					file.WriteLine(String.Format("\\section{{{2}}}\r\n\\label{{appsec:{2}}}\r\n\\includecode[vhdl]{{{1}}}{{{0}}}\r\n", pathescaped, caption, filename));
                    
                }
                else if (ext == ".xaml")
                {
                    //caption = Path.GetDirectoryName(f) + Path.GetFileName(f);
					file.WriteLine(String.Format("\\section{{{2}}}\r\n\\label{{appsec:{2}}}\r\n\\includecode[xaml]{{{1}}}{{{0}}}\r\n", pathescaped, caption, filename));

                }
                if (ext == ".vhdl" || ext == ".vhd")
                {
                    long lines = CountLinesInFile(fi.FullName);
                    hardwareLines += lines;
                    Console.WriteLine("Lines: {0} --> file: {1}", lines, fi.Name);
                }
                else if (ext == ".cs" || ext == ".xaml" || ext == ".c" || ext == ".h")
                {
                    long lines = CountLinesInFile(fi.FullName);
                    softwareLines += lines;
                    Console.WriteLine("Lines: {0} --> file: {1}", lines, fi.Name);                    
                }

            }
            file.WriteLine(@"\end{document}");
            file.Close();
			Console.WriteLine("Done. Press any key to exit.");
            Console.WriteLine("Hardware Code Lines: {0}\r\nSoftware Code Lines: {1}", hardwareLines, softwareLines);
			Console.ReadKey();
        }

    }
}
