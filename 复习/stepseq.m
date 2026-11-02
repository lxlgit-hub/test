function [x,n] = stepseq(n0, n1, n2)
    % 功能：生成u[n-n0]，n的范围是n1到n2
    % 输入：n0-阶跃位置，n1-起始索引，n2-结束索引
    % 输出：x-阶跃序列，n-索引数组
    n = n1:n2;
    x = double((n - n0) >= 0); % 转换为数值型（避免逻辑型）
end