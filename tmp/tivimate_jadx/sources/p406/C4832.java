package p406;

import android.content.ContentProviderClient;
import android.content.res.TypedArray;
import android.drm.DrmManagerClient;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import p035.AbstractC1220;
import p111.C1955;
import p111.C1957;
import p125.C2131;
import p125.C2133;
import p140.AbstractC2376;
import p164.C2584;
import p197.AbstractC2901;
import p197.C2900;
import p207.AbstractC2934;
import p207.AbstractC2936;
import p239.C3208;
import p307.AbstractC3740;
import p348.AbstractC4280;
import p378.C4540;
import p450.C5362;
import ﹳˋ.ʼˎ;

/* renamed from: ﹳʿ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C4832 extends AbstractC4280 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ int f18130 = 0;

    /* renamed from: ˈ, reason: contains not printable characters */
    public byte[] f18131;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public Object f18132;

    public C4832() {
        super(0, "NegTokenInit");
        this.f18132 = new ArrayList();
    }

    public /* synthetic */ C4832(int i, String str) {
        super(i, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static /* synthetic */ void m9629(Closeable closeable, Throwable th) {
        if (th != null) {
            try {
                AbstractC3740.m7935(closeable);
                return;
            } catch (Throwable th2) {
                th.addSuppressed(th2);
                return;
            }
        }
        if (closeable instanceof AutoCloseable) {
            closeable.close();
            return;
        }
        if (closeable instanceof ExecutorService) {
            AbstractC2376.m5452((ExecutorService) closeable);
            return;
        }
        if (closeable instanceof TypedArray) {
            ((TypedArray) closeable).recycle();
            return;
        }
        if (closeable instanceof MediaMetadataRetriever) {
            ((MediaMetadataRetriever) closeable).release();
            return;
        }
        if (closeable instanceof MediaDrm) {
            ((MediaDrm) closeable).release();
        } else if (closeable instanceof DrmManagerClient) {
            ((DrmManagerClient) closeable).release();
        } else {
            if (!(closeable instanceof ContentProviderClient)) {
                throw new IllegalArgumentException();
            }
            ((ContentProviderClient) closeable).release();
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public void m9630(AbstractC2934 abstractC2934) {
        if (!(abstractC2934 instanceof C2133)) {
            throw new Exception("Expected the MechTypeList (SEQUENCE) contents, not: " + abstractC2934);
        }
        Iterator it = ((C2133) abstractC2934).iterator();
        while (it.hasNext()) {
            AbstractC2934 abstractC29342 = (AbstractC2934) it.next();
            if (!(abstractC29342 instanceof C1957)) {
                throw new Exception("Expected a MechType (OBJECT IDENTIFIER) as contents of the MechTypeList, not: " + abstractC29342);
            }
            ((ArrayList) this.f18132).add((C1957) abstractC29342);
        }
    }

    @Override // p348.AbstractC4280
    /* renamed from: ʽ */
    public void mo8658(C2131 c2131) {
        switch (this.f18130) {
            case 0:
                AbstractC2934 m5094 = c2131.m5094();
                AbstractC2936 abstractC2936 = c2131.f11101;
                if (m5094.toString().contains("not_defined_in_RFC4178@please_ignore")) {
                    return;
                }
                int i = abstractC2936.f11117;
                if (i == 0) {
                    m9630(c2131.m5094());
                    return;
                }
                if (i != 1) {
                    if (i == 2) {
                        m9632(c2131.m5094());
                        return;
                    } else {
                        if (i != 3) {
                            throw new Exception(AbstractC1220.m3782(new StringBuilder("Unknown Object Tag "), abstractC2936.f11117, " encountered."));
                        }
                        return;
                    }
                }
                return;
            default:
                AbstractC2936 abstractC29362 = c2131.f11101;
                int i2 = abstractC29362.f11117;
                if (i2 == 0) {
                    if (c2131.m5094() instanceof C1955) {
                        return;
                    }
                    throw new Exception("Expected the negResult (ENUMERATED) contents, not: " + ((C1957) this.f18132));
                }
                if (i2 == 1) {
                    AbstractC2934 m50942 = c2131.m5094();
                    if (m50942 instanceof C1957) {
                        this.f18132 = (C1957) m50942;
                        return;
                    } else {
                        throw new Exception("Expected the supportedMech (OBJECT IDENTIFIER) contents, not: " + m50942);
                    }
                }
                if (i2 == 2) {
                    AbstractC2934 m50943 = c2131.m5094();
                    if (m50943 instanceof C3208) {
                        byte[] bArr = ((C3208) m50943).f12258;
                        this.f18131 = Arrays.copyOf(bArr, bArr.length);
                        return;
                    } else {
                        throw new Exception("Expected the responseToken (OCTET_STRING) contents, not: " + m50943);
                    }
                }
                if (i2 != 3) {
                    throw new Exception(AbstractC1220.m3782(new StringBuilder("Unknown Object Tag "), abstractC29362.f11117, " encountered."));
                }
                AbstractC2934 m50944 = c2131.m5094();
                if (m50944 instanceof C3208) {
                    byte[] bArr2 = ((C3208) m50944).f12258;
                    Arrays.copyOf(bArr2, bArr2.length);
                    return;
                } else {
                    throw new Exception("Expected the responseToken (OCTET_STRING) contents, not: " + m50944);
                }
        }
    }

    @Override // p348.AbstractC4280
    /* renamed from: ˑﹳ */
    public void mo8660(AbstractC2901 abstractC2901, AbstractC2934 abstractC2934) {
        switch (this.f18130) {
            case 1:
                throw null;
            default:
                super.mo8660(abstractC2901, abstractC2934);
                return;
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [ﹳˋ.ʼˎ, ᵢᴵ.ﹳٴ] */
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public void m9631(byte[] bArr) {
        try {
            C5362 c5362 = new C5362((C4540) new ʼˎ(23), new C2584(2, new AbstractC2901(bArr, true, C2900.f10933)));
            try {
                m8661(c5362.m10758());
                m9629(c5362, null);
            } finally {
            }
        } catch (IOException e) {
            throw new Exception("Could not read NegTokenTarg from buffer", e);
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public void m9632(AbstractC2934 abstractC2934) {
        if (abstractC2934 instanceof C3208) {
            byte[] bArr = ((C3208) abstractC2934).f12258;
            this.f18131 = Arrays.copyOf(bArr, bArr.length);
        } else {
            throw new Exception("Expected the MechToken (OCTET_STRING) contents, not: " + abstractC2934);
        }
    }
}
