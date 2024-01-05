def merge_two_lists(list1, list2)
    dummy = ListNode.new(-1)
    current = dummy

    # faz um loop nas duas listas
    while list1 && list2
        # checa qual tem menor valor (por isso o .val)
        if list1.val < list2.val
            #  next pointer of the current node is set to point to the first node in list1. 
            current.next = list1
            list1 = list1.next
        else
            current.next = list2
            list2 = list2.next        
        end
        # avança para o próximo ponto da lista
        current = current.next
    end

    # se alguma lista acabar, adiciona a outra na lista
    current.next = list1 || list2

    # dummy é um node nulo (-1) que aponta para o current
    dummy.next
end