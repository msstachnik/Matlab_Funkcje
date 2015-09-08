%  FUNCTION showDependence('FUN') 
% 
%   generates and displays a postscript figure showing the dependence
%   between the functions called by FUN
%
%  A good calling syntax is just 
%   >> showDependence FUN
%
%  Known problems: 
%   1. some variables can be mistaken as functions
%      This is a limitation of Matlab function depfun. For example, 
%      depfun seems to treat arg1 and arg2 in a function call
%      func(arg1, arg2) as functions, which they can be. So, in the
%      reported used function list and the diagram, there could be more
%      functions than actually used. One way to reduce such errors is to
%      avoid using names for variables that could also be a script name.
% 
%   2. Sometimes the EPS file does not exist when gv is called. In such
%      cases, gv needs to be called manually.
%
%  Version: Thu Aug 16 22:29:55 CDT 2007

function showDependence(varargin)

[trace_list, called_from] = matlab.codetools.requiredFilesAndProducts(varargin{:});

% the matlab root directory -- used to distinguish system functions
matlabRootDir = matlabroot;

for i=1:length(trace_list)
	name=trace_list{i};
	if ~isempty(strmatch(matlabRootDir, name))
		% trace_list{i}='system functions';
		isUserFunc(i)=0; % not a user function
	else
		[path basename ext]=fileparts(name);
		trace_list{i}=[basename ext];
		isUserFunc(i)=1; % is a user function
	end
end

% prepare the .dot source file
filecontent=''; 
used=zeros(1, length(trace_list));

% first line of the dot file
filecontent=sprintf('digraph dependence {\n');

%make sure there is at least one node. also make the top function a box
filecontent=sprintf('%s\t"%s" [shape=box];\n', filecontent, trace_list{1});
used(1)=1; 

for i=2:length(trace_list)
	if isUserFunc(i)
		name=trace_list{i};
		callers=called_from{i};
		for j=1:length(callers)
			if isUserFunc(callers(j))
				if callers(j) == 0
					caller=trace_list{1}; % the top function name
				else
					caller=trace_list{callers(j)};
				end

				% write the link if not written before
				newedge=sprintf('\t"%s" -> "%s";', caller, name);
				if isempty(strfind(filecontent, newedge))
					filecontent=sprintf('%s%s\n', filecontent, newedge);
					used(i)=1; 
					used(callers(j))=1; 
				end
			end
		end
	end
end

filecontent=sprintf('%s}\n', filecontent); % end of .dot file content

% write the dot file
tempdotfile = [tempname '.dot'];
file = fopen(tempdotfile, 'w');
fprintf(file, '%s', filecontent); 
fclose(file);

% print a list of used files
num_mex = 0;  % first count the number of mex functions
for i=1:length(trace_list)
	if used(i)
		num_mex=num_mex+~isempty(findstr(trace_list{i}, mexext)); 
	end
end

if num_mex==0
	fprintf('\n\nThe following files are used:\n'); 
else
	fprintf('\n\nThe following files are used (including %d mex files):\n',...
		num_mex); 
end
for i=1:length(trace_list)
	if used(i)
		name=which(trace_list{i});
		fprintf('%s\n', name); 
	end
end

% generate the figure
tempfig = [tempname '.eps'];
eval(['!dot -Tps ' tempdotfile ' -o ' tempfig]);
% eval(['!rm ' tempdotfile]);

pause(2); % wait two seconds for the file to be written 

if exist(tempfig, 'file')>0
	eval(['!gv ' tempfig]); 
	eval(['delete ' tempfig]);
else
	fprintf('\nRun the command "!gv %s" to see the resulting eps file',...
		tempfig); 
end

fprintf('\nThe temparary .dot file is %s\n\n', tempdotfile); 

return 
