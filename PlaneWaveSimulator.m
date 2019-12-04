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

% Last Modified by GUIDE v2.5 02-Dec-2019 11:26:52

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
axes(handles.axes1); %Sets axis for the program
update(handles)


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

% Enforce angle limits
if ang>90
    ang=90;
    handles.theta.String='90';
elseif ang<0
    ang=0;
    handles.theta.String='0';
end

handles.thetaSlider.Value = ang; % Move slider to value in box

update(handles)

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

update(handles)

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

update(handles)

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

update(handles)

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

update(handles)

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

update(handles)

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

update(handles)

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

update(handles)

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

update(handles)

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

update(handles)

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
handles.theta.String = ang; % Sets textbox to match

update(handles)

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

handles.n2.Visible = 'off';
handles.t2.Visible = 'off';
handles.n3.Visible = 'off';
handles.t3.Visible = 'off';
handles.n4.Visible = 'off';
handles.t4.Visible = 'off';
handles.text7.Visible = 'off';
handles.text8.Visible = 'off';
handles.text9.Visible = 'off';
handles.text10.Visible = 'off';
handles.text11.Visible = 'off';
handles.text12.Visible = 'off';

layers=handles.layers.Value;

if layers>=2
    handles.n2.Visible = 'on';
    handles.t2.Visible = 'on';
    handles.text7.Visible = 'on';
    handles.text8.Visible = 'on'; 
end
if layers>=3
    handles.n3.Visible = 'on';
    handles.t3.Visible = 'on';
    handles.text9.Visible = 'on';
    handles.text10.Visible = 'on';
end
if layers>=4
    handles.n4.Visible = 'on';
    handles.t4.Visible = 'on';
    handles.text11.Visible = 'on';
    handles.text12.Visible = 'on';
end

update(handles)

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
cla;

%% Calculates criticalangle Angle for First and Second Media
n2 = str2double(get(handles.n2,'String'));
n1 = str2double(get(handles.n1,'String'));

theta_crit = asind(n2/n1); % Calculates the critical angle for the first two materials
if isreal(theta_crit)
    handles.criticalAngle.String = ['Critical Angle: ' num2str(theta_crit)]; % Sets the critical angle 
else
    handles.criticalAngle.String = 'Critical Angle: N/A'; % No critical angle
end

%% Plotting

% Always incident plot wave in first medium
n1 = str2double(get(handles.n1,'String'));
t1 = str2double(get(handles.t1,'String'));
theta1 = get(handles.thetaSlider,'Value');
lam = str2double(get(handles.lam,'String'));

% Plot parameters
stepsize = 0.005;
x1 = -t1:stepsize:0;
xmax=0; % Keeps track of maximum x value as layer numbers/thicknesses change
y = 0:stepsize:1;
y=y';

% Wave vectors
k=2.*pi./lam.*n1;
kx=k.*cosd(theta1);
ky=-k.*sind(theta1);

% Construct and plot wave
E1 = exp(1i*(kx*x1 + ky*y));
imagesc(x1,y,real(E1));

% Plot waves in subsequent media as needed
hold on;
layers=handles.layers.Value;
if layers>=2
    n2 = str2double(get(handles.n2,'String'));
    t2 = str2double(get(handles.t2,'String'));
    x2 = 0:stepsize:t2;
    theta2=asind((n1.*sind(theta1))./n2);
    q=2.*pi./lam.*n2;
    qx=q.*cosd(theta2);
    qy=-q.*sind(theta2);
    E2 = exp(1i*(qx*x2 + qy*y));
    imagesc(x2,y,real(E2));
    xmax=xmax+t2;
    xline(0,'Color',[.61 .51 .74],'LineWidth',2,'Alpha',1); % Interface marker
end
if layers>=3
    n3 = str2double(get(handles.n3,'String'));
    t3 = str2double(get(handles.t3,'String'));
    x3 = t2:stepsize:t2+t3;
    theta3=asind((n2.*sind(theta2))./n3);
    p=2.*pi./lam.*n3;
    px=p.*cosd(theta3);
    py=-p.*sind(theta3);
    E3 = exp(1i*((px-t2./n2)*x3 + (py+t2./n2)*y));
    imagesc(x3,y,real(E3));
    xmax=xmax+t3;
    xline(t2,'Color',[.61 .51 .74],'LineWidth',2,'Alpha',1); % Interface marker
end
if layers>=4
    n4 = str2double(get(handles.n4,'String'));
    t4 = str2double(get(handles.t4,'String'));
    x4 = t2+t3:stepsize:t2+t3+t4;
    theta4=asind((n3.*sind(theta3))./n4);
    j=2.*pi./lam.*n4;
    jx=j.*cosd(theta4);
    jy=-j.*sind(theta4);
    E4 = exp(1i*((jx-t3./n3)*x4 + (jy+t3./n3)*y));
    imagesc(x4,y,real(E4));
    xmax=xmax+t4;
    xline(t2+t3,'Color',[.61 .51 .74],'LineWidth',2,'Alpha',1); % Interface marker
end
hold off;
xlim([-t1 xmax]);
xlabel('Position Relative to First Interface [\mum]')
yticks([]) % Clean up y axis
axis('xy')
set(gca,'FontSize',16,'FontWeight','bold','LineWidth',2)
