using { auditoria } from '../db/entities';

@requires: 'authenticated-user'
service AuditoriaService {
    entity TipoAuditoria
        as projection on auditoria.DMA_TIPOAUDITORIA;
}

@requires: 'Auditor'
service RecomendacionService {
    entity Auditoria
        as projection on auditoria.DMO_AUDITORIA;

    entity Recomendacion
        as projection on auditoria.DMO_RECOMENDACION;
}