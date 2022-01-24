class ArctanAngle{
	float value;
	ArctanAngle next;
	ArctanAngle head = null;
	int compteurhead = 0;
	ArctanAngle tail = null;
       int compteurtail = 0;
       int compteur  ;
	void addAtEnd(float value){
		ArctanAngle angle = new ArctanAngle();
        	angle.value = value;
		angle.next = null;
		if(compteurhead == 0){
			head = angle;
			tail = angle;
			angle.compteur = 1;
			compteurhead = 1;
			compteurtail = 1;
		}
		else{
			tail.next = angle;
			tail = angle;
			angle.compteur = angle.compteur +1;
			compteurtail = compteurtail +1;
		}
	}

	float getAngleStep(int i){
		ArctanAngle angle = head;
		while(angle.compteur != 1){
			if(angle.compteur == i){
				return(angle.value);
			}
			angle = angle.next;
		}
		if(angle.compteur == 1){
			return (angle.value);
		}
        return 0.0;
	}
}

class CircularVector{
	float cos;
	float sin;
	float tan;
}

class Before{
	float pi = 3.141592653589f;  // 12 chiffres
	//float lowestEver = 1/this.twoPower(149);
	//float biggestEver = this.twoPower(32);
	int n = 64;
    ArctanAngle anglesTable;

    //Rend la puissance de 2 d'un entier donné
	float twoPower(int i){
		float result = 1;
		int k = 1;
        if(i == 0){
			return 1.0;
		}
		else{
			while(k <= i){
				result = result*2;
				k = k + 1;
			}
			return result;
		}
	}

	//Rend la puissance inverse de 2 d'un entier donné

	float byTwoPower(int i){
		float result = 1;
		int k = 1;
        if(i == 0){
			return 1.0;
		}
		else{

			while(k <= i){
				result = result/2;
				k = k + 1;
			}
			return result;
		}
	}


	//Rend la valeur absolue d'un flottant.
	float absolute(float f){
		if(f >= 0){
			return(f);
		}
		else{
			return(-f);
		}
	}
	ArctanAngle createAngleTable(){
		anglesTable = new ArctanAngle();
		anglesTable.addAtEnd(0.7853981633974483f);
		anglesTable.addAtEnd(0.46364760900080615f);
		anglesTable.addAtEnd(0.24497866312686414f);
		anglesTable.addAtEnd(0.12435499454676144f);
		anglesTable.addAtEnd(0.06241880999595735f);
		anglesTable.addAtEnd(0.031239833430268277f);
		anglesTable.addAtEnd(0.015623728620476831f);
		anglesTable.addAtEnd(0.007812341060101111f);
		anglesTable.addAtEnd(0.0039062301319669718f);
		anglesTable.addAtEnd(0.0019531225164788188f);
		anglesTable.addAtEnd(0.0009765621895593195f);
		anglesTable.addAtEnd(0.0004882812111948983f);
		anglesTable.addAtEnd(0.00024414062014936177f);
		anglesTable.addAtEnd(0.00012207031189367021f);
		anglesTable.addAtEnd(6.103515617420877e-05f);
		anglesTable.addAtEnd(3.0517578115526096e-05f);
		anglesTable.addAtEnd(1.5258789061315762e-05f);
		anglesTable.addAtEnd(7.62939453110197e-06f);
		anglesTable.addAtEnd(3.814697265606496e-06f);
		anglesTable.addAtEnd(1.907348632810187e-06f);
		anglesTable.addAtEnd(9.536743164059608e-07f);
		anglesTable.addAtEnd(4.7683715820308884e-07f);
		anglesTable.addAtEnd(2.3841857910155797e-07f);
		anglesTable.addAtEnd(1.1920928955078068e-07f);
		anglesTable.addAtEnd(5.960464477539055e-08f);
		anglesTable.addAtEnd(2.9802322387695303e-08f);
		anglesTable.addAtEnd(1.4901161193847655e-08f);
		anglesTable.addAtEnd(7.450580596923828e-09f);
		anglesTable.addAtEnd(3.725290298461914e-09f);
		anglesTable.addAtEnd(1.862645149230957e-09f);

}





	//Rend l'objet ayant pour attributs le cosinus, sinus et tan calculés à l'issue de l'algorithme Cordic.
	CircularVector cordicDirect(float theta){
		float x = 0.6072529350088f;
		float y = 0;
		float xi, yi, zi;
		float testPeriodique = -1;
		float angleStep;
        	float z = theta;
		int i = 0;
        	this.createAngleTable();
		while(z < -pi || z> pi){
			if(z < -pi){
				z = z+ 2*pi;
			}
			if(z > pi){
				z = z - 2*pi;
			}
		}
		if(z < -pi/2){
			z = z + pi;
		}
		else if(z > pi/2){
			z = z - pi;
		}
		else{
			testPeriodique = 1;
		}
		//z = theta;
		while(i <= n){
			if(i <= 29){
				angleStep = anglesTable.getAngleStep(i);
			}
			else{
				angleStep = this.byTwoPower(i);
			}
			if(z >= 0){
				xi = x - y*this.byTwoPower(i);
				yi = y + x*this.byTwoPower(i);
				zi = z - angleStep;
			}
			else{
				xi = x + y*this.byTwoPower(i);
				yi = y - x*this.byTwoPower(i);
				zi = z + angleStep;
			}
			x = xi;
			y = yi;
			z = zi;
			i = i + 1;
		}
	CircularVector trigoVector = new CircularVector();
	trigoVector.cos = testPeriodique*x;
        trigoVector.sin = testPeriodique*y;
        trigoVector.tan = y/x;
		return trgoVector;
	}

	//Rend le cosinus d'un angle flottant.
	float cos(float theta){
		CircularVector trigoVector = this.cordicDirect(theta);

		return trigoVector.cos;
	}

    float sin(float theta){
		CircularVector trigoVector = this.cordicDirect(theta);
		return trigoVector.sin;
	}

  float tan(float theta){
		CircularVector trigoVector = this.cordicDirect(theta);
		return trigoVector.tan;
	}

	float arccos(float t){
		float x = 1;
		float y = 0;
		float z = t;
		float xi, yi, ki, angleStep;
		float theta = 0;
		int i = 0;
        this.createAngleTable();
		while(i <= n){
			if(i <= 32){
				angleStep = anglesTable.getAngleStep(i);
			}
			else{
				angleStep = this.byTwoPower(i);
			}
			ki = 1 + this.byTwoPower(2*i);
			if((y >= 0 && z <= x) || (y < 0 && z > x)){
				xi = x - y*this.byTwoPower(i);
				yi = y + x*this.byTwoPower(i);
				x = xi - yi*this.byTwoPower(i);
				y = yi + xi*this.byTwoPower(i);
				theta  = theta + 2*angleStep;
			}
			else{
				xi = x + y*this.byTwoPower(i);
				yi = y - x*this.byTwoPower(i);
				x = xi + yi*this.byTwoPower(i);
				y = yi - xi*this.byTwoPower(i);
				theta  = theta - 2*angleStep;
			}
			z = ki*z;
			i = i + 1;
		}
		return theta;
	}

	float arcsin(float t){
		float x = 1;
		float y = 0;
		float z = t;
		float xi, yi, ki, angleStep;
		float theta = 0;
		int i = 0;
        this.createAngleTable();
		while(i <= n){
			if(i <= 32){
				angleStep = anglesTable.getAngleStep(i);
			}
			else{
				angleStep = this.byTwoPower(i);
			}
			ki = 1 + this.byTwoPower(2*i);
			if((x < 0 && y <= z) || (x >= 0 && z < y)){
				xi = x + y*this.byTwoPower(i);
				yi = y - x*this.byTwoPower(i);
				x = xi + yi*this.byTwoPower(i);
				y = yi - xi*this.byTwoPower(i);
				theta  = theta - 2*angleStep;
			}
			else{
				xi = x - y*this.byTwoPower(i);
				yi = y + x*this.byTwoPower(i);
				x = xi - yi*this.byTwoPower(i);
				y = yi + xi*this.byTwoPower(i);
				theta  = theta + 2*angleStep;
			}
			z = ki*z;     // pour la limite
			i = i + 1;
		}
		return theta;
	}

	float arctan(float t){
		float x = 1;
		float y, xi, yi, angleStep;
		float sign;
		float testParite = 1;
		float theta = 0;
		int i = 0;
        this.createAngleTable();
		if(t < 0){
			testParite = -1;
		}
		y = testParite*t;
		while(i <= n){
			if(i <= 32){
				angleStep = anglesTable.getAngleStep(i);
			}
			else{
				angleStep = this.byTwoPower(i);
			}
			if(y > 0){
				xi = x + y*this.byTwoPower(i);
				yi = y - x*this.byTwoPower(i);
				theta = theta + anglesTable.getAngleStep(i);
				x = xi;
				y = yi;
			}
			else{
				xi = x - y*this.byTwoPower(i);
				yi = y + x*this.byTwoPower(i);
				theta = theta - anglesTable.getAngleStep(i);
				x = xi;
				y = yi;
			}
			i = i + 1;
		}
		return testParite*theta;
	}
}


