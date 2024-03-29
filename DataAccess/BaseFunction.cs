﻿using System.Collections.Generic;

namespace DataAccess
{
	public abstract class BaseFunction<T>
	{
		public abstract int Add(T item);
		public abstract bool Delete(T item);
		public abstract bool Update(T item);
		public abstract List<T> GetAll();
		public abstract List<T> Find(Condition condition);
		public abstract void ExportFile();
		public abstract T Single(Condition condition);
	}
}
