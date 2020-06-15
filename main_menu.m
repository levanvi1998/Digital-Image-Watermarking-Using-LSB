function varargout = main_menu(varargin)

	gui_Singleton = 1;
	gui_State = struct('gui_Name',       mfilename, ...
	                   'gui_Singleton',  gui_Singleton, ...
	                   'gui_OpeningFcn', @main_menu_OpeningFcn, ...
	                   'gui_OutputFcn',  @main_menu_OutputFcn, ...
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

function main_menu_OpeningFcn(hObject, eventdata, handles, varargin)

	handles.output = hObject;



	guidata(hObject, handles);

function varargout = main_menu_OutputFcn(hObject, eventdata, handles) 

	varargout{1} = handles.output;

function watermark_Callback(hObject, eventdata, handles)

	watermark

function extractwatermark_Callback(hObject, eventdata, handles)

	dewatermark


% --- Executes during object creation, after setting all properties.
function panel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to panel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
