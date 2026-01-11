package p311;

import java.lang.reflect.Array;
import java.util.Iterator;

/* renamed from: ᐧᵢ.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3793 extends AbstractC3798 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ int f14706;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC3798 f14707;

    public /* synthetic */ C3793(AbstractC3798 abstractC3798, int i) {
        this.f14706 = i;
        this.f14707 = abstractC3798;
    }

    @Override // p311.AbstractC3798
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo7958(C3813 c3813, Object obj) {
        switch (this.f14706) {
            case 0:
                Iterable iterable = (Iterable) obj;
                if (iterable == null) {
                    return;
                }
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    this.f14707.mo7958(c3813, it.next());
                }
                return;
            default:
                if (obj == null) {
                    return;
                }
                int length = Array.getLength(obj);
                for (int i = 0; i < length; i++) {
                    this.f14707.mo7958(c3813, Array.get(obj, i));
                }
                return;
        }
    }
}
