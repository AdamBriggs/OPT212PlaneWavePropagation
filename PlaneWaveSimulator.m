%% Plane Wave Simulator
% Adam Briggs, Benjamin Nussbaum, and Alyssa Ho
% This project serves to fufill the final project requiriments for OPT 212
% This GUI plots a wave traveling through various media. It takes into
% consideration TIR.
% The GUI is straightforward and automatically updates when changes are
% made.
function varargout = PlaneWaveSimulator(varargin)
% PLANEWAVESIMULATOR MATLAB code for PlaneWaveSimulator.fig
%      PLANEWAVESIMULATOR, by itself, creates a new PLANEWAVESIMULATOR or raises the existing
%      singleton*.
%
%      H = PLANEWAVESIMULATOR returns the handle to a new PLANEWAVESIMULATOR or the handle to
%      the existing singleton*.
%
%      PLANEWAVESIMULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PLANEWAVESIMULATOR.M with the given input arguments.
%
%      PLANEWAVESIMULATOR('Property','Value',...) creates a new PLANEWAVESIMULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PlaneWaveSimulator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PlaneWaveSimulator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PlaneWaveSimulator

% Last Modified by GUIDE v2.5 07-Dec-2019 14:33:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PlaneWaveSimulator_OpeningFcn, ...
                   'gui_OutputFcn',  @PlaneWaveSimulator_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before PlaneWaveSimulator is made visible.
function PlaneWaveSimulator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PlaneWaveSimulator (see VARARGIN)

% Choose default command line output for PlaneWaveSimulator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PlaneWaveSimulator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
axes(handles.axes1); % Sets axis for the program
update(handles)      % Calls update function to refresh all labels, text boxes, and plots


function varargout = PlaneWaveSimulator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function theta_Callback(hObject, eventdata, handles)
% hObject    handle to theta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta as text
%        str2double(get(hObject,'String')) returns contents of theta as a double

ang = str2double(handles.theta.String); % Gets value of theta from the textbox

% Enforce angle limits. 
if ang > 90
    ang = 90;
    handles.theta.String='90';
elseif ang < 0
    ang = 0;
    handles.theta.String = '0';
end

handles.thetaSlider.Value = ang; % Move slider to value in box

update(handles) % Calls update function to refresh all labels, text boxes, and plots

% --- Executes during object creation, after setting all properties.
function theta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function lam_Callback(hObject, eventdata, handles)
% hObject    handle to lam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lam as text
%        str2double(get(hObject,'String')) returns contents of lam as a double

update(handles) % Calls update function to refresh all labels, text boxes, and plots

% --- Executes during object creation, after setting all properties.
function lam_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function n1_Callback(hObject, eventdata, handles)
% hObject    handle to n1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n1 as text
%        str2double(get(hObject,'String')) returns contents of n1 as a double

update(handles) % Calls update function to refresh all labels, text boxes, and plots

% --- Executes during object creation, after setting all properties.
function n1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function t1_Callback(hObject, eventdata, handles)
% hObject    handle to t1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t1 as text
%        str2double(get(hObject,'String')) returns contents of t1 as a double

update(handles) % Calls update function to refresh all labels, text boxes, and plots

% --- Executes during object creation, after setting all properties.
function t1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function n2_Callback(hObject, eventdata, handles)
% hObject    handle to n2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n2 as text
%        str2double(get(hObject,'String')) returns contents of n2 as a double

update(handles) % Calls update function to refresh all labels, text boxes, and plots

% --- Executes during object creation, after setting all properties.
function n2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function t2_Callback(hObject, eventdata, handles)
% hObject    handle to t2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t2 as text
%        str2double(get(hObject,'String')) returns contents of t2 as a double

update(handles) %Calls update function to refresh all labels, text boxes, and plots

% --- Executes during object creation, after setting all properties.
function t2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function n3_Callback(hObject, eventdata, handles)
% hObject    handle to n3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n3 as text
%        str2double(get(hObject,'String')) returns contents of n3 as a double

update(handles) %Calls update function to refresh all labels, text boxes, and plots

% --- Executes during object creation, after setting all properties.
function n3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function t3_Callback(hObject, eventdata, handles)
% hObject    handle to t3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t3 as text
%        str2double(get(hObject,'String')) returns contents of t3 as a double

update(handles) %Calls update function to refresh all labels, text boxes, and plots

% --- Executes during object creation, after setting all properties.
function t3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function n4_Callback(hObject, eventdata, handles)
% hObject    handle to n4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n4 as text
%        str2double(get(hObject,'String')) returns contents of n4 as a double

update(handles) % Calls update function to refresh all labels, text boxes, and plots

% --- Executes during object creation, after setting all properties.
function n4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function t4_Callback(hObject, eventdata, handles)
% hObject    handle to t4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t4 as text
%        str2double(get(hObject,'String')) returns contents of t4 as a double

update(handles) %Calls update function to refresh all labels, text boxes, and plots

% --- Executes during object creation, after setting all properties.
function t4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on slider movement.
function thetaSlider_Callback(hObject, eventdata, handles)
% hObject    handle to thetaSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

ang = handles.thetaSlider.Value; % Gets value of theta
handles.theta.String = ang;      % Sets textbox to match

update(handles) % Calls update function to refresh all labels, text boxes, and plots

% --- Executes during object creation, after setting all properties.
function thetaSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to thetaSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes on selection change in layers.
function layers_Callback(hObject, eventdata, handles)
% hObject    handle to layers (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns layers contents as cell array
%        contents{get(hObject,'Value')} returns selected item from layers

% This section sets the visibilities of all of the labels and editable text
% boxes based on the selected number of materials.

handles.n2.Visible = 'off';     % Sets visibility off
handles.t2.Visible = 'off';     % Sets visibility off
handles.n3.Visible = 'off';     % Sets visibility off
handles.t3.Visible = 'off';     % Sets visibility off
handles.n4.Visible = 'off';     % Sets visibility off
handles.t4.Visible = 'off';     % Sets visibility off
handles.text7.Visible = 'off';  % Sets visibility off
handles.text8.Visible = 'off';  % Sets visibility off
handles.text9.Visible = 'off';  % Sets visibility off
handles.text10.Visible = 'off'; % Sets visibility off
handles.text11.Visible = 'off'; % Sets visibility off
handles.text12.Visible = 'off'; % Sets visibility off

handles.crit2.Visible = 'off';  % Sets visibility off
handles.crit3.Visible = 'off';  % Sets visibility off

layers=handles.layers.Value; % Gets value of number of media from drop down selection

if layers>=2 %Enables visibility of labels and editable text boxes for second media
    handles.n2.Visible = 'on';    % Sets visibility on
    handles.t2.Visible = 'on';    % Sets visibility on
    handles.text7.Visible = 'on'; % Sets visibility on
    handles.text8.Visible = 'on'; % Sets visibility on
end
if layers>=3 %Enables visibility of labels and editable text boxes for 2-3 media
    handles.n3.Visible = 'on';     % Sets visibility on
    handles.t3.Visible = 'on';     % Sets visibility on
    handles.text9.Visible = 'on';  % Sets visibility on
    handles.text10.Visible = 'on'; % Sets visibility on
    handles.crit2.Visible = 'on';  % Sets visibility on
end
if layers>=4 %Enables visibility of labels and editable text boxes for 2-4 media
    handles.n4.Visible = 'on';     % Sets visibility on
    handles.t4.Visible = 'on';     % Sets visibility on
    handles.text11.Visible = 'on'; % Sets visibility on
    handles.text12.Visible = 'on'; % Sets visibility on
    handles.crit3.Visible = 'on';  % Sets visibility on
end

update(handles) %Calls update function to refresh all labels, text boxes, and plots

% --- Executes during object creation, after setting all properties.
function layers_CreateFcn(hObject, eventdata, handles)
% hObject    handle to layers (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on any updated value in the GUI
function update(handles)
% This function refreshes the GUI, plotting the required wave interactions
% at the specified interface, and updates all labels and values as necessary
cla; %Clears the current axes

%% Calculates criticalangle Angle for First and Second Media
n1 = str2double(get(handles.n1,'String')); % Gets the value of n1 from the GUI
n2 = str2double(get(handles.n2,'String')); % Gets the value of n2 from the GUI
n3 = str2double(get(handles.n3,'String')); % Gets the value of n3 from the GUI
n4 = str2double(get(handles.n4,'String')); % Gets the value of n4 from the GUI

theta_crit1 = asind(n2/n1); % Calculates the critical angle between materials 1 and 2
theta_crit2 = asind(n3/n2); % Calculates the critical angle between materials 2 and 3
theta_crit3 = asind(n4/n3); % Calculates the critical angle between materials 3 and 4

tcs=[theta_crit1 theta_crit2 theta_crit3];      % Matrix of critical angles
hs=[handles.crit1 handles.crit2 handles.crit3]; % Array of handles for critical angles
for ii=1:3
    if isreal(tcs(ii)) %Sets critical angle based on if it exists or not
        add = num2str(tcs(ii),'%.2f'); % Sets the critical angle 
    else
        add = 'N/A'; % No critical angle
    end
    hs(ii).String = [num2str(ii) ' to ' num2str(ii+1) ': ' add]; % Prints out critical angle
end

%% Plotting

% Always incident plot wave in first medium
t1 = str2double(get(handles.t1,'String')); % Pulling variables from GUI
t2 = str2double(get(handles.t2,'String')); % Pulling variables from GUI
t3 = str2double(get(handles.t3,'String')); % Pulling variables from GUI
t4 = str2double(get(handles.t4,'String')); % Pulling variables from GUI

lam = str2double(get(handles.lam,'String')); % Pulling variables from GUI

theta1 = get(handles.thetaSlider,'Value'); % Pulling variables from GUI
theta2 = asind((n1.*sind(theta1))./n2);    % Calculate angle in second media
theta3 = asind((n2.*sind(theta2))./n3);    % Calculate angle in third media


% Plot parameters
detail = 500;                % Determined to have a high quality plot
x1 = linspace(-t1,0,detail); % Calculating vector for first material thickness
xmax = 0;                    % Keeps track of maximum x value as layer numbers/thicknesses change
y = linspace(0,1,detail);    % Calculating vector for hight
y = y';                      % Setting y for plotting view

% Wave vectors
k = 2.*pi./lam.*n1;    % Calculating wave vector for first material
kx = k.*cosd(theta1);  % X-component
ky = -k.*sind(theta1); % Y-component

% Construct and plot wave
E1 = exp(1i*(kx*x1 + ky*y)); % Equation for first wave
imagesc(x1,y,real(E1));      % Plotting first wave

% Plot waves in subsequent media as needed
hold on;
layers = handles.layers.Value; % Gets value of number of media from drop down selection

% Initialize no TIR
handles.tir.String = {'NO' 'TIR'};
handles.tir.ForegroundColor = 'g';

if layers>=2
    x2 = linspace(0,t2,detail);                % Calculates vector for second length
    qx = k*sqrt( (n2/n1)^2 -sind(theta1)^2 );  %Defining wave vector
    qy = ky;                                   % Defining wave vector
    q = hypot(qx,qy);                          % Defining wave vector
    E2 = exp(1i*(qx*x2 + qy*y));               % Wave Equation
    imagesc(x2,y,real(E2));                    % Plotting Wave
    xmax = xmax+t2;                            % Setting new x limits from first to second media
    xline(0,'Color',[.61 .51 .74],'LineWidth',2,'Alpha',1); % Interface marker
    
    if layers>=3
        x3 = linspace(t2,t2+t3,detail);           %Calculates vector for second length
        px = q*sqrt( (n3/n2)^2 -sind(theta2)^2 ); %Defining wave vector
        py = qy;                                  %Defining wave vector
        p = hypot(px,py); %Defining wave vector
        E3 = exp(1i*(qx*t2 + px*(x3-t2) + py*y)); %Wave Equation
        if theta1 >= real(theta_crit1)            %If the previous media is TIR, plot zeros
            E3 = E3.*0;                         % Set zeros
            handles.tir.String = {'YES' 'TIR'}; % Change TIR Warning
            handles.tir.ForegroundColor = 'r';  % Change TIR Warning
        end
        imagesc(x3,y,real(E3)); % Plotting Wave
        xmax = xmax+t3; % Setting new x limits from first to third media
        xline(t2,'Color',[.61 .51 .74],'LineWidth',2,'Alpha',1); % Interface marker

        if layers >= 4
            
            x4 = linspace(t2+t3,t2+t3+t4,detail);     % Calculates vector for second length
            jx = p*sqrt( (n4/n3)^2 -sind(theta3)^2 ); % Defining wave vector
            jy = py;                                  % Defining wave vector
            E4 = exp(1i*(qx*t2 + px*t3 + jx*(x4-(t2+t3)) + jy*y)); % Wave Equation
            if theta1 >= real(theta_crit1) || theta2 >= real(theta_crit2) % If the S2 or S3 is TIR, plot zeros
                E4 = E4.*0; % Set zeros
                handles.tir.String = {'YES' 'TIR'}; % Change TIR Warning
                handles.tir.ForegroundColor = 'r';  % Change TIR Warning
            end
            if theta3 >= real(theta_crit3)
                handles.tir.String = {'YES' 'TIR'}; % Change TIR Warning
                handles.tir.ForegroundColor = 'r';  % Change TIR Warning
            end
            imagesc(x4,y,real(E4)); %Plotting Wave
            xmax = xmax+t4; %Setting new x limits from first to third media
            xline(t2+t3,'Color',[.61 .51 .74],'LineWidth',2,'Alpha',1); % Interface marker    
            
        end
    end
end
hold off;
xlim([-t1 xmax]); %Sets final x limits based off of number of media and relative thickness
xlabel('Position Relative to First Interface [\mum]') %Sets x-label
yticks([]) % Clean up y axis
axis('xy') %Sets axis for the imagesc function to show
set(gca,'FontSize',16,'FontWeight','bold','LineWidth',2) %Change font size for all type
