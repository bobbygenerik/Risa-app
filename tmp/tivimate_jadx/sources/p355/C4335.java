package p355;

import android.os.Build;
import android.os.StrictMode;
import com.bumptech.glide.C0229;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p027.CallableC1098;
import ᐧﹳ.ʽ;

/* renamed from: ᵔˆ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4335 implements Closeable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final File f16128;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final File f16129;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final File f16131;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final long f16133;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final File f16136;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public int f16138;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public BufferedWriter f16139;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public long f16132 = 0;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final LinkedHashMap f16134 = new LinkedHashMap(0, 0.75f, true);

    /* renamed from: ᵔי, reason: contains not printable characters */
    public long f16140 = 0;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final ThreadPoolExecutor f16130 = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), (ThreadFactory) new Object());

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final CallableC1098 f16141 = new CallableC1098(1, this);

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int f16137 = 1;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final int f16135 = 1;

    /* JADX WARN: Type inference failed for: r15v0, types: [java.lang.Object, java.util.concurrent.ThreadFactory] */
    public C4335(File file, long j) {
        this.f16129 = file;
        this.f16136 = new File(file, "journal");
        this.f16128 = new File(file, "journal.tmp");
        this.f16131 = new File(file, "journal.bkp");
        this.f16133 = j;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m8785(C4335 c4335, C0229 c0229, boolean z) {
        synchronized (c4335) {
            C4338 c4338 = (C4338) c0229.f1646;
            if (c4338.f16154 != c0229) {
                throw new IllegalStateException();
            }
            if (z && !c4338.f16150) {
                for (int i = 0; i < c4335.f16135; i++) {
                    if (!((boolean[]) c0229.f1643)[i]) {
                        c0229.m1139();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                    }
                    if (!c4338.f16149[i].exists()) {
                        c0229.m1139();
                        return;
                    }
                }
            }
            for (int i2 = 0; i2 < c4335.f16135; i2++) {
                File file = c4338.f16149[i2];
                if (!z) {
                    m8786(file);
                } else if (file.exists()) {
                    File file2 = c4338.f16148[i2];
                    file.renameTo(file2);
                    long j = c4338.f16152[i2];
                    long length = file2.length();
                    c4338.f16152[i2] = length;
                    c4335.f16132 = (c4335.f16132 - j) + length;
                }
            }
            c4335.f16138++;
            c4338.f16154 = null;
            if (c4338.f16150 || z) {
                c4338.f16150 = true;
                c4335.f16139.append((CharSequence) "CLEAN");
                c4335.f16139.append(' ');
                c4335.f16139.append((CharSequence) c4338.f16153);
                c4335.f16139.append((CharSequence) c4338.m8800());
                c4335.f16139.append('\n');
                if (z) {
                    c4335.f16140++;
                }
            } else {
                c4335.f16134.remove(c4338.f16153);
                c4335.f16139.append((CharSequence) "REMOVE");
                c4335.f16139.append(' ');
                c4335.f16139.append((CharSequence) c4338.f16153);
                c4335.f16139.append('\n');
            }
            m8788(c4335.f16139);
            if (c4335.f16132 > c4335.f16133 || c4335.m8794()) {
                c4335.f16130.submit(c4335.f16141);
            }
        }
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static void m8786(File file) {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public static void m8787(File file, File file2, boolean z) {
        if (z) {
            m8786(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public static void m8788(BufferedWriter bufferedWriter) {
        if (Build.VERSION.SDK_INT < 26) {
            bufferedWriter.flush();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            bufferedWriter.flush();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public static C4335 m8789(File file, long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                m8787(file2, file3, false);
            }
        }
        C4335 c4335 = new C4335(file, j);
        if (c4335.f16136.exists()) {
            try {
                c4335.m8796();
                c4335.m8793();
                return c4335;
            } catch (IOException e) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                c4335.close();
                AbstractC4340.m8801(c4335.f16129);
            }
        }
        file.mkdirs();
        C4335 c43352 = new C4335(file, j);
        c43352.m8795();
        return c43352;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static void m8790(BufferedWriter bufferedWriter) {
        if (Build.VERSION.SDK_INT < 26) {
            bufferedWriter.close();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            bufferedWriter.close();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        try {
            if (this.f16139 == null) {
                return;
            }
            ArrayList arrayList = new ArrayList(this.f16134.values());
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                C0229 c0229 = ((C4338) obj).f16154;
                if (c0229 != null) {
                    c0229.m1139();
                }
            }
            m8798();
            m8790(this.f16139);
            this.f16139 = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final synchronized ʽ m8791(String str) {
        if (this.f16139 == null) {
            throw new IllegalStateException("cache is closed");
        }
        C4338 c4338 = (C4338) this.f16134.get(str);
        if (c4338 == null) {
            return null;
        }
        if (!c4338.f16150) {
            return null;
        }
        for (File file : c4338.f16148) {
            if (!file.exists()) {
                return null;
            }
        }
        this.f16138++;
        this.f16139.append((CharSequence) "READ");
        this.f16139.append(' ');
        this.f16139.append((CharSequence) str);
        this.f16139.append('\n');
        if (m8794()) {
            this.f16130.submit(this.f16141);
        }
        return new ʽ(6, c4338.f16148);
    }

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final void m8792(String str) {
        String substring;
        int indexOf = str.indexOf(32);
        if (indexOf == -1) {
            throw new IOException("unexpected journal line: ".concat(str));
        }
        int i = indexOf + 1;
        int indexOf2 = str.indexOf(32, i);
        LinkedHashMap linkedHashMap = this.f16134;
        if (indexOf2 == -1) {
            substring = str.substring(i);
            if (indexOf == 6 && str.startsWith("REMOVE")) {
                linkedHashMap.remove(substring);
                return;
            }
        } else {
            substring = str.substring(i, indexOf2);
        }
        C4338 c4338 = (C4338) linkedHashMap.get(substring);
        if (c4338 == null) {
            c4338 = new C4338(this, substring);
            linkedHashMap.put(substring, c4338);
        }
        if (indexOf2 == -1 || indexOf != 5 || !str.startsWith("CLEAN")) {
            if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
                c4338.f16154 = new C0229(this, c4338);
                return;
            } else {
                if (indexOf2 != -1 || indexOf != 4 || !str.startsWith("READ")) {
                    throw new IOException("unexpected journal line: ".concat(str));
                }
                return;
            }
        }
        String[] split = str.substring(indexOf2 + 1).split(" ");
        c4338.f16150 = true;
        c4338.f16154 = null;
        if (split.length != c4338.f16151.f16135) {
            throw new IOException("unexpected journal line: " + Arrays.toString(split));
        }
        for (int i2 = 0; i2 < split.length; i2++) {
            try {
                c4338.f16152[i2] = Long.parseLong(split[i2]);
            } catch (NumberFormatException unused) {
                throw new IOException("unexpected journal line: " + Arrays.toString(split));
            }
        }
    }

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final void m8793() {
        m8786(this.f16128);
        Iterator it = this.f16134.values().iterator();
        while (it.hasNext()) {
            C4338 c4338 = (C4338) it.next();
            C0229 c0229 = c4338.f16154;
            int i = this.f16135;
            int i2 = 0;
            if (c0229 == null) {
                while (i2 < i) {
                    this.f16132 += c4338.f16152[i2];
                    i2++;
                }
            } else {
                c4338.f16154 = null;
                while (i2 < i) {
                    m8786(c4338.f16148[i2]);
                    m8786(c4338.f16149[i2]);
                    i2++;
                }
                it.remove();
            }
        }
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final boolean m8794() {
        int i = this.f16138;
        return i >= 2000 && i >= this.f16134.size();
    }

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public final synchronized void m8795() {
        try {
            BufferedWriter bufferedWriter = this.f16139;
            if (bufferedWriter != null) {
                m8790(bufferedWriter);
            }
            BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f16128), AbstractC4340.f16155));
            try {
                bufferedWriter2.write("libcore.io.DiskLruCache");
                bufferedWriter2.write("\n");
                bufferedWriter2.write("1");
                bufferedWriter2.write("\n");
                bufferedWriter2.write(Integer.toString(this.f16137));
                bufferedWriter2.write("\n");
                bufferedWriter2.write(Integer.toString(this.f16135));
                bufferedWriter2.write("\n");
                bufferedWriter2.write("\n");
                for (C4338 c4338 : this.f16134.values()) {
                    if (c4338.f16154 != null) {
                        bufferedWriter2.write("DIRTY " + c4338.f16153 + '\n');
                    } else {
                        bufferedWriter2.write("CLEAN " + c4338.f16153 + c4338.m8800() + '\n');
                    }
                }
                m8790(bufferedWriter2);
                if (this.f16136.exists()) {
                    m8787(this.f16136, this.f16131, true);
                }
                m8787(this.f16128, this.f16136, false);
                this.f16131.delete();
                this.f16139 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f16136, true), AbstractC4340.f16155));
            } catch (Throwable th) {
                m8790(bufferedWriter2);
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final void m8796() {
        File file = this.f16136;
        C4337 c4337 = new C4337(new FileInputStream(file), AbstractC4340.f16155);
        try {
            String m8799 = c4337.m8799();
            String m87992 = c4337.m8799();
            String m87993 = c4337.m8799();
            String m87994 = c4337.m8799();
            String m87995 = c4337.m8799();
            if (!"libcore.io.DiskLruCache".equals(m8799) || !"1".equals(m87992) || !Integer.toString(this.f16137).equals(m87993) || !Integer.toString(this.f16135).equals(m87994) || !"".equals(m87995)) {
                throw new IOException("unexpected journal header: [" + m8799 + ", " + m87992 + ", " + m87994 + ", " + m87995 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    m8792(c4337.m8799());
                    i++;
                } catch (EOFException unused) {
                    this.f16138 = i - this.f16134.size();
                    if (c4337.f16147 == -1) {
                        m8795();
                    } else {
                        this.f16139 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true), AbstractC4340.f16155));
                    }
                    try {
                        c4337.close();
                        return;
                    } catch (RuntimeException e) {
                        throw e;
                    } catch (Exception unused2) {
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            try {
                c4337.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused3) {
            }
            throw th;
        }
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final C0229 m8797(String str) {
        synchronized (this) {
            try {
                if (this.f16139 == null) {
                    throw new IllegalStateException("cache is closed");
                }
                C4338 c4338 = (C4338) this.f16134.get(str);
                if (c4338 == null) {
                    c4338 = new C4338(this, str);
                    this.f16134.put(str, c4338);
                } else if (c4338.f16154 != null) {
                    return null;
                }
                C0229 c0229 = new C0229(this, c4338);
                c4338.f16154 = c0229;
                this.f16139.append((CharSequence) "DIRTY");
                this.f16139.append(' ');
                this.f16139.append((CharSequence) str);
                this.f16139.append('\n');
                m8788(this.f16139);
                return c0229;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public final void m8798() {
        while (this.f16132 > this.f16133) {
            String str = (String) ((Map.Entry) this.f16134.entrySet().iterator().next()).getKey();
            synchronized (this) {
                try {
                    if (this.f16139 == null) {
                        throw new IllegalStateException("cache is closed");
                    }
                    C4338 c4338 = (C4338) this.f16134.get(str);
                    if (c4338 != null && c4338.f16154 == null) {
                        for (int i = 0; i < this.f16135; i++) {
                            File file = c4338.f16148[i];
                            if (file.exists() && !file.delete()) {
                                throw new IOException("failed to delete " + file);
                            }
                            long j = this.f16132;
                            long[] jArr = c4338.f16152;
                            this.f16132 = j - jArr[i];
                            jArr[i] = 0;
                        }
                        this.f16138++;
                        this.f16139.append((CharSequence) "REMOVE");
                        this.f16139.append(' ');
                        this.f16139.append((CharSequence) str);
                        this.f16139.append('\n');
                        this.f16134.remove(str);
                        if (m8794()) {
                            this.f16130.submit(this.f16141);
                        }
                    }
                } finally {
                }
            }
        }
    }
}
