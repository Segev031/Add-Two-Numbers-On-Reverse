ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {    
  l1 = reverseList(l1);
  l2 = reverseList(l2);
  var num1 = buildNumber(l1);
  print(num1);
  var num2 = buildNumber(l2);
  print(num2);
  var sum = num1 + num2;
  print(sum);
  // build list
  var listSum = ListNode(0);
  if (sum == 0) 
      return listSum;
  var move = listSum;
  while (sum != 0) {
      move.next = ListNode(sum % 10);
      sum = (sum / 10).toInt();
      move = move.next!;
  }
  return listSum.next;
}

ListNode? reverseList(ListNode? list) {
  ListNode? prev = null;
  if (list == null) 
      return list;
  ListNode? nxt;
  while (list != null) {
      nxt = list.next;
      list.next = prev;
      prev = list;
      list = nxt;
  }
  return prev;
}

int buildNumber(ListNode? list) {
  int num = 0;
  if (list == null) 
      return -999;
  ListNode? move = list;
  while (move != null) {
      print(move.val);
      num = num * 10 + move.val;
      move = move.next;
  }
  return num;
}
