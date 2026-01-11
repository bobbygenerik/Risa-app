package p266;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import androidx.media3.datasource.ContentDataSource$ContentDataSourceException;
import androidx.media3.datasource.DataSourceException;
import j$.util.Objects;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
import p305.AbstractC3712;

/* renamed from: ـˊ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3447 extends AbstractC3458 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public FileInputStream f13542;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public Uri f13543;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public boolean f13544;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public AssetFileDescriptor f13545;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final ContentResolver f13546;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public long f13547;

    public C3447(Context context) {
        super(false);
        this.f13546 = context.getContentResolver();
    }

    @Override // p266.InterfaceC3462
    public final void close() {
        this.f13543 = null;
        try {
            try {
                FileInputStream fileInputStream = this.f13542;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.f13542 = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f13545;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                    } catch (IOException e) {
                        throw new DataSourceException(e, 2000);
                    }
                } finally {
                    this.f13545 = null;
                    if (this.f13544) {
                        this.f13544 = false;
                        m7365();
                    }
                }
            } catch (IOException e2) {
                throw new DataSourceException(e2, 2000);
            }
        } catch (Throwable th) {
            this.f13542 = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f13545;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.f13545 = null;
                    if (this.f13544) {
                        this.f13544 = false;
                        m7365();
                    }
                    throw th;
                } catch (IOException e3) {
                    throw new DataSourceException(e3, 2000);
                }
            } finally {
                this.f13545 = null;
                if (this.f13544) {
                    this.f13544 = false;
                    m7365();
                }
            }
        }
    }

    @Override // p055.InterfaceC1455
    public final int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f13547;
        if (j != 0) {
            if (j != -1) {
                try {
                    i2 = (int) Math.min(j, i2);
                } catch (IOException e) {
                    throw new DataSourceException(e, 2000);
                }
            }
            FileInputStream fileInputStream = this.f13542;
            String str = AbstractC3712.f14481;
            int read = fileInputStream.read(bArr, i, i2);
            if (read != -1) {
                long j2 = this.f13547;
                if (j2 != -1) {
                    this.f13547 = j2 - read;
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
        int i;
        AssetFileDescriptor openAssetFileDescriptor;
        try {
            try {
                Uri uri = c3456.f13577;
                long j = c3456.f13578;
                long j2 = c3456.f13573;
                Uri normalizeScheme = uri.normalizeScheme();
                this.f13543 = normalizeScheme;
                m7366();
                boolean equals = Objects.equals(normalizeScheme.getScheme(), "content");
                ContentResolver contentResolver = this.f13546;
                if (equals) {
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT", true);
                    openAssetFileDescriptor = contentResolver.openTypedAssetFileDescriptor(normalizeScheme, "*/*", bundle);
                } else {
                    openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(normalizeScheme, "r");
                }
                this.f13545 = openAssetFileDescriptor;
                if (openAssetFileDescriptor == null) {
                    i = 2000;
                    try {
                        throw new DataSourceException(new IOException("Could not open file descriptor for: " + normalizeScheme), 2000);
                    } catch (IOException e) {
                        e = e;
                        if (e instanceof FileNotFoundException) {
                            i = 2005;
                        }
                        throw new DataSourceException(e, i);
                    }
                }
                long length = openAssetFileDescriptor.getLength();
                FileInputStream fileInputStream = new FileInputStream(openAssetFileDescriptor.getFileDescriptor());
                this.f13542 = fileInputStream;
                if (length != -1 && j2 > length) {
                    throw new DataSourceException((Exception) null, 2008);
                }
                long startOffset = openAssetFileDescriptor.getStartOffset();
                long skip = fileInputStream.skip(startOffset + j2) - startOffset;
                if (skip != j2) {
                    throw new DataSourceException((Exception) null, 2008);
                }
                if (length == -1) {
                    FileChannel channel = fileInputStream.getChannel();
                    long size = channel.size();
                    if (size == 0) {
                        this.f13547 = -1L;
                    } else {
                        long position = size - channel.position();
                        this.f13547 = position;
                        if (position < 0) {
                            throw new DataSourceException((Exception) null, 2008);
                        }
                    }
                } else {
                    long j3 = length - skip;
                    this.f13547 = j3;
                    if (j3 < 0) {
                        throw new DataSourceException((Exception) null, 2008);
                    }
                }
                if (j != -1) {
                    long j4 = this.f13547;
                    this.f13547 = j4 == -1 ? j : Math.min(j4, j);
                }
                this.f13544 = true;
                m7367(c3456);
                return j != -1 ? j : this.f13547;
            } catch (IOException e2) {
                e = e2;
                i = 2000;
            }
        } catch (ContentDataSource$ContentDataSourceException e3) {
            throw e3;
        }
    }

    @Override // p266.InterfaceC3462
    /* renamed from: יـ */
    public final Uri mo4685() {
        return this.f13543;
    }
}
