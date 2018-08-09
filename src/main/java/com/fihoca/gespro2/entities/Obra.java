package com.fihoca.gespro2.entities;

import java.util.Date;

public class Obra {
    private Integer id;

    private String nombre;

    private String direccion;

    private String cp;

    private String poblacion;

    private String provincia;

    private String telefono;

    private String email;

    private Date fecha;

    private String estado;

    private Integer idPromotor;

    private Integer idPresupuestoPrevio;

    private Integer idPresupuestoContrato;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getCp() {
        return cp;
    }

    public void setCp(String cp) {
        this.cp = cp;
    }

    public String getPoblacion() {
        return poblacion;
    }

    public void setPoblacion(String poblacion) {
        this.poblacion = poblacion;
    }

    public String getProvincia() {
        return provincia;
    }

    public void setProvincia(String provincia) {
        this.provincia = provincia;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Integer getIdPromotor() {
        return idPromotor;
    }

    public void setIdPromotor(Integer idPromotor) {
        this.idPromotor = idPromotor;
    }

    public Integer getIdPresupuestoPrevio() {
        return idPresupuestoPrevio;
    }

    public void setIdPresupuestoPrevio(Integer idPresupuestoPrevio) {
        this.idPresupuestoPrevio = idPresupuestoPrevio;
    }

    public Integer getIdPresupuestoContrato() {
        return idPresupuestoContrato;
    }

    public void setIdPresupuestoContrato(Integer idPresupuestoContrato) {
        this.idPresupuestoContrato = idPresupuestoContrato;
    }
}