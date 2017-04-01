function set_logDst(logFile)
% set the glog output file dir
% if not specified, use ['/auto_log/Matlab_call_',datestr(now),'.log']
% use set_logDst('') to stop logging
if nargin ==0
    dirPath = './auto_save/';
    if ~exist(dirPath,'dir') && ~isempty(dirPath)
        mkdir (dirPath);
    end
    formatOut = 'yymmdd_HHMM';
    logFile = [dirPath,'Matlab_call_',datestr(now,formatOut),'.log'];
end

if caffe_('set_logDst',logFile) == -1
    error ('failed to set log dst');
end

end