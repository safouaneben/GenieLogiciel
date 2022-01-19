package fr.ensimag.deca.tree;

import fr.ensimag.deca.context.Type;
import fr.ensimag.deca.context.BooleanType;
import fr.ensimag.deca.DecacCompiler;
import fr.ensimag.deca.syntax.DecaParser;
import fr.ensimag.deca.context.ClassDefinition;
import fr.ensimag.deca.context.ContextualError;
import fr.ensimag.deca.context.EnvironmentExp;
import fr.ensimag.deca.tools.IndentPrintStream;
import fr.ensimag.ima.pseudocode.ImmediateInteger;
import fr.ensimag.ima.pseudocode.instructions.WINT;
import fr.ensimag.ima.pseudocode.instructions.LOAD;
import fr.ensimag.ima.pseudocode.Register;
import java.io.PrintStream;

/**
 *
 * @author gl46
 * @date 01/01/2022
 */
public class Null extends AbstractExpr {

    //private boolean value;

    public Null() {
        super();
        //Null.value = value;
    }

    /*public boolean getValue() {
        return value;
    }*/

   /* @Override
    public Type verifyExpr(DecacCompiler compiler, EnvironmentExp localEnv,
            ClassDefinition currentClass) throws ContextualError {
        //throw new UnsupportedOperationException("not yet implemented");
        Type t = new BooleanType(DecaParser.tableSymb.create("boolean"));
        Null.setType(t);
        return t;
    }*/


    @Override
    public void decompile(IndentPrintStream s) {
        //s.print(Boolean.toString(value));
    }

    @Override
    protected void iterChildren(TreeFunction f) {
        // leaf node => nothing to do
    }

    @Override
    protected void prettyPrintChildren(PrintStream s, String prefix) {
        // leaf node => nothing to do
    }
/*
    @Override
    String prettyPrintNode() {
        return "Null (" + value + ")";
    }*/

    @Override
    public int codeGenExpr(DecacCompiler compiler) {
       /* int i = Register.getEmptyReg(compiler);
        if (value){
            compiler.addInstruction(new LOAD(new ImmediateInteger(1), Register.getR(i)));
        }else{
            compiler.addInstruction(new LOAD(new ImmediateInteger(0), Register.getR(i)));
        }
        Register.getR(i).setIsFull(true);
        return i;*/
        return 0;
    }

    @Override
    public Type verifyExpr(DecacCompiler compiler, EnvironmentExp localEnv, ClassDefinition currentClass)
            throws ContextualError {
        // TODO Auto-generated method stub
        return null;
    }
    

}
