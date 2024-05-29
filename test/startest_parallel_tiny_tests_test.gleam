import gleeunit
import startest
import startest/config

pub fn main() {
  // gleeunit.main()
  startest.run(startest.default_config() |> config.with_reporters([]))
}
