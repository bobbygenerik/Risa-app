package p086;

import android.net.Uri;
import io.antmedia.rtmp_client.RtmpClient;
import p055.AbstractC1449;
import p266.AbstractC3458;
import p266.C3456;
import p305.AbstractC3712;

/* renamed from: ʿـ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1737 extends AbstractC3458 {

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final /* synthetic */ int f7087 = 0;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public Uri f7088;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public RtmpClient f7089;

    static {
        AbstractC1449.m4241("media3.datasource.rtmp");
    }

    public C1737() {
        super(true);
    }

    @Override // p266.InterfaceC3462
    public final void close() {
        if (this.f7088 != null) {
            this.f7088 = null;
            m7365();
        }
        RtmpClient rtmpClient = this.f7089;
        if (rtmpClient != null) {
            rtmpClient.m2733();
            this.f7089 = null;
        }
    }

    @Override // p055.InterfaceC1455
    public final int read(byte[] bArr, int i, int i2) {
        RtmpClient rtmpClient = this.f7089;
        String str = AbstractC3712.f14481;
        int m2731 = rtmpClient.m2731(bArr, i, i2);
        if (m2731 == -1) {
            return -1;
        }
        m7368(m2731);
        return m2731;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [io.antmedia.rtmp_client.RtmpClient, java.lang.Object] */
    @Override // p266.InterfaceC3462
    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final long mo4684(C3456 c3456) {
        m7366();
        ?? obj = new Object();
        obj.f3105 = 0L;
        this.f7089 = obj;
        obj.m2732(c3456.f13577.toString());
        this.f7088 = c3456.f13577;
        m7367(c3456);
        return -1L;
    }

    @Override // p266.InterfaceC3462
    /* renamed from: יـ, reason: contains not printable characters */
    public final Uri mo4685() {
        return this.f7088;
    }
}
