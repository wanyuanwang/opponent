
-- misc utilities

function clone_list(tensor_list, zero_too)
    -- utility function. todo: move away to some utils file?
    -- takes a list of tensors and returns a list of cloned tensors
    local out = {}
    for k,v in pairs(tensor_list) do
        out[k] = v:clone()
        if zero_too then out[k]:zero() end
    end
    return out
end

function check_vocab_compatible(old_vocab, new_vocab)
    -- old_vocab \subseteq new_vocab
    for c,i in pairs(old_vocab) do 
        if not new_vocab[c] == i then 
            return false
        end
    end
    return true
end

