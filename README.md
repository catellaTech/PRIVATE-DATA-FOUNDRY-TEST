<a href="https://github.com/catellaTech/PRIVATE-DATA-FOUNDRY-TEST/actions/workflows/test.yml"><img src="https://travis-ci.org/mpaland/printf.svg?branch=master"></a>
<a href="https://github.com/catellaTech" target="_blank">
    <img alt="Author" src="https://img.shields.io/badge/made%20by-CatellaTech-blueviolet?style=flat-square">
  </a>
<br>
<br>

<h1>Read private data with Foundry</h1>

We will build a simple contract, along with a Foundry Test, to demonstrate this. Our contract will attempt to store data in private variables hoping that nobody will be able to read it's value. 📚🔓

To understand how this works, recall from the Ethereum Storage and Execution level that variables in Solidity are stored in 32 byte (256 bit) storage slots, and that data is stored sequentially in these storage slots based on the order in which these variables are declared.

Storage is also optimized such that if a bunch of variables can fit in one slot, they are put in the same slot. This is called variable packing.

What you will practices in this test:
- setUp: it's an optional function, it's like the beforeEach in JS
- The functions we want to test must start with "test", they're like the "it" in JS
- Learning how to config the foundry cheatcodes to make what we want, in this case access to the private data. 
and so much more.

The main idea of this project was to practice Foundry and its most basic commands for testing with Solidity. 

🚨 Note: One of the commands that helped us detect errors faster with -v (verbosity).

Verbosity of the EVM.

Pass multiple times to increase the verbosity (e.g. -v, -vv, -vvv).

Verbosity levels:

- 2: Print logs for all tests
- 3: Print execution traces for failing tests
- 4: Print execution traces for all tests, and setup traces for failing tests
- 5: Print execution and setup traces for all tests.

But you can only run the test, because we config in `foundry.toml` file the verbosity.

<hr>
<h2> Installing / Getting started </h2>

```bash
# Clone this project
$ git clone https://github.com/catellaTech/PRIVATE-DATA-FOUNDRY-TEST

# Access
$ cd PRIVATE-DATA-FOUNDRY-TEST

# Install dependencies
$ forge install
``` 
- Follow the [instructions](https://book.getfoundry.sh/getting-started/installation.html) to install [Foundry](https://github.com/foundry-rs/foundry).

<h2>Commands</h2>

- $ `forge build`
- $ `forge test`


<h2> Technologies / Built With </h2>

- Solidity
- Foundry

<h2>Contributing</h2>
Contributions are always welcome! Open a PR or an issue!

<br>
<br>

<p align="center">
<a href="mailto:catellatech@gmail.com" target="_blank" >
  <img alt="Email - J.Gabriela" src="https://img.shields.io/badge/Email--%23F8952D?style=social&logo=gmail">
</a> 
<br/>
  Made with ❤️ by <b>catellaTech</b>.
<p/>