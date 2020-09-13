/**
 * 
 */
package mystack;

/**
 * @author ADD YOUR NAME 
 *
 */

// Stack using generics

// Complete the provided code

public class MyStack<T> {

	private class MyNode<T1> {
		T1 val;
		MyNode<T1> next;

		MyNode(T1 v, MyNode<T1> n) {
			val = v;
			next = n;
		}
	}

	private MyNode<T> theStack = null;

	/**
	 * 
	 */
	public MyStack() {
	}

	public T pop() {
		// TODO To complete
		MyNode<T> iter=theStack;
		MyNode<T> prev=null;
		
		while(iter!=null&&iter.next!=null) {
			prev=iter;
			iter=iter.next;
		}
		prev.next=iter.next;
		
		return null;
	}

	public void push(T v) {
		// TODO To complete
		MyNode<T> n=new MyNode<T>(v, null);
		if(theStack==null) {
			theStack=n;
		}else{
			n =(MyStack<T>.MyNode<T>) theStack;
			while(n.next!=null) {
				n=n.next;
			}
			n.next=new MyNode<T> (v,null);
		}
		
	}

	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO To complete
		// Create a stack of Integer
		// Push 1 and 2
		// Pop
		// Push 5
		
		MyStack<Integer> s=new MyStack<Integer>();
		s.push(1);
		s.push(2);
		s.pop();
		s.push(5);
		
		// TODO To complete
		// Create a stack of Person
		// Push a person p1 with your name
		// Push a person p2 with my name
		
		Person me= new Person("Brian","Alfaro");
		Person professor=new Person("Christelle", "Scharff");
		MyStack<Person> p=new MyStack<Person>();
		p.push(me);
		p.push(professor);
	}

}
