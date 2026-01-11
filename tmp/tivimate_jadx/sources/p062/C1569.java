package p062;

import com.parse.ʽˑ;
import java.util.Map;
import kotlinx.serialization.UnknownFieldException;
import p000.C0754;
import p150.InterfaceC2417;
import p246.InterfaceC3291;
import p438.C5173;
import p438.InterfaceC5175;
import ʽٴ.ˈ;

/* renamed from: ʾˈ.ٴᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C1569 implements InterfaceC5175 {
    private static final InterfaceC2417 descriptor;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C1569 f6133;

    /* JADX WARN: Type inference failed for: r0v0, types: [ﹶٴ.ˑﹳ, java.lang.Object, ʾˈ.ٴᵢ] */
    static {
        ?? obj = new Object();
        f6133 = obj;
        C5173 c5173 = new C5173("com.google.firebase.sessions.SessionData", obj, 3);
        c5173.m10157("sessionDetails", false);
        c5173.m10157("backgroundTime", true);
        c5173.m10157("processDataMap", true);
        descriptor = c5173;
    }

    @Override // p246.InterfaceC3291
    /* renamed from: ʽ */
    public final Object mo4336(ʽˑ r12) {
        InterfaceC2417 interfaceC2417 = descriptor;
        ʽˑ r122 = r12.ᵎﹶ(interfaceC2417);
        InterfaceC3291[] interfaceC3291Arr = C1579.f6171;
        C1583 c1583 = null;
        boolean z = true;
        int i = 0;
        C1567 c1567 = null;
        Map map = null;
        while (z) {
            int i2 = r122.ˉˆ(interfaceC2417);
            if (i2 == -1) {
                z = false;
            } else if (i2 == 0) {
                c1583 = (C1583) r122.ʻٴ(interfaceC2417, 0, C1582.f6181, c1583);
                i |= 1;
            } else if (i2 == 1) {
                c1567 = (C1567) r122.ʽﹳ(interfaceC2417, 1, C1533.f6022, c1567);
                i |= 2;
            } else {
                if (i2 != 2) {
                    throw new UnknownFieldException(i2);
                }
                map = (Map) r122.ʽﹳ(interfaceC2417, 2, interfaceC3291Arr[2], map);
                i |= 4;
            }
        }
        r122.ʾˋ(interfaceC2417);
        return new C1579(i, c1583, c1567, map);
    }

    @Override // p246.InterfaceC3291
    /* renamed from: ˈ */
    public final InterfaceC2417 mo4337() {
        return descriptor;
    }

    @Override // p438.InterfaceC5175
    /* renamed from: ⁱˊ */
    public final InterfaceC3291[] mo4338() {
        return new InterfaceC3291[]{C1582.f6181, ˈ.ᵔʾ(C1533.f6022), ˈ.ᵔʾ(C1579.f6171[2])};
    }

    @Override // p246.InterfaceC3291
    /* renamed from: ﹳٴ */
    public final void mo4339(C0754 c0754, Object obj) {
        C1579 c1579 = (C1579) obj;
        InterfaceC2417 interfaceC2417 = descriptor;
        C0754 m2754 = c0754.m2754(interfaceC2417);
        InterfaceC3291[] interfaceC3291Arr = C1579.f6171;
        C1582 c1582 = C1582.f6181;
        C1583 c1583 = c1579.f6174;
        Map map = c1579.f6172;
        C1567 c1567 = c1579.f6173;
        m2754.m2750(interfaceC2417, 0, c1582, c1583);
        if (m2754.m2751() || c1567 != null) {
            m2754.m2756(interfaceC2417, 1, C1533.f6022, c1567);
        }
        if (m2754.m2751() || map != null) {
            m2754.m2756(interfaceC2417, 2, interfaceC3291Arr[2], map);
        }
        m2754.m2745();
    }
}
