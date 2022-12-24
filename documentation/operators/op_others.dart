/// ()
/// Function application:	Represents a function call
///
/// []
/// Subscript access:	Represents a call to the overridable [] operator;
/// example: fooList[1] passes the int 1 to fooList to access the element
/// at index 1
///
/// ?[]
/// Conditional subscript access: Like [], but the leftmost operand can be null
/// example: fooList?[1] passes the int 1 to fooList to access the element
/// at index 1 unless fooList is null
/// (in which case the expression evaluates to null)
///
/// .
/// Member access:	Refers to a property of an expression; example: foo.bar
/// selects property bar from expression foo
///
/// ?.
/// Conditional member access:	Like ., but the leftmost operand can be null;
/// example: foo?.bar selects property bar from expression foo unless foo
/// is null (in which case the value of foo?.bar is null)
///
/// !
/// Null assertion operator: casts an expression to its underlying non-nullable
/// type, throwing a runtime exception if the cast fails.
/// example: foo!.bar asserts foo is non-null and selects the property bar,
/// unless foo is null in which case a runtime exception is thrown.
