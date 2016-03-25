/**
 * http://algs4.cs.princeton.edu/15uf/
 * Algorithms 4th
 * @param args 
 */
public static void main(String[] args)
{
	int N = StdIn.readIn();
	UF uf = new UF(N);
	while (!StdIn.isEmpty())
	{
		int p = StdIn.readInt();
		int q = StdIn.readInt();
		if(!uf.connected(p,q))
		{
			uf.union(p,q);
			Stdio.println(p + " " + q);
		}
	}
}

/* Quick Find */
public class QuickFindUF
{
	private int[] id;

	public QuickFindUF(int N)
	{
		id = new int[N];
		for (int i = 0; i < N; i++) {
			id[i] = i;
		}
	}
	
	public boolean connected(int p, int q)
	{	return id[p] == id[q];	}

	public void union(int p, int q)
	{
		int pid = id[p];
		int qid = id[q];
		for (int i = 0; i < id.length; i++) {
			if (id[i] == pid) id[i] = qid;
		}
	}
}

/* Quick Find, Better */
public class QuickUnionUF
{
	private int[] id;

	public QuickUnionUF(int N)
	{
		id = new int[N];
		for (int i = 0; i < N; i++) {
			id[i] = i;
		}
	}
	/**/
	private int root(int i)
	{
		while(i != 0) i = id[i];
		return i;
	}

	public boolean connected(int p, int q)
	{	return root[p] == root[q];	}

	public void union(int p, int q)
	{
		int i = root(p);
		int j = root(q);
		id[i] = j;
	}
}

/* Weighted:
if (i == j)return;
if (sz[i] < sz[j]) { id[i] = j; sz[j]+=sz[i];}
else 			   { id[j] = il sz[i]+=sz[j];}
*/
/*
Improvement2: path compression
Quick union with path compression. WQUPC
id[i] = id[ id[i] ];
 */
