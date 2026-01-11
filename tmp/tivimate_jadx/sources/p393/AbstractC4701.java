package p393;

import p035.AbstractC1220;
import p152.AbstractC2444;
import p164.C2571;
import p164.C2575;
import p307.AbstractC3740;
import p435.AbstractC5154;

/* renamed from: ⁱٴ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4701 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C2571 f17760;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C2571 f17761;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C2571 f17762;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C2571 f17763;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C2571 f17764;

    static {
        C2571 c2571 = new C2571("/".getBytes(AbstractC5154.f19435));
        c2571.f9766 = "/";
        f17764 = c2571;
        C2571 c25712 = new C2571("\\".getBytes(AbstractC5154.f19435));
        c25712.f9766 = "\\";
        f17763 = c25712;
        C2571 c25713 = new C2571("/\\".getBytes(AbstractC5154.f19435));
        c25713.f9766 = "/\\";
        f17760 = c25713;
        C2571 c25714 = new C2571(".".getBytes(AbstractC5154.f19435));
        c25714.f9766 = ".";
        f17761 = c25714;
        C2571 c25715 = new C2571("..".getBytes(AbstractC5154.f19435));
        c25715.f9766 = "..";
        f17762 = c25715;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C2571 m9407(C2575 c2575) {
        C2571 c2571 = c2575.f9777;
        C2571 c25712 = f17764;
        if (C2571.m5746(c2571, c25712) != -1) {
            return c25712;
        }
        C2571 c25713 = c2575.f9777;
        C2571 c25714 = f17763;
        if (C2571.m5746(c25713, c25714) != -1) {
            return c25714;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:113:0x008c, code lost:
    
        if (r5 < '[') goto L44;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0119 A[EDGE_INSN: B:72:0x0119->B:73:0x0119 BREAK  A[LOOP:1: B:20:0x00a9->B:36:0x00a9], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00a3  */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, ˊᐧ.ﾞᴵ] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* renamed from: ˈ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final p164.C2575 m9408(p164.C2599 r17, boolean r18) {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p393.AbstractC4701.m9408(ˊᐧ.ﾞᴵ, boolean):ˊᐧ.ʽﹳ");
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C2571 m9409(byte b) {
        if (b == 47) {
            return f17764;
        }
        if (b == 92) {
            return f17763;
        }
        throw new IllegalArgumentException(AbstractC3740.m7932(b, "not a directory separator: "));
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, ˊᐧ.ﾞᴵ] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C2575 m9410(C2575 c2575, C2575 c25752, boolean z) {
        c25752.getClass();
        if (m9411(c25752) != -1 || c25752.m5772() != null) {
            return c25752;
        }
        C2571 m9407 = m9407(c2575);
        if (m9407 == null && (m9407 = m9407(c25752)) == null) {
            m9407 = m9412(C2575.f9776);
        }
        ?? obj = new Object();
        obj.m5838(c2575.f9777);
        if (obj.f9835 > 0) {
            obj.m5838(m9407);
        }
        obj.m5838(c25752.f9777);
        return m9408(obj, z);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final int m9411(C2575 c2575) {
        C2571 c2571 = c2575.f9777;
        if (c2571.mo5749() != 0) {
            if (c2571.mo5757(0) != 47) {
                if (c2571.mo5757(0) == 92) {
                    if (c2571.mo5749() > 2 && c2571.mo5757(1) == 92) {
                        int mo5754 = c2571.mo5754(2, f17763.mo5756());
                        return mo5754 == -1 ? c2571.mo5749() : mo5754;
                    }
                } else if (c2571.mo5749() > 2 && c2571.mo5757(1) == 58 && c2571.mo5757(2) == 92) {
                    char mo5757 = (char) c2571.mo5757(0);
                    if ('a' <= mo5757 && mo5757 < '{') {
                        return 3;
                    }
                    if ('A' <= mo5757 && mo5757 < '[') {
                        return 3;
                    }
                }
            }
            return 1;
        }
        return -1;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final C2571 m9412(String str) {
        if (AbstractC2444.m5562(str, "/")) {
            return f17764;
        }
        if (AbstractC2444.m5562(str, "\\")) {
            return f17763;
        }
        throw new IllegalArgumentException(AbstractC1220.m3771("not a directory separator: ", str));
    }
}
