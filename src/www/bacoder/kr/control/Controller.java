package www.bacoder.kr.control;

import java.util.List;

public interface Controller<T> {
	public List<T> selectAll();
	public int insert(T input);
	public T select(T input);
	public int update(T input);
	public int delete(T input);
}
