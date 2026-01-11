package p266;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.datasource.DataSourceException;
import androidx.media3.datasource.RawResourceDataSource$RawResourceDataSourceException;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.List;
import p035.AbstractC1220;
import p305.AbstractC3712;

/* renamed from: ـˊ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3451 extends AbstractC3458 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public FileInputStream f13557;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public C3456 f13558;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public boolean f13559;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public AssetFileDescriptor f13560;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final Context f13561;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public long f13562;

    public C3451(Context context) {
        super(false);
        this.f13561 = context.getApplicationContext();
    }

    @Deprecated
    public static Uri buildRawResourceUri(int i) {
        return Uri.parse("rawresource:///" + i);
    }

    @Override // p266.InterfaceC3462
    public final void close() {
        this.f13558 = null;
        try {
            try {
                FileInputStream fileInputStream = this.f13557;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.f13557 = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f13560;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                    } catch (IOException e) {
                        throw new DataSourceException(null, e, 2000);
                    }
                } finally {
                    this.f13560 = null;
                    if (this.f13559) {
                        this.f13559 = false;
                        m7365();
                    }
                }
            } catch (IOException e2) {
                throw new DataSourceException(null, e2, 2000);
            }
        } catch (Throwable th) {
            this.f13557 = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f13560;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.f13560 = null;
                    if (this.f13559) {
                        this.f13559 = false;
                        m7365();
                    }
                    throw th;
                } catch (IOException e3) {
                    throw new DataSourceException(null, e3, 2000);
                }
            } finally {
                this.f13560 = null;
                if (this.f13559) {
                    this.f13559 = false;
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
        long j = this.f13562;
        if (j != 0) {
            if (j != -1) {
                try {
                    i2 = (int) Math.min(j, i2);
                } catch (IOException e) {
                    throw new DataSourceException(null, e, 2000);
                }
            }
            FileInputStream fileInputStream = this.f13557;
            String str = AbstractC3712.f14481;
            int read = fileInputStream.read(bArr, i, i2);
            if (read != -1) {
                long j2 = this.f13562;
                if (j2 != -1) {
                    this.f13562 = j2 - read;
                }
                m7368(read);
                return read;
            }
            if (this.f13562 != -1) {
                throw new DataSourceException("End of stream reached having not read sufficient data.", new EOFException(), 2000);
            }
        }
        return -1;
    }

    @Override // p266.InterfaceC3462
    /* renamed from: ʽʽ */
    public final long mo4684(C3456 c3456) {
        Resources resourcesForApplication;
        int parseInt;
        int i;
        Resources resources;
        this.f13558 = c3456;
        m7366();
        Uri uri = c3456.f13577;
        long j = c3456.f13578;
        long j2 = c3456.f13573;
        Uri normalizeScheme = uri.normalizeScheme();
        boolean equals = TextUtils.equals("rawresource", normalizeScheme.getScheme());
        Context context = this.f13561;
        if (equals) {
            resources = context.getResources();
            List<String> pathSegments = normalizeScheme.getPathSegments();
            if (pathSegments.size() != 1) {
                throw new DataSourceException("rawresource:// URI must have exactly one path element, found " + pathSegments.size(), null, 2000);
            }
            try {
                i = Integer.parseInt(pathSegments.get(0));
            } catch (NumberFormatException unused) {
                throw new DataSourceException("Resource identifier must be an integer.", null, 1004);
            }
        } else {
            if (!TextUtils.equals("android.resource", normalizeScheme.getScheme())) {
                throw new DataSourceException("Unsupported URI scheme (" + normalizeScheme.getScheme() + "). Only android.resource is supported.", null, 1004);
            }
            String path = normalizeScheme.getPath();
            path.getClass();
            if (path.startsWith("/")) {
                path = path.substring(1);
            }
            String packageName = TextUtils.isEmpty(normalizeScheme.getHost()) ? context.getPackageName() : normalizeScheme.getHost();
            if (packageName.equals(context.getPackageName())) {
                resourcesForApplication = context.getResources();
            } else {
                try {
                    resourcesForApplication = context.getPackageManager().getResourcesForApplication(packageName);
                } catch (PackageManager.NameNotFoundException e) {
                    throw new DataSourceException("Package in android.resource:// URI not found. Check http://g.co/dev/packagevisibility.", e, 2005);
                }
            }
            if (path.matches("\\d+")) {
                try {
                    parseInt = Integer.parseInt(path);
                } catch (NumberFormatException unused2) {
                    throw new DataSourceException("Resource identifier must be an integer.", null, 1004);
                }
            } else {
                parseInt = resourcesForApplication.getIdentifier(AbstractC1220.m3795(packageName, ":", path), "raw", null);
                if (parseInt == 0) {
                    throw new DataSourceException("Resource not found.", null, 2005);
                }
            }
            i = parseInt;
            resources = resourcesForApplication;
        }
        try {
            AssetFileDescriptor openRawResourceFd = resources.openRawResourceFd(i);
            if (openRawResourceFd == null) {
                throw new DataSourceException("Resource is compressed: " + normalizeScheme, null, 2000);
            }
            this.f13560 = openRawResourceFd;
            long length = openRawResourceFd.getLength();
            FileInputStream fileInputStream = new FileInputStream(this.f13560.getFileDescriptor());
            this.f13557 = fileInputStream;
            try {
                if (length != -1 && j2 > length) {
                    throw new DataSourceException(null, null, 2008);
                }
                long startOffset = this.f13560.getStartOffset();
                long skip = fileInputStream.skip(startOffset + j2) - startOffset;
                if (skip != j2) {
                    throw new DataSourceException(null, null, 2008);
                }
                if (length == -1) {
                    FileChannel channel = fileInputStream.getChannel();
                    if (channel.size() == 0) {
                        this.f13562 = -1L;
                    } else {
                        long size = channel.size() - channel.position();
                        this.f13562 = size;
                        if (size < 0) {
                            throw new DataSourceException(null, null, 2008);
                        }
                    }
                } else {
                    long j3 = length - skip;
                    this.f13562 = j3;
                    if (j3 < 0) {
                        throw new DataSourceException(2008);
                    }
                }
                if (j != -1) {
                    long j4 = this.f13562;
                    this.f13562 = j4 == -1 ? j : Math.min(j4, j);
                }
                this.f13559 = true;
                m7367(c3456);
                return j != -1 ? j : this.f13562;
            } catch (RawResourceDataSource$RawResourceDataSourceException e2) {
                throw e2;
            } catch (IOException e3) {
                throw new DataSourceException(null, e3, 2000);
            }
        } catch (Resources.NotFoundException e4) {
            throw new DataSourceException(null, e4, 2005);
        }
    }

    @Override // p266.InterfaceC3462
    /* renamed from: יـ */
    public final Uri mo4685() {
        C3456 c3456 = this.f13558;
        if (c3456 != null) {
            return c3456.f13577;
        }
        return null;
    }
}
