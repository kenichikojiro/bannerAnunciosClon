package mx.vw.swf.banner.core.bussines.delegate.statefull;

/**
 * @author 
 * @version 
 * @created 
 */
public class BANNERBDStatefulEJB {
    private BANNERBDStatefulEJBLocal mBANNERBDStatefulEJBLocal;
    private BANNERBDStatefulEJBRemote mBANNERBDStatefulEJBRemote;

    public BANNERBDStatefulEJB() {
        //Default constructor
    }

    public BANNERBDStatefulEJBLocal getmBANNERBDStatefulEJBLocal() {
        return mBANNERBDStatefulEJBLocal;
    }

    public void setmBANNERBDStatefulEJBLocal( BANNERBDStatefulEJBLocal mBANNERBDStatefulEJBLocal) {
        this.mBANNERBDStatefulEJBLocal = mBANNERBDStatefulEJBLocal;
    }

    public BANNERBDStatefulEJBRemote getmBANNERBDStatefulEJBRemote() {
        return mBANNERBDStatefulEJBRemote;
    }

    public void setmBANNERBDStatefulEJBRemote( BANNERBDStatefulEJBRemote mBANNERBDStatefulEJBRemote) {
        this.mBANNERBDStatefulEJBRemote = mBANNERBDStatefulEJBRemote;
    }

}// end BDStatefulEJB