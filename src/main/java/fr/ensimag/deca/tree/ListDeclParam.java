package fr.ensimag.deca.tree;

import fr.ensimag.deca.DecacCompiler;
import fr.ensimag.deca.context.ClassDefinition;
import fr.ensimag.deca.context.ContextualError;
import fr.ensimag.deca.context.EnvironmentExp;
import fr.ensimag.deca.context.ParamDefinition;
import fr.ensimag.deca.tools.IndentPrintStream;


public class ListDeclParam extends TreeList<AbstractDeclParam> {
    static public int order = 1;
    @Override
    public void decompile(IndentPrintStream s) {
        for (AbstractDeclParam i : getList()) {
            i.decompile(s);
        }

    }
   
    void verifyListParam(DecacCompiler compiler, EnvironmentExp localEnv,
            ClassDefinition currentClass) throws ContextualError {
        for( AbstractDeclParam Param : this.getList()){
            Param.verifyDeclParam(compiler, localEnv, currentClass);
            order ++;
        }
        order = 1;
    }
    public void codeGenListParam(DecacCompiler compiler) {
       /* for (AbstractParam i : getList()) {
            i.codeGenParam(compiler);
        }*/
    }

}
