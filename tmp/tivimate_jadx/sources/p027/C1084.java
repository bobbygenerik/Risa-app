package p027;

import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;
import p017.AbstractC0993;
import p017.AbstractC1004;
import p017.C0956;
import p017.C0982;
import p051.C1397;
import p121.AbstractC2026;
import p182.InterfaceC2759;
import p208.C2950;
import p444.C5200;
import p444.C5201;
import p444.InterfaceC5202;

/* renamed from: ʼٴ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1084 implements InterfaceC2759 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ArrayList f4239;

    public C1084(int i) {
        switch (i) {
            case 2:
                this.f4239 = new ArrayList();
                return;
            case 3:
                this.f4239 = new ArrayList(20);
                return;
            case 4:
                this.f4239 = new ArrayList();
                return;
            default:
                this.f4239 = new ArrayList();
                return;
        }
    }

    public C1084(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    arrayList.add(new C1108(optJSONObject));
                }
            }
        }
        this.f4239 = arrayList;
    }

    @Override // p182.InterfaceC2759
    public void clear() {
        this.f4239.clear();
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int m3426(long j) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f4239;
            if (i >= arrayList.size()) {
                return arrayList.size();
            }
            if (j < ((C1397) arrayList.get(i)).f5476) {
                return i;
            }
            i++;
        }
    }

    @Override // p182.InterfaceC2759
    /* renamed from: ʽ, reason: contains not printable characters */
    public long mo3427(long j) {
        ArrayList arrayList = this.f4239;
        if (arrayList.isEmpty() || j < ((C1397) arrayList.get(0)).f5476) {
            return -9223372036854775807L;
        }
        for (int i = 1; i < arrayList.size(); i++) {
            long j2 = ((C1397) arrayList.get(i)).f5476;
            if (j == j2) {
                return j2;
            }
            if (j < j2) {
                C1397 c1397 = (C1397) arrayList.get(i - 1);
                long j3 = c1397.f5475;
                return (j3 == -9223372036854775807L || j3 > j) ? c1397.f5476 : j3;
            }
        }
        C1397 c13972 = (C1397) AbstractC1004.m3281(arrayList);
        long j4 = c13972.f5475;
        return (j4 == -9223372036854775807L || j < j4) ? c13972.f5476 : j4;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public synchronized ArrayList m3428(Class cls, Class cls2) {
        ArrayList arrayList = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList.add(cls2);
            return arrayList;
        }
        ArrayList arrayList2 = this.f4239;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            C5201 c5201 = (C5201) obj;
            if ((c5201.f19547.isAssignableFrom(cls) && cls2.isAssignableFrom(c5201.f19546)) && !arrayList.contains(c5201.f19546)) {
                arrayList.add(c5201.f19546);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002d  */
    @Override // p182.InterfaceC2759
    /* renamed from: ˈ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo3429(p051.C1397 r10, long r11) {
        /*
            r9 = this;
            long r0 = r10.f5476
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            r5 = 0
            r6 = 1
            if (r4 == 0) goto Lf
            r4 = r6
            goto L10
        Lf:
            r4 = r5
        L10:
            p305.AbstractC3731.m7849(r4)
            int r4 = (r0 > r11 ? 1 : (r0 == r11 ? 0 : -1))
            if (r4 > 0) goto L23
            long r7 = r10.f5475
            int r2 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r2 == 0) goto L21
            int r2 = (r11 > r7 ? 1 : (r11 == r7 ? 0 : -1))
            if (r2 >= 0) goto L23
        L21:
            r2 = r6
            goto L24
        L23:
            r2 = r5
        L24:
            java.util.ArrayList r3 = r9.f4239
            int r4 = r3.size()
            int r4 = r4 - r6
        L2b:
            if (r4 < 0) goto L4e
            java.lang.Object r7 = r3.get(r4)
            ʽᐧ.ﹳٴ r7 = (p051.C1397) r7
            long r7 = r7.f5476
            int r7 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r7 < 0) goto L3e
            int r4 = r4 + r6
            r3.add(r4, r10)
            return r2
        L3e:
            java.lang.Object r7 = r3.get(r4)
            ʽᐧ.ﹳٴ r7 = (p051.C1397) r7
            long r7 = r7.f5476
            int r7 = (r7 > r11 ? 1 : (r7 == r11 ? 0 : -1))
            if (r7 > 0) goto L4b
            r2 = r5
        L4b:
            int r4 = r4 + (-1)
            goto L2b
        L4e:
            r3.add(r5, r10)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p027.C1084.mo3429(ʽᐧ.ﹳٴ, long):boolean");
    }

    @Override // p182.InterfaceC2759
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public void mo3430(long j) {
        int m3426 = m3426(j);
        if (m3426 == 0) {
            return;
        }
        ArrayList arrayList = this.f4239;
        long j2 = ((C1397) arrayList.get(m3426 - 1)).f5475;
        if (j2 == -9223372036854775807L || j2 >= j) {
            m3426--;
        }
        arrayList.subList(0, m3426).clear();
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public void m3431(String str) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f4239;
            if (i >= arrayList.size()) {
                return;
            }
            if (str.equalsIgnoreCase((String) arrayList.get(i))) {
                arrayList.remove(i);
                arrayList.remove(i);
                i -= 2;
            }
            i += 2;
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public C2950 m3432() {
        return new C2950((String[]) this.f4239.toArray(new String[0]));
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public synchronized InterfaceC5202 m3433(Class cls, Class cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return C5200.f19543;
        }
        ArrayList arrayList = this.f4239;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            C5201 c5201 = (C5201) obj;
            if (c5201.f19547.isAssignableFrom(cls) && cls2.isAssignableFrom(c5201.f19546)) {
                return c5201.f19545;
            }
        }
        throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
    }

    @Override // p182.InterfaceC2759
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public long mo3434(long j) {
        ArrayList arrayList = this.f4239;
        if (arrayList.isEmpty()) {
            return Long.MIN_VALUE;
        }
        if (j < ((C1397) arrayList.get(0)).f5476) {
            return ((C1397) arrayList.get(0)).f5476;
        }
        for (int i = 1; i < arrayList.size(); i++) {
            C1397 c1397 = (C1397) arrayList.get(i);
            long j2 = c1397.f5476;
            long j3 = c1397.f5476;
            if (j < j2) {
                long j4 = ((C1397) arrayList.get(i - 1)).f5475;
                return (j4 == -9223372036854775807L || j4 <= j || j4 >= j3) ? j3 : j4;
            }
        }
        long j5 = ((C1397) AbstractC1004.m3281(arrayList)).f5475;
        if (j5 == -9223372036854775807L || j >= j5) {
            return Long.MIN_VALUE;
        }
        return j5;
    }

    @Override // p182.InterfaceC2759
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public AbstractC0993 mo3435(long j) {
        int m3426 = m3426(j);
        if (m3426 == 0) {
            C0982 c0982 = AbstractC0993.f3977;
            return C0956.f3901;
        }
        C1397 c1397 = (C1397) this.f4239.get(m3426 - 1);
        long j2 = c1397.f5475;
        if (j2 == -9223372036854775807L || j < j2) {
            return c1397.f5477;
        }
        C0982 c09822 = AbstractC0993.f3977;
        return C0956.f3901;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public void m3436(String str, String str2) {
        AbstractC2026.m5060(str);
        AbstractC2026.m5062(str2, str);
        m3431(str);
        AbstractC2026.m5040(this, str, str2);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public void m3437(String str, String str2) {
        AbstractC2026.m5060(str);
        AbstractC2026.m5062(str2, str);
        AbstractC2026.m5040(this, str, str2);
    }
}
