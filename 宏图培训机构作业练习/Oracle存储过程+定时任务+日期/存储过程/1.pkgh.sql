create or replace package bank_deal_pkg is
       
       --普通方法
       procedure pro_my_deal(p_acc_no in varchar2,
                          p_deal_money in number,
                          p_deal_type in varchar2);
                          
       --有返回值的方法
       function fun_check_deal(p_acc_no  in varchar2,
                               p_deal_money in number,
                               p_deal_type in varchar2)return boolean;
end bank_deal_pkg;
/
