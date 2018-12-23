// Allocator needed to return arrays
import "allocator/arena";

// Parity WasmExecutor provides this environment.
// See https://github.com/paritytech/substrate/blob/e54390219631fd81438aff7d60a153b362a001c1/core/sr-io/without_std.rs#L56

// TODO: find out why declaring namespace "env" would result in these functions
// imported as "index" "env.func_name"
@external("env", "ext_free")
declare function ext_free(addr: i32): void;
@external("env", "ext_print_utf8")
declare function ext_print_utf8(utf8_data: u32, utf8_len: u32): void;
@external("env", "ext_print_hex")
declare function ext_print_hex(data: i32, len: u32): void;
@external("env", "ext_print_num")
declare function ext_print_num(value: u64): void;
@external("env", "ext_set_storage")
declare function ext_set_storage(key_data: i32, key_len: u32, value_data: i32, value_len: u32): void;
@external("env", "ext_set_child_storage")
declare function ext_set_child_storage(storage_key_data: i32, storage_key_len: u32, key_data: i32, key_len: u32, value_data: i32, value_len: u32): void;
@external("env", "ext_clear_storage")
declare function ext_clear_storage(key_data: i32, key_len: u32): void;
@external("env", "ext_clear_child_storage")
declare function ext_clear_child_storage(storage_key_data: i32, storage_key_len: u32, key_data: i32, key_len: u32): void;
@external("env", "ext_exists_storage")
declare function ext_exists_storage(key_data: i32, key_len: u32): u32;
@external("env", "ext_exists_child_storage")
declare function ext_exists_child_storage(storage_key_data: i32, storage_key_len: u32, key_data: i32, key_len: u32): u32;
@external("env", "ext_clear_prefix")
declare function ext_clear_prefix(prefix_data: i32, prefix_len: u32): void;
@external("env", "ext_kill_child_storage")
declare function ext_kill_child_storage(storage_key_data: i32, storage_key_len: u32): void;
@external("env", "ext_get_allocated_storage")
declare function ext_get_allocated_storage(key_data: i32, key_len: u32, written_out_addr: i32): i32;
@external("env", "ext_get_allocated_child_storage")
declare function ext_get_allocated_child_storage(storage_key_data: i32, storage_key_len: u32, key_data: i32, key_len: u32, written_out_addr: i32): i32;
@external("env", "ext_get_storage_into")
declare function ext_get_storage_into(key_data: i32, key_len: u32, value_data: i32, value_len: u32, value_offset: u32): u32;
@external("env", "ext_get_child_storage_into")
declare function ext_get_child_storage_into(storage_key_data: i32, storage_key_len: u32, key_data: i32, key_len: u32, value_data: i32, value_len: u32, value_offset: u32): u32;
@external("env", "ext_storage_root")
declare function ext_storage_root(result: i32): void;
@external("env", "ext_child_storage_root")
declare function ext_child_storage_root(storage_key_data: i32, storage_key_len: u32, written_out_addr: i32): i32;
@external("env", "ext_storage_changes_root")
declare function ext_storage_changes_root(parent_hash_data: i32, parent_hash_len: u32, parent_num: u64, result: i32): u32;
@external("env", "ext_blake2_256_enumerated_trie_root")
declare function ext_blake2_256_enumerated_trie_root(values_data: i32, lens_data_addr: i32, lens_len: u32, result: i32): void;
@external("env", "ext_chain_id")
declare function ext_chain_id(): u64;
@external("env", "ext_blake2_256")
declare function ext_blake2_256(data: i32, len: u32, out: i32): void;
@external("env", "ext_twox_128")
declare function ext_twox_128(data: i32, len: u32, out: i32): void;
@external("env", "ext_twox_256")
declare function ext_twox_256(data: i32, len: u32, out: i32): void;
@external("env", "ext_ed25519_verify")
declare function ext_ed25519_verify(msg_data: i32, msg_len: u32, sig_data: i32, pubkey_data: i32): u32;

class MemSlice {
    constructor(readonly offset: usize, readonly length: usize) { }

    asCompactReturn(): u64 {
        return memSliceReturn(this.offset, this.length);
    }
}

// @inline?
function memSliceReturn(offset: usize, length: usize): u64 {
    return ((<u64>length) << 32) + <u64>offset;
}

// TODO: find out how to use it instead of env.abort - https://github.com/AssemblyScript/assemblyscript/issues/388
// function abort(
//     message: string | null,
//     fileName: string | null,
//     lineNumber: u32,
//     columnNumber: u32
// ): void {
//     let ms = stringToMemSlice(`${message} at ${fileName}:${lineNumber}:${columnNumber}`);
//     ext_print_utf8(ms.offset, ms.length);
//     unreachable();
// }

function panic(message: string): u64 {
    let ms = stringToMemSlice(message);
    ext_print_utf8(ms.offset, ms.length);
    return unreachable();
}


// Parity WASM modules return byte vectors encoded as i64 numbers (lower 4 bytes offset, higher 4 bytes length)
// See https://github.com/paritytech/substrate/blob/e54390219631fd81438aff7d60a153b362a001c1/core/executor/src/wasm_executor.rs#L702
function stringToMemSlice(v: string): MemSlice {
    let len = (v.lengthUTF8 - 1);
    let offset = v.toUTF8();
    return new MemSlice(v.toUTF8(), v.lengthUTF8 - 1);
}

function print(s: string): void {
    let ms = stringToMemSlice(s);
    ext_print_utf8(ms.offset, ms.length);
}

// TODO: bytes key
function set_storage(key: string, value: MemSlice): void {
    let ms = stringToMemSlice(key);
    ext_set_storage(ms.offset, ms.length, value.offset, value.length);
}

function storage(key: string): MemSlice | null {
    let ms = stringToMemSlice(key);
    let lengthPtr = memory.allocate(1);
    let offset = ext_get_allocated_storage(ms.offset, ms.length, lengthPtr);
    let length = load<u32>(lengthPtr);
    if (length == u32.MAX_VALUE) {
        return null;
    }
    memory.free(lengthPtr);
    return new MemSlice(offset, length);
}

export function test_data_in(offset: u32, len: u32): u64 {
    print("set_storage");
    set_storage("input", new MemSlice(offset, len));

    print("storage");
    let foo = <MemSlice>storage("foo");

    print("set_storage");
    set_storage("baz", foo);

    print("finished!");
    return stringToMemSlice("all ok!").asCompactReturn();
}

export function test_clear_prefix(offset: u32, len: u32): u64 {
    ext_clear_prefix(offset, len);
    return stringToMemSlice("all ok!").asCompactReturn();
}

export function test_empty_return(a: i32, b: i32): u64 {
    return memSliceReturn(0, 0);
}

export function test_panic(): u64 {
    return panic("test panic");
}

export function test_conditional_panic(offset: u32, len: u32): u64 {
    if (len > 0) {
        panic("test panic")
    }
    return memSliceReturn(offset, len);
}
export function test_blake2_256(offset: u32, len: u32): u64 {
    let resultPtr = memory.allocate(32);
    ext_blake2_256(offset, len, resultPtr);
    return memSliceReturn(resultPtr, 32)
}

export function test_twox_256(offset: u32, len: u32): u64 {
    let resultPtr = memory.allocate(32);
    ext_twox_256(offset, len, resultPtr);
    return memSliceReturn(resultPtr, 32)
}

export function test_twox_128(offset: u32, len: u32): u64 {
    let resultPtr = memory.allocate(16);
    ext_twox_128(offset, len, resultPtr);
    return memSliceReturn(resultPtr, 16)
}

export function test_ed25519_verify(offset: u32, len: u32): u64 {
    let pubkeyPtr = offset;
    let sigPtr = offset + 32;
    let msg = stringToMemSlice("all ok!");
    let resPtr = memory.allocate(1);
    let boolRes = <u8>ext_ed25519_verify(msg.offset, msg.length, sigPtr, pubkeyPtr);
    store<u8>(resPtr, boolRes);
    return resPtr;
}

// Can't use Uint32Array which requires undefined yet abort :(
    
// export function test_enumerated_trie_root(offset: u32, len: u32): u64 {
//     let valPtrs = new Uint32Array(3);
//     let lengths = new Uint32Array(3);
//     let values: string[] = ["zero", "one", "two"];
//     for (let i = 0; i < values.length; i++) {
//         let ms = stringToMemSlice(values[i]);
//         valPtrs[i] = ms.offset;
//         lengths[i] = ms.length;
//     }
//     let resultPtr = memory.allocate(32);

//     ext_blake2_256_enumerated_trie_root(
//         valPtrs.buffer.data + valPtrs.byteOffset,
//         lengths.buffer.data + lengths.byteOffset,
//         <u32>lengths.length,
//         resultPtr
//     );    
//     return memSliceReturn(resultPtr, 32);
// }

export function test_sandbox(code: &[u8]) {
    let ok = execute_sandboxed(code, &[]).is_ok();
    [ok as u8].to_vec()
}

// export function test_sandbox_args(code: &[u8]) {
//     let ok = execute_sandboxed(
//         code,
//         &[
//             sandbox::TypedValue::I32(0x12345678),
//             sandbox::TypedValue::I64(0x1234567887654321),
//         ]
//     ).is_ok();
//     [ok as u8].to_vec()
// }
// export function test_sandbox_return_val(code: &[u8]) {
//     let result = execute_sandboxed(
//         code,
//         &[
//             sandbox::TypedValue::I32(0x1336),
//         ]
//     );
//     let ok = if let Ok(sandbox::ReturnValue::Value(sandbox::TypedValue::I32(0x1337))) = result { true } else { false };
//     [ok as u8].to_vec()
// }
// export function test_sandbox_instantiate(code: &[u8]) {
//     let env_builder = sandbox::EnvironmentDefinitionBuilder::new();
//     let code = match sandbox::Instance::new(code, &env_builder, &mut ()) {
//         Ok(_) => 0,
//         Err(sandbox::Error::Module) => 1,
//         Err(sandbox::Error::Execution) => 2,
//         Err(sandbox::Error::OutOfBounds) => 3,
//     };
//     [code].to_vec()
// }
