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

if test_context modulo_incorrect3.deca 2>&1 | \
grep -q -e "modulo_incorrect3.deca:13:16: Only integers are allowed for modulo operation.
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
if test_context not_expression2.deca 2>&1 | \
grep -q -e "not_expression2.deca:16:3: boolean used but not declared.
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
if test_context affect-incompatible4.deca 2>&1 | \
grep -q -e "affect-incompatible4.deca:15:7: Assign incorrect: types différents
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
if test_context comp-incompatible7.deca 2>&1 | \
grep -q -e "comp-incompatible7.deca:16:17: Booleans not supported for inequality operations
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
if test_context modulo_incorrect4.deca 2>&1 | \
grep -q -e "modulo_incorrect4.deca:13:16: a used but not declared.
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
if test_context initialisation-incompatible8.deca 2>&1 | \
grep -q -e "initialisation-incompatible8.deca:10:15: Incorrect initialisation, incompatible types ( floatand boolean).
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context initialisation-incompatible3.deca 2>&1 | \
grep -q -e "initialisation-incompatible3.deca:10:9: Incorrect initialisation, incompatible types ( floatand int).
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
if test_context or_types_incompatibles.deca 2>&1 | \
grep -q -e "or_types_incompatibles.deca:13:25: Int not supported for boolean operation
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
if test_context initialisation-incompatible7.deca 2>&1 | \
grep -q -e "initialisation-incompatible7.deca:10:14: Incorrect initialisation, incompatible types ( intand boolean).
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
if test_context affect-incompatible5.deca 2>&1 | \
grep -q -e "affect-incompatible5.deca:15:7: Assign incorrect: types différents
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
if test_context not_expression1.deca 2>&1 | \
grep -q -e "not_expression1.deca:16:3: boolean used but not declared.
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
if test_context comp-incompatible11.deca 2>&1 | \
grep -q -e "comp-incompatible11.deca:16:17: Booleans not supported for inequality operations
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
if test_context condition_if5.deca 2>&1 | \
grep -q -e "condition_if5.deca:11:11: This condition is not a bool
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
if test_context initialisation-incompatible4.deca 2>&1 | \
grep -q -e "initialisation-incompatible4.deca:10:10: Incorrect initialisation, incompatible types ( stringand int).
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
if test_context soustraction_types_incompatibles.deca 2>&1 | \
grep -q -e "soustraction_types_incompatibles.deca:13:16: String not supported for arithmetic operation.
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
if test_context mult_incompatible2.deca 2>&1 | \
grep -q -e "mult_incompatible2.deca:16:9: String not supported for arithmetic operation.
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
if test_context double_declaration.deca 2>&1 | \
grep -q -e "double_declaration.deca:12:12: Variable x already declared.
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
if test_context while_condition5.deca 2>&1 | \
grep -q -e "while_condition5.deca:11:14: This condition is not a bool
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
if test_context initialisation-incompatible9.deca 2>&1 | \
grep -q -e "initialisation-incompatible9.deca:10:14: Incorrect initialisation, incompatible types ( stringand boolean).
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
if test_context initialisation-incompatible.deca 2>&1 | \
grep -q -e "initialisation-incompatible.deca:10:9: Incorrect initialisation, incompatible types ( booleanand int).
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
if test_context mult_incompatible.deca 2>&1 | \
grep -q -e "mult_incompatible.deca:16:9: Boolean not supported for arithmetic operation
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
if test_context somme_type_incompatible2.deca 2>&1 | \
grep -q -e "somme_type_incompatible2.deca:13:16: Boolean not supported for arithmetic operation.
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
if test_context condition_if3.deca 2>&1 | \
grep -q -e "condition_if3.deca:11:11: This condition is not a bool
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context initialisation-incompatible5.deca 2>&1 | \
grep -q -e "initialisation-incompatible5.deca:10:11: Incorrect initialisation, incompatible types ( booleanand float).
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
if test_context affect-incompatible.deca 2>&1 | \
grep -q -e "affect-incompatible.deca:15:7: Assign incorrect: types différents
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
if test_context unray_expr2.deca 2>&1 | \
grep -q -e "unray_expr2.deca:16:11: string not supported for UnaryMinus.
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
if test_context target 2>&1 | \
grep -q -e "Exception in thread "main" java.io.IOException: Is a directory
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
if test_context comp-incompatible10.deca 2>&1 | \
grep -q -e "comp-incompatible10.deca:16:18: String not supported for inequality operations
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
if test_context condition_if.deca 2>&1 | \
grep -q -e "condition_if.deca:11:11: This condition is not a bool
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
if test_context or_types_incompatibles2.deca 2>&1 | \
grep -q -e "or_types_incompatibles2.deca:13:25: Boolean not supported for boolean operation
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
if test_context comp-incompatible12.deca 2>&1 | \
grep -q -e "comp-incompatible12.deca:16:17: String not supported for inequality operations
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context initialisation-incompatible2.deca 2>&1 | \
grep -q -e "initialisation-incompatible2.deca:10:9: Incorrect initialisation, incompatible types ( booleanand int).
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
if test_context soustraction_types_incompatibles2.deca 2>&1 | \
grep -q -e "soustraction_types_incompatibles2.deca:13:16: Boolean not supported for arithmetic operation.
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
if test_context affect-incompatible3.deca 2>&1 | \
grep -q -e "affect-incompatible3.deca:15:7: Assign incorrect: types différents
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
if test_context affect-incompatible2.deca 2>&1 | \
grep -q -e "affect-incompatible2.deca:15:7: Assign incorrect: types différents
"
then
    echo "Echec attendu pour test_context"
else
    echo "Succes inattendu de test_context"
    exit 1
fi
if test_context initialisation-incompatible6.deca 2>&1 | \
grep -q -e "initialisation-incompatible6.deca:10:12: Incorrect initialisation, incompatible types ( stringand float).
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
if test_context condition_if6.deca 2>&1 | \
grep -q -e "condition_if6.deca:11:11: This condition is not a bool
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
if test_context while_condition.deca 2>&1 | \
grep -q -e "while_condition.deca:11:14: This condition is not a bool
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
