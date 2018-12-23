(module
 (type $iiI (func (param i32 i32) (result i64)))
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\001")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test_empty_return" (func $assembly/index/test_empty_return))
 (start $start)
 (func $~lib/string/String#get:lengthUTF8 (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1
  set_local $1
  get_local $0
  i32.load
  set_local $4
  loop $continue|0
   get_local $2
   get_local $4
   i32.lt_u
   if
    get_local $0
    get_local $2
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u offset=4
    tee_local $3
    i32.const 128
    i32.lt_u
    if (result i32)
     get_local $1
     i32.const 1
     i32.add
     set_local $1
     get_local $2
     i32.const 1
     i32.add
    else     
     get_local $3
     i32.const 2048
     i32.lt_u
     if (result i32)
      get_local $1
      i32.const 2
      i32.add
      set_local $1
      get_local $2
      i32.const 1
      i32.add
     else      
      get_local $3
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      tee_local $3
      if (result i32)
       get_local $2
       i32.const 1
       i32.add
       get_local $4
       i32.lt_u
       tee_local $3
      else       
       get_local $3
      end
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
       get_local $3
      end
      if (result i32)
       get_local $1
       i32.const 4
       i32.add
       set_local $1
       get_local $2
       i32.const 2
       i32.add
      else       
       get_local $1
       i32.const 3
       i32.add
       set_local $1
       get_local $2
       i32.const 1
       i32.add
      end
     end
    end
    set_local $2
    br $continue|0
   end
  end
  get_local $1
 )
 (func $~lib/allocator/arena/__memory_allocate (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  get_global $~lib/allocator/arena/offset
  tee_local $2
  get_local $0
  i32.const 1
  tee_local $1
  get_local $0
  get_local $1
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const -8
  i32.and
  tee_local $3
  current_memory
  tee_local $1
  i32.const 16
  i32.shl
  i32.gt_u
  if
   get_local $1
   get_local $3
   get_local $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   tee_local $0
   tee_local $4
   get_local $1
   get_local $4
   i32.gt_s
   select
   grow_memory
   i32.const 0
   i32.lt_s
   if
    get_local $0
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  get_local $3
  set_global $~lib/allocator/arena/offset
  get_local $2
 )
 (func $~lib/string/String#toUTF8 (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_local $0
  call $~lib/string/String#get:lengthUTF8
  call $~lib/allocator/arena/__memory_allocate
  set_local $5
  get_local $0
  i32.load
  set_local $7
  loop $continue|0
   get_local $3
   get_local $7
   i32.lt_u
   if
    get_local $0
    get_local $3
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u offset=4
    tee_local $1
    i32.const 128
    i32.lt_u
    if
     get_local $2
     get_local $5
     i32.add
     get_local $1
     i32.store8
     get_local $2
     i32.const 1
     i32.add
     set_local $2
    else     
     get_local $1
     i32.const 2048
     i32.lt_u
     if
      get_local $2
      get_local $5
      i32.add
      tee_local $4
      get_local $1
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      i32.store8
      get_local $4
      get_local $1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=1
      get_local $2
      i32.const 2
      i32.add
      set_local $2
     else      
      get_local $2
      get_local $5
      i32.add
      set_local $4
      get_local $1
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      tee_local $6
      if (result i32)
       get_local $3
       i32.const 1
       i32.add
       get_local $7
       i32.lt_u
      else       
       get_local $6
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
       tee_local $6
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        get_local $4
        get_local $1
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.const 65536
        i32.add
        get_local $6
        i32.const 1023
        i32.and
        i32.add
        tee_local $1
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.store8
        get_local $4
        get_local $1
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=1
        get_local $4
        get_local $1
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=2
        get_local $4
        get_local $1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=3
        get_local $2
        i32.const 4
        i32.add
        set_local $2
        get_local $3
        i32.const 2
        i32.add
        set_local $3
        br $continue|0
       end
      end
      get_local $4
      get_local $1
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      i32.store8
      get_local $4
      get_local $1
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=1
      get_local $4
      get_local $1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      get_local $2
      i32.const 3
      i32.add
      set_local $2
     end
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $continue|0
   end
  end
  get_local $2
  get_local $5
  i32.add
  i32.const 0
  i32.store8
  get_local $5
 )
 (func $assembly/index/test_empty_return (; 3 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  i32.const 8
  call $~lib/string/String#get:lengthUTF8
  i32.const 1
  i32.sub
  i64.extend_s/i32
  set_local $2
  i32.const 8
  call $~lib/string/String#toUTF8
  i64.extend_u/i32
  get_local $2
  i64.const 32
  i64.shl
  i64.add
 )
 (func $start (; 4 ;) (type $v)
  i32.const 16
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
 )
 (func $null (; 5 ;) (type $v)
  nop
 )
)
