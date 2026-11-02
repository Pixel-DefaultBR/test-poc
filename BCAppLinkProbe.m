classdef BCAppLinkProbe < matlab.apps.App

    % Used to locate and load the app's XML configuration file
    properties (Access = public, Constant)
        AppConfigFilename = './BCAppLinkProbe.xml'; % File path to the app configuration file containing component layout and settings
    end

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
    end

    % Callbacks that handle component events
    methods

        % Code that executes after component creation
        function startupFcn(app)
            app.UIFigure.Name = 'BC_APP_LINK_PROBE';
            disp('BC_APP_LINK_PROBE');
        end
    end

    % App creation
    methods (Access = public)

        % Construct app
        function app = BCAppLinkProbe(varargin)
            app = app@matlab.apps.App(varargin{:});

            if nargout == 0
                clear app
            end
        end
    end
end