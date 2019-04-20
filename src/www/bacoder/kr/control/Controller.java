package www.bacoder.kr.control;

import java.util.List;

public interface Controller<T> {
	public List<T> selectAll();
	public int insert(T input);
}
