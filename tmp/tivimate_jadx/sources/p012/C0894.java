package p012;

import android.content.Context;
import android.os.Looper;
import androidx.media3.common.ParserException;
import androidx.media3.datasource.DataSourceException;
import androidx.media3.datasource.HttpDataSource$CleartextNotPermittedException;
import androidx.media3.datasource.HttpDataSource$InvalidResponseCodeException;
import androidx.media3.exoplayer.upstream.Loader$UnexpectedLoaderException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import p022.C1047;
import p027.C1090;
import p305.AbstractC3731;
import p305.C3721;
import p364.C4448;
import p366.C4472;
import p366.C4483;

/* renamed from: ʻᴵ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0894 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f3768;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f3769;

    public C0894() {
        this.f3769 = 2;
        this.f3768 = false;
    }

    public C0894(Context context, Looper looper, C3721 c3721, int i) {
        this.f3769 = i;
        switch (i) {
            case 4:
                new C4472(context.getApplicationContext());
                c3721.m7820(looper, null);
                return;
            default:
                new C4483(context.getApplicationContext());
                c3721.m7820(looper, null);
                return;
        }
    }

    public C0894(AbstractC0903 abstractC0903, C0886 c0886) {
        this.f3769 = 0;
        int i = c0886.f3752;
        ByteBuffer byteBuffer = c0886.f3751;
        AbstractC3731.m7849(i == 6 || i == 3);
        int min = Math.min(4, byteBuffer.remaining());
        byte[] bArr = new byte[min];
        byteBuffer.asReadOnlyBuffer().get(bArr);
        C0881 c0881 = new C0881(min, bArr);
        abstractC0903.getClass();
        if (c0881.m3112()) {
            this.f3768 = false;
            return;
        }
        int m3097 = c0881.m3097(2);
        if (!c0881.m3112()) {
            this.f3768 = true;
            return;
        }
        if (m3097 != 3 && m3097 != 0) {
            c0881.m3112();
        }
        c0881.m3102();
        throw new Exception();
    }

    public C0894(boolean z) {
        this.f3769 = 1;
        this.f3768 = z;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C1047 m3142(C4448 c4448, C1090 c1090) {
        IOException iOException = (IOException) c1090.f4252;
        if (!(iOException instanceof HttpDataSource$InvalidResponseCodeException)) {
            return null;
        }
        int i = ((HttpDataSource$InvalidResponseCodeException) iOException).f1141;
        if (i != 403 && i != 404 && i != 410 && i != 416 && i != 500 && i != 503) {
            return null;
        }
        if (c4448.m9003(1)) {
            return new C1047(1, 300000L);
        }
        if (c4448.m9003(2)) {
            return new C1047(2, 60000L);
        }
        return null;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public long m3143(C1090 c1090) {
        Throwable th = (IOException) c1090.f4252;
        if (((th instanceof HttpDataSource$InvalidResponseCodeException) && (this.f3768 || ((HttpDataSource$InvalidResponseCodeException) th).f1141 == 401)) || (th instanceof ParserException) || (th instanceof FileNotFoundException) || (th instanceof HttpDataSource$CleartextNotPermittedException) || (th instanceof Loader$UnexpectedLoaderException)) {
            return -9223372036854775807L;
        }
        int i = DataSourceException.f1138;
        while (th != null) {
            if ((th instanceof DataSourceException) && ((DataSourceException) th).f1139 == 2008) {
                return -9223372036854775807L;
            }
            th = th.getCause();
        }
        return Math.min((c1090.f4254 - 1) * 1000, 5000);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public void m3144(boolean z) {
        switch (this.f3769) {
            case 3:
                if (this.f3768 == z) {
                    return;
                }
                this.f3768 = z;
                return;
            default:
                if (this.f3768 == z) {
                    return;
                }
                this.f3768 = z;
                return;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int m3145(int i) {
        return i == 7 ? 6 : 3;
    }
}
