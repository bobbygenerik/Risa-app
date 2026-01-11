package p313;

import android.os.Bundle;
import java.util.HashSet;
import p017.AbstractC0997;
import p229.C3125;
import p262.C3433;
import p447.AbstractC5218;
import p447.InterfaceC5299;

/* renamed from: ᐧﹳ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3884 implements InterfaceC5299 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f15117;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f15118;

    public /* synthetic */ C3884(int i, Object obj) {
        this.f15118 = i;
        this.f15117 = obj;
    }

    @Override // p447.InterfaceC5299
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo8074(long j, Bundle bundle, String str, String str2) {
        int i = this.f15118;
        Object obj = this.f15117;
        switch (i) {
            case 0:
                C3433 c3433 = (C3433) obj;
                if (((HashSet) c3433.f13458).contains(str2)) {
                    Bundle bundle2 = new Bundle();
                    AbstractC0997 abstractC0997 = AbstractC3885.f15122;
                    String m10210 = AbstractC5218.m10210(str2, AbstractC5218.f19627, AbstractC5218.f19635);
                    if (m10210 != null) {
                        str2 = m10210;
                    }
                    bundle2.putString("events", str2);
                    ((C3125) c3433.f13456).m6848(2, bundle2);
                    return;
                }
                return;
            default:
                if (str == null || AbstractC3885.f15122.contains(str2)) {
                    return;
                }
                Bundle bundle3 = new Bundle();
                bundle3.putString("name", str2);
                bundle3.putLong("timestampInMillis", j);
                bundle3.putBundle("params", bundle);
                ((C3125) ((ʽ) obj).ᴵˊ).m6848(3, bundle3);
                return;
        }
    }
}
