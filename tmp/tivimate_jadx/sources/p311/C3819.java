package p311;

import java.lang.reflect.Method;
import p027.C1084;
import p121.AbstractC2026;
import p208.C2950;

/* renamed from: ᐧᵢ.ٴᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3819 extends AbstractC3798 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ int f14804;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Method f14805;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f14806;

    public /* synthetic */ C3819(Method method, int i, int i2) {
        this.f14804 = i2;
        this.f14805 = method;
        this.f14806 = i;
    }

    @Override // p311.AbstractC3798
    /* renamed from: ﹳٴ */
    public final void mo7958(C3813 c3813, Object obj) {
        switch (this.f14804) {
            case 0:
                C2950 c2950 = (C2950) obj;
                if (c2950 == null) {
                    throw AbstractC3798.m7964(this.f14805, this.f14806, "Headers parameter must not be null.", new Object[0]);
                }
                C1084 c1084 = c3813.f14795;
                c1084.getClass();
                int size = c2950.size();
                for (int i = 0; i < size; i++) {
                    AbstractC2026.m5040(c1084, c2950.m6484(i), c2950.m6486(i));
                }
                return;
            default:
                if (obj == null) {
                    throw AbstractC3798.m7964(this.f14805, this.f14806, "@Url parameter is null.", new Object[0]);
                }
                c3813.f14786 = obj.toString();
                return;
        }
    }
}
