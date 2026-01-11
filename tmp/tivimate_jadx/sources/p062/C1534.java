package p062;

import com.parse.ʽˑ;
import kotlinx.serialization.UnknownFieldException;
import p000.C0754;
import p150.InterfaceC2417;
import p246.InterfaceC3291;
import p438.C5169;
import p438.C5173;
import p438.C5183;
import p438.InterfaceC5175;

/* renamed from: ʾˈ.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C1534 implements InterfaceC5175 {
    private static final InterfaceC2417 descriptor;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C1534 f6023;

    /* JADX WARN: Type inference failed for: r0v0, types: [ﹶٴ.ˑﹳ, java.lang.Object, ʾˈ.ʼʼ] */
    static {
        ?? obj = new Object();
        f6023 = obj;
        C5173 c5173 = new C5173("com.google.firebase.sessions.ProcessData", obj, 2);
        c5173.m10157("pid", false);
        c5173.m10157("uuid", false);
        descriptor = c5173;
    }

    @Override // p246.InterfaceC3291
    /* renamed from: ʽ */
    public final Object mo4336(ʽˑ r10) {
        InterfaceC2417 interfaceC2417 = descriptor;
        ʽˑ r102 = r10.ᵎﹶ(interfaceC2417);
        String str = null;
        boolean z = true;
        int i = 0;
        int i2 = 0;
        while (z) {
            int i3 = r102.ˉˆ(interfaceC2417);
            if (i3 == -1) {
                z = false;
            } else if (i3 == 0) {
                i2 = r102.ᵔﹳ(interfaceC2417, 0);
                i |= 1;
            } else {
                if (i3 != 1) {
                    throw new UnknownFieldException(i3);
                }
                str = r102.ʼʼ(interfaceC2417, 1);
                i |= 2;
            }
        }
        r102.ʾˋ(interfaceC2417);
        return new C1541(i, i2, str);
    }

    @Override // p246.InterfaceC3291
    /* renamed from: ˈ */
    public final InterfaceC2417 mo4337() {
        return descriptor;
    }

    @Override // p438.InterfaceC5175
    /* renamed from: ⁱˊ */
    public final InterfaceC3291[] mo4338() {
        return new InterfaceC3291[]{C5183.f19495, C5169.f19463};
    }

    @Override // p246.InterfaceC3291
    /* renamed from: ﹳٴ */
    public final void mo4339(C0754 c0754, Object obj) {
        C1541 c1541 = (C1541) obj;
        InterfaceC2417 interfaceC2417 = descriptor;
        C0754 m2754 = c0754.m2754(interfaceC2417);
        int i = c1541.f6059;
        m2754.m2753(interfaceC2417, 0);
        m2754.m2744(i);
        String str = c1541.f6058;
        m2754.m2753(interfaceC2417, 1);
        m2754.m2743(str);
        m2754.m2745();
    }
}
