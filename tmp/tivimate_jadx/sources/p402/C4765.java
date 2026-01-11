package p402;

import com.parse.ٴʼ;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.zip.CRC32;
import p004.C0812;
import p010.AbstractC0844;
import p035.AbstractC1220;
import p163.C2563;
import p163.C2565;
import p261.C3405;
import p261.C3406;
import p261.C3407;
import p261.C3411;
import p332.AbstractC4197;
import p332.AbstractC4200;
import p384.C4603;
import ʽٴ.ˈ;
import ʽⁱ.ᵎﹶ;
import ᵢ.ﹳٴ;

/* renamed from: ﹳʻ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4765 extends ᵎﹶ {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final char[] f17998;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final ٴʼ f17999;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C3406 f18000;

    public C4765(C3406 c3406, char[] cArr, ٴʼ r3, C4603 c4603) {
        super(c4603);
        this.f18000 = c3406;
        this.f17998 = cArr;
        this.f17999 = r3;
    }

    /* renamed from: ʽˑ, reason: contains not printable characters */
    public static C3411 m9534(C3411 c3411, File file, C0812 c0812) {
        C3411 c34112 = new C3411(c3411);
        if (file.isDirectory()) {
            c34112.f13393 = 0L;
        } else {
            c34112.f13393 = file.length();
        }
        if (c3411.f13389 <= 0) {
            long lastModified = file.lastModified();
            if (lastModified < 0) {
                c34112.f13389 = 0L;
            } else {
                c34112.f13389 = lastModified;
            }
        }
        c34112.f13399 = false;
        if (!AbstractC4200.m8608(c3411.f13387)) {
            c34112.f13387 = AbstractC4197.m8601(file, c3411);
        }
        if (file.isDirectory()) {
            c34112.f13398 = 1;
            c34112.f13390 = 1;
            c34112.f13388 = false;
            return c34112;
        }
        if (c34112.f13388 && c34112.f13390 == 2) {
            c0812.getClass();
            if (!file.exists() || !file.canRead()) {
                throw new IOException("input file is null or does not exist or cannot read. Cannot calculate CRC for the file");
            }
            byte[] bArr = new byte[16384];
            CRC32 crc32 = new CRC32();
            FileInputStream fileInputStream = new FileInputStream(file);
            while (true) {
                try {
                    int read = fileInputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    crc32.update(bArr, 0, read);
                    c0812.m2952(read);
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            long value = crc32.getValue();
            fileInputStream.close();
            c34112.f13396 = value;
        }
        if (file.length() == 0) {
            c34112.f13398 = 1;
        }
        return c34112;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.OutputStream, ˊٴ.ٴﹶ] */
    /* JADX WARN: Type inference failed for: r2v0, types: [ᵎˉ.ⁱˊ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.io.OutputStream, ˊٴ.ˈ] */
    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public final C2563 m9535(C2565 c2565, C3407 c3407) {
        C3406 c3406 = this.f18000;
        if (c3406.f13353.exists()) {
            c2565.f9749.seek(c3406.f13358 ? c3406.f13357.f13329 : c3406.f13350.f13335);
        }
        ?? outputStream = new OutputStream();
        outputStream.f9741 = new Object();
        outputStream.f9738 = new ٴʼ(19);
        outputStream.f9745 = new CRC32();
        ﹳٴ r2 = new ﹳٴ(17);
        outputStream.f9740 = r2;
        outputStream.f9744 = 0L;
        outputStream.f9747 = true;
        if (c3407.f13360 < 512) {
            throw new IllegalArgumentException("Buffer size cannot be less than 512 bytes");
        }
        ?? outputStream2 = new OutputStream();
        outputStream2.f9731 = 0L;
        outputStream2.f9730 = c2565;
        outputStream.f9735 = outputStream2;
        outputStream.f9742 = this.f17998;
        outputStream.f9746 = c3407;
        if (outputStream2.m5725()) {
            c3406.f13354 = true;
            c3406.f13355 = outputStream2.m5725() ? c2565.f9752 : 0L;
        }
        outputStream.f9734 = c3406;
        outputStream.f9736 = false;
        if (!outputStream2.m5725()) {
            return outputStream;
        }
        r2.ˉٴ((OutputStream) outputStream2, (int) 134695760);
        return outputStream;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final void m9536(ᵎﹶ r17, C0812 c0812) {
        C4770 c4770 = (C4770) r17;
        C3411 c3411 = c4770.f18008;
        int i = c3411.f13395;
        int i2 = c3411.f13398;
        if (i2 != 1 && i2 != 2) {
            throw new IOException("unsupported compression type");
        }
        if (!c3411.f13388) {
            c3411.f13390 = 1;
        } else {
            if (c3411.f13390 == 1) {
                throw new IOException("Encryption method has to be set, when encrypt files flag is set");
            }
            char[] cArr = this.f17998;
            if (cArr == null || cArr.length <= 0) {
                throw new IOException("input password is empty or null");
            }
        }
        ArrayList arrayList = new ArrayList();
        for (File file : c4770.f18009) {
            arrayList.add(file);
            if (AbstractC4197.m8588(file) && !AbstractC0844.m3021(1, i)) {
                arrayList.addAll(AbstractC4197.m8591(file, c3411));
            }
        }
        C3407 c3407 = (C3407) ((ᵎﹶ) c4770).ʾˋ;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            File file2 = (File) obj;
            if (!AbstractC4197.m8588(file2)) {
                if (!file2.exists()) {
                    throw new IOException("File does not exist: " + file2);
                }
            } else if (AbstractC0844.m3021(i, 3) || AbstractC0844.m3021(i, 2)) {
                if (!file2.exists()) {
                    throw new IOException("Symlink target '" + AbstractC4197.m8600(file2) + "' does not exist for link '" + file2 + "'");
                }
            }
        }
        byte[] bArr = new byte[c3407.f13360];
        ArrayList arrayList2 = new ArrayList(arrayList);
        C3406 c3406 = this.f18000;
        if (c3406.f13353.exists()) {
            int size2 = arrayList.size();
            int i4 = 0;
            while (i4 < size2) {
                Object obj2 = arrayList.get(i4);
                i4++;
                File file3 = (File) obj2;
                if (!AbstractC4200.m8608(file3.getName())) {
                    arrayList2.remove(file3);
                }
                C3405 c3405 = ˈ.ﾞʻ(c3406, AbstractC4197.m8601(file3, c3411));
                if (c3405 != null) {
                    if (c3411.f13391) {
                        c0812.getClass();
                        new C4769(c3406, this.f17999, new C4603(c0812)).ᴵˑ(new C4768(Collections.singletonList(c3405.f13380), c3407));
                        ٴᴵ();
                    } else {
                        arrayList2.remove(file3);
                    }
                }
            }
        }
        C2565 c2565 = new C2565(c3406.f13353, c3406.f13355);
        try {
            C2563 m9535 = m9535(c2565, c3407);
            try {
                int size3 = arrayList2.size();
                int i5 = 0;
                while (i5 < size3) {
                    Object obj3 = arrayList2.get(i5);
                    i5++;
                    File file4 = (File) obj3;
                    ٴᴵ();
                    C3411 m9534 = m9534(c3411, file4, c0812);
                    int i6 = m9534.f13395;
                    file4.getAbsolutePath();
                    c0812.getClass();
                    if (AbstractC4197.m8588(file4) && (AbstractC0844.m3021(1, i6) || AbstractC0844.m3021(3, i6))) {
                        m9538(file4, m9535, m9534, c2565);
                        if (AbstractC0844.m3021(1, i6)) {
                        }
                    }
                    m9535.m5728(m9534);
                    if (file4.exists() && !file4.isDirectory()) {
                        FileInputStream fileInputStream = new FileInputStream(file4);
                        while (true) {
                            try {
                                int read = fileInputStream.read(bArr);
                                if (read == -1) {
                                    break;
                                }
                                m9535.write(bArr, 0, read);
                                c0812.m2952(read);
                                ٴᴵ();
                            } catch (Throwable th) {
                                try {
                                    fileInputStream.close();
                                    throw th;
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                    throw th;
                                }
                            }
                        }
                        fileInputStream.close();
                    }
                    m9537(m9535, c2565, file4, false);
                }
                m9535.close();
                c2565.close();
            } catch (Throwable th3) {
                try {
                    m9535.close();
                    throw th3;
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                    throw th3;
                }
            }
        } finally {
        }
    }

    /* renamed from: ˋˊ, reason: contains not printable characters */
    public final void m9537(C2563 c2563, C2565 c2565, File file, boolean z) {
        C2565 c25652;
        boolean z2;
        String str;
        String str2;
        C3405 m5727 = c2563.m5727();
        byte[] m8589 = AbstractC4197.m8589(file);
        if (!z) {
            m8589[3] = AbstractC4200.m8607(m8589[3], 5);
        }
        m5727.f13348 = m8589;
        ٴʼ r3 = this.f17999;
        ﹳٴ r4 = (ﹳٴ) r3.ᴵˊ;
        byte[] bArr = (byte[]) r3.ʽʽ;
        C3406 c3406 = this.f18000;
        if (c3406 == null) {
            throw new IOException("invalid input parameters, cannot update local file header");
        }
        if (m5727.f13346 != c2565.f9750) {
            String parent = c3406.f13353.getParent();
            String m8597 = AbstractC4197.m8597(c3406.f13353.getName());
            if (parent != null) {
                StringBuilder m3020 = AbstractC0844.m3020(parent);
                m3020.append(System.getProperty("file.separator"));
                str = m3020.toString();
            } else {
                str = "";
            }
            z2 = true;
            if (m5727.f13346 < 9) {
                str2 = str + m8597 + ".z0" + (m5727.f13346 + 1);
            } else {
                str2 = str + m8597 + ".z" + (m5727.f13346 + 1);
            }
            c25652 = new C2565(new File(str2));
        } else {
            c25652 = c2565;
            z2 = false;
        }
        long filePointer = c25652.f9749.getFilePointer();
        c25652.f9749.seek(m5727.f13347 + 14);
        ﹳٴ.ᵎⁱ(m5727.f13376, bArr);
        c25652.write(bArr, 0, 4);
        C2565 c25653 = c25652;
        if (m5727.f13379 >= 4294967295L) {
            ﹳٴ.ᵎⁱ(4294967295L, bArr);
            c25653.write(bArr, 0, 4);
            c25653.write(bArr, 0, 4);
            int i = m5727.f13375 + 8;
            if (c25653.f9749.skipBytes(i) != i) {
                throw new IOException(AbstractC1220.m3773(i, "Unable to skip ", " bytes to update LFH"));
            }
            r4.ٴʼ(c25653, m5727.f13379);
            r4.ٴʼ(c25653, m5727.f13369);
        } else {
            ﹳٴ.ᵎⁱ(m5727.f13369, bArr);
            c25653.write(bArr, 0, 4);
            ﹳٴ.ᵎⁱ(m5727.f13379, bArr);
            c25653.write(bArr, 0, 4);
        }
        if (z2) {
            c25653.close();
        } else {
            c2565.f9749.seek(filePointer);
        }
    }

    /* renamed from: ﹶˎ, reason: contains not printable characters */
    public final void m9538(File file, C2563 c2563, C3411 c3411, C2565 c2565) {
        C3411 c34112 = new C3411(c3411);
        String str = c3411.f13387;
        String name = file.getName();
        if (str.contains("/")) {
            name = str.substring(0, str.lastIndexOf("/") + 1) + name;
        }
        c34112.f13387 = name;
        c34112.f13388 = false;
        c34112.f13398 = 1;
        c2563.m5728(c34112);
        c2563.write(AbstractC4197.m8600(file).getBytes());
        m9537(c2563, c2565, file, true);
    }
}
