# Stress testing startest task-based test runner

See https://github.com/maxdeviant/startest

This is a stress test of there test runners:

- Gleeunit
- Startest's default runner with no reporter
- A task-based parallel runner for startest from this [fork](https://github.com/mooreryan/startest/tree/parallel-tests)

## Timing

Run `gleam test`

With default gleeunit test runner

```
Finished in 32.334 seconds
9990 tests, 999 failures
Command exited with non-zero status 1                                                                                          
time: 33.18s -- 17.14s -- 2.82s, max cpu: 60%, max mem: 106060kb
```


With the startest default runner and no reporter

```
Test Files: 999
     Tests: 999 failed | 8991 passed (9990)
Started at: 15:17:53
  Duration: 903ms (discover 860ms, collect 20ms, tests 8ms, reporters 3µs)
Command exited with non-zero status 1
time: 1.81s -- 3.22s -- 0.70s, max cpu: 217%, max mem: 95288kb
```

With the startest task-based parallel runner and no reporter

```
Test Files: 999
     Tests: 999 failed | 8991 passed (9990)
Started at: 15:18:40
  Duration: 1s (discover 803ms, collect 19ms, tests 420ms, reporters 3µs)
Command exited with non-zero status 1
time: 1.86s -- 3.86s -- 0.74s, max cpu: 248%, max mem: 125368kb
```