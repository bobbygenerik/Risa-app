package p062;

import com.parse.ʽˑ;
import kotlinx.serialization.UnknownFieldException;
import p000.C0754;
import p150.InterfaceC2417;
import p246.InterfaceC3291;
import p438.C5168;
import p438.C5169;
import p438.C5173;
import p438.C5183;
import p438.InterfaceC5175;

/* renamed from: ʾˈ.ᵔי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C1582 implements InterfaceC5175 {
    private static final InterfaceC2417 descriptor;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C1582 f6181;

    /* JADX WARN: Type inference failed for: r0v0, types: [ﹶٴ.ˑﹳ, ʾˈ.ᵔי, java.lang.Object] */
    static {
        ?? obj = new Object();
        f6181 = obj;
        C5173 c5173 = new C5173("com.google.firebase.sessions.SessionDetails", obj, 4);
        c5173.m10157("sessionId", false);
        c5173.m10157("firstSessionId", false);
        c5173.m10157("sessionIndex", false);
        c5173.m10157("sessionStartTimestampUs", false);
        descriptor = c5173;
    }

    @Override // p246.InterfaceC3291
    /* renamed from: ʽ */
    public final Object mo4336(ʽˑ r14) {
        InterfaceC2417 interfaceC2417 = descriptor;
        ʽˑ r142 = r14.ᵎﹶ(interfaceC2417);
        int i = 0;
        int i2 = 0;
        String str = null;
        String str2 = null;
        long j = 0;
        boolean z = true;
        while (z) {
            int i3 = r142.ˉˆ(interfaceC2417);
            if (i3 == -1) {
                z = false;
            } else if (i3 == 0) {
                str = r142.ʼʼ(interfaceC2417, 0);
                i |= 1;
            } else if (i3 == 1) {
                str2 = r142.ʼʼ(interfaceC2417, 1);
                i |= 2;
            } else if (i3 == 2) {
                i2 = r142.ᵔﹳ(interfaceC2417, 2);
                i |= 4;
            } else {
                if (i3 != 3) {
                    throw new UnknownFieldException(i3);
                }
                j = r142.יـ(interfaceC2417, 3);
                i |= 8;
            }
        }
        r142.ʾˋ(interfaceC2417);
        return new C1583(i, str, str2, i2, j);
    }

    @Override // p246.InterfaceC3291
    /* renamed from: ˈ */
    public final InterfaceC2417 mo4337() {
        return descriptor;
    }

    @Override // p438.InterfaceC5175
    /* renamed from: ⁱˊ */
    public final InterfaceC3291[] mo4338() {
        C5169 c5169 = C5169.f19463;
        return new InterfaceC3291[]{c5169, c5169, C5183.f19495, C5168.f19461};
    }

    @Override // p246.InterfaceC3291
    /* renamed from: ﹳٴ */
    public final void mo4339(C0754 c0754, Object obj) {
        C1583 c1583 = (C1583) obj;
        InterfaceC2417 interfaceC2417 = descriptor;
        C0754 m2754 = c0754.m2754(interfaceC2417);
        String str = c1583.f6185;
        m2754.m2753(interfaceC2417, 0);
        m2754.m2743(str);
        String str2 = c1583.f6184;
        m2754.m2753(interfaceC2417, 1);
        m2754.m2743(str2);
        int i = c1583.f6182;
        m2754.m2753(interfaceC2417, 2);
        m2754.m2744(i);
        long j = c1583.f6183;
        m2754.m2753(interfaceC2417, 3);
        m2754.m2746(j);
        m2754.m2745();
    }
}
