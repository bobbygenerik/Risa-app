package p266;

import android.net.Uri;
import android.util.Base64;
import androidx.media3.common.ParserException;
import androidx.media3.datasource.DataSourceException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import p035.AbstractC1220;
import p305.AbstractC3712;
import p305.AbstractC3731;

/* renamed from: ـˊ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3449 extends AbstractC3458 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public int f13549;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public byte[] f13550;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int f13551;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public C3456 f13552;

    @Override // p266.InterfaceC3462
    public final void close() {
        if (this.f13550 != null) {
            this.f13550 = null;
            m7365();
        }
        this.f13552 = null;
    }

    @Override // p055.InterfaceC1455
    public final int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.f13549;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        byte[] bArr2 = this.f13550;
        String str = AbstractC3712.f14481;
        System.arraycopy(bArr2, this.f13551, bArr, i, min);
        this.f13551 += min;
        this.f13549 -= min;
        m7368(min);
        return min;
    }

    @Override // p266.InterfaceC3462
    /* renamed from: ʽʽ */
    public final long mo4684(C3456 c3456) {
        m7366();
        this.f13552 = c3456;
        Uri uri = c3456.f13577;
        long j = c3456.f13578;
        Uri normalizeScheme = uri.normalizeScheme();
        String scheme = normalizeScheme.getScheme();
        AbstractC3731.m7843("Unsupported scheme: " + scheme, "data".equals(scheme));
        String schemeSpecificPart = normalizeScheme.getSchemeSpecificPart();
        String str = AbstractC3712.f14481;
        String[] split = schemeSpecificPart.split(",", -1);
        if (split.length != 2) {
            throw new ParserException("Unexpected URI format: " + normalizeScheme, null, true, 0);
        }
        String str2 = split[1];
        if (split[0].contains(";base64")) {
            try {
                this.f13550 = Base64.decode(str2, 0);
            } catch (IllegalArgumentException e) {
                throw new ParserException(AbstractC1220.m3771("Error while parsing Base64 encoded string: ", str2), e, true, 0);
            }
        } else {
            this.f13550 = URLDecoder.decode(str2, StandardCharsets.US_ASCII.name()).getBytes(StandardCharsets.UTF_8);
        }
        long j2 = c3456.f13573;
        byte[] bArr = this.f13550;
        if (j2 > bArr.length) {
            this.f13550 = null;
            throw new DataSourceException(2008);
        }
        int i = (int) j2;
        this.f13551 = i;
        int length = bArr.length - i;
        this.f13549 = length;
        if (j != -1) {
            this.f13549 = (int) Math.min(length, j);
        }
        m7367(c3456);
        return j != -1 ? j : this.f13549;
    }

    @Override // p266.InterfaceC3462
    /* renamed from: יـ */
    public final Uri mo4685() {
        C3456 c3456 = this.f13552;
        if (c3456 != null) {
            return c3456.f13577;
        }
        return null;
    }
}
