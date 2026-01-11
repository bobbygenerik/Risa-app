package p328;

import android.view.Choreographer;
import java.util.ArrayList;

/* renamed from: ᴵᵔ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4084 implements Cloneable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public ArrayList f15557 = null;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public ArrayList f15558 = null;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public ArrayList f15556 = null;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m8342(InterfaceC4081 interfaceC4081) {
        C4065 m8271 = C4065.m8271();
        ChoreographerFrameCallbackC4080 choreographerFrameCallbackC4080 = m8271.f15469;
        ArrayList arrayList = m8271.f15468;
        if (arrayList.size() == 0) {
            choreographerFrameCallbackC4080.getClass();
            Choreographer.getInstance().postFrameCallback(choreographerFrameCallbackC4080);
        }
        if (!arrayList.contains(interfaceC4081)) {
            arrayList.add(interfaceC4081);
        }
        choreographerFrameCallbackC4080.getClass();
    }

    public abstract void cancel();

    /* renamed from: ʼˎ */
    public abstract long mo8287();

    /* renamed from: ʼᐧ */
    public abstract void mo8288(InterfaceC4064 interfaceC4064);

    /* renamed from: ˆʾ */
    public abstract boolean mo8293();

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m8343(InterfaceC4068 interfaceC4068) {
        if (this.f15557 == null) {
            this.f15557 = new ArrayList();
        }
        this.f15557.add(interfaceC4068);
    }

    /* renamed from: ˉʿ */
    public abstract void mo8295();

    /* renamed from: ˏי */
    public abstract void mo8298(boolean z);

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m8344(InterfaceC4072 interfaceC4072) {
        if (this.f15556 == null) {
            this.f15556 = new ArrayList();
        }
        this.f15556.add(interfaceC4072);
    }

    /* renamed from: יـ */
    public abstract void mo8299();

    /* renamed from: ٴﹶ */
    public abstract boolean mo8302();

    /* renamed from: ᵔʾ */
    public abstract AbstractC4084 mo8305(long j);

    /* renamed from: ᵔᵢ */
    public abstract void mo8306();

    /* renamed from: ᵔﹳ */
    public abstract void mo8307(boolean z);

    /* renamed from: ﾞʻ */
    public abstract boolean mo8310(long j);

    /* renamed from: ﾞᴵ */
    public AbstractC4084 mo8311() {
        try {
            AbstractC4084 abstractC4084 = (AbstractC4084) super.clone();
            if (this.f15557 != null) {
                abstractC4084.f15557 = new ArrayList(this.f15557);
            }
            if (this.f15558 != null) {
                abstractC4084.f15558 = new ArrayList(this.f15558);
            }
            return abstractC4084;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }
}
