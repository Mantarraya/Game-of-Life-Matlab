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

% Last Modified by GUIDE v2.5 18-Feb-2016 18:07:46

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

I = zeros(100);
I2 = zeros(100);
 
 
I(50, 50) = 1;
I(51, 50) = 1;
I(52, 50) = 1;
 
I(2,3) = 1;
I(3,2) = 1;
I(2,5) = 1;
I(3,5) = 1;
I(4,3) = 1;
I(4,5) = 1;
I(6,3) = 1;
I(3,6) = 1;
I(6,5) = 1;
I(3,5) = 1;
I(4,3) = 1;
I(4,5) = 1;
 
I(16,3) = 1;
I(13,2) = 1;
I(12,5) = 1;
I(13,5) = 1;
I(14,3) = 1;
I(14,5) = 1;
 
I(24,25) = 1; I(24,15) = 1; I(24,45) = 1; I(24,16) = 1; I(42,52) = 1;
I(66,30) = 1; I(66,31) = 1; I(66,32) = 1; I(66,33) = 1; I(66,34) = 1;
I(80,30) = 1; I(80,31) = 1; I(80,32) = 1; I(80,33) = 1; I(80,34) = 1;
I(84,30) = 1; I(84,31) = 1; I(84,32) = 1; I(84,33) = 1; I(84,34) = 1;
 
I(30,60-50) = 1; I(31,60-50) = 1; I(30,61-50) = 1; I(31,61-50) = 1;
I(30,70-50) = 1; I(31,70-50) = 1; I(32,70-50) = 1; I(29,71-50) = 1; I(33,71-50) = 1; I(28,72-50) = 1;
I(34,72-50) = 1; I(28,73-50) = 1; I(34,73-50) = 1;
I(31,74-50) = 1; I(29,75-50) = 1; I(33,75-50) = 1; I(30,76-50) = 1; I(31,76-50) = 1; I(32,76-50) = 1; I(31,77-50) = 1;
I(28,80-50) = 1; I(29,80-50) = 1; I(30,80-50) = 1; I(28,81-50) = 1; I(29,81-50) = 1; I(30,81-50) = 1; I(27,82-50) = 1;
I(31,82-50) = 1; I(26,84-50) = 1; I(27,84-50) = 1; I(31,84-50) = 1; I(32,84-50) = 1; I(28,94-50) = 1; I(29,94-50) = 1;
I(28,95-50) = 1; I(29,95-50) = 1;
 
I(80-10,80) = 1; I(80-10,82) = 1; I(79-10,82) = 1; I(78-10,84) = 1; I(77-10,84) = 1; I(76-10,84) = 1;
I(75-10,86) = 1; I(76-10,86) = 1; I(77-10,86) = 1; I(76-10,87) = 1;
 
axes(handles.axes1);
h = imshow(I,'InitialMagnification',800); 


varargout{1} = handles.output;





% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

I = zeros(100);
I2 = zeros(100);
 
 
I(50, 50) = 1;
I(51, 50) = 1;
I(52, 50) = 1;
 
I(2,3) = 1;
I(3,2) = 1;
I(2,5) = 1;
I(3,5) = 1;
I(4,3) = 1;
I(4,5) = 1;
I(6,3) = 1;
I(3,6) = 1;
I(6,5) = 1;
I(3,5) = 1;
I(4,3) = 1;
I(4,5) = 1;
 
I(16,3) = 1;
I(13,2) = 1;
I(12,5) = 1;
I(13,5) = 1;
I(14,3) = 1;
I(14,5) = 1;
 
I(24,25) = 1; I(24,15) = 1; I(24,45) = 1; I(24,16) = 1; I(42,52) = 1;
I(66,30) = 1; I(66,31) = 1; I(66,32) = 1; I(66,33) = 1; I(66,34) = 1;
I(80,30) = 1; I(80,31) = 1; I(80,32) = 1; I(80,33) = 1; I(80,34) = 1;
I(84,30) = 1; I(84,31) = 1; I(84,32) = 1; I(84,33) = 1; I(84,34) = 1;
 
I(30,60-50) = 1; I(31,60-50) = 1; I(30,61-50) = 1; I(31,61-50) = 1;
I(30,70-50) = 1; I(31,70-50) = 1; I(32,70-50) = 1; I(29,71-50) = 1; I(33,71-50) = 1; I(28,72-50) = 1;
I(34,72-50) = 1; I(28,73-50) = 1; I(34,73-50) = 1;
I(31,74-50) = 1; I(29,75-50) = 1; I(33,75-50) = 1; I(30,76-50) = 1; I(31,76-50) = 1; I(32,76-50) = 1; I(31,77-50) = 1;
I(28,80-50) = 1; I(29,80-50) = 1; I(30,80-50) = 1; I(28,81-50) = 1; I(29,81-50) = 1; I(30,81-50) = 1; I(27,82-50) = 1;
I(31,82-50) = 1; I(26,84-50) = 1; I(27,84-50) = 1; I(31,84-50) = 1; I(32,84-50) = 1; I(28,94-50) = 1; I(29,94-50) = 1;
I(28,95-50) = 1; I(29,95-50) = 1;
 
I(80-10,80) = 1; I(80-10,82) = 1; I(79-10,82) = 1; I(78-10,84) = 1; I(77-10,84) = 1; I(76-10,84) = 1;
I(75-10,86) = 1; I(76-10,86) = 1; I(77-10,86) = 1; I(76-10,87) = 1;
 
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
                    if ((f ~=i ) | (c ~= j)) & (I(f, c) == 1)
                        nCel = nCel+1;
                    end
                end
            end
 
            if (I(i,j) == 0)
                if (nCel == 3)
                    I2(i, j) = 1;
                else
                    I2(i, j) = 0;
                end
            else
                if ((nCel == 2) | (nCel == 3))
                    I2(i, j) = 1;
                else
                    I2(i, j) = 0;
                end
            end
 
        end
 
    end
 
    I = I2;
 
end




