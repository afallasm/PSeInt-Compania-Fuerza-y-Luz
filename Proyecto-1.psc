Algoritmo Proyecto_1
	//definir todas las variables que ocupo
	Definir  MontoFijoServicios, MontoPorConsumo, ImpuestoCruzRoja, CantidadMensualKWVs, TotalClientesProcesados,CantitdadTotatlKWVs, MontoTotalCruzRoja, Precio500, Precio550,Precio600, Remanente Como Entero; 
	Definir IVA, MontoTotalFijo, MontoTotalConsumo, MontoTotalIVA,MontoFactura, MontoTotalFacturas, MontoTotalImpuestoRenta, Monto_Iva, MontoRenta  Como Real;
	Definir IVA_Factura Como Entero;
	Definir NumeroAbonado, NombreCliente, Continuar Como Caracter;
	Definir DiferenciaRango1, DiferenciaRango2, DiferenciaRango3 Como Entero;
	Definir ValorKWVsRango1, ValorKWVsRango2, ValorKWVsRango3 Como Entero;
	Definir LimiteInferiorRango1, LimiteSuperiorRango1, LimiteInferiorRango2,LimiteSuperiorRango2 Como Entero;
	Definir LimiteInferiorRango3, LimiteSuperiorRango3 Como Entero;
	Definir cero Como Entero;

	
	//Inicializar variables
	MontoRenta = 0.10;
	cero = 0;
	ValorKWVsRango1= 500;
	ValorKWVsRango2= 550;
	ValorKWVsRango3 = 600;
	LimiteInferiorRango1 = 0;
	LimiteSuperiorRango1=15;
	LimiteInferiorRango2 = 16;
	LimiteSuperiorRango2 = 30;
	LimiteInferiorRango3 = 31;
	LimiteSuperiorRango3 = 9999999;
	MontoFactura=0;
	MontoFijoServicios=0;
	CantidadMensualKWVs=0;
	TotalClientesProcesados=0;
	CantitdadTotatlKWVs=0;
	IVA=0.13;
	Monto_IVA=0;
	IVA_Factura=0;
	Remanente =0;
	MontoTotalFijo =0;
	MontoTotalCruzRoja=0;
	MontoTotalIVA=0;
	MontoTotalFacturas=0;
	MontoTotalImpuestoRenta =0;
	MontoTotalConsumo = 0;
	//Mientras 
	Definir Condicion Como Logico;
	Condicion = Verdadero;
	
	Mientras Condicion Hacer
		
		Precio500 = 0;
		Precio550 = 0;
		Precio600 = 0;
		MontoPorConsumo=0;
		ImpuestoCruzRoja=0;
	//solicitar los datos del abonado
	Escribir ("Ingrese el numero de abonado");
	Leer NumeroAbonado;
	Escribir ("Ingrese el nombre del cliente");
	Leer NombreCliente;
	Escribir ("Ingrese el consumo mensual en KWVs del cliente");
	Leer CantidadMensualKWVs;

	//ahora verificar que CantidadMensualKWVs es mayor que 0 y un número entero
	Si CantidadMensualKWVs > cero Entonces
		Escribir ("Datos completos");
	SiNo
		Escribir ("Verifique que el dato ingresado sea mayor que cero");
		Leer CantidadMensualKWVs;
	FinSi
	
	//variable de monto fijo, así se define una constante
	MontoFijoServicios = 5400;
	;
	// Calculo para el primer rango
	DiferenciaRango1 = CantidadMensualKWVs - LimiteSuperiorRango1;
	Si DiferenciaRango1 <= cero Entonces
		Precio500 = (DiferenciaRango1+15)*ValorKWVsRango1;
	SiNo
		Precio500 = 15* ValorKWVsRango1;
		DiferenciaRango2 = CantidadMensualKWVs-LimiteSuperiorRango2;
		Si DiferenciaRango2 <= cero Entonces
			Precio550 = (DiferenciaRango2+15)*ValorKWVsRango2;
		SiNo
			Precio550 = 15*ValorKWVsRango2;
			DiferenciaRango3 = (CantidadMensualKWVs - 30);
			Si DiferenciaRango3 >= 1 y DiferenciaRango3 <= 9999999 Entonces
				Precio600 = DiferenciaRango3*ValorKWVsRango3;
			SiNo
				Escribir ("Se encuentra fuera del limite permitido que es 9 999 999 KWVs consumidos");
			FinSi
		FinSi
	FinSi
	
	//Escribir ("El monto del primer rango es: "), Precio500;
	//Escribir ("El monto del segundo rango es: "), Precio550;
	//Escribir ("El monto del tercer rango es: "), Precio600;
	
	MontoPorConsumo = Precio500+Precio550+Precio600;

//	//Calculo ImpuestoCruzRoja
	ImpuestoCruzRoja = CantidadMensualKWVs * 10;
	
//	//Calculo IVA
	Si CantidadMensualKWVs >= 25 Entonces
		Monto_IVA = MontoPorConsumo*IVA;
	SiNo
		Monto_IVA = 0;
	FinSi
	
	MontoFactura = MontoFijoServicios+MontoPorConsumo+ImpuestoCruzRoja+Monto_Iva;
	Escribir ("Factura");
	Escribir ("    Factura Compañia de Fuerza y Luz    ");
	Escribir ("                                        ");
	Escribir ("El monto total a pagar para el cliente "),NombreCliente, (" es de: "),MontoFactura;
	Escribir ("El numero de abonado es:"), NumeroAbonado;
	Escribir ("La cantidad de KWVs consumidos fue de:"), CantidadMensualKWVs;
	Escribir ("El monto fijo por servicio es de:"), MontoFijoServicios;
	Escribir ("El monto total por consumo es:"), MontoPorConsumo;
	Escribir ("El monto del iva es:"), Monto_Iva;
	Escribir ("El impuesto por cruz roja es:"), ImpuestoCruzRoja;
	
	//aqui se termina de procesar un cliente
	TotalClientesProcesados = TotalClientesProcesados + 1;
	//aqui se suma la cantidad total de KWVs consumidos y se suman 
	CantitdadTotatlKWVs = CantitdadTotatlKWVs+CantidadMensualKWVs;
	//aqui se suma el monto total por servicio fijo
	MontoTotalFijo = MontoTotalFijo + MontoFijoServicios;
	//aqui se calcula el monto total por consumo
	MontoTotalConsumo = MontoTotalConsumo+MontoPorConsumo;
	//aqui se calcula el monto total del impuesto de la cruz roja
	MontoTotalCruzRoja = MontoTotalCruzRoja+ImpuestoCruzRoja;
	//aqui se calcula el monto total del IVA
	MontoTotalIVA = MontoTotalIVA + Monto_Iva;
	//aqui se calcula el monto total de las facturas
	MontoTotalFacturas = MontoTotalFacturas+MontoFactura;
	//aqui se calcula el monto de renta que debe pagar la CFL al gobierno
	MontoTotalImpuestoRenta = (MontoTotalConsumo + MontoTotalFijo) * MontoRenta;
	
	
	Escribir ("Desea ingresar otro cliente? Si = 0 / No =1");
	Leer Continuar;
	Si Continuar = "0" Entonces
		Escribir ("Ingrese los datos del siguiente usuario");
	Sino
		Condicion = Falso;
		Escribir ("Total de datos ingresados");
	FinSi
FinMientras

//Reporte final
	
// Total de Clientes Procesados
Escribir ("REPORTE FINAL");
Escribir ("El Total de Clientes Procesados es: "), TotalClientesProcesados;

//cantidad total de KWVs consumidos
Escribir ("El total de KWVs Consumidos es de: "), CantitdadTotatlKWVs;
//Monto total servicio fijo
Escribir ("El monto total por servicio fijo es de: "), MontoTotalFijo;
//Monto total por consumo
Escribir ("El monto total por consumo es de: "), MontoTotalConsumo;
//Monto total Cruz Roja
Escribir ("El monto total del impuesto de la cruz roja es de: "), MontoTotalCruzRoja;
//Monto total IVA
Escribir ("El monto total del IVA es de: "), MontoTotalIVA;
//Monto total factura
Escribir ("El monto total por todas las facturas es de: "), MontoTotalFacturas;
//Monto total Impuesto de Renta
Escribir ("El monto total de impuesto de renta a pagar es de: "), MontoTotalImpuestoRenta;


	
FinAlgoritmo
