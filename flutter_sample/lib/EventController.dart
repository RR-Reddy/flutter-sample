class EventController<T>{

  T val;

  List<Function(T)> list=[];

  void add(Function(T) fun){
    list.add(fun);
  }

  void remove(Function(T) fun){
    list.remove(fun);
  }

  void fireEvent(T val){
    this.val=val;
    list.forEach((fun) => fun(val));
  }

}