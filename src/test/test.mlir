// RUN: custom-mlir-opt %s | custom-mlir-opt | FileCheck %s

// CHECK-LABEL: func @atan(
// CHECK-SAME:             %[[F:.*]]: f32, %[[V:.*]]: vector<4xf32>, %[[T:.*]]: tensor<4x4x?xf32>)
func.func @atan(%f: f32, %v: vector<4xf32>, %t: tensor<4x4x?xf32>) {
  // CHECK: %{{.*}} = math.atan %[[F]] : f32
  %0 = math.atan %f : f32
  // CHECK: %{{.*}} = math.atan %[[V]] : vector<4xf32>
  %1 = math.atan %v : vector<4xf32>
  // CHECK: %{{.*}} = math.atan %[[T]] : tensor<4x4x?xf32>
  %2 = math.atan %t : tensor<4x4x?xf32>
  return
}
