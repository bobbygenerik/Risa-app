package p016;

import android.os.Build;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.net.ssl.SSLSocket;
import p152.AbstractC2444;
import p271.AbstractC3480;
import p271.C3478;
import p435.AbstractC5154;
import ˋⁱ.ﾞᴵ;
import ـˎ.ˈ;

/* renamed from: ʼ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0935 implements InterfaceC0937 {

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final ˈ f3855 = new ˈ(4);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Method f3856;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Method f3857;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Method f3858;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Method f3859;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Class f3860;

    public C0935(Class cls) {
        this.f3860 = cls;
        this.f3859 = cls.getDeclaredMethod("setUseSessionTickets", Boolean.TYPE);
        this.f3856 = cls.getMethod("setHostname", String.class);
        this.f3857 = cls.getMethod("getAlpnSelectedProtocol", null);
        this.f3858 = cls.getMethod("setAlpnProtocols", byte[].class);
    }

    @Override // p016.InterfaceC0937
    /* renamed from: ʽ */
    public final boolean mo3199() {
        boolean z = C3478.f13654;
        return C3478.f13654;
    }

    @Override // p016.InterfaceC0937
    /* renamed from: ˈ */
    public final void mo3200(SSLSocket sSLSocket, String str, List list) {
        if (this.f3860.isInstance(sSLSocket)) {
            try {
                this.f3859.invoke(sSLSocket, Boolean.TRUE);
                if (str != null && Build.VERSION.SDK_INT <= 23) {
                    this.f3856.invoke(sSLSocket, str);
                }
                Method method = this.f3858;
                AbstractC3480 abstractC3480 = AbstractC3480.f13658;
                method.invoke(sSLSocket, ﾞᴵ.ʽﹳ(list));
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (InvocationTargetException e2) {
                throw new AssertionError(e2);
            }
        }
    }

    @Override // p016.InterfaceC0937
    /* renamed from: ⁱˊ */
    public final boolean mo3202(SSLSocket sSLSocket) {
        return this.f3860.isInstance(sSLSocket);
    }

    @Override // p016.InterfaceC0937
    /* renamed from: ﹳٴ */
    public final String mo3203(SSLSocket sSLSocket) {
        if (this.f3860.isInstance(sSLSocket)) {
            try {
                byte[] bArr = (byte[]) this.f3857.invoke(sSLSocket, null);
                if (bArr != null) {
                    return new String(bArr, AbstractC5154.f19435);
                }
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (InvocationTargetException e2) {
                Throwable cause = e2.getCause();
                if (!(cause instanceof NullPointerException) || !AbstractC2444.m5562(((NullPointerException) cause).getMessage(), "ssl == null")) {
                    throw new AssertionError(e2);
                }
            }
        }
        return null;
    }
}
