package p062;

import com.parse.ʽˑ;
import kotlinx.serialization.UnknownFieldException;
import p000.C0754;
import p150.InterfaceC2417;
import p246.InterfaceC3291;
import p438.C5168;
import p438.C5173;
import p438.InterfaceC5175;

/* renamed from: ʾˈ.ʻᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C1533 implements InterfaceC5175 {
    private static final InterfaceC2417 descriptor;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C1533 f6022;

    /* JADX WARN: Type inference failed for: r0v0, types: [ﹶٴ.ˑﹳ, java.lang.Object, ʾˈ.ʻᵎ] */
    static {
        ?? obj = new Object();
        f6022 = obj;
        C5173 c5173 = new C5173("com.google.firebase.sessions.Time", obj, 3);
        c5173.m10157("ms", false);
        c5173.m10157("us", true);
        c5173.m10157("seconds", true);
        descriptor = c5173;
    }

    @Override // p246.InterfaceC3291
    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object mo4336(ʽˑ r14) {
        InterfaceC2417 interfaceC2417 = descriptor;
        ʽˑ r142 = r14.ᵎﹶ(interfaceC2417);
        int i = 0;
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        boolean z = true;
        while (z) {
            int i2 = r142.ˉˆ(interfaceC2417);
            if (i2 == -1) {
                z = false;
            } else if (i2 == 0) {
                j = r142.יـ(interfaceC2417, 0);
                i |= 1;
            } else if (i2 == 1) {
                j2 = r142.יـ(interfaceC2417, 1);
                i |= 2;
            } else {
                if (i2 != 2) {
                    throw new UnknownFieldException(i2);
                }
                j3 = r142.יـ(interfaceC2417, 2);
                i |= 4;
            }
        }
        r142.ʾˋ(interfaceC2417);
        return new C1567(i, j, j2, j3);
    }

    @Override // p246.InterfaceC3291
    /* renamed from: ˈ, reason: contains not printable characters */
    public final InterfaceC2417 mo4337() {
        return descriptor;
    }

    @Override // p438.InterfaceC5175
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC3291[] mo4338() {
        C5168 c5168 = C5168.f19461;
        return new InterfaceC3291[]{c5168, c5168, c5168};
    }

    @Override // p246.InterfaceC3291
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo4339(C0754 c0754, Object obj) {
        C1567 c1567 = (C1567) obj;
        InterfaceC2417 interfaceC2417 = descriptor;
        C0754 m2754 = c0754.m2754(interfaceC2417);
        long j = c1567.f6131;
        long j2 = c1567.f6129;
        long j3 = c1567.f6130;
        m2754.m2753(interfaceC2417, 0);
        m2754.m2746(j);
        if (m2754.m2751() || j3 != 1000 * j) {
            m2754.m2753(interfaceC2417, 1);
            m2754.m2746(j3);
        }
        if (m2754.m2751() || j2 != j / 1000) {
            m2754.m2753(interfaceC2417, 2);
            m2754.m2746(j2);
        }
        m2754.m2745();
    }
}
