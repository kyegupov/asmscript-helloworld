(module
 (type $iiI (func (param i32 i32) (result i64)))
 (type $iv (func (param i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iI (func (param i32) (result i64)))
 (type $I (func (result i64)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (import "env" "ext_print_utf8" (func $assembly/index/ext_print_utf8 (param i32 i32)))
 (import "env" "ext_set_storage" (func $assembly/index/ext_set_storage (param i32 i32 i32 i32)))
 (import "env" "ext_get_allocated_storage" (func $assembly/index/ext_get_allocated_storage (param i32 i32 i32) (result i32)))
 (import "env" "ext_clear_prefix" (func $assembly/index/ext_clear_prefix (param i32 i32)))
 (import "env" "ext_blake2_256" (func $assembly/index/ext_blake2_256 (param i32 i32 i32)))
 (import "env" "ext_twox_256" (func $assembly/index/ext_twox_256 (param i32 i32 i32)))
 (import "env" "ext_twox_128" (func $assembly/index/ext_twox_128 (param i32 i32 i32)))
 (import "env" "ext_ed25519_verify" (func $assembly/index/ext_ed25519_verify (param i32 i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\0b\00\00\00s\00e\00t\00_\00s\00t\00o\00r\00a\00g\00e\00")
 (data (i32.const 40) "\05\00\00\00i\00n\00p\00u\00t\00")
 (data (i32.const 56) "\07\00\00\00s\00t\00o\00r\00a\00g\00e\00")
 (data (i32.const 80) "\03\00\00\00f\00o\00o\00")
 (data (i32.const 96) "\03\00\00\00b\00a\00z\00")
 (data (i32.const 112) "\t\00\00\00f\00i\00n\00i\00s\00h\00e\00d\00!\00")
 (data (i32.const 136) "\07\00\00\00a\00l\00l\00 \00o\00k\00!\00")
 (data (i32.const 160) "\n\00\00\00t\00e\00s\00t\00 \00p\00a\00n\00i\00c\00")
 (data (i32.const 184) "\1b\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 248) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 312) "\04\00\00\00z\00e\00r\00o\00")
 (data (i32.const 328) "\03\00\00\00o\00n\00e\00")
 (data (i32.const 344) "\03\00\00\00t\00w\00o\00")
 (data (i32.const 360) "\0c\00\00\00\00\00\00\008\01\00\00H\01\00\00X\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 392) "h\01\00\00\03\00\00\00")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/internal/string/HEADER_SIZE i32 (i32.const 4))
 (global $~lib/builtins/u32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $HEAP_BASE i32 (i32.const 400))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test_data_in" (func $assembly/index/test_data_in))
 (export "test_clear_prefix" (func $assembly/index/test_clear_prefix))
 (export "test_empty_return" (func $assembly/index/test_empty_return))
 (export "test_panic" (func $assembly/index/test_panic))
 (export "test_conditional_panic" (func $assembly/index/test_conditional_panic))
 (export "test_blake2_256" (func $assembly/index/test_blake2_256))
 (export "test_twox_256" (func $assembly/index/test_twox_256))
 (export "test_twox_128" (func $assembly/index/test_twox_128))
 (export "test_ed25519_verify" (func $assembly/index/test_ed25519_verify))
 (export "test_enumerated_trie_root" (func $assembly/index/test_enumerated_trie_root))
 (start $start)
 (func $~lib/string/String#get:lengthUTF8 (; 9 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  set_local $1
  i32.const 0
  set_local $2
  get_local $0
  i32.load
  set_local $3
  block $break|0
   loop $continue|0
    get_local $2
    get_local $3
    i32.lt_u
    if
     block
      get_local $0
      get_local $2
      i32.const 1
      i32.shl
      i32.add
      i32.load16_u offset=4
      set_local $4
      get_local $4
      i32.const 128
      i32.lt_u
      if
       get_local $1
       i32.const 1
       i32.add
       set_local $1
       get_local $2
       i32.const 1
       i32.add
       set_local $2
      else       
       get_local $4
       i32.const 2048
       i32.lt_u
       if
        get_local $1
        i32.const 2
        i32.add
        set_local $1
        get_local $2
        i32.const 1
        i32.add
        set_local $2
       else        
        get_local $4
        i32.const 64512
        i32.and
        i32.const 55296
        i32.eq
        tee_local $5
        if (result i32)
         get_local $2
         i32.const 1
         i32.add
         get_local $3
         i32.lt_u
        else         
         get_local $5
        end
        tee_local $5
        if (result i32)
         get_local $0
         get_local $2
         i32.const 1
         i32.add
         i32.const 1
         i32.shl
         i32.add
         i32.load16_u offset=4
         i32.const 64512
         i32.and
         i32.const 56320
         i32.eq
        else         
         get_local $5
        end
        if
         get_local $1
         i32.const 4
         i32.add
         set_local $1
         get_local $2
         i32.const 2
         i32.add
         set_local $2
        else         
         get_local $1
         i32.const 3
         i32.add
         set_local $1
         get_local $2
         i32.const 1
         i32.add
         set_local $2
        end
       end
      end
     end
     br $continue|0
    end
   end
  end
  get_local $1
 )
 (func $~lib/allocator/arena/__memory_allocate (; 10 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  get_global $~lib/internal/allocator/MAX_SIZE_32
  i32.gt_u
  if
   unreachable
  end
  get_global $~lib/allocator/arena/offset
  set_local $1
  get_local $1
  get_local $0
  tee_local $2
  i32.const 1
  tee_local $3
  get_local $2
  get_local $3
  i32.gt_u
  select
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  set_local $4
  current_memory
  set_local $5
  get_local $4
  get_local $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   get_local $4
   get_local $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   set_local $2
   get_local $5
   tee_local $3
   get_local $2
   tee_local $6
   get_local $3
   get_local $6
   i32.gt_s
   select
   set_local $3
   get_local $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    get_local $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  get_local $4
  set_global $~lib/allocator/arena/offset
  get_local $1
 )
 (func $~lib/string/String#toUTF8 (; 11 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/memory/memory.allocate|inlined.0 (result i32)
   get_local $0
   call $~lib/string/String#get:lengthUTF8
   set_local $1
   get_local $1
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.0
  end
  set_local $2
  i32.const 0
  set_local $3
  get_local $0
  i32.load
  set_local $4
  i32.const 0
  set_local $5
  block $break|0
   loop $continue|0
    get_local $3
    get_local $4
    i32.lt_u
    if
     block
      get_local $0
      get_local $3
      i32.const 1
      i32.shl
      i32.add
      i32.load16_u offset=4
      set_local $1
      get_local $1
      i32.const 128
      i32.lt_u
      if
       get_local $2
       get_local $5
       i32.add
       get_local $1
       i32.store8
       get_local $5
       i32.const 1
       i32.add
       set_local $5
       get_local $3
       i32.const 1
       i32.add
       set_local $3
      else       
       get_local $1
       i32.const 2048
       i32.lt_u
       if
        get_local $2
        get_local $5
        i32.add
        set_local $6
        get_local $6
        get_local $1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8
        get_local $6
        get_local $1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=1
        get_local $5
        i32.const 2
        i32.add
        set_local $5
        get_local $3
        i32.const 1
        i32.add
        set_local $3
       else        
        get_local $2
        get_local $5
        i32.add
        set_local $6
        get_local $1
        i32.const 64512
        i32.and
        i32.const 55296
        i32.eq
        tee_local $7
        if (result i32)
         get_local $3
         i32.const 1
         i32.add
         get_local $4
         i32.lt_u
        else         
         get_local $7
        end
        if
         get_local $0
         get_local $3
         i32.const 1
         i32.add
         i32.const 1
         i32.shl
         i32.add
         i32.load16_u offset=4
         set_local $7
         get_local $7
         i32.const 64512
         i32.and
         i32.const 56320
         i32.eq
         if
          i32.const 65536
          get_local $1
          i32.const 1023
          i32.and
          i32.const 10
          i32.shl
          i32.add
          get_local $7
          i32.const 1023
          i32.and
          i32.add
          set_local $1
          get_local $6
          get_local $1
          i32.const 18
          i32.shr_u
          i32.const 240
          i32.or
          i32.store8
          get_local $6
          get_local $1
          i32.const 12
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=1
          get_local $6
          get_local $1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=2
          get_local $6
          get_local $1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=3
          get_local $5
          i32.const 4
          i32.add
          set_local $5
          get_local $3
          i32.const 2
          i32.add
          set_local $3
          br $continue|0
         end
        end
        get_local $6
        get_local $1
        i32.const 12
        i32.shr_u
        i32.const 224
        i32.or
        i32.store8
        get_local $6
        get_local $1
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=1
        get_local $6
        get_local $1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=2
        get_local $5
        i32.const 3
        i32.add
        set_local $5
        get_local $3
        i32.const 1
        i32.add
        set_local $3
       end
      end
     end
     br $continue|0
    end
   end
  end
  get_local $2
  get_local $5
  i32.add
  i32.const 0
  i32.store8
  get_local $2
 )
 (func $~lib/memory/memory.allocate (; 12 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  call $~lib/allocator/arena/__memory_allocate
  return
 )
 (func $assembly/index/MemSlice#constructor (; 13 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $3
    get_local $3
    get_local $1
    i32.store
    get_local $3
    get_local $2
    i32.store offset=4
    get_local $3
   end
   tee_local $0
  end
  tee_local $0
 )
 (func $assembly/index/stringToMemSlice (; 14 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  call $~lib/string/String#get:lengthUTF8
  i32.const 1
  i32.sub
  set_local $1
  get_local $0
  call $~lib/string/String#toUTF8
  set_local $2
  i32.const 0
  get_local $0
  call $~lib/string/String#toUTF8
  get_local $0
  call $~lib/string/String#get:lengthUTF8
  i32.const 1
  i32.sub
  call $assembly/index/MemSlice#constructor
 )
 (func $assembly/index/print (; 15 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  get_local $0
  call $assembly/index/stringToMemSlice
  set_local $1
  get_local $1
  i32.load
  get_local $1
  i32.load offset=4
  call $assembly/index/ext_print_utf8
 )
 (func $assembly/index/set_storage (; 16 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  get_local $0
  call $assembly/index/stringToMemSlice
  set_local $2
  get_local $2
  i32.load
  get_local $2
  i32.load offset=4
  get_local $1
  i32.load
  get_local $1
  i32.load offset=4
  call $assembly/index/ext_set_storage
 )
 (func $~lib/allocator/arena/__memory_free (; 17 ;) (type $iv) (param $0 i32)
  nop
 )
 (func $assembly/index/storage (; 18 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  call $assembly/index/stringToMemSlice
  set_local $1
  block $~lib/memory/memory.allocate|inlined.1 (result i32)
   i32.const 1
   set_local $2
   get_local $2
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.1
  end
  set_local $2
  get_local $1
  i32.load
  get_local $1
  i32.load offset=4
  get_local $2
  call $assembly/index/ext_get_allocated_storage
  set_local $3
  get_local $2
  i32.load
  set_local $4
  get_local $4
  get_global $~lib/builtins/u32.MAX_VALUE
  i32.eq
  if
   i32.const 0
   return
  end
  block $~lib/memory/memory.free|inlined.0
   block
    get_local $2
    call $~lib/allocator/arena/__memory_free
    br $~lib/memory/memory.free|inlined.0
    unreachable
   end
   unreachable
  end
  i32.const 0
  get_local $3
  get_local $4
  call $assembly/index/MemSlice#constructor
 )
 (func $assembly/index/memSliceReturn (; 19 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  get_local $0
  i64.extend_u/i32
  i64.add
 )
 (func $assembly/index/MemSlice#asCompactReturn (; 20 ;) (type $iI) (param $0 i32) (result i64)
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  call $assembly/index/memSliceReturn
 )
 (func $assembly/index/test_data_in (; 21 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  i32.const 8
  call $assembly/index/print
  i32.const 40
  i32.const 0
  get_local $0
  get_local $1
  call $assembly/index/MemSlice#constructor
  call $assembly/index/set_storage
  i32.const 56
  call $assembly/index/print
  i32.const 80
  call $assembly/index/storage
  set_local $2
  i32.const 8
  call $assembly/index/print
  i32.const 96
  get_local $2
  call $assembly/index/set_storage
  i32.const 112
  call $assembly/index/print
  i32.const 136
  call $assembly/index/stringToMemSlice
  call $assembly/index/MemSlice#asCompactReturn
 )
 (func $assembly/index/test_clear_prefix (; 22 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  get_local $0
  get_local $1
  call $assembly/index/ext_clear_prefix
  i32.const 136
  call $assembly/index/stringToMemSlice
  call $assembly/index/MemSlice#asCompactReturn
 )
 (func $assembly/index/test_empty_return (; 23 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  i32.const 0
  i32.const 0
  call $assembly/index/memSliceReturn
 )
 (func $assembly/index/panic (; 24 ;) (type $iI) (param $0 i32) (result i64)
  (local $1 i32)
  get_local $0
  call $assembly/index/stringToMemSlice
  set_local $1
  get_local $1
  i32.load
  get_local $1
  i32.load offset=4
  call $assembly/index/ext_print_utf8
  unreachable
 )
 (func $assembly/index/test_panic (; 25 ;) (type $I) (result i64)
  i32.const 160
  call $assembly/index/panic
 )
 (func $assembly/index/test_conditional_panic (; 26 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  get_local $1
  i32.const 0
  i32.gt_u
  if
   i32.const 160
   call $assembly/index/panic
   drop
  end
  get_local $0
  get_local $1
  call $assembly/index/memSliceReturn
 )
 (func $assembly/index/test_blake2_256 (; 27 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  block $~lib/memory/memory.allocate|inlined.2 (result i32)
   i32.const 32
   set_local $2
   get_local $2
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.2
  end
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $assembly/index/ext_blake2_256
  get_local $2
  i32.const 32
  call $assembly/index/memSliceReturn
 )
 (func $assembly/index/test_twox_256 (; 28 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  block $~lib/memory/memory.allocate|inlined.3 (result i32)
   i32.const 32
   set_local $2
   get_local $2
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.3
  end
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $assembly/index/ext_twox_256
  get_local $2
  i32.const 32
  call $assembly/index/memSliceReturn
 )
 (func $assembly/index/test_twox_128 (; 29 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  block $~lib/memory/memory.allocate|inlined.4 (result i32)
   i32.const 16
   set_local $2
   get_local $2
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.4
  end
  set_local $2
  get_local $0
  get_local $1
  get_local $2
  call $assembly/index/ext_twox_128
  get_local $2
  i32.const 16
  call $assembly/index/memSliceReturn
 )
 (func $assembly/index/test_ed25519_verify (; 30 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  set_local $2
  get_local $0
  i32.const 32
  i32.add
  set_local $3
  i32.const 136
  call $assembly/index/stringToMemSlice
  set_local $4
  block $~lib/memory/memory.allocate|inlined.5 (result i32)
   i32.const 1
   set_local $5
   get_local $5
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.5
  end
  set_local $5
  get_local $4
  i32.load
  get_local $4
  i32.load offset=4
  get_local $3
  get_local $2
  call $assembly/index/ext_ed25519_verify
  set_local $6
  get_local $5
  get_local $6
  i32.store8
  get_local $5
  i64.extend_u/i32
 )
 (func $~lib/internal/arraybuffer/computeSize (; 31 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  get_local $0
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 32 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 248
   i32.const 26
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $~lib/memory/memory.allocate|inlined.6 (result i32)
   get_local $0
   call $~lib/internal/arraybuffer/computeSize
   set_local $2
   get_local $2
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.6
  end
  set_local $1
  get_local $1
  get_local $0
  i32.store
  get_local $1
 )
 (func $~lib/internal/memory/memset (; 33 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  get_local $2
  i32.eqz
  if
   return
  end
  get_local $0
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 1
  i32.sub
  get_local $1
  i32.store8
  get_local $2
  i32.const 2
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 1
  i32.add
  get_local $1
  i32.store8
  get_local $0
  i32.const 2
  i32.add
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 2
  i32.sub
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 3
  i32.sub
  get_local $1
  i32.store8
  get_local $2
  i32.const 6
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 3
  i32.add
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 4
  i32.sub
  get_local $1
  i32.store8
  get_local $2
  i32.const 8
  i32.le_u
  if
   return
  end
  i32.const 0
  get_local $0
  i32.sub
  i32.const 3
  i32.and
  set_local $3
  get_local $0
  get_local $3
  i32.add
  set_local $0
  get_local $2
  get_local $3
  i32.sub
  set_local $2
  get_local $2
  i32.const -4
  i32.and
  set_local $2
  i32.const -1
  i32.const 255
  i32.div_u
  get_local $1
  i32.const 255
  i32.and
  i32.mul
  set_local $4
  get_local $0
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 4
  i32.sub
  get_local $4
  i32.store
  get_local $2
  i32.const 8
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 4
  i32.add
  get_local $4
  i32.store
  get_local $0
  i32.const 8
  i32.add
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 12
  i32.sub
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 8
  i32.sub
  get_local $4
  i32.store
  get_local $2
  i32.const 24
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 12
  i32.add
  get_local $4
  i32.store
  get_local $0
  i32.const 16
  i32.add
  get_local $4
  i32.store
  get_local $0
  i32.const 20
  i32.add
  get_local $4
  i32.store
  get_local $0
  i32.const 24
  i32.add
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 28
  i32.sub
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 24
  i32.sub
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 20
  i32.sub
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 16
  i32.sub
  get_local $4
  i32.store
  i32.const 24
  get_local $0
  i32.const 4
  i32.and
  i32.add
  set_local $3
  get_local $0
  get_local $3
  i32.add
  set_local $0
  get_local $2
  get_local $3
  i32.sub
  set_local $2
  get_local $4
  i64.extend_u/i32
  get_local $4
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  set_local $5
  block $break|0
   loop $continue|0
    get_local $2
    i32.const 32
    i32.ge_u
    if
     block
      get_local $0
      get_local $5
      i64.store
      get_local $0
      i32.const 8
      i32.add
      get_local $5
      i64.store
      get_local $0
      i32.const 16
      i32.add
      get_local $5
      i64.store
      get_local $0
      i32.const 24
      i32.add
      get_local $5
      i64.store
      get_local $2
      i32.const 32
      i32.sub
      set_local $2
      get_local $0
      i32.const 32
      i32.add
      set_local $0
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/internal/typedarray/TypedArray<u32>#constructor (; 34 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 268435454
  i32.gt_u
  if
   i32.const 0
   i32.const 184
   i32.const 23
   i32.const 34
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  i32.shl
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $3
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $4
  i32.const 0
  set_local $5
  get_local $4
  get_local $5
  get_local $2
  call $~lib/internal/memory/memset
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 12
    call $~lib/memory/memory.allocate
    set_local $5
    get_local $5
    i32.const 0
    i32.store
    get_local $5
    i32.const 0
    i32.store offset=4
    get_local $5
    i32.const 0
    i32.store offset=8
    get_local $5
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  i32.const 0
  i32.store offset=4
  get_local $0
  get_local $2
  i32.store offset=8
  get_local $0
 )
 (func $assembly/index/test_enumerated_trie_root (; 35 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u32>#constructor
  set_local $2
  i32.const 392
  set_local $3
  block $~lib/memory/memory.allocate|inlined.7 (result i32)
   i32.const 32
   set_local $4
   get_local $4
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.7
  end
  set_local $4
  get_local $4
  i32.const 32
  call $assembly/index/memSliceReturn
 )
 (func $start (; 36 ;) (type $v)
  get_global $HEAP_BASE
  get_global $~lib/internal/allocator/AL_MASK
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
 )
 (func $null (; 37 ;) (type $v)
 )
)
