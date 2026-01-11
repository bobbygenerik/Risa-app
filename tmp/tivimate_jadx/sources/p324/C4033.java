package p324;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: ᴵי.ᐧﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4033 implements InterfaceC4024 {
    private volatile /* synthetic */ Object _exceptionsHolder$volatile;
    private volatile /* synthetic */ int _isCompleting$volatile = 0;
    private volatile /* synthetic */ Object _rootCause$volatile;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C4018 f15422;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f15421 = AtomicIntegerFieldUpdater.newUpdater(C4033.class, "_isCompleting$volatile");

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f15419 = AtomicReferenceFieldUpdater.newUpdater(C4033.class, Object.class, "_rootCause$volatile");

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f15420 = AtomicReferenceFieldUpdater.newUpdater(C4033.class, Object.class, "_exceptionsHolder$volatile");

    public C4033(C4018 c4018, Throwable th) {
        this.f15422 = c4018;
        this._rootCause$volatile = th;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Finishing[cancelling=");
        sb.append(m8259());
        sb.append(", completing=");
        sb.append(f15421.get(this) == 1);
        sb.append(", rootCause=");
        sb.append(m8260());
        sb.append(", exceptions=");
        sb.append(f15420.get(this));
        sb.append(", list=");
        sb.append(this.f15422);
        sb.append(']');
        return sb.toString();
    }

    @Override // p324.InterfaceC4024
    /* renamed from: ʽ */
    public final boolean mo8150() {
        return m8260() == null;
    }

    @Override // p324.InterfaceC4024
    /* renamed from: ˈ */
    public final C4018 mo8151() {
        return this.f15422;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean m8259() {
        return m8260() != null;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Throwable m8260() {
        return (Throwable) f15419.get(this);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m8261(Throwable th) {
        Throwable m8260 = m8260();
        if (m8260 == null) {
            f15419.set(this, th);
            return;
        }
        if (th == m8260) {
            return;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f15420;
        Object obj = atomicReferenceFieldUpdater.get(this);
        if (obj == null) {
            atomicReferenceFieldUpdater.set(this, th);
            return;
        }
        if (!(obj instanceof Throwable)) {
            if (obj instanceof ArrayList) {
                ((ArrayList) obj).add(th);
                return;
            } else {
                throw new IllegalStateException(("State is " + obj).toString());
            }
        }
        if (th == obj) {
            return;
        }
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(obj);
        arrayList.add(th);
        atomicReferenceFieldUpdater.set(this, arrayList);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final ArrayList m8262(Throwable th) {
        ArrayList arrayList;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f15420;
        Object obj = atomicReferenceFieldUpdater.get(this);
        if (obj == null) {
            arrayList = new ArrayList(4);
        } else if (obj instanceof Throwable) {
            ArrayList arrayList2 = new ArrayList(4);
            arrayList2.add(obj);
            arrayList = arrayList2;
        } else {
            if (!(obj instanceof ArrayList)) {
                throw new IllegalStateException(("State is " + obj).toString());
            }
            arrayList = (ArrayList) obj;
        }
        Throwable m8260 = m8260();
        if (m8260 != null) {
            arrayList.add(0, m8260);
        }
        if (th != null && !th.equals(m8260)) {
            arrayList.add(th);
        }
        atomicReferenceFieldUpdater.set(this, AbstractC3999.f15374);
        return arrayList;
    }
}
