namespace auditoria;

using { cuid } from '@sap/cds/common';

type Descripcion : String(150);

entity DMO_AUDITORIA : cuid {
    DESCRIPCION   : Descripcion @title: 'DESCRIPCION';

    @mandatory // TIPOAUDITORIA es obligatorio
    @assert.notNull: false // TIPOAUDITORIA puede ser nulo
    TIPOAUDITORIA : Association to DMA_TIPOAUDITORIA;
}

entity DMA_TIPOAUDITORIA : cuid {
    DESCRIPCION : Descripcion not null @title: 'DESCRIPCION';
    TOAUDITORIA : Composition of many DMO_AUDITORIA
                  on TOAUDITORIA.TIPOAUDITORIA = $self;
}

entity DMO_RECOMENDACION : cuid {
    TITULO : String(50) not null @title: 'TITULO';
}