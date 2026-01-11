package p171;

import java.util.ArrayList;
import java.util.List;
import p004.C0795;
import p004.C0800;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p040.C1293;
import p104.C1919;
import p158.C2537;
import p169.C2616;
import p194.C2881;
import p203.C2917;
import p223.C3056;
import p224.C3065;
import p243.C3243;
import p254.C3323;
import p254.C3326;
import p254.C3329;
import p254.C3342;
import p254.C3348;
import p254.C3351;
import p260.C3400;
import p305.C3724;
import p404.C4790;
import ˋⁱ.ﾞᴵ;

/* renamed from: ˊﾞ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2631 implements InterfaceC2650 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public AbstractC0993 f9974;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f9975;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f9976;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final int[] f9969 = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14, 17, 18, 19, 20, 21};

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final C4790 f9970 = new C4790(new C2537(4));

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final C4790 f9968 = new C4790(new C2537(5));

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f9971 = 112800;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public ﾞᴵ f9973 = new Object();

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f9972 = true;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final synchronized void m5884() {
        this.f9971 = 1880000;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final synchronized void m5885(List list) {
        this.f9974 = AbstractC0993.m3264(list);
    }

    /* JADX WARN: Type inference failed for: r11v23, types: [יˑ.ˈ, java.lang.Object] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m5886(int i, ArrayList arrayList) {
        switch (i) {
            case 0:
                arrayList.add(new C3348());
                return;
            case 1:
                arrayList.add(new C3323());
                return;
            case 2:
                arrayList.add(new C3329(0));
                return;
            case 3:
                arrayList.add(new C3400());
                return;
            case 4:
                InterfaceC2632 m9566 = f9970.m9566(0);
                if (m9566 != null) {
                    arrayList.add(m9566);
                    return;
                } else {
                    arrayList.add(new C1919());
                    return;
                }
            case 5:
                arrayList.add(new C2917());
                return;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                arrayList.add(new C3243(this.f9973, this.f9972 ? 0 : 2));
                return;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                arrayList.add(new C2881(0));
                return;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                ﾞᴵ r4 = this.f9973;
                int i2 = this.f9972 ? 0 : 32;
                C0982 c0982 = AbstractC0993.f3977;
                arrayList.add(new C0800(r4, i2, null, null, C0956.f3901, null));
                arrayList.add(new C0795(this.f9973, this.f9972 ? 0 : 16));
                return;
            case 9:
                arrayList.add(new Object());
                return;
            case 10:
                arrayList.add(new C3326());
                return;
            case 11:
                if (this.f9974 == null) {
                    C0982 c09822 = AbstractC0993.f3977;
                    this.f9974 = C0956.f3901;
                }
                arrayList.add(new C3342(1, !this.f9972 ? 1 : 0, this.f9973, new C3724(0L), new C3351(this.f9975, this.f9974), this.f9971));
                return;
            case 12:
                ?? obj = new Object();
                obj.f12751 = 0;
                obj.f12752 = -1L;
                obj.f12757 = -1;
                obj.f12754 = -1L;
                arrayList.add(obj);
                return;
            case 13:
            default:
                return;
            case 14:
                arrayList.add(new C1293(this.f9976));
                return;
            case 15:
                InterfaceC2632 m95662 = f9968.m9566(new Object[0]);
                if (m95662 != null) {
                    arrayList.add(m95662);
                    return;
                }
                return;
            case 16:
                arrayList.add(new C3065(!this.f9972 ? 1 : 0, this.f9973));
                return;
            case 17:
                arrayList.add(new C1293((byte) 0, 1));
                return;
            case 18:
                arrayList.add(new C2616(2));
                return;
            case 19:
                arrayList.add(new C1293((byte) 0, 0));
                return;
            case 20:
                arrayList.add(new C2616(1));
                return;
            case 21:
                arrayList.add(new C2616(0));
                return;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002b A[Catch: all -> 0x002f, TryCatch #0 {all -> 0x002f, blocks: (B:3:0x0001, B:5:0x0015, B:8:0x001c, B:9:0x0024, B:11:0x002b, B:12:0x0031, B:15:0x0039, B:18:0x003f, B:21:0x0045, B:23:0x0048, B:27:0x004b), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003f A[Catch: all -> 0x002f, TryCatch #0 {all -> 0x002f, blocks: (B:3:0x0001, B:5:0x0015, B:8:0x001c, B:9:0x0024, B:11:0x002b, B:12:0x0031, B:15:0x0039, B:18:0x003f, B:21:0x0045, B:23:0x0048, B:27:0x004b), top: B:2:0x0001 }] */
    @Override // p171.InterfaceC2650
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized p171.InterfaceC2632[] mo5887(android.net.Uri r7, java.util.Map r8) {
        /*
            r6 = this;
            monitor-enter(r6)
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L2f
            int[] r1 = p171.C2631.f9969     // Catch: java.lang.Throwable -> L2f
            r2 = 21
            r0.<init>(r2)     // Catch: java.lang.Throwable -> L2f
            java.lang.String r3 = "Content-Type"
            java.lang.Object r8 = r8.get(r3)     // Catch: java.lang.Throwable -> L2f
            java.util.List r8 = (java.util.List) r8     // Catch: java.lang.Throwable -> L2f
            r3 = 0
            if (r8 == 0) goto L23
            boolean r4 = r8.isEmpty()     // Catch: java.lang.Throwable -> L2f
            if (r4 == 0) goto L1c
            goto L23
        L1c:
            java.lang.Object r8 = r8.get(r3)     // Catch: java.lang.Throwable -> L2f
            java.lang.String r8 = (java.lang.String) r8     // Catch: java.lang.Throwable -> L2f
            goto L24
        L23:
            r8 = 0
        L24:
            int r8 = android.support.v4.media.session.ⁱˊ.ٴﹶ(r8)     // Catch: java.lang.Throwable -> L2f
            r4 = -1
            if (r8 == r4) goto L31
            r6.m5886(r8, r0)     // Catch: java.lang.Throwable -> L2f
            goto L31
        L2f:
            r7 = move-exception
            goto L55
        L31:
            int r7 = android.support.v4.media.session.ⁱˊ.ﾞʻ(r7)     // Catch: java.lang.Throwable -> L2f
            if (r7 == r4) goto L3c
            if (r7 == r8) goto L3c
            r6.m5886(r7, r0)     // Catch: java.lang.Throwable -> L2f
        L3c:
            r4 = r3
        L3d:
            if (r4 >= r2) goto L4b
            r5 = r1[r4]     // Catch: java.lang.Throwable -> L2f
            if (r5 == r8) goto L48
            if (r5 == r7) goto L48
            r6.m5886(r5, r0)     // Catch: java.lang.Throwable -> L2f
        L48:
            int r4 = r4 + 1
            goto L3d
        L4b:
            ˊﾞ.ˉˆ[] r7 = new p171.InterfaceC2632[r3]     // Catch: java.lang.Throwable -> L2f
            java.lang.Object[] r7 = r0.toArray(r7)     // Catch: java.lang.Throwable -> L2f
            ˊﾞ.ˉˆ[] r7 = (p171.InterfaceC2632[]) r7     // Catch: java.lang.Throwable -> L2f
            monitor-exit(r6)
            return r7
        L55:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L2f
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: p171.C2631.mo5887(android.net.Uri, java.util.Map):ˊﾞ.ˉˆ[]");
    }
}
