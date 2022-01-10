package fr.ensimag.deca.tree;

import fr.ensimag.deca.context.Type;
import fr.ensimag.deca.DecacCompiler;
import fr.ensimag.deca.context.ClassDefinition;
import fr.ensimag.deca.context.ContextualError;
import fr.ensimag.deca.context.Definition;
import fr.ensimag.deca.context.EnvironmentExp;

/**
 * Assignment, i.e. lvalue = expr.
 *
 * @author gl46
 * @date 01/01/2022
 */
public class Assign extends AbstractBinaryExpr {

    @Override
    public AbstractLValue getLeftOperand() {
        // The cast succeeds by construction, as the leftOperand has been set
        // as an AbstractLValue by the constructor.
        return (AbstractLValue)super.getLeftOperand();
    }

    public Assign(AbstractLValue leftOperand, AbstractExpr rightOperand) {
        super(leftOperand, rightOperand);
    }

    @Override
    public Type verifyExpr(DecacCompiler compiler, EnvironmentExp localEnv,
            ClassDefinition currentClass) throws ContextualError {
        //throw new UnsupportedOperationException("not yet implemented");
        Type typeLeftExpr = super.getLeftOperand().verifyExpr(compiler, localEnv, currentClass);
        Type typeRightExpr = super.getRightOperand().verifyExpr(compiler, localEnv, currentClass);
        if(!typeLeftExpr.sameType(typeRightExpr)){
            throw new ContextualError("Assign for different types", this.getLocation());
        }
        verifyRValue(compiler, localEnv, currentClass, typeLeftExpr);
        return typeLeftExpr;
    }


    @Override
    protected String getOperatorName() {
        return "=";
    }

}
