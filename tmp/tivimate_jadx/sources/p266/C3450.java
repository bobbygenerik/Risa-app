package p266;

import android.net.Uri;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.text.TextUtils;
import androidx.media3.datasource.DataSourceException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import p305.AbstractC3712;

/* renamed from: ـˊ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3450 extends AbstractC3458 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public boolean f13553;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public Uri f13554;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public long f13555;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public RandomAccessFile f13556;

    @Override // p266.InterfaceC3462
    public final void close() {
        this.f13554 = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.f13556;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
            } catch (IOException e) {
                throw new DataSourceException(e, 2000);
            }
        } finally {
            this.f13556 = null;
            if (this.f13553) {
                this.f13553 = false;
                m7365();
            }
        }
    }

    @Override // p055.InterfaceC1455
    public final int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f13555;
        if (j == 0) {
            return -1;
        }
        try {
            RandomAccessFile randomAccessFile = this.f13556;
            String str = AbstractC3712.f14481;
            int read = randomAccessFile.read(bArr, i, (int) Math.min(j, i2));
            if (read > 0) {
                this.f13555 -= read;
                m7368(read);
            }
            return read;
        } catch (IOException e) {
            throw new DataSourceException(e, 2000);
        }
    }

    @Override // p266.InterfaceC3462
    /* renamed from: ʽʽ */
    public final long mo4684(C3456 c3456) {
        Uri uri = c3456.f13577;
        long j = c3456.f13573;
        this.f13554 = uri;
        m7366();
        try {
            String path = uri.getPath();
            path.getClass();
            RandomAccessFile randomAccessFile = new RandomAccessFile(path, "r");
            this.f13556 = randomAccessFile;
            try {
                randomAccessFile.seek(j);
                long j2 = c3456.f13578;
                if (j2 == -1) {
                    j2 = this.f13556.length() - j;
                }
                this.f13555 = j2;
                if (j2 < 0) {
                    throw new DataSourceException(null, null, 2008);
                }
                this.f13553 = true;
                m7367(c3456);
                return this.f13555;
            } catch (IOException e) {
                throw new DataSourceException(e, 2000);
            }
        } catch (FileNotFoundException e2) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new DataSourceException(e2, ((e2.getCause() instanceof ErrnoException) && ((ErrnoException) e2.getCause()).errno == OsConstants.EACCES) ? 2006 : 2005);
            }
            throw new DataSourceException("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=" + uri.getPath() + ",query=" + uri.getQuery() + ",fragment=" + uri.getFragment(), e2, 1004);
        } catch (SecurityException e3) {
            throw new DataSourceException(e3, 2006);
        } catch (RuntimeException e4) {
            throw new DataSourceException(e4, 2000);
        }
    }

    @Override // p266.InterfaceC3462
    /* renamed from: יـ */
    public final Uri mo4685() {
        return this.f13554;
    }
}
