package promociones;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

import atraccion.Atraccion;
import ofertable.Ofertable;
import tipos.Tipo;

public class PromoPorcentual extends Promocion implements Ofertable {
	Integer porcentaje = 0;
	private String breveDescripcion;
	private String tipoP = "Porcentual";


	public PromoPorcentual(String nombre, Tipo tipo, Integer porcentaje, String breveDescripcion, boolean deleted) {
		super(nombre, tipo, deleted);
		this.porcentaje = porcentaje;
		this.breveDescripcion = breveDescripcion;
	}

	public void setPorcentaje(Integer porcentaje) {
		this.porcentaje = porcentaje;
	}

	public void setBreveDescripcion(String breveDescripcion) {
		this.breveDescripcion = breveDescripcion;
	}

	public String getTipoP() {
		return tipoP;
	}

	public void setTipoP(String tipoP) {
		this.tipoP = tipoP;
	}

	@Override
	public Integer getCosto() {
		Integer costoTotal = 0;
		Iterator<Atraccion> iteradorCosto = getAtracciones().iterator();
		while (iteradorCosto.hasNext()) {
			Atraccion a = iteradorCosto.next();
			costoTotal += a.getCosto();
		}
		costoTotal = (int) costoTotal * (100 - porcentaje) / 100;
		return costoTotal;
	}


	@Override
	public void setLugaresDisponibles(Integer lugaresDisponibles) {
	}

	@Override
	public String getBreveDescripcion() {
		return breveDescripcion;
	}

	public Integer getPorcentaje() {
		return porcentaje;
	}

	@Override
	public Tipo getTipo() {
		return this.getTipoAtraccion();
	}

}
