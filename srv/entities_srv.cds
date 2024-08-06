using { auditoria } from '../db/entities';

@requires: 'Auditor'
service RecomendacionService {
    entity Recomendacion
        as projection on auditoria.DMO_RECOMENDACION;
}

@requires: 'authenticated-user'
service InfraestructuraService {
    entity TipoAuditoria
        as projection on auditoria.DMA_TIPOAUDITORIA;
 
    entity Auditoria
        as projection on auditoria.DMO_AUDITORIA;
}