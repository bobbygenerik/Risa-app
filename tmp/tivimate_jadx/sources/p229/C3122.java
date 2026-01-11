package p229;

import java.util.ArrayList;

/* renamed from: ˑʼ.ᴵˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3122 implements InterfaceC3093 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ C3085 f11883;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f11884;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f11885;

    public C3122(C3085 c3085, int i, int i2) {
        this.f11883 = c3085;
        this.f11885 = i;
        this.f11884 = i2;
    }

    @Override // p229.InterfaceC3093
    /* renamed from: ﹳٴ */
    public final boolean mo6717(ArrayList arrayList, ArrayList arrayList2) {
        C3085 c3085 = this.f11883;
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = c3085.f11728;
        int i = this.f11885;
        if (abstractComponentCallbacksC3123 == null || i >= 0 || !abstractComponentCallbacksC3123.m6788().m6666(-1, 0)) {
            return c3085.m6667(arrayList, arrayList2, i, this.f11884);
        }
        return false;
    }
}
