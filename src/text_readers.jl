
"Trait for how to parse strings into blocks"
abstract type MathReaderType end

"Singleton identifying string as CEX data to parse."
struct Euclid <: MathReaderType end

"Singleton identifying string as URL source for CEX data to parse."
struct Archimedes <: ReaderType end

