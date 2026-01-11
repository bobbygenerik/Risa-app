package p023;

import android.support.v4.media.session.ⁱˊ;
import com.bumptech.glide.ˈ;
import p417.InterfaceC4930;

/* renamed from: ʼˋ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1053 implements InterfaceC4930 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C1064 f4142;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC4930 f4143;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final long f4144 = ˈ.ʼᐧ();

    public C1053(C1064 c1064, InterfaceC4930 interfaceC4930) {
        this.f4142 = c1064;
        this.f4143 = interfaceC4930;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        if (this.f4142.f4199.get()) {
            ⁱˊ.ʻٴ(21, "Statement is recycled");
            throw null;
        }
        if (this.f4144 == ˈ.ʼᐧ()) {
            this.f4143.close();
        } else {
            ⁱˊ.ʻٴ(21, "Attempted to use statement on a different thread");
            throw null;
        }
    }

    @Override // p417.InterfaceC4930
    public final byte[] getBlob(int i) {
        if (this.f4142.f4199.get()) {
            ⁱˊ.ʻٴ(21, "Statement is recycled");
            throw null;
        }
        if (this.f4144 == ˈ.ʼᐧ()) {
            return this.f4143.getBlob(i);
        }
        ⁱˊ.ʻٴ(21, "Attempted to use statement on a different thread");
        throw null;
    }

    @Override // p417.InterfaceC4930
    public final int getColumnCount() {
        if (this.f4142.f4199.get()) {
            ⁱˊ.ʻٴ(21, "Statement is recycled");
            throw null;
        }
        if (this.f4144 == ˈ.ʼᐧ()) {
            return this.f4143.getColumnCount();
        }
        ⁱˊ.ʻٴ(21, "Attempted to use statement on a different thread");
        throw null;
    }

    @Override // p417.InterfaceC4930
    public final String getColumnName(int i) {
        if (this.f4142.f4199.get()) {
            ⁱˊ.ʻٴ(21, "Statement is recycled");
            throw null;
        }
        if (this.f4144 == ˈ.ʼᐧ()) {
            return this.f4143.getColumnName(i);
        }
        ⁱˊ.ʻٴ(21, "Attempted to use statement on a different thread");
        throw null;
    }

    @Override // p417.InterfaceC4930
    public final double getDouble(int i) {
        if (this.f4142.f4199.get()) {
            ⁱˊ.ʻٴ(21, "Statement is recycled");
            throw null;
        }
        if (this.f4144 == ˈ.ʼᐧ()) {
            return this.f4143.getDouble(i);
        }
        ⁱˊ.ʻٴ(21, "Attempted to use statement on a different thread");
        throw null;
    }

    @Override // p417.InterfaceC4930
    public final long getLong(int i) {
        if (this.f4142.f4199.get()) {
            ⁱˊ.ʻٴ(21, "Statement is recycled");
            throw null;
        }
        if (this.f4144 == ˈ.ʼᐧ()) {
            return this.f4143.getLong(i);
        }
        ⁱˊ.ʻٴ(21, "Attempted to use statement on a different thread");
        throw null;
    }

    @Override // p417.InterfaceC4930
    public final boolean isNull(int i) {
        if (this.f4142.f4199.get()) {
            ⁱˊ.ʻٴ(21, "Statement is recycled");
            throw null;
        }
        if (this.f4144 == ˈ.ʼᐧ()) {
            return this.f4143.isNull(i);
        }
        ⁱˊ.ʻٴ(21, "Attempted to use statement on a different thread");
        throw null;
    }

    @Override // p417.InterfaceC4930
    public final void reset() {
        if (this.f4142.f4199.get()) {
            ⁱˊ.ʻٴ(21, "Statement is recycled");
            throw null;
        }
        if (this.f4144 == ˈ.ʼᐧ()) {
            this.f4143.reset();
        } else {
            ⁱˊ.ʻٴ(21, "Attempted to use statement on a different thread");
            throw null;
        }
    }

    @Override // p417.InterfaceC4930
    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final boolean mo3390() {
        return getLong(0) != 0;
    }

    @Override // p417.InterfaceC4930
    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final void mo3391(int i, String str) {
        if (this.f4142.f4199.get()) {
            ⁱˊ.ʻٴ(21, "Statement is recycled");
            throw null;
        }
        if (this.f4144 == ˈ.ʼᐧ()) {
            this.f4143.mo3391(i, str);
        } else {
            ⁱˊ.ʻٴ(21, "Attempted to use statement on a different thread");
            throw null;
        }
    }

    @Override // p417.InterfaceC4930
    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public final boolean mo3392() {
        if (this.f4142.f4199.get()) {
            ⁱˊ.ʻٴ(21, "Statement is recycled");
            throw null;
        }
        if (this.f4144 == ˈ.ʼᐧ()) {
            return this.f4143.mo3392();
        }
        ⁱˊ.ʻٴ(21, "Attempted to use statement on a different thread");
        throw null;
    }

    @Override // p417.InterfaceC4930
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void mo3393(int i, byte[] bArr) {
        if (this.f4142.f4199.get()) {
            ⁱˊ.ʻٴ(21, "Statement is recycled");
            throw null;
        }
        if (this.f4144 == ˈ.ʼᐧ()) {
            this.f4143.mo3393(i, bArr);
        } else {
            ⁱˊ.ʻٴ(21, "Attempted to use statement on a different thread");
            throw null;
        }
    }

    @Override // p417.InterfaceC4930
    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final String mo3394(int i) {
        if (this.f4142.f4199.get()) {
            ⁱˊ.ʻٴ(21, "Statement is recycled");
            throw null;
        }
        if (this.f4144 == ˈ.ʼᐧ()) {
            return this.f4143.mo3394(i);
        }
        ⁱˊ.ʻٴ(21, "Attempted to use statement on a different thread");
        throw null;
    }

    @Override // p417.InterfaceC4930
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo3395(int i, double d) {
        if (this.f4142.f4199.get()) {
            ⁱˊ.ʻٴ(21, "Statement is recycled");
            throw null;
        }
        if (this.f4144 == ˈ.ʼᐧ()) {
            this.f4143.mo3395(i, d);
        } else {
            ⁱˊ.ʻٴ(21, "Attempted to use statement on a different thread");
            throw null;
        }
    }

    @Override // p417.InterfaceC4930
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo3396(int i) {
        if (this.f4142.f4199.get()) {
            ⁱˊ.ʻٴ(21, "Statement is recycled");
            throw null;
        }
        if (this.f4144 == ˈ.ʼᐧ()) {
            this.f4143.mo3396(i);
        } else {
            ⁱˊ.ʻٴ(21, "Attempted to use statement on a different thread");
            throw null;
        }
    }

    @Override // p417.InterfaceC4930
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void mo3397(int i, long j) {
        if (this.f4142.f4199.get()) {
            ⁱˊ.ʻٴ(21, "Statement is recycled");
            throw null;
        }
        if (this.f4144 == ˈ.ʼᐧ()) {
            this.f4143.mo3397(i, j);
        } else {
            ⁱˊ.ʻٴ(21, "Attempted to use statement on a different thread");
            throw null;
        }
    }
}
