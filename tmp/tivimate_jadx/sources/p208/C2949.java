package p208;

import java.util.ArrayList;
import java.util.List;
import p121.AbstractC2026;
import p164.C2599;
import p164.InterfaceC2590;
import p394.AbstractC4712;
import p435.C5140;

/* renamed from: ˎᵢ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2949 extends AbstractC2944 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C2968 f11238;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final List f11239;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final List f11240;

    static {
        C5140 c5140 = C2968.f11341;
        f11238 = AbstractC2026.m5063("application/x-www-form-urlencoded");
    }

    public C2949(ArrayList arrayList, ArrayList arrayList2) {
        this.f11240 = AbstractC4712.m9443(arrayList);
        this.f11239 = AbstractC4712.m9443(arrayList2);
    }

    @Override // p208.AbstractC2944
    /* renamed from: ˈ */
    public final void mo6463(InterfaceC2590 interfaceC2590) {
        m6481(interfaceC2590, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long m6481(InterfaceC2590 interfaceC2590, boolean z) {
        C2599 obj = z ? new Object() : interfaceC2590.mo5736();
        List list = this.f11240;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                obj.m5825(38);
            }
            obj.m5827((String) list.get(i));
            obj.m5825(61);
            obj.m5827((String) this.f11239.get(i));
        }
        if (!z) {
            return 0L;
        }
        long j = obj.f9835;
        obj.m5836();
        return j;
    }

    @Override // p208.AbstractC2944
    /* renamed from: ⁱˊ */
    public final C2968 mo6464() {
        return f11238;
    }

    @Override // p208.AbstractC2944
    /* renamed from: ﹳٴ */
    public final long mo6465() {
        return m6481(null, true);
    }
}
