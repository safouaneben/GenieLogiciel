package fr.ensimag.deca.tree;
import fr.ensimag.ima.pseudocode.instructions.ADD;
import fr.ensimag.ima.pseudocode.instructions.REM;
import fr.ensimag.deca.context.Type;
import fr.ensimag.deca.DecacCompiler;
import fr.ensimag.deca.context.ClassDefinition;
import fr.ensimag.deca.context.ContextualError;
import fr.ensimag.deca.context.EnvironmentExp;
import fr.ensimag.ima.pseudocode.ImmediateInteger;
import fr.ensimag.ima.pseudocode.Register;
import fr.ensimag.ima.pseudocode.RegisterOffset;
import fr.ensimag.ima.pseudocode.Label;
import fr.ensimag.ima.pseudocode.instructions.BEQ;
import fr.ensimag.ima.pseudocode.instructions.CMP;
import fr.ensimag.ima.pseudocode.instructions.LOAD;
import fr.ensimag.ima.pseudocode.instructions.POP;

/**
 *
 * @author gl46
 * @date 01/01/2022
 */
public class Not extends AbstractUnaryExpr implements Condition{

    public Not(AbstractExpr operand) {
        super(operand);
    }

    @Override
    public Type verifyExpr(DecacCompiler compiler, EnvironmentExp localEnv,
            ClassDefinition currentClass) throws ContextualError {
        //throw new UnsupportedOperationException("not yet implemented");
        Type t = super.getOperand().verifyExpr(compiler, localEnv, currentClass);
        if(!t.isBoolean()){
            throw new ContextualError("Only booleans are supported for the Not expression.", this.getLocation());
        } else{
            this.setType(t);
            return t;
        }
    }


    @Override
    protected String getOperatorName() {
        return "!";
    }
    public void codeGenCond(DecacCompiler compiler,Label lab2){
        int reg1 = super.getOperand().codeGenExpr(compiler);
        Register.getR(reg1).setIsFull(true);
        if(super.getOperand() instanceof Selection){
            compiler.addInstruction(new LOAD(new RegisterOffset(0, Register.getR(reg1)), Register.getR(reg1)));   
        }
        compiler.addInstruction(new ADD(new ImmediateInteger(1), Register.getR(reg1)));
        compiler.addInstruction(new REM(new ImmediateInteger(2), Register.getR(reg1)));
        compiler.addInstruction(new LOAD(new ImmediateInteger(0),Register.R0));
        compiler.addInstruction(new CMP(Register.getR(reg1),Register.R0));
        compiler.addInstruction(new BEQ(lab2));
        if(!Register.getR(reg1).getIsPushed()){
            Register.getR(reg1).setIsFull(false);}        
    }
    @Override
    public int codeGenExpr(DecacCompiler compiler) {
        int reg1 = super.getOperand().codeGenExpr(compiler);
        Register.getR(reg1).setIsFull(true);
        if(super.getOperand() instanceof Selection){
            compiler.addInstruction(new LOAD(new RegisterOffset(0, Register.getR(reg1)), Register.getR(reg1)));   
        }
        compiler.addInstruction(new ADD(new ImmediateInteger(1), Register.getR(reg1)));
        compiler.addInstruction(new REM(new ImmediateInteger(2), Register.getR(reg1)));
        return reg1;
    }
}
