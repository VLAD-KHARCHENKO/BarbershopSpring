package com.BarbershopSpring.BarbershopSpring.model;

public interface EntityHasId {
    Long getId();

    void setId(Long id);

    boolean isNew();
}
