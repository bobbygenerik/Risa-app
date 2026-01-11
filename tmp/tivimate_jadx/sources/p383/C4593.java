package p383;

import android.net.Uri;
import android.text.TextUtils;
import java.net.URL;
import java.security.MessageDigest;
import p031.InterfaceC1141;
import p087.AbstractC1751;

/* renamed from: ⁱʼ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4593 implements InterfaceC1141 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final URL f17103;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f17104;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public String f17105;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public volatile byte[] f17106;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f17107;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC4595 f17108;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public URL f17109;

    public C4593(String str) {
        C4591 c4591 = InterfaceC4595.f17112;
        this.f17103 = null;
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Must not be null or empty");
        }
        this.f17104 = str;
        AbstractC1751.m4711(c4591, "Argument must not be null");
        this.f17108 = c4591;
    }

    public C4593(URL url) {
        C4591 c4591 = InterfaceC4595.f17112;
        AbstractC1751.m4711(url, "Argument must not be null");
        this.f17103 = url;
        this.f17104 = null;
        AbstractC1751.m4711(c4591, "Argument must not be null");
        this.f17108 = c4591;
    }

    @Override // p031.InterfaceC1141
    public final boolean equals(Object obj) {
        if (obj instanceof C4593) {
            C4593 c4593 = (C4593) obj;
            if (m9137().equals(c4593.m9137()) && this.f17108.equals(c4593.f17108)) {
                return true;
            }
        }
        return false;
    }

    @Override // p031.InterfaceC1141
    public final int hashCode() {
        if (this.f17107 == 0) {
            int hashCode = m9137().hashCode();
            this.f17107 = hashCode;
            this.f17107 = this.f17108.hashCode() + (hashCode * 31);
        }
        return this.f17107;
    }

    public final String toString() {
        return m9137();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String m9137() {
        String str = this.f17104;
        if (str != null) {
            return str;
        }
        URL url = this.f17103;
        AbstractC1751.m4711(url, "Argument must not be null");
        return url.toString();
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String m9138() {
        if (TextUtils.isEmpty(this.f17105)) {
            String str = this.f17104;
            if (TextUtils.isEmpty(str)) {
                URL url = this.f17103;
                AbstractC1751.m4711(url, "Argument must not be null");
                str = url.toString();
            }
            this.f17105 = Uri.encode(str, "@#&=*+-_.,:!?()/~'%;$");
        }
        return this.f17105;
    }

    @Override // p031.InterfaceC1141
    /* renamed from: ⁱˊ */
    public final void mo3574(MessageDigest messageDigest) {
        if (this.f17106 == null) {
            this.f17106 = m9137().getBytes(InterfaceC1141.f4403);
        }
        messageDigest.update(this.f17106);
    }
}
