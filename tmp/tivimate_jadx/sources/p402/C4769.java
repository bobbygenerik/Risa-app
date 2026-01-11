package p402;

import com.parse.ٴʼ;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p004.C0812;
import p010.AbstractC0844;
import p163.C2565;
import p261.C3401;
import p261.C3402;
import p261.C3403;
import p261.C3405;
import p261.C3406;
import p261.C3407;
import p384.C4603;
import ʻٴ.ˑﹳ;
import ʽٴ.ˈ;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹳʻ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4769 extends ᵎﹶ {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final ٴʼ f18006;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C3406 f18007;

    public C4769(C3406 c3406, ٴʼ r2, C4603 c4603) {
        super(c4603);
        this.f18007 = c3406;
        this.f18006 = r2;
    }

    /* renamed from: ʽˑ, reason: contains not printable characters */
    public static void m9541(RandomAccessFile randomAccessFile, C2565 c2565, long j, long j2, C0812 c0812, int i) {
        long j3 = j2 + j;
        long j4 = 0;
        if (j < 0 || j3 < 0 || j > j3) {
            throw new IOException("invalid offsets");
        }
        if (j == j3) {
            return;
        }
        try {
            randomAccessFile.seek(j);
            long j5 = j3 - j;
            byte[] bArr = j5 < ((long) i) ? new byte[(int) j5] : new byte[i];
            while (true) {
                int read = randomAccessFile.read(bArr);
                if (read == -1) {
                    return;
                }
                c2565.write(bArr, 0, read);
                long j6 = read;
                c0812.m2952(j6);
                j4 += j6;
                if (j4 == j5) {
                    return;
                }
                if (bArr.length + j4 > j5) {
                    bArr = new byte[(int) (j5 - j4)];
                }
            }
        } catch (IOException e) {
            throw new IOException(e);
        }
    }

    /* renamed from: ˋˊ, reason: contains not printable characters */
    public static int m9542(ArrayList arrayList, C3405 c3405) {
        for (int i = 0; i < arrayList.size(); i++) {
            if (((C3405) arrayList.get(i)).equals(c3405)) {
                return i;
            }
        }
        throw new IOException("Could not find file header in list of central directory file headers");
    }

    /* renamed from: ﹶˎ, reason: contains not printable characters */
    public static void m9543(File file, File file2, boolean z) {
        if (!z) {
            if (!file2.delete()) {
                throw new IOException("Could not delete temporary file");
            }
        } else {
            if (!file.delete()) {
                throw new IOException("cannot delete old zip file");
            }
            if (!file2.renameTo(file)) {
                throw new IOException("cannot rename modified zip file");
            }
        }
    }

    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public final void m9544(ArrayList arrayList, C3405 c3405, long j) {
        C3406 c3406;
        C3403 c3403;
        if (j == Long.MIN_VALUE) {
            throw new ArithmeticException("long overflow");
        }
        long j2 = -j;
        int m9542 = m9542(arrayList, c3405);
        if (m9542 == -1) {
            throw new IOException("Could not locate modified file header in zipModel");
        }
        while (true) {
            m9542++;
            int size = arrayList.size();
            c3406 = this.f18007;
            if (m9542 >= size) {
                break;
            }
            C3405 c34052 = (C3405) arrayList.get(m9542);
            c34052.f13347 += j2;
            if (c3406.f13358 && (c3403 = c34052.f13373) != null) {
                long j3 = c3403.f13341;
                if (j3 != -1) {
                    c3403.f13341 = j3 + j2;
                }
            }
        }
        C3402 c3402 = c3406.f13350;
        c3402.f13335 -= j;
        c3402.f13334--;
        int i = c3402.f13336;
        if (i > 0) {
            c3402.f13336 = i - 1;
        }
        if (c3406.f13358) {
            C3401 c3401 = c3406.f13357;
            c3401.f13329 -= j;
            c3401.f13324 = c3401.f13330 - 1;
            c3406.f13352.f13362 -= j;
        }
    }

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final void m9545(ᵎﹶ r20, C0812 c0812) {
        boolean z;
        Throwable th;
        boolean z2;
        ArrayList arrayList;
        C4768 c4768 = (C4768) r20;
        C3406 c3406 = this.f18007;
        if (c3406.f13354) {
            throw new IOException("This is a split archive. Zip file format does not allow updating split/spanned files");
        }
        List<String> list = c4768.f18005;
        C3407 c3407 = (C3407) ((ᵎﹶ) c4768).ʾˋ;
        ArrayList arrayList2 = new ArrayList();
        for (String str : list) {
            if (ˈ.ﾞʻ(c3406, str) != null) {
                arrayList2.add(str);
            }
        }
        if (arrayList2.isEmpty()) {
            return;
        }
        String path = c3406.f13353.getPath();
        SecureRandom secureRandom = new SecureRandom();
        StringBuilder m3020 = AbstractC0844.m3020(path);
        m3020.append(secureRandom.nextInt(10000));
        File file = new File(m3020.toString());
        while (file.exists()) {
            StringBuilder m30202 = AbstractC0844.m3020(path);
            m30202.append(secureRandom.nextInt(10000));
            file = new File(m30202.toString());
        }
        try {
            try {
                C2565 c2565 = new C2565(file);
                try {
                    RandomAccessFile randomAccessFile = new RandomAccessFile(c3406.f13353, "r");
                    try {
                        ArrayList arrayList3 = new ArrayList(c3406.f13356.f4592);
                        Collections.sort(arrayList3, new ˑﹳ(17));
                        int size = arrayList3.size();
                        long j = 0;
                        int i = 0;
                        while (true) {
                            z2 = true;
                            if (i >= size) {
                                this.f18006.ᵔי(c3406, c2565);
                                try {
                                    randomAccessFile.close();
                                    c2565.close();
                                    m9543(c3406.f13353, file, true);
                                    return;
                                } catch (Throwable th2) {
                                    th = th2;
                                    try {
                                        c2565.close();
                                        throw th;
                                    } catch (Throwable th3) {
                                        th.addSuppressed(th3);
                                        throw th;
                                    }
                                }
                            }
                            int i2 = i + 1;
                            C3405 c3405 = (C3405) arrayList3.get(i);
                            int m9542 = m9542(arrayList3, c3405);
                            long filePointer = (m9542 == arrayList3.size() - 1 ? c3406.f13358 ? c3406.f13357.f13329 : c3406.f13350.f13335 : ((C3405) arrayList3.get(m9542 + 1)).f13347) - c2565.f9749.getFilePointer();
                            int size2 = arrayList2.size();
                            int i3 = 0;
                            while (i3 < size2) {
                                Object obj = arrayList2.get(i3);
                                int i4 = i3 + 1;
                                String str2 = (String) obj;
                                arrayList = arrayList2;
                                if ((!str2.endsWith("/") || !c3405.f13380.startsWith(str2)) && !c3405.f13380.equals(str2)) {
                                    arrayList2 = arrayList;
                                    i3 = i4;
                                }
                                m9544(arrayList3, c3405, filePointer);
                                if (!c3406.f13356.f4592.remove(c3405)) {
                                    throw new IOException("Could not remove entry from list of central directory headers");
                                }
                                j += filePointer;
                                ٴᴵ();
                                i = i2;
                                arrayList2 = arrayList;
                            }
                            arrayList = arrayList2;
                            m9541(randomAccessFile, c2565, j, filePointer, c0812, c3407.f13360);
                            j += filePointer;
                            ٴᴵ();
                            i = i2;
                            arrayList2 = arrayList;
                        }
                    } finally {
                    }
                } catch (Throwable th4) {
                    th = th4;
                    z2 = false;
                }
            } catch (Throwable th5) {
                th = th5;
                z = z2;
                m9543(c3406.f13353, file, z);
                throw th;
            }
        } catch (Throwable th6) {
            th = th6;
            z = false;
            m9543(c3406.f13353, file, z);
            throw th;
        }
    }
}
