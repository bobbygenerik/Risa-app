package androidx.leanback.widget;

import android.content.Context;
import androidx.media3.common.ParserException;
import java.io.EOFException;
import java.util.ArrayList;
import p171.InterfaceC2622;
import p305.AbstractC3731;
import p305.C3732;

/* renamed from: androidx.leanback.widget.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0122 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f958;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f959;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f960;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public Object f961;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public long f962;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f963;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final Object f964;

    public C0122() {
        this.f964 = new int[255];
        this.f961 = new C3732(255);
    }

    public C0122(Context context) {
        this.f958 = 0;
        this.f959 = 1;
        this.f960 = 0;
        this.f964 = context;
        this.f963 = 112;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public void m628(boolean z) {
        this.f963 = ((z ? 1 : 0) & 1) | (this.f963 & (~1));
        if (this.f958 != 0) {
            throw new IllegalArgumentException("Editable actions cannot also be checked");
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean m629(InterfaceC2622 interfaceC2622, boolean z) {
        boolean z2;
        boolean z3;
        int[] iArr = (int[]) this.f964;
        this.f963 = 0;
        this.f962 = 0L;
        this.f958 = 0;
        this.f959 = 0;
        this.f960 = 0;
        C3732 c3732 = (C3732) this.f961;
        c3732.m7886(27);
        try {
            z2 = interfaceC2622.mo4572(c3732.f14534, 0, 27, z);
        } catch (EOFException e) {
            if (!z) {
                throw e;
            }
            z2 = false;
        }
        if (z2 && c3732.m7880() == 1332176723) {
            if (c3732.m7874() == 0) {
                this.f963 = c3732.m7874();
                this.f962 = c3732.m7899();
                c3732.m7876();
                c3732.m7876();
                c3732.m7876();
                int m7874 = c3732.m7874();
                this.f958 = m7874;
                this.f959 = m7874 + 27;
                c3732.m7886(m7874);
                try {
                    z3 = interfaceC2622.mo4572(c3732.f14534, 0, this.f958, z);
                } catch (EOFException e2) {
                    if (!z) {
                        throw e2;
                    }
                    z3 = false;
                }
                if (z3) {
                    for (int i = 0; i < this.f958; i++) {
                        int m78742 = c3732.m7874();
                        iArr[i] = m78742;
                        this.f960 += m78742;
                    }
                    return true;
                }
            } else if (!z) {
                throw ParserException.m739("unsupported bit stream revision");
            }
        }
        return false;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean m630(InterfaceC2622 interfaceC2622, long j) {
        boolean z;
        C3732 c3732 = (C3732) this.f961;
        AbstractC3731.m7849(interfaceC2622.getPosition() == interfaceC2622.mo4577());
        c3732.m7886(4);
        while (true) {
            if (j != -1 && interfaceC2622.getPosition() + 4 >= j) {
                break;
            }
            try {
                z = interfaceC2622.mo4572(c3732.f14534, 0, 4, true);
            } catch (EOFException unused) {
                z = false;
            }
            if (!z) {
                break;
            }
            c3732.m7896(0);
            if (c3732.m7880() == 1332176723) {
                interfaceC2622.mo4600();
                return true;
            }
            interfaceC2622.mo4595(1);
        }
        do {
            if (j != -1 && interfaceC2622.getPosition() >= j) {
                break;
            }
        } while (interfaceC2622.mo4580(1) != -1);
        return false;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m631(int i) {
        this.f960 = i;
        if (this.f958 != 0) {
            throw new IllegalArgumentException("Editable actions cannot also be in check sets");
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.leanback.widget.ʾᵎ] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C0095 m632() {
        ?? obj = new Object();
        obj.f880 = -1L;
        new ArrayList();
        obj.f880 = this.f962;
        obj.f871 = (String) this.f961;
        obj.f882 = null;
        obj.f873 = null;
        obj.f877 = null;
        obj.f879 = null;
        obj.f878 = this.f958;
        obj.f870 = 524289;
        obj.f872 = 524289;
        obj.f876 = 1;
        obj.f881 = this.f959;
        obj.f875 = this.f963;
        obj.f874 = this.f960;
        return obj;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public void m633(int i) {
        this.f961 = ((Context) this.f964).getString(i);
    }
}
