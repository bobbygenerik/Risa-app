package p029;

import java.util.Iterator;
import p435.C5142;
import p435.C5151;
import ʽˋ.ـˆ;

/* renamed from: ʼᴵ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1124 implements InterfaceC1130 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f4386;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f4387;

    public /* synthetic */ C1124(int i, Object obj) {
        this.f4387 = i;
        this.f4386 = obj;
    }

    public C1124(ـˆ r2) {
        this.f4387 = 0;
        C5151 c5151 = C5151.f19425;
        this.f4386 = r2;
    }

    @Override // p029.InterfaceC1130
    public final Iterator iterator() {
        switch (this.f4387) {
            case 0:
                return new C1123(this);
            case 1:
                return (Iterator) this.f4386;
            case 2:
                return ((Iterable) this.f4386).iterator();
            default:
                return new C5142((CharSequence) this.f4386);
        }
    }
}
