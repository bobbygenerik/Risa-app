package p420;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import p003.C0783;
import p055.AbstractC1445;
import p266.InterfaceC3457;
import p305.AbstractC3731;
import p395.C4715;
import p395.C4729;
import p395.InterfaceC4719;

/* renamed from: ﹳᵢ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4990 implements InterfaceC4975 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public AbstractC1445 f18640;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public C0783 f18641;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public Looper f18643;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ArrayList f18638 = new ArrayList(1);

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final HashSet f18642 = new HashSet(1);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final ʽﹳ f18637 = new ʽﹳ(new CopyOnWriteArrayList(), 0, (C4987) null);

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C4715 f18639 = new C4715(new CopyOnWriteArrayList(), 0, null);

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final void m9840(AbstractC1445 abstractC1445) {
        this.f18640 = abstractC1445;
        ArrayList arrayList = this.f18638;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((InterfaceC4944) obj).mo9405(this, abstractC1445);
        }
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ʼˎ */
    public /* synthetic */ AbstractC1445 mo9775() {
        return null;
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ʼᐧ */
    public final void mo9796(InterfaceC4970 interfaceC4970) {
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) this.f18637.ˈٴ;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            C4958 c4958 = (C4958) it.next();
            if (c4958.f18435 == interfaceC4970) {
                copyOnWriteArrayList.remove(c4958);
            }
        }
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ʽ */
    public final void mo9797(InterfaceC4944 interfaceC4944) {
        this.f18643.getClass();
        HashSet hashSet = this.f18642;
        boolean isEmpty = hashSet.isEmpty();
        hashSet.add(interfaceC4944);
        if (isEmpty) {
            mo9748();
        }
    }

    /* renamed from: ʾᵎ */
    public abstract void mo5098();

    @Override // p420.InterfaceC4975
    /* renamed from: ˆʾ */
    public final void mo9798(InterfaceC4719 interfaceC4719) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f18639.f17808;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            C4729 c4729 = (C4729) it.next();
            if (c4729.f17875 == interfaceC4719) {
                copyOnWriteArrayList.remove(c4729);
            }
        }
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ˉʿ */
    public final void mo9799(InterfaceC4944 interfaceC4944) {
        HashSet hashSet = this.f18642;
        boolean isEmpty = hashSet.isEmpty();
        hashSet.remove(interfaceC4944);
        if (isEmpty || !hashSet.isEmpty()) {
            return;
        }
        mo9751();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [ﹳᵢ.ˊʻ, java.lang.Object] */
    @Override // p420.InterfaceC4975
    /* renamed from: ˉˆ */
    public final void mo9800(Handler handler, InterfaceC4970 interfaceC4970) {
        handler.getClass();
        ʽﹳ r0 = this.f18637;
        r0.getClass();
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) r0.ˈٴ;
        ?? obj = new Object();
        obj.f18436 = handler;
        obj.f18435 = interfaceC4970;
        copyOnWriteArrayList.add(obj);
    }

    /* renamed from: ˏי */
    public abstract void mo5100(InterfaceC3457 interfaceC3457);

    /* renamed from: יـ */
    public void mo9748() {
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ٴﹶ */
    public final void mo9801(InterfaceC4944 interfaceC4944) {
        ArrayList arrayList = this.f18638;
        arrayList.remove(interfaceC4944);
        if (!arrayList.isEmpty()) {
            mo9799(interfaceC4944);
            return;
        }
        this.f18643 = null;
        this.f18640 = null;
        this.f18641 = null;
        this.f18642.clear();
        mo5098();
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ᵔᵢ */
    public final void mo9802(InterfaceC4944 interfaceC4944, InterfaceC3457 interfaceC3457, C0783 c0783) {
        Looper myLooper = Looper.myLooper();
        Looper looper = this.f18643;
        AbstractC3731.m7849(looper == null || looper == myLooper);
        this.f18641 = c0783;
        AbstractC1445 abstractC1445 = this.f18640;
        this.f18638.add(interfaceC4944);
        if (this.f18643 == null) {
            this.f18643 = myLooper;
            this.f18642.add(interfaceC4944);
            mo5100(interfaceC3457);
        } else if (abstractC1445 != null) {
            mo9797(interfaceC4944);
            interfaceC4944.mo9405(this, abstractC1445);
        }
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final ʽﹳ m9841(C4987 c4987) {
        return new ʽﹳ((CopyOnWriteArrayList) this.f18637.ˈٴ, 0, c4987);
    }

    /* renamed from: ﹳᐧ */
    public void mo9751() {
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, ⁱᴵ.ᵔᵢ] */
    @Override // p420.InterfaceC4975
    /* renamed from: ﾞʻ */
    public final void mo9803(Handler handler, InterfaceC4719 interfaceC4719) {
        handler.getClass();
        C4715 c4715 = this.f18639;
        c4715.getClass();
        CopyOnWriteArrayList copyOnWriteArrayList = c4715.f17808;
        ?? obj = new Object();
        obj.f17876 = handler;
        obj.f17875 = interfaceC4719;
        copyOnWriteArrayList.add(obj);
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ﾞᴵ */
    public /* synthetic */ boolean mo9777() {
        return true;
    }
}
