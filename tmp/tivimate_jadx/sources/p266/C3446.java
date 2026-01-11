package p266;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;

/* renamed from: ـˊ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3446 implements InterfaceC3462 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Uri f13539;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC3462 f13540;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public long f13541;

    public C3446(InterfaceC3462 interfaceC3462) {
        interfaceC3462.getClass();
        this.f13540 = interfaceC3462;
        this.f13539 = Uri.EMPTY;
        Map map = Collections.EMPTY_MAP;
    }

    @Override // p266.InterfaceC3462
    public final void close() {
        this.f13540.close();
    }

    @Override // p055.InterfaceC1455
    public final int read(byte[] bArr, int i, int i2) {
        int read = this.f13540.read(bArr, i, i2);
        if (read != -1) {
            this.f13541 += read;
        }
        return read;
    }

    @Override // p266.InterfaceC3462
    /* renamed from: ʽʽ */
    public final long mo4684(C3456 c3456) {
        InterfaceC3462 interfaceC3462 = this.f13540;
        this.f13539 = c3456.f13577;
        Map map = Collections.EMPTY_MAP;
        try {
            return interfaceC3462.mo4684(c3456);
        } finally {
            Uri mo4685 = interfaceC3462.mo4685();
            if (mo4685 != null) {
                this.f13539 = mo4685;
            }
            interfaceC3462.mo5140();
        }
    }

    @Override // p266.InterfaceC3462
    /* renamed from: ˉʿ */
    public final void mo5139(InterfaceC3457 interfaceC3457) {
        interfaceC3457.getClass();
        this.f13540.mo5139(interfaceC3457);
    }

    @Override // p266.InterfaceC3462
    /* renamed from: יـ */
    public final Uri mo4685() {
        return this.f13540.mo4685();
    }

    @Override // p266.InterfaceC3462
    /* renamed from: ٴﹶ */
    public final Map mo5140() {
        return this.f13540.mo5140();
    }
}
