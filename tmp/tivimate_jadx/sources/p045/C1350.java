package p045;

import com.parse.ٴʼ;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import net.lingala.zip4j.exception.ZipException;
import p004.C0812;
import p261.C3406;
import p261.C3407;
import p261.C3411;
import p288.C3595;
import p332.AbstractC4197;
import p332.AbstractC4200;
import p384.C4603;
import p402.C4765;
import p402.C4766;
import p402.C4767;
import p402.C4770;
import ـˎ.ˈ;
import ᵢ.ﹳٴ;

/* renamed from: ʽˎ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1350 implements Closeable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C0812 f5197;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final File f5198;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final char[] f5199;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C3406 f5203;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final ٴʼ f5204 = new ٴʼ(19);

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final int f5201 = 4096;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final ArrayList f5202 = new ArrayList();

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final boolean f5200 = true;

    /* JADX WARN: Type inference failed for: r3v2, types: [ʻˆ.ﹳٴ, java.lang.Object] */
    public C1350(File file, char[] cArr) {
        if (file == null) {
            throw new IllegalArgumentException("input zip file parameter is null");
        }
        this.f5198 = file;
        this.f5199 = cArr;
        this.f5197 = new Object();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ArrayList arrayList = this.f5202;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((InputStream) obj).close();
        }
        arrayList.clear();
    }

    public final String toString() {
        return this.f5198.toString();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m4014(File file, C3411 c3411) {
        List singletonList = Collections.singletonList(file);
        if (singletonList == null || singletonList.size() == 0) {
            throw new IOException("input file List is null or empty");
        }
        m4017();
        if (this.f5203 == null) {
            throw new IOException("internal error: zip model is null");
        }
        if (this.f5198.exists() && this.f5203.f13354) {
            throw new IOException("Zip file already exists. Zip file format does not allow updating split/spanned files");
        }
        new C4765(this.f5203, this.f5199, this.f5204, new C4603(this.f5197)).ᴵˑ(new C4770(singletonList, c3411, new C3407(this.f5201, this.f5200)));
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final RandomAccessFile m4015() {
        File file = this.f5198;
        if (!file.getName().endsWith(".zip.001")) {
            return new RandomAccessFile(file, "r");
        }
        C3595 c3595 = new C3595(file, AbstractC4197.m8598(file));
        c3595.m7554(c3595.f14052.length - 1);
        return c3595;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m4016(String str) {
        ˈ r0 = new ˈ(23);
        if (!AbstractC4200.m8608(str)) {
            throw new IOException("output path is null or invalid");
        }
        File file = new File(str);
        if (file.exists()) {
            if (!file.isDirectory()) {
                throw new IOException("output directory is not valid");
            }
        } else if (!file.mkdirs()) {
            throw new IOException("Cannot create output directories");
        }
        if (this.f5203 == null) {
            m4017();
        }
        C3406 c3406 = this.f5203;
        if (c3406 == null) {
            throw new IOException("Internal error occurred when extracting zip file");
        }
        new C4767(c3406, this.f5199, r0, new C4603(this.f5197)).ᴵˑ(new C4766(str, new C3407(this.f5201, this.f5200)));
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m4017() {
        if (this.f5203 != null) {
            return;
        }
        File file = this.f5198;
        if (!file.exists()) {
            C3406 c3406 = new C3406();
            this.f5203 = c3406;
            c3406.f13353 = file;
            return;
        }
        if (!file.canRead()) {
            throw new IOException("no read access for the input zip file");
        }
        try {
            RandomAccessFile m4015 = m4015();
            try {
                C3406 c34062 = new ﹳٴ(18).ʻٴ(m4015, new C3407(this.f5201, this.f5200));
                this.f5203 = c34062;
                c34062.f13353 = file;
                m4015.close();
            } catch (Throwable th) {
                try {
                    m4015.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (ZipException e) {
            throw e;
        } catch (IOException e2) {
            throw new IOException(e2);
        }
    }
}
