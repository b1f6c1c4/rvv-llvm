// RUN: %clang_cc1 -triple riscv64-unknown-linux-gnu -target-feature +experimental-v -fallow-half-arguments-and-returns -fnative-half-type -S -emit-llvm  %s -o - |  FileCheck %s

#include <riscv_vector.h>

long test_vfirst_m_b1 (vbool1_t op1) {
  // CHECK-LABEL: test_vfirst_m_b1
  // CHECK: %{{.*}} = call i64 @llvm.riscv.vfirst.{{.*}}(<vscale x 64 x i1> %{{.*}})
  return vfirst_m_b1(op1);
}

long test_vfirst_m_b2 (vbool2_t op1) {
  // CHECK-LABEL: test_vfirst_m_b2
  // CHECK: %{{.*}} = call i64 @llvm.riscv.vfirst.{{.*}}(<vscale x 32 x i1> %{{.*}})
  return vfirst_m_b2(op1);
}

long test_vfirst_m_b4 (vbool4_t op1) {
  // CHECK-LABEL: test_vfirst_m_b4
  // CHECK: %{{.*}} = call i64 @llvm.riscv.vfirst.{{.*}}(<vscale x 16 x i1> %{{.*}})
  return vfirst_m_b4(op1);
}

long test_vfirst_m_b8 (vbool8_t op1) {
  // CHECK-LABEL: test_vfirst_m_b8
  // CHECK: %{{.*}} = call i64 @llvm.riscv.vfirst.{{.*}}(<vscale x 8 x i1> %{{.*}})
  return vfirst_m_b8(op1);
}

long test_vfirst_m_b16 (vbool16_t op1) {
  // CHECK-LABEL: test_vfirst_m_b16
  // CHECK: %{{.*}} = call i64 @llvm.riscv.vfirst.{{.*}}(<vscale x 4 x i1> %{{.*}})
  return vfirst_m_b16(op1);
}

long test_vfirst_m_b32 (vbool32_t op1) {
  // CHECK-LABEL: test_vfirst_m_b32
  // CHECK: %{{.*}} = call i64 @llvm.riscv.vfirst.{{.*}}(<vscale x 2 x i1> %{{.*}})
  return vfirst_m_b32(op1);
}

long test_vfirst_m_b64 (vbool64_t op1) {
  // CHECK-LABEL: test_vfirst_m_b64
  // CHECK: %{{.*}} = call i64 @llvm.riscv.vfirst.{{.*}}(<vscale x 1 x i1> %{{.*}})
  return vfirst_m_b64(op1);
}

long test_vfirst_m_b1_m (vbool1_t mask, vbool1_t op1) {
  // CHECK-LABEL: test_vfirst_m_b1_m
  // CHECK: %{{.*}} = call i64 @llvm.riscv.vfirst.{{.*}}(<vscale x 64 x i1> %{{.*}}, <vscale x 64 x i1> %{{.*}})
  return vfirst_m_b1_m(mask, op1);
}

long test_vfirst_m_b2_m (vbool2_t mask, vbool2_t op1) {
  // CHECK-LABEL: test_vfirst_m_b2_m
  // CHECK: %{{.*}} = call i64 @llvm.riscv.vfirst.{{.*}}(<vscale x 32 x i1> %{{.*}}, <vscale x 32 x i1> %{{.*}})
  return vfirst_m_b2_m(mask, op1);
}

long test_vfirst_m_b4_m (vbool4_t mask, vbool4_t op1) {
  // CHECK-LABEL: test_vfirst_m_b4_m
  // CHECK: %{{.*}} = call i64 @llvm.riscv.vfirst.{{.*}}(<vscale x 16 x i1> %{{.*}}, <vscale x 16 x i1> %{{.*}})
  return vfirst_m_b4_m(mask, op1);
}

long test_vfirst_m_b8_m (vbool8_t mask, vbool8_t op1) {
  // CHECK-LABEL: test_vfirst_m_b8_m
  // CHECK: %{{.*}} = call i64 @llvm.riscv.vfirst.{{.*}}(<vscale x 8 x i1> %{{.*}}, <vscale x 8 x i1> %{{.*}})
  return vfirst_m_b8_m(mask, op1);
}

long test_vfirst_m_b16_m (vbool16_t mask, vbool16_t op1) {
  // CHECK-LABEL: test_vfirst_m_b16_m
  // CHECK: %{{.*}} = call i64 @llvm.riscv.vfirst.{{.*}}(<vscale x 4 x i1> %{{.*}}, <vscale x 4 x i1> %{{.*}})
  return vfirst_m_b16_m(mask, op1);
}

long test_vfirst_m_b32_m (vbool32_t mask, vbool32_t op1) {
  // CHECK-LABEL: test_vfirst_m_b32_m
  // CHECK: %{{.*}} = call i64 @llvm.riscv.vfirst.{{.*}}(<vscale x 2 x i1> %{{.*}}, <vscale x 2 x i1> %{{.*}})
  return vfirst_m_b32_m(mask, op1);
}

long test_vfirst_m_b64_m (vbool64_t mask, vbool64_t op1) {
  // CHECK-LABEL: test_vfirst_m_b64_m
  // CHECK: %{{.*}} = call i64 @llvm.riscv.vfirst.{{.*}}(<vscale x 1 x i1> %{{.*}}, <vscale x 1 x i1> %{{.*}})
  return vfirst_m_b64_m(mask, op1);
}

