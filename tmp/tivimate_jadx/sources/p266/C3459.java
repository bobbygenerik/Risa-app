package p266;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import androidx.media3.datasource.AssetDataSource$AssetDataSourceException;
import androidx.media3.datasource.DataSourceException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import p305.AbstractC3712;

/* renamed from: ـˊ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3459 extends AbstractC3458 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public long f13583;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public Uri f13584;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public InputStream f13585;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final AssetManager f13586;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public boolean f13587;

    public C3459(Context context) {
        super(false);
        this.f13586 = context.getAssets();
    }

    @Override // p266.InterfaceC3462
    public final void close() {
        this.f13584 = null;
        try {
            try {
                InputStream inputStream = this.f13585;
                if (inputStream != null) {
                    inputStream.close();
                }
            } catch (IOException e) {
                throw new DataSourceException(e, 2000);
            }
        } finally {
            this.f13585 = null;
            if (this.f13587) {
                this.f13587 = false;
                m7365();
            }
        }
    }

    @Override // p055.InterfaceC1455
    public final int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f13583;
        if (j != 0) {
            if (j != -1) {
                try {
                    i2 = (int) Math.min(j, i2);
                } catch (IOException e) {
                    throw new DataSourceException(e, 2000);
                }
            }
            InputStream inputStream = this.f13585;
            String str = AbstractC3712.f14481;
            int read = inputStream.read(bArr, i, i2);
            if (read != -1) {
                long j2 = this.f13583;
                if (j2 != -1) {
                    this.f13583 = j2 - read;
                }
                m7368(read);
                return read;
            }
        }
        return -1;
    }

    @Override // p266.InterfaceC3462
    /* renamed from: ʽʽ */
    public final long mo4684(C3456 c3456) {
        try {
            Uri uri = c3456.f13577;
            long j = c3456.f13573;
            this.f13584 = uri;
            String path = uri.getPath();
            path.getClass();
            if (path.startsWith("/android_asset/")) {
                path = path.substring(15);
            } else if (path.startsWith("/")) {
                path = path.substring(1);
            }
            m7366();
            InputStream open = this.f13586.open(path, 1);
            this.f13585 = open;
            if (open.skip(j) < j) {
                throw new DataSourceException((Exception) null, 2008);
            }
            long j2 = c3456.f13578;
            if (j2 != -1) {
                this.f13583 = j2;
            } else {
                long available = this.f13585.available();
                this.f13583 = available;
                if (available == 2147483647L) {
                    this.f13583 = -1L;
                }
            }
            this.f13587 = true;
            m7367(c3456);
            return this.f13583;
        } catch (AssetDataSource$AssetDataSourceException e) {
            throw e;
        } catch (IOException e2) {
            throw new DataSourceException(e2, e2 instanceof FileNotFoundException ? 2005 : 2000);
        }
    }

    @Override // p266.InterfaceC3462
    /* renamed from: יـ */
    public final Uri mo4685() {
        return this.f13584;
    }
}
