; RUN: llc -mtriple=riscv64 -mattr=+experimental-v < %s \
; RUN:   | FileCheck -check-prefix=CHECK %s

declare <vscale x 1 x half> @llvm.riscv.vfsqrt.v.f16mf4(<vscale x 1 x half>);
define <vscale x 1 x half> @vfsqrt_v_f16mf4(<vscale x 1 x half> %0) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f16mf4
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 1 x half> @llvm.riscv.vfsqrt.v.f16mf4(<vscale x 1 x half> %0)
  ret <vscale x 1 x half> %a
}

declare <vscale x 2 x half> @llvm.riscv.vfsqrt.v.f16mf2(<vscale x 2 x half>);
define <vscale x 2 x half> @vfsqrt_v_f16mf2(<vscale x 2 x half> %0) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f16mf2
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 2 x half> @llvm.riscv.vfsqrt.v.f16mf2(<vscale x 2 x half> %0)
  ret <vscale x 2 x half> %a
}

declare <vscale x 4 x half> @llvm.riscv.vfsqrt.v.f16m1(<vscale x 4 x half>);
define <vscale x 4 x half> @vfsqrt_v_f16m1(<vscale x 4 x half> %0) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f16m1
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 4 x half> @llvm.riscv.vfsqrt.v.f16m1(<vscale x 4 x half> %0)
  ret <vscale x 4 x half> %a
}

declare <vscale x 8 x half> @llvm.riscv.vfsqrt.v.f16m2(<vscale x 8 x half>);
define <vscale x 8 x half> @vfsqrt_v_f16m2(<vscale x 8 x half> %0) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f16m2
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 8 x half> @llvm.riscv.vfsqrt.v.f16m2(<vscale x 8 x half> %0)
  ret <vscale x 8 x half> %a
}

declare <vscale x 16 x half> @llvm.riscv.vfsqrt.v.f16m4(<vscale x 16 x half>);
define <vscale x 16 x half> @vfsqrt_v_f16m4(<vscale x 16 x half> %0) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f16m4
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 16 x half> @llvm.riscv.vfsqrt.v.f16m4(<vscale x 16 x half> %0)
  ret <vscale x 16 x half> %a
}

declare <vscale x 32 x half> @llvm.riscv.vfsqrt.v.f16m8(<vscale x 32 x half>);
define <vscale x 32 x half> @vfsqrt_v_f16m8(<vscale x 32 x half> %0) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f16m8
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 32 x half> @llvm.riscv.vfsqrt.v.f16m8(<vscale x 32 x half> %0)
  ret <vscale x 32 x half> %a
}

declare <vscale x 1 x float> @llvm.riscv.vfsqrt.v.f32mf2(<vscale x 1 x float>);
define <vscale x 1 x float> @vfsqrt_v_f32mf2(<vscale x 1 x float> %0) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f32mf2
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 1 x float> @llvm.riscv.vfsqrt.v.f32mf2(<vscale x 1 x float> %0)
  ret <vscale x 1 x float> %a
}

declare <vscale x 2 x float> @llvm.riscv.vfsqrt.v.f32m1(<vscale x 2 x float>);
define <vscale x 2 x float> @vfsqrt_v_f32m1(<vscale x 2 x float> %0) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f32m1
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 2 x float> @llvm.riscv.vfsqrt.v.f32m1(<vscale x 2 x float> %0)
  ret <vscale x 2 x float> %a
}

declare <vscale x 4 x float> @llvm.riscv.vfsqrt.v.f32m2(<vscale x 4 x float>);
define <vscale x 4 x float> @vfsqrt_v_f32m2(<vscale x 4 x float> %0) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f32m2
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 4 x float> @llvm.riscv.vfsqrt.v.f32m2(<vscale x 4 x float> %0)
  ret <vscale x 4 x float> %a
}

declare <vscale x 8 x float> @llvm.riscv.vfsqrt.v.f32m4(<vscale x 8 x float>);
define <vscale x 8 x float> @vfsqrt_v_f32m4(<vscale x 8 x float> %0) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f32m4
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 8 x float> @llvm.riscv.vfsqrt.v.f32m4(<vscale x 8 x float> %0)
  ret <vscale x 8 x float> %a
}

declare <vscale x 16 x float> @llvm.riscv.vfsqrt.v.f32m8(<vscale x 16 x float>);
define <vscale x 16 x float> @vfsqrt_v_f32m8(<vscale x 16 x float> %0) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f32m8
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 16 x float> @llvm.riscv.vfsqrt.v.f32m8(<vscale x 16 x float> %0)
  ret <vscale x 16 x float> %a
}

declare <vscale x 1 x double> @llvm.riscv.vfsqrt.v.f64m1(<vscale x 1 x double>);
define <vscale x 1 x double> @vfsqrt_v_f64m1(<vscale x 1 x double> %0) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f64m1
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 1 x double> @llvm.riscv.vfsqrt.v.f64m1(<vscale x 1 x double> %0)
  ret <vscale x 1 x double> %a
}

declare <vscale x 2 x double> @llvm.riscv.vfsqrt.v.f64m2(<vscale x 2 x double>);
define <vscale x 2 x double> @vfsqrt_v_f64m2(<vscale x 2 x double> %0) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f64m2
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 2 x double> @llvm.riscv.vfsqrt.v.f64m2(<vscale x 2 x double> %0)
  ret <vscale x 2 x double> %a
}

declare <vscale x 4 x double> @llvm.riscv.vfsqrt.v.f64m4(<vscale x 4 x double>);
define <vscale x 4 x double> @vfsqrt_v_f64m4(<vscale x 4 x double> %0) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f64m4
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 4 x double> @llvm.riscv.vfsqrt.v.f64m4(<vscale x 4 x double> %0)
  ret <vscale x 4 x double> %a
}

declare <vscale x 8 x double> @llvm.riscv.vfsqrt.v.f64m8(<vscale x 8 x double>);
define <vscale x 8 x double> @vfsqrt_v_f64m8(<vscale x 8 x double> %0) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f64m8
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}
  ; CHECK: ret
  %a = tail call <vscale x 8 x double> @llvm.riscv.vfsqrt.v.f64m8(<vscale x 8 x double> %0)
  ret <vscale x 8 x double> %a
}

declare <vscale x 1 x half> @llvm.riscv.vfsqrt.v.mask.f16mf4(<vscale x 1 x i1>, <vscale x 1 x half>, <vscale x 1 x half>);
define <vscale x 1 x half> @vfsqrt_v_f16mf4_m(<vscale x 1 x i1> %0, <vscale x 1 x half> %1, <vscale x 1 x half> %2) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f16mf4_m
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 1 x half> @llvm.riscv.vfsqrt.v.mask.f16mf4(<vscale x 1 x i1> %0, <vscale x 1 x half> %1, <vscale x 1 x half> %2)
  ret <vscale x 1 x half> %a
}

declare <vscale x 2 x half> @llvm.riscv.vfsqrt.v.mask.f16mf2(<vscale x 2 x i1>, <vscale x 2 x half>, <vscale x 2 x half>);
define <vscale x 2 x half> @vfsqrt_v_f16mf2_m(<vscale x 2 x i1> %0, <vscale x 2 x half> %1, <vscale x 2 x half> %2) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f16mf2_m
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 2 x half> @llvm.riscv.vfsqrt.v.mask.f16mf2(<vscale x 2 x i1> %0, <vscale x 2 x half> %1, <vscale x 2 x half> %2)
  ret <vscale x 2 x half> %a
}

declare <vscale x 4 x half> @llvm.riscv.vfsqrt.v.mask.f16m1(<vscale x 4 x i1>, <vscale x 4 x half>, <vscale x 4 x half>);
define <vscale x 4 x half> @vfsqrt_v_f16m1_m(<vscale x 4 x i1> %0, <vscale x 4 x half> %1, <vscale x 4 x half> %2) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f16m1_m
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 4 x half> @llvm.riscv.vfsqrt.v.mask.f16m1(<vscale x 4 x i1> %0, <vscale x 4 x half> %1, <vscale x 4 x half> %2)
  ret <vscale x 4 x half> %a
}

declare <vscale x 8 x half> @llvm.riscv.vfsqrt.v.mask.f16m2(<vscale x 8 x i1>, <vscale x 8 x half>, <vscale x 8 x half>);
define <vscale x 8 x half> @vfsqrt_v_f16m2_m(<vscale x 8 x i1> %0, <vscale x 8 x half> %1, <vscale x 8 x half> %2) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f16m2_m
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 8 x half> @llvm.riscv.vfsqrt.v.mask.f16m2(<vscale x 8 x i1> %0, <vscale x 8 x half> %1, <vscale x 8 x half> %2)
  ret <vscale x 8 x half> %a
}

declare <vscale x 16 x half> @llvm.riscv.vfsqrt.v.mask.f16m4(<vscale x 16 x i1>, <vscale x 16 x half>, <vscale x 16 x half>);
define <vscale x 16 x half> @vfsqrt_v_f16m4_m(<vscale x 16 x i1> %0, <vscale x 16 x half> %1, <vscale x 16 x half> %2) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f16m4_m
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 16 x half> @llvm.riscv.vfsqrt.v.mask.f16m4(<vscale x 16 x i1> %0, <vscale x 16 x half> %1, <vscale x 16 x half> %2)
  ret <vscale x 16 x half> %a
}

declare <vscale x 32 x half> @llvm.riscv.vfsqrt.v.mask.f16m8(<vscale x 32 x i1>, <vscale x 32 x half>, <vscale x 32 x half>);
define <vscale x 32 x half> @vfsqrt_v_f16m8_m(<vscale x 32 x i1> %0, <vscale x 32 x half> %1, <vscale x 32 x half> %2) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f16m8_m
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 32 x half> @llvm.riscv.vfsqrt.v.mask.f16m8(<vscale x 32 x i1> %0, <vscale x 32 x half> %1, <vscale x 32 x half> %2)
  ret <vscale x 32 x half> %a
}

declare <vscale x 1 x float> @llvm.riscv.vfsqrt.v.mask.f32mf2(<vscale x 1 x i1>, <vscale x 1 x float>, <vscale x 1 x float>);
define <vscale x 1 x float> @vfsqrt_v_f32mf2_m(<vscale x 1 x i1> %0, <vscale x 1 x float> %1, <vscale x 1 x float> %2) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f32mf2_m
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 1 x float> @llvm.riscv.vfsqrt.v.mask.f32mf2(<vscale x 1 x i1> %0, <vscale x 1 x float> %1, <vscale x 1 x float> %2)
  ret <vscale x 1 x float> %a
}

declare <vscale x 2 x float> @llvm.riscv.vfsqrt.v.mask.f32m1(<vscale x 2 x i1>, <vscale x 2 x float>, <vscale x 2 x float>);
define <vscale x 2 x float> @vfsqrt_v_f32m1_m(<vscale x 2 x i1> %0, <vscale x 2 x float> %1, <vscale x 2 x float> %2) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f32m1_m
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 2 x float> @llvm.riscv.vfsqrt.v.mask.f32m1(<vscale x 2 x i1> %0, <vscale x 2 x float> %1, <vscale x 2 x float> %2)
  ret <vscale x 2 x float> %a
}

declare <vscale x 4 x float> @llvm.riscv.vfsqrt.v.mask.f32m2(<vscale x 4 x i1>, <vscale x 4 x float>, <vscale x 4 x float>);
define <vscale x 4 x float> @vfsqrt_v_f32m2_m(<vscale x 4 x i1> %0, <vscale x 4 x float> %1, <vscale x 4 x float> %2) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f32m2_m
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 4 x float> @llvm.riscv.vfsqrt.v.mask.f32m2(<vscale x 4 x i1> %0, <vscale x 4 x float> %1, <vscale x 4 x float> %2)
  ret <vscale x 4 x float> %a
}

declare <vscale x 8 x float> @llvm.riscv.vfsqrt.v.mask.f32m4(<vscale x 8 x i1>, <vscale x 8 x float>, <vscale x 8 x float>);
define <vscale x 8 x float> @vfsqrt_v_f32m4_m(<vscale x 8 x i1> %0, <vscale x 8 x float> %1, <vscale x 8 x float> %2) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f32m4_m
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 8 x float> @llvm.riscv.vfsqrt.v.mask.f32m4(<vscale x 8 x i1> %0, <vscale x 8 x float> %1, <vscale x 8 x float> %2)
  ret <vscale x 8 x float> %a
}

declare <vscale x 16 x float> @llvm.riscv.vfsqrt.v.mask.f32m8(<vscale x 16 x i1>, <vscale x 16 x float>, <vscale x 16 x float>);
define <vscale x 16 x float> @vfsqrt_v_f32m8_m(<vscale x 16 x i1> %0, <vscale x 16 x float> %1, <vscale x 16 x float> %2) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f32m8_m
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 16 x float> @llvm.riscv.vfsqrt.v.mask.f32m8(<vscale x 16 x i1> %0, <vscale x 16 x float> %1, <vscale x 16 x float> %2)
  ret <vscale x 16 x float> %a
}

declare <vscale x 1 x double> @llvm.riscv.vfsqrt.v.mask.f64m1(<vscale x 1 x i1>, <vscale x 1 x double>, <vscale x 1 x double>);
define <vscale x 1 x double> @vfsqrt_v_f64m1_m(<vscale x 1 x i1> %0, <vscale x 1 x double> %1, <vscale x 1 x double> %2) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f64m1_m
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 1 x double> @llvm.riscv.vfsqrt.v.mask.f64m1(<vscale x 1 x i1> %0, <vscale x 1 x double> %1, <vscale x 1 x double> %2)
  ret <vscale x 1 x double> %a
}

declare <vscale x 2 x double> @llvm.riscv.vfsqrt.v.mask.f64m2(<vscale x 2 x i1>, <vscale x 2 x double>, <vscale x 2 x double>);
define <vscale x 2 x double> @vfsqrt_v_f64m2_m(<vscale x 2 x i1> %0, <vscale x 2 x double> %1, <vscale x 2 x double> %2) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f64m2_m
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 2 x double> @llvm.riscv.vfsqrt.v.mask.f64m2(<vscale x 2 x i1> %0, <vscale x 2 x double> %1, <vscale x 2 x double> %2)
  ret <vscale x 2 x double> %a
}

declare <vscale x 4 x double> @llvm.riscv.vfsqrt.v.mask.f64m4(<vscale x 4 x i1>, <vscale x 4 x double>, <vscale x 4 x double>);
define <vscale x 4 x double> @vfsqrt_v_f64m4_m(<vscale x 4 x i1> %0, <vscale x 4 x double> %1, <vscale x 4 x double> %2) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f64m4_m
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 4 x double> @llvm.riscv.vfsqrt.v.mask.f64m4(<vscale x 4 x i1> %0, <vscale x 4 x double> %1, <vscale x 4 x double> %2)
  ret <vscale x 4 x double> %a
}

declare <vscale x 8 x double> @llvm.riscv.vfsqrt.v.mask.f64m8(<vscale x 8 x i1>, <vscale x 8 x double>, <vscale x 8 x double>);
define <vscale x 8 x double> @vfsqrt_v_f64m8_m(<vscale x 8 x i1> %0, <vscale x 8 x double> %1, <vscale x 8 x double> %2) {
entry:
  ; CHECK-LABEL: vfsqrt_v_f64m8_m
  ; CHECK: vfsqrt.v v{{.*}}, v{{.*}}, v0.t
  ; CHECK: ret
  %a = tail call <vscale x 8 x double> @llvm.riscv.vfsqrt.v.mask.f64m8(<vscale x 8 x i1> %0, <vscale x 8 x double> %1, <vscale x 8 x double> %2)
  ret <vscale x 8 x double> %a
}

