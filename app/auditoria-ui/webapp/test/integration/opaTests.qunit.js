sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'auditoriaui/test/integration/FirstJourney',
		'auditoriaui/test/integration/pages/TipoAuditoriaList',
		'auditoriaui/test/integration/pages/TipoAuditoriaObjectPage',
		'auditoriaui/test/integration/pages/AuditoriaObjectPage'
    ],
    function(JourneyRunner, opaJourney, TipoAuditoriaList, TipoAuditoriaObjectPage, AuditoriaObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('auditoriaui') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheTipoAuditoriaList: TipoAuditoriaList,
					onTheTipoAuditoriaObjectPage: TipoAuditoriaObjectPage,
					onTheAuditoriaObjectPage: AuditoriaObjectPage
                }
            },
            opaJourney.run
        );
    }
);