/// DART OPERATORS TABLE (from high to low precedence)::
///
/// unary postfix:	expr++  expr--  ()  []  ?[]  .  ?.  !
/// unary prefix: -expr  !expr  ~expr  ++expr  --expr  await  expr
/// multiplicative: *  /  %  ~/
/// additive: +  -
/// shift: <<  >>  >>>
/// bitwise AND:	&
/// bitwise XOR:	^
/// bitwise OR:	|
/// relational and type test: >=  >  <=  <  as  is  is!
/// equality:  ==  !=
/// logical AND: &&
/// logical OR:	||
/// if null:	??
/// conditional:   expr1 ? expr2 : expr3
/// cascade:  ..  ?..
/// assignment: =  *=  /=  +=  -=  &=  ^=



/// (1) You can implement some Dart operators as class members.
///
/// (2) Operator precedence is an approximation of the behavior of
/// a Dart parser. For definitive answers, consult the grammar in the Dart
/// language specification.
///
/// (3) When you use operators, you create expressions.
///
/// (4) In the operator table, each operator has higher precedence than the
/// operators in the rows that follow it. e.g. the multiplicative operator %
/// has higher precedence than (and thus executes before)
/// the equality operator ==, which has higher precedence than
/// the 'logical AND' operator &&.
///
/// (5) For operators that take two operands, the leftmost operand determines
/// which method is used. For example, if you have a Vector object and a Point
/// object, then "aVector + aPoint" uses Vector addition (+).

