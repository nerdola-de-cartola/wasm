(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func))
  (type (;3;) (func (param i32 f64) (result i32)))
  (type (;4;) (func (param i32 i32)))
  (type (;5;) (func (param i32) (result f64)))
  (import "env" "_ZNSt3__213basic_ostreamIcNS_11char_traitsIcEEElsEd" (func (;0;) (type 3)))
  (import "env" "_ZNSt3__24endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_" (func (;1;) (type 0)))
  (import "env" "_ZNSt3__213basic_ostreamIcNS_11char_traitsIcEEE3putEc" (func (;2;) (type 1)))
  (import "env" "_ZNSt3__213basic_ostreamIcNS_11char_traitsIcEEE5flushEv" (func (;3;) (type 0)))
  (import "env" "_ZNKSt3__28ios_base6getlocEv" (func (;4;) (type 4)))
  (import "env" "_ZNSt3__26localeD1Ev" (func (;5;) (type 0)))
  (import "env" "_ZNKSt3__26locale9use_facetERNS0_2idE" (func (;6;) (type 1)))
  (import "env" "__stack_pointer" (global (;0;) (mut i32)))
  (import "env" "__memory_base" (global (;1;) i32))
  (import "env" "__table_base" (global (;2;) i32))
  (import "GOT.mem" "_ZNSt3__24coutE" (global (;3;) (mut i32)))
  (import "GOT.func" "_ZNSt3__24endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_" (global (;4;) (mut i32)))
  (import "GOT.mem" "_ZNSt3__25ctypeIcE2idE" (global (;5;) (mut i32)))
  (import "env" "memory" (memory (;0;) 0))
  (import "env" "__indirect_function_table" (table (;0;) 0 funcref))
  (func (;7;) (type 2))
  (func (;8;) (type 2))
  (func (;9;) (type 5) (param i32) (result f64)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64)
    global.get 0
    local.set 1
    i32.const 32
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=28
    f64.const 0x1.0c6f7a0b5ed8dp-20 (;=1e-06;)
    local.set 27
    local.get 3
    local.get 27
    f64.store offset=8
    local.get 3
    i32.load offset=28
    local.set 4
    i32.const 0
    local.set 5
    local.get 4
    local.set 6
    local.get 5
    local.set 7
    local.get 6
    local.get 7
    i32.lt_s
    local.set 8
    i32.const 1
    local.set 9
    local.get 8
    local.get 9
    i32.and
    local.set 10
    block  ;; label = @1
      local.get 10
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=28
      local.set 11
      i32.const -1
      local.set 12
      local.get 11
      local.get 12
      i32.mul
      local.set 13
      local.get 3
      local.get 13
      i32.store offset=28
    end
    f64.const 0x1p+0 (;=1;)
    local.set 28
    local.get 3
    local.get 28
    f64.store offset=16
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.load offset=28
        local.set 14
        local.get 14
        f64.convert_i32_s
        local.set 29
        local.get 3
        f64.load offset=16
        local.set 30
        local.get 3
        f64.load offset=16
        local.set 31
        local.get 30
        local.get 31
        f64.mul
        local.set 32
        local.get 3
        f64.load offset=16
        local.set 33
        local.get 32
        local.get 33
        f64.mul
        local.set 34
        local.get 29
        local.get 34
        f64.ge
        local.set 15
        i32.const 1
        local.set 16
        local.get 15
        local.get 16
        i32.and
        local.set 17
        local.get 17
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        f64.load offset=16
        local.set 35
        f64.const 0x1p+0 (;=1;)
        local.set 36
        local.get 35
        local.get 36
        f64.add
        local.set 37
        local.get 3
        local.get 37
        f64.store offset=16
        br 0 (;@2;)
      end
      unreachable
    end
    local.get 3
    f64.load offset=16
    local.set 38
    f64.const -0x1p+0 (;=-1;)
    local.set 39
    local.get 38
    local.get 39
    f64.add
    local.set 40
    local.get 3
    local.get 40
    f64.store offset=16
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        f64.load offset=16
        local.set 41
        local.get 3
        f64.load offset=16
        local.set 42
        local.get 41
        local.get 42
        f64.mul
        local.set 43
        local.get 3
        f64.load offset=16
        local.set 44
        local.get 43
        local.get 44
        f64.mul
        local.set 45
        local.get 3
        i32.load offset=28
        local.set 18
        local.get 18
        f64.convert_i32_s
        local.set 46
        local.get 45
        local.get 46
        f64.lt
        local.set 19
        i32.const 1
        local.set 20
        local.get 19
        local.get 20
        i32.and
        local.set 21
        local.get 21
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        f64.load offset=8
        local.set 47
        local.get 3
        f64.load offset=16
        local.set 48
        local.get 48
        local.get 47
        f64.add
        local.set 49
        local.get 3
        local.get 49
        f64.store offset=16
        br 0 (;@2;)
      end
      unreachable
    end
    local.get 3
    f64.load offset=16
    local.set 50
    global.get 3
    local.set 22
    local.get 22
    local.get 50
    call 0
    local.set 23
    global.get 4
    local.set 24
    local.get 23
    local.get 24
    call 11
    drop
    local.get 3
    f64.load offset=16
    local.set 51
    i32.const 32
    local.set 25
    local.get 3
    local.get 25
    i32.add
    local.set 26
    local.get 26
    global.set 0
    local.get 51
    return)
  (func (;10;) (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 3
    i32.load offset=12
    local.set 5
    local.get 5
    i32.load
    local.set 6
    i32.const -12
    local.set 7
    local.get 6
    local.get 7
    i32.add
    local.set 8
    local.get 8
    i32.load
    local.set 9
    local.get 5
    local.get 9
    i32.add
    local.set 10
    i32.const 10
    local.set 11
    i32.const 24
    local.set 12
    local.get 11
    local.get 12
    i32.shl
    local.set 13
    local.get 13
    local.get 12
    i32.shr_s
    local.set 14
    local.get 10
    local.get 14
    call 12
    local.set 15
    i32.const 24
    local.set 16
    local.get 15
    local.get 16
    i32.shl
    local.set 17
    local.get 17
    local.get 16
    i32.shr_s
    local.set 18
    local.get 4
    local.get 18
    call 2
    drop
    local.get 3
    i32.load offset=12
    local.set 19
    local.get 19
    call 3
    drop
    local.get 3
    i32.load offset=12
    local.set 20
    i32.const 16
    local.set 21
    local.get 3
    local.get 21
    i32.add
    local.set 22
    local.get 22
    global.set 0
    local.get 20
    return)
  (func (;11;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    i32.load offset=12
    local.set 5
    local.get 4
    i32.load offset=8
    local.set 6
    local.get 5
    local.get 6
    call_indirect (type 0)
    local.set 7
    i32.const 16
    local.set 8
    local.get 4
    local.get 8
    i32.add
    local.set 9
    local.get 9
    global.set 0
    local.get 7
    return)
  (func (;12;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store8 offset=11
    local.get 4
    i32.load offset=12
    local.set 5
    i32.const 4
    local.set 6
    local.get 4
    local.get 6
    i32.add
    local.set 7
    local.get 7
    local.set 8
    local.get 8
    local.get 5
    call 4
    i32.const 4
    local.set 9
    local.get 4
    local.get 9
    i32.add
    local.set 10
    local.get 10
    local.set 11
    local.get 11
    call 13
    local.set 12
    local.get 4
    i32.load8_u offset=11
    local.set 13
    i32.const 24
    local.set 14
    local.get 13
    local.get 14
    i32.shl
    local.set 15
    local.get 15
    local.get 14
    i32.shr_s
    local.set 16
    local.get 12
    local.get 16
    call 14
    local.set 17
    i32.const 4
    local.set 18
    local.get 4
    local.get 18
    i32.add
    local.set 19
    local.get 19
    local.set 20
    local.get 20
    call 5
    drop
    i32.const 24
    local.set 21
    local.get 17
    local.get 21
    i32.shl
    local.set 22
    local.get 22
    local.get 21
    i32.shr_s
    local.set 23
    i32.const 16
    local.set 24
    local.get 4
    local.get 24
    i32.add
    local.set 25
    local.get 25
    global.set 0
    local.get 23
    return)
  (func (;13;) (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    global.get 5
    local.set 5
    local.get 4
    local.get 5
    call 6
    local.set 6
    i32.const 16
    local.set 7
    local.get 3
    local.get 7
    i32.add
    local.set 8
    local.get 8
    global.set 0
    local.get 6
    return)
  (func (;14;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store8 offset=11
    local.get 4
    i32.load offset=12
    local.set 5
    local.get 4
    i32.load8_u offset=11
    local.set 6
    local.get 5
    i32.load
    local.set 7
    local.get 7
    i32.load offset=28
    local.set 8
    i32.const 24
    local.set 9
    local.get 6
    local.get 9
    i32.shl
    local.set 10
    local.get 10
    local.get 9
    i32.shr_s
    local.set 11
    local.get 5
    local.get 11
    local.get 8
    call_indirect (type 1)
    local.set 12
    i32.const 24
    local.set 13
    local.get 12
    local.get 13
    i32.shl
    local.set 14
    local.get 14
    local.get 13
    i32.shr_s
    local.set 15
    i32.const 16
    local.set 16
    local.get 4
    local.get 16
    i32.add
    local.set 17
    local.get 17
    global.set 0
    local.get 15
    return)
  (export "__wasm_call_ctors" (func 7))
  (export "__wasm_apply_data_relocs" (func 8))
  (export "cuberoot" (func 9))
  (export "_ZNSt3__24endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_" (func 10)))
