// Allocator needed to return arrays
import "allocator/arena";

// Parity WASM modules return byte vectors encoded as i64 numbers (lower 4 bytes offset, higher 4 bytes length)
// See https://github.com/paritytech/substrate/blob/e54390219631fd81438aff7d60a153b362a001c1/core/executor/src/wasm_executor.rs#L702
function stringToParityVecU8(v: string): u64 {
    let len = <u64>(v.lengthUTF8-1);
    let offset = <u64>v.toUTF8();
    return (len << 32) + offset;
}

// Parity WasmExecutor provides this environment.
// See https://github.com/paritytech/substrate/blob/e54390219631fd81438aff7d60a153b362a001c1/core/sr-io/without_std.rs#L56
declare namespace env {
    function ext_free(addr: i32): void;
    function ext_print_utf8(utf8_data: i32, utf8_len: u32): void;
    function ext_print_hex(data: i32, len: u32): void;
    function ext_print_num(value: u64): void;
    function ext_set_storage(key_data: i32, key_len: u32, value_data: i32, value_len: u32): void;
    function ext_set_child_storage(storage_key_data: i32, storage_key_len: u32, key_data: i32, key_len: u32, value_data: i32, value_len: u32): void;
    function ext_clear_storage(key_data: i32, key_len: u32): void;
    function ext_clear_child_storage(storage_key_data: i32, storage_key_len: u32, key_data: i32, key_len: u32): void;
    function ext_exists_storage(key_data: i32, key_len: u32): u32;
    function ext_exists_child_storage(storage_key_data: i32, storage_key_len: u32, key_data: i32, key_len: u32): u32;
    function ext_clear_prefix(prefix_data: i32, prefix_len: u32): void;
    function ext_kill_child_storage(storage_key_data: i32, storage_key_len: u32): void;
    function ext_get_allocated_storage(key_data: i32, key_len: u32, written_out_addr: i32): i32;
    function ext_get_allocated_child_storage(storage_key_data: i32, storage_key_len: u32, key_data: i32, key_len: u32, written_out_addr: i32): i32;
    function ext_get_storage_into(key_data: i32, key_len: u32, value_data: i32, value_len: u32, value_offset: u32): u32;
    function ext_get_child_storage_into(storage_key_data: i32, storage_key_len: u32, key_data: i32, key_len: u32, value_data: i32, value_len: u32, value_offset: u32): u32;
    function ext_storage_root(result: i32): void;
    function ext_child_storage_root(storage_key_data: i32, storage_key_len: u32, written_out_addr: i32): i32;
    function ext_storage_changes_root(parent_hash_data: i32, parent_hash_len: u32, parent_num: u64, result: i32): u32;
    function ext_blake2_256_enumerated_trie_root(values_data: i32, lens_data_addr: i32, lens_len: u32, result: i32): void;
    function ext_chain_id(): u64;
    function ext_blake2_256(data: i32, len: u32, out: i32): void;
    function ext_twox_128(data: i32, len: u32, out: i32): void;
    function ext_twox_256(data: i32, len: u32, out: i32): void;
    function ext_ed25519_verify(msg_data: i32, msg_len: u32, sig_data: i32, pubkey_data: i32): u32;
}

export function test_empty_return(a: i32, b: i32): u64 {
    return stringToParityVecU8("");
}
