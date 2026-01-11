package p159;

import android.support.v4.media.session.ⁱˊ;
import p034.InterfaceC1195;
import p424.C5014;

/* renamed from: ˊˎ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2548 extends AbstractC2545 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C5014 f9655;

    public C2548(InterfaceC1195 interfaceC1195, String str) {
        super(interfaceC1195, str);
        this.f9655 = interfaceC1195.mo3720(str);
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.f9655.close();
        this.f9650 = true;
    }

    @Override // p417.InterfaceC4930
    public final byte[] getBlob(int i) {
        m5699();
        ⁱˊ.ʻٴ(21, "no row");
        throw null;
    }

    @Override // p417.InterfaceC4930
    public final int getColumnCount() {
        m5699();
        return 0;
    }

    @Override // p417.InterfaceC4930
    public final String getColumnName(int i) {
        m5699();
        ⁱˊ.ʻٴ(21, "no row");
        throw null;
    }

    @Override // p417.InterfaceC4930
    public final double getDouble(int i) {
        m5699();
        ⁱˊ.ʻٴ(21, "no row");
        throw null;
    }

    @Override // p417.InterfaceC4930
    public final long getLong(int i) {
        m5699();
        ⁱˊ.ʻٴ(21, "no row");
        throw null;
    }

    @Override // p417.InterfaceC4930
    public final boolean isNull(int i) {
        m5699();
        ⁱˊ.ʻٴ(21, "no row");
        throw null;
    }

    @Override // p417.InterfaceC4930
    public final void reset() {
    }

    @Override // p417.InterfaceC4930
    /* renamed from: ˑٴ */
    public final void mo3391(int i, String str) {
        m5699();
        this.f9655.mo3703(i, str);
    }

    @Override // p417.InterfaceC4930
    /* renamed from: ᵎᵔ */
    public final boolean mo3392() {
        m5699();
        this.f9655.f18758.execute();
        return false;
    }

    @Override // p417.InterfaceC4930
    /* renamed from: ᵔᵢ */
    public final void mo3393(int i, byte[] bArr) {
        m5699();
        this.f9655.mo3704(i, bArr);
    }

    @Override // p417.InterfaceC4930
    /* renamed from: ᵔﹳ */
    public final String mo3394(int i) {
        m5699();
        ⁱˊ.ʻٴ(21, "no row");
        throw null;
    }

    @Override // p417.InterfaceC4930
    /* renamed from: ⁱˊ */
    public final void mo3395(int i, double d) {
        m5699();
        this.f9655.mo3705(i, d);
    }

    @Override // p417.InterfaceC4930
    /* renamed from: ﹳٴ */
    public final void mo3396(int i) {
        m5699();
        this.f9655.mo3706(i);
    }

    @Override // p417.InterfaceC4930
    /* renamed from: ﾞᴵ */
    public final void mo3397(int i, long j) {
        m5699();
        this.f9655.mo3707(i, j);
    }
}
