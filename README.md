# DD (Die and Dump) Legacy

## Summary
This library adds support for the Symfony (and other projects that use it such as Laravel) style `dd` function to projects that depend on a PHP version from `5.3.3` to `7.1.3`. 

**If your project's PHP version is above `7.1.3`, then don't use this project. Require `symfony/var-dumper` [directly](https://symfony.com/components/VarDumper).**

```shell
composer require alig96/dd-legacy
```

## Compatibility

| PHP Version | Tested & Supported     |
|-------------|------------------------|
| < 5.3       | ❌                      |
| 5.3.29      | ✅                      |
| 5.6.40      | ✅                      |
| 7.0.33      | ✅                      |
| 7.1.2       | ✅                      |
| \> 7.1.2    | ❌  (See above comment) |

See [test.md](./documentation/test.md) for more details about how these tests were conducted.

## Notes
This project is a wrapper for [symfony/var-dumper](https://symfony.com/components/VarDumper) so please go contribute and support them for more great software.