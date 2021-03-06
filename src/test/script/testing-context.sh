#! /bin/sh

# Auteur : gl46
# Version initiale : 01/01/2022

# Test minimaliste de la vérification contextuelle.
# Le principe et les limitations sont les mêmes que pour basic-synt.sh
cd "$(dirname "$0")"/../../.. || exit 1

PATH=./src/test/script/launchers:"$PATH"
test_context_valide () {
    # $1 = premier argument.
    if test_context "$1" 2>&1 | \
    	grep -q -e ':[0-9][0-9]*:'
	then
    	echo "Echec inattendu pour test_context $1"
    	exit 1
	else
    	echo "Succes attendu de test_context "
	fi
}
if test_context condition_if5.deca 2>&1 | \
grep -q -e "condition_if5.deca:11:11: This condition is not a bool
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context mult_incompatible2.deca 2>&1 | \
grep -q -e "mult_incompatible2.deca:16:9: String not supported for arithmetic operation.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context somme_type_incompatible.deca 2>&1 | \
grep -q -e "somme_type_incompatible.deca:13:16: String not supported for arithmetic operation.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class1.java 2>&1 | \
grep -q -e "class1.java:5:10: x used but not declared.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context and_type_incompatible3.deca 2>&1 | \
grep -q -e "and_type_incompatible3.deca:13:25: Boolean not supported for boolean operation
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context comp-incompatible8.deca 2>&1 | \
grep -q -e "comp-incompatible8.deca:16:17: String not supported for inequality operations
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context affect-incompatible3.deca 2>&1 | \
grep -q -e "affect-incompatible3.deca:15:7: Assign incorrect: types différents
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context or_types_incompatibles2.deca 2>&1 | \
grep -q -e "or_types_incompatibles2.deca:13:25: Boolean not supported for boolean operation
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context comp-incompatible3.deca 2>&1 | \
grep -q -e "comp-incompatible3.deca:16:15: Cannot compare a int and a boolean
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context while_condition3.deca 2>&1 | \
grep -q -e "while_condition3.deca:11:14: Cannot compare a int and a boolean
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context comp-incompatible.deca 2>&1 | \
grep -q -e "comp-incompatible.deca:16:15: Cannot compare a int and a boolean
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class15.java 2>&1 | \
grep -q -e "class15.java:6:15: Type de retour different de celui attendu
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context comp-incompatible9.deca 2>&1 | \
grep -q -e "comp-incompatible9.deca:16:18: Booleans not supported for inequality operations
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class29.java 2>&1 | \
grep -q -e "class29.java:10:14: getX used but not declared.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context affect-incompatible5.deca 2>&1 | \
grep -q -e "affect-incompatible5.deca:15:7: Assign incorrect: types différents
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context doubledeclvarclass.deca 2>&1 | \
grep -q -e "doubledeclvarclass.deca:3:10: Field x already declared.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class5.java 2>&1 | \
grep -q -e "class5.java:10:11: Method setX expecting int received float
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context condition_if3.deca 2>&1 | \
grep -q -e "condition_if3.deca:11:11: This condition is not a bool
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class30.java 2>&1 | \
grep -q -e "class30.java:10:18: getX used but not declared.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class22.java 2>&1 | \
grep -q -e "class22.java:1:8: Superclass B undefined.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context initialisation-incompatible3.deca 2>&1 | \
grep -q -e "initialisation-incompatible3.deca:10:8: Assign incorrect: types différents
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context initialisation-incompatible6.deca 2>&1 | \
grep -q -e "initialisation-incompatible6.deca:10:10: Assign incorrect: types différents
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context somme_type_incompatible2.deca 2>&1 | \
grep -q -e "somme_type_incompatible2.deca:13:16: Boolean not supported for arithmetic operation.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context while_condition4.deca 2>&1 | \
grep -q -e "while_condition4.deca:11:14: This condition is not a bool
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context and_type_incompatible2.deca 2>&1 | \
grep -q -e "and_type_incompatible2.deca:13:20: Int not supported for boolean operation
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context void-declaration.deca 2>&1 | \
grep -q -e "void-declaration.deca:10:3: Void cannot be declared as a variable.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class24.java 2>&1 | \
grep -q -e "class24.java:17:7: x1 used but not declared.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context comp-incompatible12.deca 2>&1 | \
grep -q -e "comp-incompatible12.deca:16:17: String not supported for inequality operations
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context modulo_incorrect.deca 2>&1 | \
grep -q -e "modulo_incorrect.deca:13:16: Only integers are allowed for modulo operation.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context mult_incompatible.deca 2>&1 | \
grep -q -e "mult_incompatible.deca:16:9: Boolean not supported for arithmetic operation
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context and_type_incompatible6.deca 2>&1 | \
grep -q -e "and_type_incompatible6.deca:13:25: String not supported for boolean operation
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class38.java 2>&1 | \
grep -q -e "class38.java:4:15: a used but not declared.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class13.java 2>&1 | \
grep -q -e "class13.java:6:15: Type de retour different de celui attendu
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context soustraction_types_incompatibles.deca 2>&1 | \
grep -q -e "soustraction_types_incompatibles.deca:13:16: String not supported for arithmetic operation.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context comp-incompatible7.deca 2>&1 | \
grep -q -e "comp-incompatible7.deca:16:17: Booleans not supported for inequality operations
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context soustraction_types_incompatibles2.deca 2>&1 | \
grep -q -e "soustraction_types_incompatibles2.deca:13:16: Boolean not supported for arithmetic operation.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context modulo_incorrect2.deca 2>&1 | \
grep -q -e "modulo_incorrect2.deca:13:16: Only integers are allowed for modulo operation.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context not_expression3.deca 2>&1 | \
grep -q -e "not_expression3.deca:16:3: boolean used but not declared.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class2.java 2>&1 | \
grep -q -e "class2.java:6:4: Inexisting type.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context instanceof2.deca 2>&1 | \
grep -q -e "instanceof2.deca:11:16: A used but not declared.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class40.java 2>&1 | \
grep -q -e "class40.java:5:4: method name already declared
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class41.java 2>&1 | \
grep -q -e "class41.java:9:6: x is a protected field.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context double_declaration.deca 2>&1 | \
grep -q -e "double_declaration.deca:12:12: Variable x already declared.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class21.java 2>&1 | \
grep -q -e "class21.java:1:8: Superclass B undefined.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class42.java 2>&1 | \
grep -q -e "class42.java:9:15: x is a protected field.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context or_types_incompatibles4.deca 2>&1 | \
grep -q -e "or_types_incompatibles4.deca:13:20: Float not supported for boolean operation
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context initialisation-incompatible8.deca 2>&1 | \
grep -q -e "initialisation-incompatible8.deca:10:13: Assign incorrect: types différents
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context unray_expr1.deca 2>&1 | \
grep -q -e "unray_expr1.deca:16:11: boolean not supported for UnaryMinus.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context stringmethod.deca 2>&1 | \
grep -q -e "stringmethod.deca:2:4: String cannot be declared as a Class field.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class3.java 2>&1 | \
grep -q -e "class3.java:1:8: Superclass B undefined.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class23.java 2>&1 | \
grep -q -e "class23.java:13:7: x1 used but not declared.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context and_type_incompatible4.deca 2>&1 | \
grep -q -e "and_type_incompatible4.deca:13:20: Float not supported for boolean operation
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class33.java 2>&1 | \
grep -q -e "class33.java:1:0: boolean is not a class
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context voidmethod.deca 2>&1 | \
grep -q -e "voidmethod.deca:2:4: Void cannot be declared as a Class field.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context modulo_incorrect4.deca 2>&1 | \
grep -q -e "modulo_incorrect4.deca:13:16: a used but not declared.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context and_type_incompatible7.deca 2>&1 | \
grep -q -e "and_type_incompatible7.deca:13:20: String not supported for boolean operation
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context not_expression1.deca 2>&1 | \
grep -q -e "not_expression1.deca:16:3: boolean used but not declared.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context comp-incompatible6.deca 2>&1 | \
grep -q -e "comp-incompatible6.deca:16:18: String not supported for inequality operations
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context comp-incompatible5.deca 2>&1 | \
grep -q -e "comp-incompatible5.deca:16:18: Booleans not supported for inequality operations
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context condition_if6.deca 2>&1 | \
grep -q -e "condition_if6.deca:11:11: This condition is not a bool
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class7.java 2>&1 | \
grep -q -e "class7.java:10:11: Method setX expecting int received string
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class31.java 2>&1 | \
grep -q -e "class31.java:3:20: x used but not declared.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context condition_if2.deca 2>&1 | \
grep -q -e "condition_if2.deca:11:11: This condition is not a bool
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context or_types_incompatibles3.deca 2>&1 | \
grep -q -e "or_types_incompatibles3.deca:13:25: String not supported for boolean operation
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context non_declaration.deca 2>&1 | \
grep -q -e "non_declaration.deca:14:12: z used but not declared.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context affect-incompatible.deca 2>&1 | \
grep -q -e "affect-incompatible.deca:15:7: Assign incorrect: types différents
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context affect-incompatible2.deca 2>&1 | \
grep -q -e "affect-incompatible2.deca:15:7: Assign incorrect: types différents
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context comp-incompatible4.deca 2>&1 | \
grep -q -e "comp-incompatible4.deca:16:15: Cannot compare a int and a string
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class28.java 2>&1 | \
grep -q -e "class28.java:10:14: getX used but not declared.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class26.java 2>&1 | \
grep -q -e "class26.java:9:14: Problem in the number of parameters of the function.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context not_expression2.deca 2>&1 | \
grep -q -e "not_expression2.deca:16:3: boolean used but not declared.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context affect-incompatible6.deca 2>&1 | \
grep -q -e "affect-incompatible6.deca:15:7: Assign incorrect: types différents
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context target 2>&1 | \
grep -q -e "Exception in thread "main" java.io.IOException: Is a directory
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context undeclaredvarclass.deca 2>&1 | \
grep -q -e "undeclaredvarclass.deca:6:20: r used but not declared.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class25.java 2>&1 | \
grep -q -e "class25.java:1:8: Superclass A undefined.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context while_condition5.deca 2>&1 | \
grep -q -e "while_condition5.deca:11:14: This condition is not a bool
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context initialisation-incompatible4.deca 2>&1 | \
grep -q -e "initialisation-incompatible4.deca:10:8: Assign incorrect: types différents
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class36.java 2>&1 | \
grep -q -e "class36.java:3:12: Field x already declared.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context declaration_variable_typeindf.deca 2>&1 | \
grep -q -e "declaration_variable_typeindf.deca:11:8: Inexisting type.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class12.java 2>&1 | \
grep -q -e "class12.java:9:4: a used but not declared.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context while_condition6.deca 2>&1 | \
grep -q -e "while_condition6.deca:11:14: This condition is not a bool
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context or_types_incompatibles.deca 2>&1 | \
grep -q -e "or_types_incompatibles.deca:13:25: Int not supported for boolean operation
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class9.java 2>&1 | \
grep -q -e "class9.java:3:16: Inexisting type.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context comp-incompatible10.deca 2>&1 | \
grep -q -e "comp-incompatible10.deca:16:18: String not supported for inequality operations
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context unknowntypeclass.deca 2>&1 | \
grep -q -e "unknowntypeclass.deca:4:4: Inexisting type.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context initialisation-incompatible2.deca 2>&1 | \
grep -q -e "initialisation-incompatible2.deca:10:8: Assign incorrect: types différents
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context stringdeclmeth.deca 2>&1 | \
grep -q -e "stringdeclmeth.deca:4:8: String cannot be declared as a variable.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context instanceof1.deca 2>&1 | \
grep -q -e "instanceof1.deca:11:16: Left operand of InstanceOf should be an Object.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context modulo_incorrect3.deca 2>&1 | \
grep -q -e "modulo_incorrect3.deca:13:16: Only integers are allowed for modulo operation.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context initialisation-incompatible5.deca 2>&1 | \
grep -q -e "initialisation-incompatible5.deca:10:10: Assign incorrect: types différents
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context div-incompatible.deca 2>&1 | \
grep -q -e "div-incompatible.deca:16:9: Boolean not supported for arithmetic operation
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class8.java 2>&1 | \
grep -q -e "class8.java:12:11: Assign incorrect: types différents
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context condition_if4.deca 2>&1 | \
grep -q -e "condition_if4.deca:11:11: This condition is not a bool
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context affect-incompatible4.deca 2>&1 | \
grep -q -e "affect-incompatible4.deca:15:7: Assign incorrect: types différents
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context initialisation-incompatible7.deca 2>&1 | \
grep -q -e "initialisation-incompatible7.deca:10:12: Assign incorrect: types différents
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context while_condition.deca 2>&1 | \
grep -q -e "while_condition.deca:11:14: This condition is not a bool
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context and_type_incompatible.deca 2>&1 | \
grep -q -e "and_type_incompatible.deca:13:25: Int not supported for boolean operation
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class34.java 2>&1 | \
grep -q -e "class34.java:4:15: Type de retour different de celui attendu
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class27.java 2>&1 | \
grep -q -e "class27.java:10:14: getX used but not declared.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context initialisation-incompatible.deca 2>&1 | \
grep -q -e "initialisation-incompatible.deca:10:8: Assign incorrect: types différents
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context unray_expr2.deca 2>&1 | \
grep -q -e "unray_expr2.deca:16:11: string not supported for UnaryMinus.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class14.java 2>&1 | \
grep -q -e "class14.java:6:15: Type de retour different de celui attendu
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class6.java 2>&1 | \
grep -q -e "class6.java:10:11: Method setX expecting int received boolean
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context condition_if.deca 2>&1 | \
grep -q -e "condition_if.deca:11:11: This condition is not a bool
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context and_type_incompatible5.deca 2>&1 | \
grep -q -e "and_type_incompatible5.deca:13:20: Float not supported for boolean operation
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class10.java 2>&1 | \
grep -q -e "class10.java:2:4: This cannot be used in the main section of the program.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context class0.java 2>&1 | \
grep -q -e "class0.java:4:6: Class A already declared.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context div-incompatible2.deca 2>&1 | \
grep -q -e "div-incompatible2.deca:16:9: String not supported for arithmetic operation.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context comp-incompatible11.deca 2>&1 | \
grep -q -e "comp-incompatible11.deca:16:17: Booleans not supported for inequality operations
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context comp-incompatible2.deca 2>&1 | \
grep -q -e "comp-incompatible2.deca:16:15: Cannot compare a int and a string
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context voiddeclmeth.deca 2>&1 | \
grep -q -e "voiddeclmeth.deca:4:8: Void cannot be declared as a variable.
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context initialisation-incompatible9.deca 2>&1 | \
grep -q -e "initialisation-incompatible9.deca:10:12: Assign incorrect: types différents
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context while_condition2.deca 2>&1 | \
grep -q -e "while_condition2.deca:11:14: This condition is not a bool
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi

for cas_de_test in src/test/deca/context/valid/provided/*.deca
do
    test_context_valide "$cas_de_test"
done




if test_context src/test/deca/context/valid/provided/hello-world.deca 2>&1 | \
    grep -q -e 'hello-world.deca:[0-9]'
then
    echo "Echec inattendu pour test_context"
    exit 1
else
    echo "Succes attendu de test_context"
fi
