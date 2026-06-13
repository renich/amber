## 2024-06-13 - Command Injection in CLI Utilities
**Vulnerability:** Command injection in `src/amber/cli/commands/encrypt.cr` via string interpolation in the `system(...)` command (`system("#{options.editor} #{unencrypted_file}")`). If `env` or `editor` contains shell special characters, arbitrary commands could be executed.
**Learning:** Passing a single string to `system(...)` causes it to be evaluated by a shell, allowing shell meta-characters to alter execution. User-controlled variables interpolated into this string create command injection vulnerabilities.
**Prevention:** Avoid string interpolation when calling system commands. Use the array form of `system(executable, args_array)` or `Process.run(executable, args_array)` to bypass the shell entirely and pass arguments safely.
