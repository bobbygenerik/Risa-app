package p292;

import com.bumptech.glide.C0229;
import java.io.IOException;
import java.net.Socket;
import java.util.concurrent.TimeUnit;
import p048.C1376;
import p164.C2580;
import p164.InterfaceC2590;
import p164.InterfaceC2592;
import p208.C2937;
import p208.C2942;
import p208.InterfaceC2964;
import p248.C3296;
import p361.C4383;
import p361.C4390;

/* renamed from: ٴᵎ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3649 implements InterfaceC2964 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C3649 f14308 = new Object();

    @Override // p208.InterfaceC2964
    /* renamed from: ﹳٴ */
    public final C2942 mo4069(C1376 c1376) {
        Object c3296;
        C3632 c3632 = c1376.f5418;
        synchronized (c3632) {
            try {
                if (!c3632.f14220) {
                    throw new IllegalStateException("released");
                }
                if (c3632.f14218) {
                    throw new IllegalStateException("Check failed.");
                }
                if (c3632.f14214) {
                    throw new IllegalStateException("Check failed.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        InterfaceC3631 interfaceC3631 = c3632.f14215;
        C3648 mo7423 = interfaceC3631.mo7423();
        C2937 c2937 = c3632.f14208;
        mo7423.getClass();
        int i = c1376.f5415;
        Socket socket = mo7423.f14307;
        InterfaceC2592 interfaceC2592 = mo7423.f14290;
        InterfaceC2590 interfaceC2590 = mo7423.f14293;
        C4390 c4390 = mo7423.f14299;
        if (c4390 != null) {
            c3296 = new C4383(c2937, mo7423, c1376, c4390);
        } else {
            socket.setSoTimeout(i);
            C2580 mo5762 = interfaceC2592.mo5762();
            long j = i;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            mo5762.mo5765(j);
            interfaceC2590.mo5737().mo5765(c1376.f5416);
            c3296 = new C3296(c2937, mo7423, interfaceC2592, interfaceC2590);
        }
        C0229 c0229 = new C0229(c3632, interfaceC3631, c3296);
        c3632.f14219 = c0229;
        c3632.f14221 = c0229;
        synchronized (c3632) {
            c3632.f14214 = true;
            c3632.f14218 = true;
        }
        if (c3632.f14209) {
            throw new IOException("Canceled");
        }
        return C1376.m4064(c1376, 0, c0229, null, 61).m4065(c1376.f5414);
    }
}
