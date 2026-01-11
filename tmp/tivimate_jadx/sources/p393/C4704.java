package p393;

import com.google.android.gms.internal.measurement.ˏʻ;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.JarURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import p013.C0906;
import p013.C0913;
import p035.C1233;
import p164.AbstractC2598;
import p164.C2575;
import p164.C2593;
import p164.C2597;
import p164.InterfaceC2588;
import p366.C4476;
import ᵎˉ.ⁱˊ;
import ᵔʻ.ﹳـ;

/* renamed from: ⁱٴ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4704 extends AbstractC2598 {

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final C2575 f17769;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C2597 f17770 = AbstractC2598.f9833;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C0906 f17771 = new C0906(new ﹳـ(17, this));

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ClassLoader f17772;

    static {
        String str = C2575.f9776;
        f17769 = ⁱˊ.ᵔᵢ("/", false);
    }

    public C4704(ClassLoader classLoader) {
        this.f17772 = classLoader;
    }

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public static String m9413(C2575 c2575) {
        C2575 c25752 = f17769;
        c25752.getClass();
        return AbstractC4701.m9410(c25752, c2575, true).m5768(c25752).f9777.m5748();
    }

    @Override // p164.AbstractC2598
    /* renamed from: ʽ */
    public final void mo5789(C2575 c2575, C2575 c25752) {
        throw new IOException(this + " is read-only");
    }

    @Override // p164.AbstractC2598
    /* renamed from: ʾˋ */
    public final C2593 mo5811(C2575 c2575) {
        if (!C4476.m9034(c2575)) {
            throw new FileNotFoundException("file not found: " + c2575);
        }
        String m9413 = m9413(c2575);
        for (C0913 c0913 : (List) this.f17771.getValue()) {
            try {
                return ((AbstractC2598) c0913.f3836).mo5811(((C2575) c0913.f3837).m5769(m9413));
            } catch (FileNotFoundException unused) {
            }
        }
        throw new FileNotFoundException("file not found: " + c2575);
    }

    @Override // p164.AbstractC2598
    /* renamed from: ˈٴ */
    public final C2593 mo5812(C2575 c2575) {
        throw new IOException("resources are not writable");
    }

    @Override // p164.AbstractC2598
    /* renamed from: ˉˆ */
    public final void mo5813(C2575 c2575) {
        throw new IOException(this + " is read-only");
    }

    @Override // p164.AbstractC2598
    /* renamed from: ـˆ */
    public final C1233 mo5790(C2575 c2575) {
        if (!C4476.m9034(c2575)) {
            return null;
        }
        String m9413 = m9413(c2575);
        for (C0913 c0913 : (List) this.f17771.getValue()) {
            C1233 mo5790 = ((AbstractC2598) c0913.f3836).mo5790(((C2575) c0913.f3837).m5769(m9413));
            if (mo5790 != null) {
                return mo5790;
            }
        }
        return null;
    }

    @Override // p164.AbstractC2598
    /* renamed from: ᵎˊ */
    public final InterfaceC2588 mo5814(C2575 c2575) {
        if (!C4476.m9034(c2575)) {
            throw new FileNotFoundException("file not found: " + c2575);
        }
        C2575 c25752 = f17769;
        c25752.getClass();
        URL resource = this.f17772.getResource(AbstractC4701.m9410(c25752, c2575, false).m5768(c25752).f9777.m5748());
        if (resource == null) {
            throw new FileNotFoundException("file not found: " + c2575);
        }
        URLConnection openConnection = resource.openConnection();
        if (openConnection instanceof JarURLConnection) {
            ((JarURLConnection) openConnection).setUseCaches(false);
        }
        return ˏʻ.ـˏ(openConnection.getInputStream());
    }

    @Override // p164.AbstractC2598
    /* renamed from: ᵎﹶ */
    public final void mo5815(C2575 c2575) {
        throw new IOException(this + " is read-only");
    }
}
