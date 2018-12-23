# asmscript-helloworld

This code is an AssemblyScript a significant part of Substrate's test runtime:

https://github.com/paritytech/substrate/blob/994d1abb799c152e509e1bcb59fe0466bc9754a8/core/executor/wasm/src/lib.rs#L48

To test:

Install AssemblyScript:

    npm install --save-dev AssemblyScript/assemblyscript

then build the module:

    npx asinit

then check out substrate code into a neighbouring directory:

    git clone git@github.com:paritytech/substrate.git

and change the reference in the tests to your wasm module, in every line like   https://github.com/paritytech/substrate/blob/e54390219631fd81438aff7d60a153b362a001c1/core/executor/src/wasm_executor.rs#L722

and then run tests:

    # in Substrate directory
    cd core/executor
    cargo test

All the implemented ones should work.
