package com.fihoca.gespro2.entities;

public class RPartidaPresupuesto {
    private Integer idPartida;

    private Integer idPresupuesto;

    private Integer idIndustrial;

    private Double medicion;

    private Double precioUnitario;

    private Double precioTotal;

    private String unidades;

    private String medicionIndustrial;

    private String comentatios;

    private Integer iva;

    private Integer retencion;

    public Integer getIdPartida() {
        return idPartida;
    }

    public void setIdPartida(Integer idPartida) {
        this.idPartida = idPartida;
    }

    public Integer getIdPresupuesto() {
        return idPresupuesto;
    }

    public void setIdPresupuesto(Integer idPresupuesto) {
        this.idPresupuesto = idPresupuesto;
    }

    public Integer getIdIndustrial() {
        return idIndustrial;
    }

    public void setIdIndustrial(Integer idIndustrial) {
        this.idIndustrial = idIndustrial;
    }

    public Double getMedicion() {
        return medicion;
    }

    public void setMedicion(Double medicion) {
        this.medicion = medicion;
    }

    public Double getPrecioUnitario() {
        return precioUnitario;
    }

    public void setPrecioUnitario(Double precioUnitario) {
        this.precioUnitario = precioUnitario;
    }

    public Double getPrecioTotal() {
        return precioTotal;
    }

    public void setPrecioTotal(Double precioTotal) {
        this.precioTotal = precioTotal;
    }

    public String getUnidades() {
        return unidades;
    }

    public void setUnidades(String unidades) {
        this.unidades = unidades;
    }

    public String getMedicionIndustrial() {
        return medicionIndustrial;
    }

    public void setMedicionIndustrial(String medicionIndustrial) {
        this.medicionIndustrial = medicionIndustrial;
    }

    public String getComentatios() {
        return comentatios;
    }

    public void setComentatios(String comentatios) {
        this.comentatios = comentatios;
    }

    public Integer getIva() {
        return iva;
    }

    public void setIva(Integer iva) {
        this.iva = iva;
    }

    public Integer getRetencion() {
        return retencion;
    }

    public void setRetencion(Integer retencion) {
        this.retencion = retencion;
    }
}