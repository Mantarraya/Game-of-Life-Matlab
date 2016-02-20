function varargout = main(varargin)
% MAIN MATLAB code for main.fig
%      MAIN, by itself, creates a new MAIN or raises the existing
%      singleton*.
%
%      H = MAIN returns the handle to a new MAIN or the handle to
%      the existing singleton*.
%
%      MAIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN.M with the given input arguments.
%
%      MAIN('Property','Value',...) creates a new MAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main

% Last Modified by GUIDE v2.5 19-Feb-2016 15:30:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_OpeningFcn, ...
                   'gui_OutputFcn',  @main_OutputFcn, ...
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


% --- Executes just before main is made visible.
function main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main (see VARARGIN)

% Choose default command line output for main
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes main wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = main_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure

global I folfer;
global I2 folder;

a = zeros(100);
b = zeros(100);
I = a+1;
I2 = b+1;
 
axes(handles.axes1);

h = imshow(I,'InitialMagnification',800); 


for n = 1:5
    
    [y, x] = ginput(1);
    I(int16(x),int16(y)) = 0; 
    
    %axes(handles.axes1);
    h = imshow(I,'InitialMagnification',800); 
       
    
end

varargout{1} = handles.output;





% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global I folfer;
global I2 folder;

grid on;
axis on;
h = imshow(I,'InitialMagnification',800); 

[fil col] = size(I);
for r = 1:4000    
     
    
    pause(.03);
    set(h, 'CData', I);
 
    for i = 2:1:fil-1
        for j = 2:1:col-1
 
            nCel = 0;
 
            for f = i-1:i+1
                for c = j-1:j+1
                    if ((f ~=i ) | (c ~= j)) & (I(f, c) == 0)
                        nCel = nCel+1;
                    end
                end
            end
 
            if (I(i,j) == 1)
                if (nCel == 3)
                    I2(i, j) = 0;
                else
                    I2(i, j) = 1;
                end
            else
                if ((nCel == 2) | (nCel == 3))
                    I2(i, j) = 0;
                else
                    I2(i, j) = 1;
                end
            end
 
        end
 
    end
 
    I = I2;
 
end
