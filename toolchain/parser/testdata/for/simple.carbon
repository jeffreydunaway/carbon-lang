// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE
// RUN: %{carbon-run-parser}
// CHECK:STDOUT: [
// CHECK:STDOUT:     {kind: 'FunctionIntroducer', text: 'fn'},
// CHECK:STDOUT:     {kind: 'DeclaredName', text: 'foo'},
// CHECK:STDOUT:       {kind: 'ParameterListEnd', text: ')'},
// CHECK:STDOUT:     {kind: 'ParameterList', text: '(', subtree_size: 2},
// CHECK:STDOUT:   {kind: 'FunctionDefinitionStart', text: '{', subtree_size: 5},
// CHECK:STDOUT:           {kind: 'DeclaredName', text: 'x'},
// CHECK:STDOUT:           {kind: 'Literal', text: 'i32'},
// CHECK:STDOUT:         {kind: 'PatternBinding', text: ':', subtree_size: 3},
// CHECK:STDOUT:       {kind: 'VariableDeclaration', text: 'var', subtree_size: 4},
// CHECK:STDOUT:       {kind: 'ForIn', text: 'in'},
// CHECK:STDOUT:       {kind: 'NameReference', text: 'y'},
// CHECK:STDOUT:       {kind: 'ForHeaderEnd', text: ')'},
// CHECK:STDOUT:     {kind: 'ForHeader', text: '(', subtree_size: 8},
// CHECK:STDOUT:       {kind: 'CodeBlockStart', text: '{'},
// CHECK:STDOUT:           {kind: 'NameReference', text: 'Print'},
// CHECK:STDOUT:           {kind: 'NameReference', text: 'x'},
// CHECK:STDOUT:           {kind: 'CallExpressionEnd', text: ')'},
// CHECK:STDOUT:         {kind: 'CallExpression', text: '(', subtree_size: 4},
// CHECK:STDOUT:       {kind: 'ExpressionStatement', text: ';', subtree_size: 5},
// CHECK:STDOUT:     {kind: 'CodeBlock', text: '}', subtree_size: 7},
// CHECK:STDOUT:   {kind: 'ForStatement', text: 'for', subtree_size: 16},
// CHECK:STDOUT: {kind: 'FunctionDefinition', text: '}', subtree_size: 22},
// CHECK:STDOUT: {kind: 'FileEnd', text: ''},
// CHECK:STDOUT: ]

fn foo() {
  for (var x: i32 in y) {
    Print(x);
  }
}
