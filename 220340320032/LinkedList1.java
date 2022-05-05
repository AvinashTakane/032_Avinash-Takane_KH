import java.util.*;

class LinkedList{
	
	Node head;
	
	static class Node{
		int data;
		Node next,prev;
		
		Node(int d){
			data=d;
			next=null;
			prev=null;
		}
	}
	
	void insert(int data){
		
		Node new_node = new Node(data);
		new_node.next = head;
		new_node.prev=null;
		if(head!=null)
		head.prev=new_node;
		else
			head  = new_node;
	}
	
	
	void display(Node n){
		Node last = null;
		while(n != null){
			last=n;
			System.out.println(n.data+" ");
			n = n.next;
		}
		System.out.println("Reverse Display");
		while(last!=null){
			System.out.println(last.data+" ");
			last=last.prev;
		}
	}
	
	public static void main(String args[]){
		Scanner sc = new Scanner(System.in);
		
		LinkedList list = new LinkedList();
		int count=sc.nextInt();
		for(int i=0; i<count; i++){
			list.insert(sc.nextInt());
		}

		list.display(list.head);
	}
}