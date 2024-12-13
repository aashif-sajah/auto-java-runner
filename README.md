
# Auto Java Runner - `jarvis`

A simple tool that compiles and runs Java files with a single command.

## Features

- Automatically compiles and runs Java programs.
- Works globally on Command Prompt and PowerShell.
- Easy to set up.

## Installation

### Using `setup.bat`

1. Clone this repository or download the files:
   ```bash
   git clone https://github.com/yourusername/auto-java-runner.git
   cd auto-java-runner
   ```

2. Run the setup script:
   ```cmd
   setup.bat
   ```

3. Restart your terminal to apply changes.

### Manual Installation (if `setup.bat` does not work)

1. Place `jarvis.bat` in a directory (e.g., `C:\scripts`) of your choice.

2. Add that directory to your PATH environment variable:
   - **Windows 10/11**:
     1. Press `Win + S`, search for "Environment Variables," and select **Edit the system environment variables**.
     2. In the **System Properties** window, click **Environment Variables**.
     3. Under **System Variables**, find the `Path` variable and click **Edit**.
     4. Add the directory containing `jarvis.bat` (e.g., `C:\scripts`) to the list.
     5. Click **OK** to close all windows.
     6. Restart your terminal.

3. Test the installation:
   ```cmd
   jarvis
   ```
   If the command is not recognized, ensure the PATH is set correctly and try restarting your computer.

## Usage

1. Navigate to the folder containing your Java file:
   ```cmd
   cd path\to\java\files
   ```

2. Run your Java program:
   ```cmd
   jarvis MyApp.java
   ```

3. If everything is set up correctly, this will:
   - Compile the `MyApp.java` file using `javac`.
   - Run the compiled program using `java`.

## Troubleshooting

### `jarvis` is not recognized

If `jarvis` is not recognized:
1. Verify that `jarvis.bat` is in a folder included in the PATH environment variable:
   ```cmd
   echo %PATH%
   ```

2. Use the full path to `jarvis.bat` to test:
   ```cmd
   C:\scripts\jarvis.bat MyApp.java
   ```

3. Ensure your terminal is restarted after updating the PATH.

### Java Commands Not Found

Ensure `javac` and `java` commands are in your PATH:
1. Verify Java installation:
   ```cmd
   javac -version
   java -version
   ```

2. If these commands fail, install or configure Java:
   - Download and install the [Java JDK](https://www.oracle.com/java/technologies/javase-downloads.html).
   - Add the `bin` directory of your JDK (e.g., `C:\Program Files\Java\jdk-X.X.X\bin`) to the PATH environment variable.

## Making It Work in PowerShell

If `jarvis` does not work in PowerShell, create an alias in your PowerShell profile:

1. Open PowerShell and run:
   ```powershell
   notepad $PROFILE
   ```

2. Add the following line to the file:
   ```powershell
   Set-Alias jarvis "C:\scripts\jarvis.bat"
   ```

3. Save and close the file.

4. Reload your profile:
   ```powershell
   . $PROFILE
   ```

5. Test the command:
   ```powershell
   jarvis MyApp.java
   ```

## Contribution Policy

Contributions are welcome! To contribute:
1. Fork this repository.
2. Create a new branch:
   ```bash
   git checkout -b feature-name
   ```
3. Make your changes and commit them:
   ```bash
   git commit -m "Description of changes"
   ```
4. Push to your fork:
   ```bash
   git push origin feature-name
   ```
5. Submit a pull request.

## License

This project is licensed under the MIT License.

```
MIT License

Copyright (c) 2024 Aashif

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
