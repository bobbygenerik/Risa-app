package p392;

import p095.InterfaceC1882;
import p420.InterfaceC4937;
import p428.C5078;
import ᵢـ.ᵔᵢ;

/* renamed from: ⁱי.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C4661 implements InterfaceC1882 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f17477;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f17478;

    public /* synthetic */ C4661(int i, Object obj) {
        this.f17477 = i;
        this.f17478 = obj;
    }

    @Override // p095.InterfaceC1882
    public final Object get() {
        switch (this.f17477) {
            case 0:
                return (C4655) this.f17478;
            case 1:
                return (C5078) this.f17478;
            case 2:
                return (ᵔᵢ) this.f17478;
            default:
                try {
                    return (InterfaceC4937) ((Class) this.f17478).getConstructor(null).newInstance(null);
                } catch (Exception e) {
                    throw new IllegalStateException(e);
                }
        }
    }
}
