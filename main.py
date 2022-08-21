def addTwoNumbersOnReverse(l1, l2):
        """
        :type l1: ListNode
        :type l2: ListNode
        :rtype: ListNode
        """
        
        lst1 = []
        move = l1
        while (move != None):
            lst1.append(str(move.val))
            move = move.next
        lst1 = lst1[::-1]
        
        lst2 = []
        move = l2
        while (move != None):
            lst2.append(str(move.val))
            move = move.next
        lst2 = lst2[::-1]
        
        num1 = int(''.join(lst1))
        num2 = int(''.join(lst2))
        print(num1, num2)
        sum = str(num1 + num2)
        if sum == '0':
            return l1
        sum = sum[::-1]
        
        l3 = ListNode(0)
        move = l3
        for el in sum:
            move.next = ListNode(el)
            move = move.next
        
        return l3.next