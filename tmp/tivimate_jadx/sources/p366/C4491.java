package p366;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.parse.ٴʼ;
import java.io.InputStream;
import java.util.ArrayDeque;
import p031.C1144;
import p031.InterfaceC1139;
import p080.InterfaceC1710;
import p087.C1743;
import p087.C1744;
import p138.C2352;
import p138.C2355;
import p229.C3125;
import p257.C3397;
import p257.InterfaceC3396;

/* renamed from: ᵔﹶ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4491 implements InterfaceC1139 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object f16834;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f16835;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f16836;

    public C4491(Resources resources, InterfaceC1139 interfaceC1139) {
        this.f16836 = 0;
        this.f16834 = resources;
        this.f16835 = interfaceC1139;
    }

    public /* synthetic */ C4491(Object obj, int i, Object obj2) {
        this.f16836 = i;
        this.f16835 = obj;
        this.f16834 = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.io.InputStream] */
    @Override // p031.InterfaceC1139
    /* renamed from: ⁱˊ */
    public final InterfaceC1710 mo3568(Object obj, int i, int i2, C1144 c1144) {
        boolean z;
        C4462 c4462;
        C1743 c1743;
        C1743 c17432;
        switch (this.f16836) {
            case 0:
                InterfaceC1710 mo3568 = ((InterfaceC1139) this.f16835).mo3568(obj, i, i2, c1144);
                Resources resources = (Resources) this.f16834;
                if (mo3568 == null) {
                    return null;
                }
                return new C4465(resources, mo3568);
            case 1:
                InterfaceC1710 m5440 = ((C2355) this.f16835).m5440((Uri) obj, c1144);
                if (m5440 == null) {
                    return null;
                }
                return AbstractC4492.m9062((InterfaceC3396) this.f16834, (Drawable) ((C2352) m5440).get(), i, i2);
            default:
                InputStream inputStream = (InputStream) obj;
                if (inputStream instanceof C4462) {
                    c4462 = (C4462) inputStream;
                    z = false;
                } else {
                    z = true;
                    c4462 = new C4462(inputStream, (C3397) this.f16834);
                }
                ArrayDeque arrayDeque = C1743.f7099;
                synchronized (arrayDeque) {
                    c1743 = (C1743) arrayDeque.poll();
                    c17432 = c1743;
                }
                if (c1743 == null) {
                    c17432 = new InputStream();
                }
                C1743 c17433 = c17432;
                c17433.f7100 = c4462;
                C1744 c1744 = new C1744(c17433);
                C3125 c3125 = new C3125(c4462, 18, c17433);
                try {
                    C4464 c4464 = (C4464) this.f16835;
                    C4465 m9023 = c4464.m9023(new ٴʼ(c1744, c4464.f16712, c4464.f16711), i, i2, c1144, c3125);
                    c17433.m4694();
                    if (z) {
                        c4462.m9014();
                    }
                    return m9023;
                } finally {
                }
        }
    }

    @Override // p031.InterfaceC1139
    /* renamed from: ﹳٴ */
    public final boolean mo3569(Object obj, C1144 c1144) {
        switch (this.f16836) {
            case 0:
                return ((InterfaceC1139) this.f16835).mo3569(obj, c1144);
            case 1:
                return "android.resource".equals(((Uri) obj).getScheme());
            default:
                ((C4464) this.f16835).getClass();
                return true;
        }
    }
}
