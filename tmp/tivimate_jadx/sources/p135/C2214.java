package p135;

import java.util.ArrayList;
import p055.C1459;
import p055.C1495;
import p055.InterfaceC1465;
import p305.AbstractC3731;

/* renamed from: ˉʽ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2214 implements InterfaceC1465 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ArrayList f8679;

    public C2214(ArrayList arrayList) {
        this.f8679 = arrayList;
        boolean z = false;
        if (!arrayList.isEmpty()) {
            long j = ((C2216) arrayList.get(0)).f8683;
            int i = 1;
            while (true) {
                if (i >= arrayList.size()) {
                    break;
                }
                if (((C2216) arrayList.get(i)).f8684 < j) {
                    z = true;
                    break;
                } else {
                    j = ((C2216) arrayList.get(i)).f8683;
                    i++;
                }
            }
        }
        AbstractC3731.m7849(!z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C2214.class != obj.getClass()) {
            return false;
        }
        return this.f8679.equals(((C2214) obj).f8679);
    }

    public final int hashCode() {
        return this.f8679.hashCode();
    }

    public final String toString() {
        return "SlowMotion: segments=" + this.f8679;
    }

    @Override // p055.InterfaceC1465
    /* renamed from: ʽ */
    public final /* synthetic */ byte[] mo2790() {
        return null;
    }

    @Override // p055.InterfaceC1465
    /* renamed from: ⁱˊ */
    public final /* synthetic */ C1495 mo2791() {
        return null;
    }

    @Override // p055.InterfaceC1465
    /* renamed from: ﹳٴ */
    public final /* synthetic */ void mo2792(C1459 c1459) {
    }
}
