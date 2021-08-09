function varargout = calci(varargin)
% CALCI MATLAB code for calci.fig
%      CALCI, by itself, creates a new CALCI or raises the existing
%      singleton*.
%
%      H = CALCI returns the handle to a new CALCI or the handle to
%      the existing singleton*.
%
%      CALCI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCI.M with the given input arguments.
%
%      CALCI('Property','Value',...) creates a new CALCI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calci_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calci_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calci

% Last Modified by GUIDE v2.5 04-Aug-2021 17:20:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calci_OpeningFcn, ...
                   'gui_OutputFcn',  @calci_OutputFcn, ...
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


% --- Executes just before calci is made visible.
function calci_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to calci (see VARARGIN)

% Choose default command line output for calci
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calci wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = calci_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in eight.
function eight_Callback(hObject, eventdata, handles)
% hObject    handle to eight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.inputastext,'String');
str=strcat(str,('8'));
set(handles.inputastext,'String',str);

% --- Executes on button press in seven.
function seven_Callback(hObject, eventdata, handles)
% hObject    handle to seven (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.inputastext,'String');
str=strcat(str,('7'));
set(handles.inputastext,'String',str);


% --- Executes on button press in three.
function three_Callback(hObject, eventdata, handles)
% hObject    handle to three (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.inputastext,'String');
str=strcat(str,('3'));
set(handles.inputastext,'String',str);


% --- Executes on button press in six.
function six_Callback(hObject, eventdata, handles)
% hObject    handle to six (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.inputastext,'String');
str=strcat(str,('6'));
set(handles.inputastext,'String',str);


% --- Executes on button press in nine.
function nine_Callback(hObject, eventdata, handles)
% hObject    handle to nine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.inputastext,'String');
str=strcat(str,('9'));
set(handles.inputastext,'String',str);


% --- Executes on button press in add.
function add_Callback(hObject, eventdata, handles)
% hObject    handle to add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.inputastext,'String');
str=strcat(str,('+'));
set(handles.inputastext,'String',str);


% --- Executes on button press in equal.
function equal_Callback(hObject, eventdata, handles)
% hObject    handle to equal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.inputastext,'String');
str=eval(str);
set(handles.textasoutput,'String',str);

% --- Executes on button press in sub.
function sub_Callback(hObject, eventdata, handles)
% hObject    handle to sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.inputastext,'String');
str=strcat(str,('-'));
set(handles.inputastext,'String',str);


% --- Executes on button press in five.
function five_Callback(hObject, eventdata, handles)
% hObject    handle to five (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.inputastext,'String');
str=strcat(str,('5'));
set(handles.inputastext,'String',str);


% --- Executes on button press in two.
function two_Callback(hObject, eventdata, handles)
% hObject    handle to two (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.inputastext,'String');
str=strcat(str,('2'));
set(handles.inputastext,'String',str);


% --- Executes on button press in signchange.
function signchange_Callback(hObject, eventdata, handles)
% hObject    handle to signchange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.inputastext,'String');
s=str2double(str);
e=-(s);
t=num2str(e);
set(handles.inputastext,'String',t);

% --- Executes on button press in zero.
function zero_Callback(hObject, eventdata, handles)
% hObject    handle to zero (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.inputastext,'String');
str=strcat(str,('0'));
set(handles.inputastext,'String',str);


% --- Executes on button press in one.
function one_Callback(hObject, eventdata, handles)
% hObject    handle to one (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.inputastext,'String');
str=strcat(str,('1'));
set(handles.inputastext,'String',str);


% --- Executes on button press in four.
function four_Callback(hObject, eventdata, handles)
% hObject    handle to four (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.inputastext,'String');
str=strcat(str,('4'));
set(handles.inputastext,'String',str);


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.inputastext,'String');
s=str2double(str);
per=s/100;
t=num2str(per);
set(handles.textasoutput,'String',t);



% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.inputastext,'String');
s=str2double(str);
div=(1/s);
t=num2str(div);
set(handles.textasoutput,'String',t);





% --- Executes on button press in squareroot.
function squareroot_Callback(hObject, eventdata, handles)
% hObject    handle to squareroot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.inputastext,'String');
s=str2double(str);
sq=sqrt(s);
t=num2str(sq);
set(handles.textasoutput,'String',t);


% --- Executes on button press in div.
function div_Callback(hObject, eventdata, handles)
% hObject    handle to div (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.inputastext,'String');
str=strcat(str,('/'));
set(handles.inputastext,'String',str);


% --- Executes on button press in mul.
function mul_Callback(hObject, eventdata, handles)
% hObject    handle to mul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.inputastext,'String');
str=strcat(str,('*'));
set(handles.inputastext,'String',str);


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.inputastext,'String');
str=strcat(str,('.'));
set(handles.inputastext,'String',str);

% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.inputastext,'String','');
set(handles.textasoutput,'String','');
