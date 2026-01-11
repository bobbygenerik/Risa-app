package p078;

import com.hierynomus.mssmb2.SMBApiException;
import com.hierynomus.smbj.paths.PathResolveException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import p033.C1184;
import p033.EnumC1185;
import p033.EnumC1186;
import p033.EnumC1189;
import p035.AbstractC1220;
import p073.C1643;
import p140.AbstractC2376;
import p154.C2497;
import p205.C2921;
import p250.C3304;
import p284.EnumC3571;
import p317.AbstractC3914;
import p443.EnumC5199;
import p449.InterfaceC5360;
import p451.EnumC5364;
import ˉˆ.ʿ;
import ˋⁱ.ﾞᴵ;
import ᵢ.ﹳٴ;
import ﹳˋ.ʼˎ;

/* renamed from: ʿʼ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1671 extends AbstractC1679 {

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final ʿ f6785;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public static final ʼˎ f6784 = new ʼˎ(9);

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public static final ﾞᴵ f6783 = new Object();

    public C1671(C2921 c2921, C1643 c1643, ʿ r3) {
        super(c2921, c1643);
        this.f6785 = r3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static /* synthetic */ void m4555(Throwable th, AbstractC1669 abstractC1669) {
        if (th != null) {
            try {
                AbstractC1220.m3777(abstractC1669);
                return;
            } catch (Throwable th2) {
                th.addSuppressed(th2);
                return;
            }
        }
        if (abstractC1669 instanceof AutoCloseable) {
            abstractC1669.close();
        } else {
            if (!(abstractC1669 instanceof ExecutorService)) {
                throw new IllegalArgumentException();
            }
            AbstractC2376.m5452((ExecutorService) abstractC1669);
        }
    }

    public final String toString() {
        return C1671.class.getSimpleName() + "[" + this.f6806 + "]";
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ArrayList m4556(String str) {
        EnumSet of = EnumSet.of(EnumC5364.f20409, EnumC5364.f20404, EnumC5364.f20405);
        Set set = EnumC1185.f4601;
        EnumSet noneOf = EnumSet.noneOf(EnumC1186.class);
        noneOf.add(EnumC1186.f4605);
        noneOf.remove(EnumC1186.f4603);
        EnumSet noneOf2 = EnumSet.noneOf(EnumC5199.class);
        noneOf2.add(EnumC5199.f19540);
        C1677 c1677 = (C1677) m4558(str, of, noneOf2, set, 2, noneOf);
        C1184 c1184 = c1677.f6779;
        C1671 c1671 = c1677.f6782;
        String str2 = c1677.f6781;
        InterfaceC5360 interfaceC5360 = c1677.f6780;
        try {
            ArrayList arrayList = new ArrayList();
            C1678 c1678 = new C1678(c1677, "*");
            while (c1678.hasNext()) {
                arrayList.add(c1678.next());
            }
            try {
                c1677.close();
                return arrayList;
            } catch (Exception e) {
                interfaceC5360.mo4083(str2, c1671, c1184, e);
                return arrayList;
            }
        } finally {
        }
    }

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final void m4557(String str) {
        try {
            AbstractC1669 m4558 = m4558(str, EnumSet.of(EnumC5364.f20410), EnumSet.of(EnumC5199.f19539), EnumSet.of(EnumC1185.f4598, EnumC1185.f4597, EnumC1185.f4600), 2, EnumSet.of(EnumC1186.f4603));
            try {
                m4558.m4554();
                m4555(null, m4558);
            } finally {
            }
        } catch (SMBApiException e) {
            if (!f6783.ﾞᴵ(e.f3097)) {
                throw e;
            }
        }
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final AbstractC1669 m4558(String str, Set set, EnumSet enumSet, Set set2, int i, EnumSet enumSet2) {
        C2921 c2921 = new C2921(this.f6806, str);
        try {
            this.f6785.getClass();
            C3304 c3304 = this.f6808;
            String str2 = c2921.f11046;
            if (!AbstractC3914.m8090(str2, str2)) {
                c3304 = c3304.m7111(c2921);
            }
            String str3 = c2921.f11045;
            ﹳٴ m4561 = ((AbstractC3914.m8090(str2, str2) && AbstractC3914.m8090(str3, str3)) ? this : (C1671) c3304.m7114(str3)).m4561(c2921, set, enumSet, set2, i, enumSet2);
            C2497 c2497 = (C2497) m4561.ᴵˊ;
            C2921 c29212 = (C2921) m4561.ˈٴ;
            C1671 c1671 = (C1671) m4561.ʽʽ;
            return c2497.f9514.contains(EnumC5199.f19540) ? new AbstractC1669(c2497.f9515, c1671, c29212.m6449()) : new C1673(c2497.f9515, c1671, c29212.m6449());
        } catch (PathResolveException e) {
            long j = EnumC3571.m7526(e.f3100).f13963;
            EnumC1189 enumC1189 = EnumC1189.f4622;
            throw new SMBApiException(j, "Cannot resolve path " + c2921, e);
        }
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final boolean m4559(String str) {
        try {
            m4555(null, m4558(str, EnumSet.of(EnumC5364.f20404), EnumSet.of(EnumC5199.f19539), EnumC1185.f4601, 2, EnumSet.of(EnumC1186.f4603)));
            return true;
        } catch (SMBApiException e) {
            if (f6784.ﾞᴵ(e.f3097)) {
                return false;
            }
            throw e;
        }
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final C1673 m4560(String str, EnumSet enumSet, EnumSet enumSet2, Set set, int i, EnumSet enumSet3) {
        EnumSet copyOf = enumSet3 != null ? EnumSet.copyOf((Collection) enumSet3) : EnumSet.noneOf(EnumC1186.class);
        copyOf.add(EnumC1186.f4603);
        copyOf.remove(EnumC1186.f4605);
        EnumSet copyOf2 = enumSet2 != null ? EnumSet.copyOf((Collection) enumSet2) : EnumSet.noneOf(EnumC5199.class);
        copyOf2.remove(EnumC5199.f19540);
        return (C1673) m4558(str, enumSet, copyOf2, set, i, copyOf);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x006c A[Catch: PathResolveException -> 0x007b, TRY_LEAVE, TryCatch #0 {PathResolveException -> 0x007b, blocks: (B:3:0x002e, B:5:0x0034, B:9:0x0048, B:11:0x0052, B:14:0x0066, B:16:0x006c, B:22:0x005e, B:23:0x0042, B:24:0x003f), top: B:2:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x007d  */
    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final ᵢ.ﹳٴ m4561(p205.C2921 r15, java.util.Set r16, java.util.Set r17, java.util.Set r18, int r19, java.util.Set r20) {
        /*
            r14 = this;
            יˆ.ʽ r13 = r14.f6808
            ˊʾ.ˈ r0 = new ˊʾ.ˈ
            long r4 = r14.f6805
            r6 = 0
            ʼﹳ.ʽ r1 = r14.f6814
            long r2 = r14.f6817
            r12 = r15
            r7 = r16
            r8 = r17
            r9 = r18
            r10 = r19
            r11 = r20
            r0.<init>(r1, r2, r4, r6, r7, r8, r9, r10, r11, r12)
            ˉˆ.ʿ r8 = r14.f6785
            java.lang.Object r1 = r8.ᴵˊ
            r5 = r1
            ـˎ.ˈ r5 = (ـˎ.ˈ) r5
            long r6 = r14.f6815
            java.lang.String r3 = "Create"
            r1 = r14
            r4 = r15
            r2 = r0
            ʼﹳ.ˉˆ r0 = r1.m4569(r2, r3, r4, r5, r6)
            r9 = r0
            ˊʾ.ˑﹳ r9 = (p154.C2497) r9
            ˎᴵ.ﹳٴ r1 = r8.ˈʿ(r13, r9, r15)     // Catch: com.hierynomus.smbj.paths.PathResolveException -> L7b
            if (r1 == 0) goto L3f
            java.lang.String r0 = r15.f11046     // Catch: com.hierynomus.smbj.paths.PathResolveException -> L7b
            java.lang.String r2 = r1.f11046     // Catch: com.hierynomus.smbj.paths.PathResolveException -> L7b
            boolean r0 = p317.AbstractC3914.m8090(r0, r2)     // Catch: com.hierynomus.smbj.paths.PathResolveException -> L7b
            if (r0 == 0) goto L42
            goto L46
        L3f:
            r15.getClass()     // Catch: com.hierynomus.smbj.paths.PathResolveException -> L7b
        L42:
            יˆ.ʽ r13 = r13.m7111(r1)     // Catch: com.hierynomus.smbj.paths.PathResolveException -> L7b
        L46:
            if (r1 == 0) goto L5e
            java.lang.String r0 = r15.f11046     // Catch: com.hierynomus.smbj.paths.PathResolveException -> L7b
            java.lang.String r2 = r1.f11046     // Catch: com.hierynomus.smbj.paths.PathResolveException -> L7b
            boolean r0 = p317.AbstractC3914.m8090(r0, r2)     // Catch: com.hierynomus.smbj.paths.PathResolveException -> L7b
            if (r0 == 0) goto L5e
            java.lang.String r0 = r15.f11045     // Catch: com.hierynomus.smbj.paths.PathResolveException -> L7b
            java.lang.String r2 = r1.f11045     // Catch: com.hierynomus.smbj.paths.PathResolveException -> L7b
            boolean r0 = p317.AbstractC3914.m8090(r0, r2)     // Catch: com.hierynomus.smbj.paths.PathResolveException -> L7b
            if (r0 == 0) goto L5e
            r0 = r14
            goto L66
        L5e:
            java.lang.String r0 = r1.f11045     // Catch: com.hierynomus.smbj.paths.PathResolveException -> L7b
            ʿʼ.ﾞʻ r0 = r13.m7114(r0)     // Catch: com.hierynomus.smbj.paths.PathResolveException -> L7b
            ʿʼ.ˈ r0 = (p078.C1671) r0     // Catch: com.hierynomus.smbj.paths.PathResolveException -> L7b
        L66:
            boolean r2 = r15.equals(r1)     // Catch: com.hierynomus.smbj.paths.PathResolveException -> L7b
            if (r2 != 0) goto L7d
            r2 = r16
            r3 = r17
            r4 = r18
            r5 = r19
            r6 = r20
            ᵢ.ﹳٴ r0 = r0.m4561(r1, r2, r3, r4, r5, r6)     // Catch: com.hierynomus.smbj.paths.PathResolveException -> L7b
            return r0
        L7b:
            r0 = move-exception
            goto L83
        L7d:
            ᵢ.ﹳٴ r0 = new ᵢ.ﹳٴ
            r0.<init>(r9, r15, r14)
            return r0
        L83:
            com.hierynomus.mssmb2.SMBApiException r1 = new com.hierynomus.mssmb2.SMBApiException
            ʼﹳ.ﾞʻ r2 = p033.EnumC1189.f4622
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "Cannot resolve path "
            r2.<init>(r3)
            r2.append(r15)
            java.lang.String r2 = r2.toString()
            long r3 = r0.f3100
            r1.<init>(r3, r2, r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p078.C1671.m4561(ˎᴵ.ﹳٴ, java.util.Set, java.util.Set, java.util.Set, int, java.util.Set):ᵢ.ﹳٴ");
    }
}
