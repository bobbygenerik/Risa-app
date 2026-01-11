package p336;

import com.parse.ʽˑ;
import kotlinx.serialization.UnknownFieldException;
import p000.C0754;
import p150.InterfaceC2417;
import p246.InterfaceC3291;
import p438.C5168;
import p438.C5170;
import p438.C5173;
import p438.C5181;
import p438.C5183;
import p438.InterfaceC5175;
import ʽٴ.ˈ;

/* renamed from: ᵎʽ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C4217 implements InterfaceC5175 {
    private static final InterfaceC2417 descriptor;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C4217 f15684;

    /* JADX WARN: Type inference failed for: r0v0, types: [ﹶٴ.ˑﹳ, ᵎʽ.ˑﹳ, java.lang.Object] */
    static {
        ?? obj = new Object();
        f15684 = obj;
        C5173 c5173 = new C5173("com.google.firebase.sessions.settings.SessionConfigs", obj, 5);
        c5173.m10157("sessionsEnabled", false);
        c5173.m10157("sessionSamplingRate", false);
        c5173.m10157("sessionTimeoutSeconds", false);
        c5173.m10157("cacheDurationSeconds", false);
        c5173.m10157("cacheUpdatedTimeSeconds", false);
        descriptor = c5173;
    }

    @Override // p246.InterfaceC3291
    /* renamed from: ʽ */
    public final Object mo4336(ʽˑ r13) {
        InterfaceC2417 interfaceC2417 = descriptor;
        ʽˑ r132 = r13.ᵎﹶ(interfaceC2417);
        int i = 0;
        Boolean bool = null;
        Double d = null;
        Integer num = null;
        Integer num2 = null;
        Long l = null;
        boolean z = true;
        while (z) {
            int i2 = r132.ˉˆ(interfaceC2417);
            if (i2 == -1) {
                z = false;
            } else if (i2 == 0) {
                bool = (Boolean) r132.ʽﹳ(interfaceC2417, 0, C5181.f19491, bool);
                i |= 1;
            } else if (i2 == 1) {
                d = (Double) r132.ʽﹳ(interfaceC2417, 1, C5170.f19465, d);
                i |= 2;
            } else if (i2 == 2) {
                num = (Integer) r132.ʽﹳ(interfaceC2417, 2, C5183.f19495, num);
                i |= 4;
            } else if (i2 == 3) {
                num2 = (Integer) r132.ʽﹳ(interfaceC2417, 3, C5183.f19495, num2);
                i |= 8;
            } else {
                if (i2 != 4) {
                    throw new UnknownFieldException(i2);
                }
                l = (Long) r132.ʽﹳ(interfaceC2417, 4, C5168.f19461, l);
                i |= 16;
            }
        }
        r132.ʾˋ(interfaceC2417);
        return new C4219(i, bool, d, num, num2, l);
    }

    @Override // p246.InterfaceC3291
    /* renamed from: ˈ */
    public final InterfaceC2417 mo4337() {
        return descriptor;
    }

    @Override // p438.InterfaceC5175
    /* renamed from: ⁱˊ */
    public final InterfaceC3291[] mo4338() {
        InterfaceC3291 interfaceC3291 = ˈ.ᵔʾ(C5181.f19491);
        InterfaceC3291 interfaceC32912 = ˈ.ᵔʾ(C5170.f19465);
        C5183 c5183 = C5183.f19495;
        return new InterfaceC3291[]{interfaceC3291, interfaceC32912, ˈ.ᵔʾ(c5183), ˈ.ᵔʾ(c5183), ˈ.ᵔʾ(C5168.f19461)};
    }

    @Override // p246.InterfaceC3291
    /* renamed from: ﹳٴ */
    public final void mo4339(C0754 c0754, Object obj) {
        C4219 c4219 = (C4219) obj;
        InterfaceC2417 interfaceC2417 = descriptor;
        C0754 m2754 = c0754.m2754(interfaceC2417);
        m2754.m2756(interfaceC2417, 0, C5181.f19491, c4219.f15690);
        m2754.m2756(interfaceC2417, 1, C5170.f19465, c4219.f15689);
        C5183 c5183 = C5183.f19495;
        m2754.m2756(interfaceC2417, 2, c5183, c4219.f15686);
        m2754.m2756(interfaceC2417, 3, c5183, c4219.f15687);
        m2754.m2756(interfaceC2417, 4, C5168.f19461, c4219.f15688);
        m2754.m2745();
    }
}
