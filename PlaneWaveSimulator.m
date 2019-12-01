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

% Last Modified by GUIDE v2.5 01-Dec-2019 15:49:16

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
cla;
ang = str2num(get(handles.theta,'String')); %Gets value of theta from the textbox
set(handles.slider1,'Value',ang); %Sets slider to the same value for theta

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
cla;

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
cla;
handles.critang.String = '';

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
cla;

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
cla;
handles.critang.String = '';

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
cla;

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
cla;
handles.critang.String = '';

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
cla;

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
cla;
handles.critang.String = '';

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
cla;

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
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
cla;
ang = get(handles.slider1,'Value'); %Gets value of theta from the slider
handles.theta.String = ang; %Sets the text box value for theta 

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
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
cla;
switch get(handles.layers,'Value')
    case 1 %One Media
        set(handles.n1,'visible','on');
        set(handles.t1,'visible','on');
        set(handles.n2,'visible','off');
        set(handles.t2,'visible','off');
        set(handles.n3,'visible','off');
        set(handles.t3,'visible','off');
        set(handles.n4,'visible','off');
        set(handles.t4,'visible','off');
        set(handles.text5,'visible','on');
        set(handles.text6,'visible','on');
        set(handles.text7,'visible','off');
        set(handles.text8,'visible','off'); 
        set(handles.text9,'visible','off');
        set(handles.text10,'visible','off');
        set(handles.text11,'visible','off');
        set(handles.text12,'visible','off');         
    case 2 %Two Media
        set(handles.n1,'visible','on');
        set(handles.t1,'visible','on');
        set(handles.n2,'visible','on');
        set(handles.t2,'visible','on');
        set(handles.n3,'visible','off');
        set(handles.t3,'visible','off');
        set(handles.n4,'visible','off');
        set(handles.t4,'visible','off');
        set(handles.text5,'visible','on');
        set(handles.text6,'visible','on');
        set(handles.text7,'visible','on');
        set(handles.text8,'visible','on'); 
        set(handles.text9,'visible','off');
        set(handles.text10,'visible','off');
        set(handles.text11,'visible','off');
        set(handles.text12,'visible','off'); 
    case 3 %Three Media
        set(handles.n1,'visible','on');
        set(handles.t1,'visible','on');
        set(handles.n2,'visible','on');
        set(handles.t2,'visible','on');
        set(handles.n3,'visible','on');
        set(handles.t3,'visible','on');
        set(handles.n4,'visible','off');
        set(handles.t4,'visible','off'); 
        set(handles.text5,'visible','on');
        set(handles.text6,'visible','on');
        set(handles.text7,'visible','on');
        set(handles.text8,'visible','on'); 
        set(handles.text9,'visible','on');
        set(handles.text10,'visible','on');
        set(handles.text11,'visible','off');
        set(handles.text12,'visible','off');         
    case 4 %Four Media
        set(handles.n1,'visible','on');
        set(handles.t1,'visible','on');
        set(handles.n2,'visible','on');
        set(handles.t2,'visible','on');
        set(handles.n3,'visible','on');
        set(handles.t3,'visible','on');
        set(handles.n4,'visible','on');
        set(handles.t4,'visible','on');
        set(handles.text5,'visible','on');
        set(handles.text6,'visible','on');
        set(handles.text7,'visible','on');
        set(handles.text8,'visible','on'); 
        set(handles.text9,'visible','on');
        set(handles.text10,'visible','on');
        set(handles.text11,'visible','on');
        set(handles.text12,'visible','on'); 
end

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


% --- Executes on button press in go.
function go_Callback(hObject, eventdata, handles)
% hObject    handle to go (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


%% Calculates Critical Angle for First and Second Media
n2 = str2num(get(handles.n2,'String'));
n1 = str2num(get(handles.n1,'String'));

theta_crit = asind((n1)./(n2)); %Calculates the critical angle for the first two materials
handles.critang.String = num2str(theta_crit); %Sets the critical angle 


%% Plotting
% Incident
n1 = str2num(get(handles.n1,'String'));
n2 = str2num(get(handles.n2,'String'));
n3 = str2num(get(handles.n3,'String'));
n4 = str2num(get(handles.n4,'String'));
t1 = str2num(get(handles.n1,'String'));
t2 = str2num(get(handles.t2,'String'));
t3 = str2num(get(handles.t3,'String'));
t4 = str2num(get(handles.t4,'String'));
theta = (get(handles.slider1,'Value'));
lam = str2num(get(handles.lam,'String'));
stepsize = 0.00025;
x1 = -str2num(get(handles.t1,'String')):stepsize:0;
x2 = 0:stepsize:str2num(get(handles.t2,'String'));
x3 = str2num(get(handles.t2,'String')):stepsize:str2num(get(handles.t3,'String'))+str2num(get(handles.t2,'String'));
x4 = str2num(get(handles.t3,'String')):stepsize:str2num(get(handles.t4,'String'))+stepsize:str2num(get(handles.t3,'String'))+str2num(get(handles.t2,'String'));

y = 0:stepsize:1;

[X1,Y1] = meshgrid(x1,y);
[X2,Y2] = meshgrid(x2,y);
[X3,Y3] = meshgrid(x3,y);
[X4,Y4] = meshgrid(x4,y);

kx = cosd(get(handles.slider1,'Value'))./str2num(get(handles.lam,'String'));
ky = -sind(get(handles.slider1,'Value'))./str2num(get(handles.lam,'String'));
disp(num2str(ky))
k = sqrt(kx^2+ky^2);

qx = k*sqrt(str2num(get(handles.n2,'String'))./str2num(get(handles.n1,'String')).^2 ...
    -sind(get(handles.slider1,'Value')).^2);
qy = ky;
q = sqrt(qx.^2+qy.^2);

px = q*sqrt(str2num(get(handles.n3,'String'))./str2num(get(handles.n2,'String')).^2 ...
    -sind(get(handles.slider1,'Value')).^2);

temp = asind((n1.*sind(theta))./n2);


py = qy.*sind(temp);
p = sqrt(px.^2+py.^2);

jx = p*sqrt(str2num(get(handles.n4,'String'))./str2num(get(handles.n3,'String')).^2 ...
    -sind(get(handles.slider1,'Value')).^2);
jy = py;
j = sqrt(jx.^2+jy.^2);




E1 = exp(1i*(kx*X1 + ky*Y1));
E2 = exp(1i*(qx*X2 + qy*Y2));
E3 = exp(1i*(px*X3 + py*Y3));
E4 = exp(1i*(jx*X4 + jy*Y4));


hold on
switch get(handles.layers,'Value')
    case 1 %One Media
imagesc(x1,y,real(E1)); %E incident     
    case 2 %Two Media
imagesc(x1,y,real(E1)); %E incident
imagesc(x2,y,real(E2)); %E incident
    case 3 %Three Media
imagesc(x1,y,real(E1)); %E incident
imagesc(x2,y,real(E2)); %E incident
imagesc(x3,y,real(E3)); %E incident  
    case 4 %Four Media
imagesc(x1,y,real(E1)); %E incident
imagesc(x2,y,real(E2)); %E incident
imagesc(x3,y,real(E3)); %E incident
imagesc(x4,y,real(E4)); %E incident
end

xline(0,'Color',[.61 .51 .74],'LineWidth',2,'Alpha',1); 

xmax = (str2num(get(handles.t2,'String'))+str2num(get(handles.t3,'String'))+str2num(get(handles.t4,'String')));
xlim([-1 xmax]);
ylim([0 1]);
hold off
axis('xy');
