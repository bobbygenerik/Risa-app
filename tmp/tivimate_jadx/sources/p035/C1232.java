package p035;

import com.bumptech.glide.C0229;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;
import p013.C0913;
import p126.AbstractC2141;
import p126.InterfaceC2136;
import p153.C2469;
import p324.AbstractC3999;
import p324.C3988;
import p329.InterfaceC4104;
import p391.C4633;
import p430.AbstractC5103;
import ʼˋ.ﾞᴵ;
import ʼⁱ.ᴵˊ;
import ʼⁱ.ᵔʾ;
import ˈˋ.ʾˊ;

/* renamed from: ʼﾞ.ᐧﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1232 {

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static final String[] f4775 = {"INSERT", "UPDATE", "DELETE"};

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C1197 f4776;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final LinkedHashMap f4777;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean f4779;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final ᴵˊ f4780;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final String[] f4782;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C0229 f4783;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final LinkedHashMap f4784;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC1219 f4785;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final AtomicBoolean f4778 = new AtomicBoolean(false);

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public InterfaceC4104 f4781 = new ᵔʾ(14);

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final LinkedHashMap f4786 = new LinkedHashMap();

    /* JADX WARN: Type inference failed for: r3v8, types: [java.lang.Object, com.bumptech.glide.ʼˎ] */
    public C1232(AbstractC1219 abstractC1219, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, String[] strArr, boolean z, ᴵˊ r8) {
        this.f4785 = abstractC1219;
        this.f4784 = linkedHashMap;
        this.f4777 = linkedHashMap2;
        this.f4779 = z;
        this.f4780 = r8;
        int length = strArr.length;
        String[] strArr2 = new String[length];
        for (int i = 0; i < length; i++) {
            String str = strArr[i];
            Locale locale = Locale.ROOT;
            String lowerCase = str.toLowerCase(locale);
            this.f4786.put(lowerCase, Integer.valueOf(i));
            String str2 = (String) this.f4784.get(strArr[i]);
            String lowerCase2 = str2 != null ? str2.toLowerCase(locale) : null;
            if (lowerCase2 != null) {
                lowerCase = lowerCase2;
            }
            strArr2[i] = lowerCase;
        }
        this.f4782 = strArr2;
        for (Map.Entry entry : this.f4784.entrySet()) {
            String str3 = (String) entry.getValue();
            Locale locale2 = Locale.ROOT;
            String lowerCase3 = str3.toLowerCase(locale2);
            if (this.f4786.containsKey(lowerCase3)) {
                String lowerCase4 = ((String) entry.getKey()).toLowerCase(locale2);
                LinkedHashMap linkedHashMap3 = this.f4786;
                linkedHashMap3.put(lowerCase4, AbstractC5103.m10043(linkedHashMap3, lowerCase3));
            }
        }
        int length2 = this.f4782.length;
        ?? obj = new Object();
        obj.f1646 = new ReentrantLock();
        obj.f1643 = new long[length2];
        obj.f1645 = new boolean[length2];
        this.f4783 = obj;
        this.f4776 = new C1197(this.f4782.length);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x00e5, code lost:
    
        if (p035.AbstractC1202.m3734(r6, r15, r0) == r4) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00e7, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0070, code lost:
    
        if (r15 == r4) goto L27;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARN: Type inference failed for: r13v6, types: [ʼﾞ.ʾᵎ] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x00e5 -> B:11:0x00e8). Please report as a decompilation issue!!! */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m3803(p035.C1232 r12, p035.InterfaceC1221 r13, int r14, p316.AbstractC3902 r15) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p035.C1232.m3803(ʼﾞ.ᐧﾞ, ʼﾞ.ˋᵔ, int, ᴵʾ.ʽ):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* JADX WARN: Type inference failed for: r3v4, types: [ʼﾞ.ʾᵎ] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0082 -> B:10:0x0085). Please report as a decompilation issue!!! */
    /* renamed from: ˈ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m3804(p035.C1232 r7, p035.InterfaceC1221 r8, int r9, p316.AbstractC3902 r10) {
        /*
            r7.getClass()
            boolean r0 = r10 instanceof p035.C1207
            if (r0 == 0) goto L16
            r0 = r10
            ʼﾞ.ʿ r0 = (p035.C1207) r0
            int r1 = r0.f4674
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.f4674 = r1
            goto L1b
        L16:
            ʼﾞ.ʿ r0 = new ʼﾞ.ʿ
            r0.<init>(r7, r10)
        L1b:
            java.lang.Object r10 = r0.f4675
            int r1 = r0.f4674
            r2 = 1
            if (r1 == 0) goto L3c
            if (r1 != r2) goto L34
            int r7 = r0.f4669
            int r8 = r0.f4672
            java.lang.String[] r9 = r0.f4670
            java.lang.String r1 = r0.f4673
            ʼﾞ.ʾᵎ r3 = r0.f4668
            p121.AbstractC2026.m5044(r10)
            r10 = r9
            r9 = r3
            goto L85
        L34:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3c:
            p121.AbstractC2026.m5044(r10)
            java.lang.String[] r7 = r7.f4782
            r7 = r7[r9]
            java.lang.String[] r9 = p035.C1232.f4775
            r10 = 0
            r1 = 3
            r6 = r1
            r1 = r7
            r7 = r6
            r6 = r9
            r9 = r8
            r8 = r10
            r10 = r6
        L4e:
            if (r8 >= r7) goto L87
            r3 = r10[r8]
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "room_table_modification_trigger_"
            r4.<init>(r5)
            r4.append(r1)
            r5 = 95
            r4.append(r5)
            r4.append(r3)
            java.lang.String r3 = r4.toString()
            java.lang.String r4 = "DROP TRIGGER IF EXISTS `"
            r5 = 96
            java.lang.String r3 = p035.AbstractC1220.m3781(r5, r4, r3)
            r0.f4668 = r9
            r0.f4673 = r1
            r0.f4670 = r10
            r0.f4672 = r8
            r0.f4669 = r7
            r0.f4674 = r2
            java.lang.Object r3 = p035.AbstractC1202.m3734(r9, r3, r0)
            ᵢˎ.ﹳٴ r4 = p373.EnumC4532.f16960
            if (r3 != r4) goto L85
            return r4
        L85:
            int r8 = r8 + r2
            goto L4e
        L87:
            ʻᵢ.ʼᐧ r7 = p013.C0907.f3832
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: p035.C1232.m3804(ʼﾞ.ᐧﾞ, ʼﾞ.ˋᵔ, int, ᴵʾ.ʽ):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0084 A[Catch: all -> 0x00c5, TryCatch #1 {all -> 0x00c5, blocks: (B:13:0x007c, B:15:0x0084, B:18:0x00bf, B:25:0x0090, B:26:0x0092, B:28:0x009f, B:30:0x00a9, B:32:0x00af, B:33:0x00ad, B:36:0x00b4, B:39:0x00b9, B:53:0x0048, B:57:0x0054, B:61:0x0066), top: B:52:0x0048 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m3805(p035.C1232 r11, p316.AbstractC3902 r12) {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p035.C1232.m3805(ʼﾞ.ᐧﾞ, ᴵʾ.ʽ):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0052, code lost:
    
        if (r4 == r3) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m3806(p035.C1232 r4, p035.InterfaceC1206 r5, p316.AbstractC3902 r6) {
        /*
            boolean r0 = r6 instanceof p035.C1199
            if (r0 == 0) goto L13
            r0 = r6
            ʼﾞ.ʼˈ r0 = (p035.C1199) r0
            int r1 = r0.f4640
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4640 = r1
            goto L18
        L13:
            ʼﾞ.ʼˈ r0 = new ʼﾞ.ʼˈ
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r4 = r0.f4641
            int r6 = r0.f4640
            r1 = 2
            r2 = 1
            ᵢˎ.ﹳٴ r3 = p373.EnumC4532.f16960
            if (r6 == 0) goto L3e
            if (r6 == r2) goto L36
            if (r6 != r1) goto L2e
            java.lang.Object r5 = r0.f4638
            java.util.Set r5 = (java.util.Set) r5
            p121.AbstractC2026.m5044(r4)
            return r5
        L2e:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L36:
            java.lang.Object r5 = r0.f4638
            ʼﾞ.ʾᵎ r5 = (p035.InterfaceC1206) r5
            p121.AbstractC2026.m5044(r4)
            goto L55
        L3e:
            p121.AbstractC2026.m5044(r4)
            ar.tvplayer.core.domain.ـˆ r4 = new ar.tvplayer.core.domain.ـˆ
            r6 = 18
            r4.<init>(r6)
            r0.f4638 = r5
            r0.f4640 = r2
            java.lang.String r6 = "SELECT * FROM room_table_modification_log WHERE invalidated = 1"
            java.lang.Object r4 = r5.mo3409(r6, r4, r0)
            if (r4 != r3) goto L55
            goto L69
        L55:
            java.util.Set r4 = (java.util.Set) r4
            boolean r6 = r4.isEmpty()
            if (r6 != 0) goto L6a
            r0.f4638 = r4
            r0.f4640 = r1
            java.lang.String r6 = "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1"
            java.lang.Object r5 = p035.AbstractC1202.m3734(r5, r6, r0)
            if (r5 != r3) goto L6a
        L69:
            return r3
        L6a:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: p035.C1232.m3806(ʼﾞ.ᐧﾞ, ʼﾞ.ʾᵎ, ᴵʾ.ʽ):java.lang.Object");
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m3807(InterfaceC4104 interfaceC4104, InterfaceC4104 interfaceC41042) {
        if (this.f4778.compareAndSet(false, true)) {
            interfaceC4104.mo716();
            C2469 c2469 = this.f4785.f4726;
            if (c2469 == null) {
                c2469 = null;
            }
            AbstractC3999.m8168(c2469, new AbstractC2141(C3988.f15357), new ﾞᴵ(this, interfaceC41042, (InterfaceC2136) null, 7), 2);
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C0913 m3808(String[] strArr) {
        C4633 c4633 = new C4633();
        for (String str : strArr) {
            Set set = (Set) this.f4777.get(str.toLowerCase(Locale.ROOT));
            if (set != null) {
                c4633.addAll(set);
            } else {
                c4633.add(str);
            }
        }
        String[] strArr2 = (String[]) ʾˊ.ˈ(c4633).toArray(new String[0]);
        int length = strArr2.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            String str2 = strArr2[i];
            Integer num = (Integer) this.f4786.get(str2.toLowerCase(Locale.ROOT));
            if (num == null) {
                throw new IllegalArgumentException("There is no table with name ".concat(str2));
            }
            iArr[i] = num.intValue();
        }
        return new C0913(strArr2, iArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m3809(p316.AbstractC3902 r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof p035.C1208
            if (r0 == 0) goto L13
            r0 = r7
            ʼﾞ.ʿᵢ r0 = (p035.C1208) r0
            int r1 = r0.f4678
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4678 = r1
            goto L18
        L13:
            ʼﾞ.ʿᵢ r0 = new ʼﾞ.ʿᵢ
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.f4679
            int r1 = r0.f4678
            r2 = 1
            if (r1 == 0) goto L31
            if (r1 != r2) goto L29
            ˑי.ʽ r0 = r0.f4676
            p121.AbstractC2026.m5044(r7)     // Catch: java.lang.Throwable -> L27
            goto L54
        L27:
            r7 = move-exception
            goto L5a
        L29:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L31:
            p121.AbstractC2026.m5044(r7)
            ʼﾞ.ˊʻ r7 = r6.f4785
            ˑי.ʽ r1 = r7.f4723
            boolean r3 = r1.ʼᐧ()
            if (r3 == 0) goto L5e
            ʼﾞ.ᴵˑ r3 = new ʼﾞ.ᴵˑ     // Catch: java.lang.Throwable -> L58
            r4 = 0
            r5 = 2
            r3.<init>(r6, r4, r5)     // Catch: java.lang.Throwable -> L58
            r0.f4676 = r1     // Catch: java.lang.Throwable -> L58
            r0.f4678 = r2     // Catch: java.lang.Throwable -> L58
            r2 = 0
            java.lang.Object r7 = r7.m3768(r2, r3, r0)     // Catch: java.lang.Throwable -> L58
            ᵢˎ.ﹳٴ r0 = p373.EnumC4532.f16960
            if (r7 != r0) goto L53
            return r0
        L53:
            r0 = r1
        L54:
            r0.ٴᵢ()
            goto L5e
        L58:
            r7 = move-exception
            r0 = r1
        L5a:
            r0.ٴᵢ()
            throw r7
        L5e:
            ʻᵢ.ʼᐧ r7 = p013.C0907.f3832
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: p035.C1232.m3809(ᴵʾ.ʽ):java.lang.Object");
    }
}
