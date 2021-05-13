#
# Authors: Axel Paccalin.
#
# Version 0.1
#
# Imported under "FGUM_Functional" 
#
#

Filter = func(input, evaluator, paramStrat=nil){
    result = {};
    
    foreach(var index; keys(input)){
        var param = nil;
        if(paramStrat == nil or paramStrat == ParamStrategy.ByValue)
            param = input[index];
        else if(paramStrat == ParamStrategy.ByIndex)
            param = index;
        else
            die("unknown param strategy: " ~ paramStrat);
        
        if(evaluator(param))
            result[index] = input[index];
    }
    
    return result;
};
