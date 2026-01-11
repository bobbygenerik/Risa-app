package p324;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import p012.C0902;

/* renamed from: ᴵי.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3994 extends AbstractC4000 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f15362 = AtomicReferenceFieldUpdater.newUpdater(C3994.class, Object.class, "_disposer$volatile");
    private volatile /* synthetic */ Object _disposer$volatile;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public InterfaceC4041 f15363;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ C4021 f15364;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C4030 f15365;

    public C3994(C4021 c4021, C4030 c4030) {
        this.f15364 = c4021;
        this.f15365 = c4030;
    }

    @Override // p324.AbstractC4000
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final boolean mo8153() {
        return false;
    }

    @Override // p324.AbstractC4000
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void mo8154(Throwable th) {
        C4030 c4030 = this.f15365;
        if (th != null) {
            c4030.getClass();
            C0902 m8214 = c4030.m8214(new C4022(th, false), null);
            if (m8214 != null) {
                c4030.mo8187(m8214);
                C4004 c4004 = (C4004) f15362.get(this);
                if (c4004 != null) {
                    c4004.m8192();
                    return;
                }
                return;
            }
            return;
        }
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = C4021.f15401;
        C4021 c4021 = this.f15364;
        if (atomicIntegerFieldUpdater.decrementAndGet(c4021) == 0) {
            InterfaceC3998[] interfaceC3998Arr = c4021.f15402;
            ArrayList arrayList = new ArrayList(interfaceC3998Arr.length);
            for (InterfaceC3998 interfaceC3998 : interfaceC3998Arr) {
                arrayList.add(interfaceC3998.m8156());
            }
            c4030.mo3549(arrayList);
        }
    }
}
