# Individual Project #1: Rust CLI
Build a useful command-line tool in the domain of data engineering or machine learning engineering.


In these weeks, I learned some basics of Rust and the usage of Rust Project Template (from https://github.com/nogibjj/rust-new-project-template), and I gained some hands-on experience on building my first Rust project -- Command-line tool for solving the [n-queens problem](https://www.quantamagazine.org/mathematician-answers-chess-problem-about-attacking-queens-20210921/) with different board sizes.

![a-A-solution-to-the-non-attacking-8-queens-problem-b-An-optimal-solution-to-the](https://user-images.githubusercontent.com/50161537/217409777-c2d1587a-5e19-4c74-a013-61f653a04687.png)
(image reference: https://www.researchgate.net/figure/a-A-solution-to-the-non-attacking-8-queens-problem-b-An-optimal-solution-to-the_fig1_278681097)

### Usage
> Run `cargo run -- n-queen -i [size]` to form all possible n-queens problem solutions with board size equals to `size`, where queens are represented by 'Q' and empty tiles are represented by '.'; e.g. the output of running command `cargo run -- n-queen -i 4` is

```
[
    [
        ".Q..",
        "...Q",
        "Q...",
        "..Q.",
    ],
    [
        "..Q.",
        "Q...",
        "...Q",
        ".Q..",
    ],
]
```
> where the two boards above shows the only two valid solutions to the n-queens (4-queens here) problem with board size of 4.

### Containerized Version
For this project, I also include a containerized version--one can use the command `docker pull yilunwu1/n-queens` to pull the project repository down and play it around by himself/herself.

> In docker mode, run `docker run --rm -it n-queens n-queen -i [size]` to form all possible n-queens problem solutions with board size equals to `size`.
