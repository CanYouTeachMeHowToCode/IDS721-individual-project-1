/*Command-line interface for N-Queens */
use clap::Parser;

#[derive(Parser)]
#[clap(
    version = "1.0",
    author = "Yilun Wu",
    about = "Command-line interface for N-Queens"
)]
struct Cli {
    #[clap(subcommand)]
    command: Option<Commands>,
}

#[derive(Parser)]
enum Commands {
    #[clap(version = "1.0", author = "Yilun Wu")]
    NQueen {
        #[clap(short, long)]
        input: i32,
    },
}

fn main() {
    let args = Cli::parse();
    match args.command {
        Some(Commands::NQueen { input }) => {
            let res = containerized_n_queens_cli::n_queens(input);
            println!("{res:#?}");
        }
        None => {
            println!("No command given");
        }
    }
}
