package p234;

import android.content.Context;
import android.util.Log;
import android.util.LongSparseArray;
import com.bumptech.glide.ˈ;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p013.C0907;
import p080.C1698;
import p122.C2054;
import p126.InterfaceC2136;
import p133.AbstractC2199;
import p134.C2203;
import p134.C2209;
import p140.ExecutorServiceC2374;
import p146.C2409;
import p152.AbstractC2444;
import p152.C2448;
import p152.C2450;
import p152.C2456;
import p237.C3201;
import p252.C3310;
import p404.C4790;
import p411.AbstractC4901;
import p430.AbstractC5103;
import ʽᵎ.ᵎﹶ;
import ʽᵎ.ⁱˊ;
import ﹳˋ.ʼˎ;
import ﹳי.ʽ;

/* renamed from: ˑˋ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3194 implements ⁱˊ {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Object f12213;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Object f12214;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final Object f12215;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final Object f12216;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final Object f12217;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Object f12218;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final Object f12219;

    public C3194(Context context) {
        String str;
        String str2 = ((C2054) C3310.f12736.m7126(context)).f8021;
        this.f12214 = str2;
        File filesDir = context.getFilesDir();
        this.f12218 = filesDir;
        if (str2.isEmpty()) {
            str = ".com.google.firebase.crashlytics.files.v1";
        } else {
            StringBuilder sb = new StringBuilder(".crashlytics.v3");
            sb.append(File.separator);
            sb.append(str2.length() > 40 ? AbstractC4901.m9703(str2) : str2.replaceAll("[^a-zA-Z0-9.]", "_"));
            str = sb.toString();
        }
        File file = new File(filesDir, str);
        m7017(file);
        this.f12213 = file;
        File file2 = new File(file, "open-sessions");
        m7017(file2);
        this.f12215 = file2;
        File file3 = new File(file, "reports");
        m7017(file3);
        this.f12219 = file3;
        File file4 = new File(file, "priority-reports");
        m7017(file4);
        this.f12216 = file4;
        File file5 = new File(file, "native-reports");
        m7017(file5);
        this.f12217 = file5;
    }

    public C3194(C2203 c2203, ʼˎ r3, C4790 c4790) {
        this.f12215 = new C2409();
        this.f12216 = new ReentrantReadWriteLock();
        this.f12214 = c2203;
        this.f12219 = r3;
        this.f12217 = c4790;
        this.f12218 = new HashMap(256);
        this.f12213 = new HashMap(256);
    }

    public C3194(ExecutorServiceC2374 executorServiceC2374, ExecutorServiceC2374 executorServiceC23742, ExecutorServiceC2374 executorServiceC23743, ExecutorServiceC2374 executorServiceC23744, C1698 c1698, C1698 c16982) {
        this.f12217 = AbstractC2199.m5199(150, new ʽ(this));
        this.f12214 = executorServiceC2374;
        this.f12218 = executorServiceC23742;
        this.f12213 = executorServiceC23743;
        this.f12215 = executorServiceC23744;
        this.f12219 = c1698;
        this.f12216 = c16982;
    }

    public C3194(C2448 c2448, String str, Long l, C2450 c2450, C2456 c2456, ArrayList arrayList, LongSparseArray longSparseArray) {
        this.f12218 = c2448;
        this.f12214 = str;
        this.f12213 = l;
        this.f12215 = c2450;
        this.f12219 = c2456;
        this.f12216 = arrayList;
        this.f12217 = longSparseArray;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static synchronized void m7017(File file) {
        synchronized (C3194.class) {
            try {
                if (file.exists()) {
                    if (file.isDirectory()) {
                        return;
                    }
                    String str = "Unexpected non-directory file: " + file + "; deleting file and creating new directory.";
                    if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                    }
                    file.delete();
                }
                if (!file.mkdirs()) {
                    String str2 = "Could not create Crashlytics-specific directory: " + file;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static boolean m7018(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                m7018(file2);
            }
        }
        return file.delete();
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static List m7019(Object[] objArr) {
        return objArr == null ? Collections.EMPTY_LIST : Arrays.asList(objArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:119:0x020e, code lost:
    
        if (ar.tvplayer.core.domain.ᵎⁱ.ʽ().length() == ar.tvplayer.core.domain.ᵎⁱ.יـ()) goto L130;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x025e  */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m7020(ʽᵎ.ﹳٴ r18, p126.InterfaceC2136 r19) {
        /*
            Method dump skipped, instructions count: 1017
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p234.C3194.m7020(ʽᵎ.ﹳٴ, ˈי.ˈ):java.lang.Object");
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public Object m7021(ᵎﹶ r9, InterfaceC2136 interfaceC2136) {
        long j = r9.ⁱˊ;
        LongSparseArray longSparseArray = (LongSparseArray) this.f12217;
        C2450 c2450 = (C2450) this.f12215;
        HashSet hashSet = (HashSet) longSparseArray.get(c2450.f9410);
        C0907 c0907 = C0907.f3832;
        if (hashSet != null) {
            if (!hashSet.contains(new Long(j))) {
                hashSet.add(new Long(j));
            }
            return c0907;
        }
        long j2 = c2450.f9410;
        Long[] lArr = {new Long(j)};
        HashSet hashSet2 = new HashSet(AbstractC5103.m10040(1));
        hashSet2.add(lArr[0]);
        longSparseArray.put(j2, hashSet2);
        ((ArrayList) this.f12216).add(ˈ.ᵔʾ(r9, c2450.f9410));
        return c0907;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public Boolean m7022() {
        return Boolean.valueOf(((C2456) this.f12219).f9412);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public C3201[] m7023(AutoCloseable autoCloseable) {
        ReentrantReadWriteLock.ReadLock readLock = ((ReentrantReadWriteLock) this.f12216).readLock();
        try {
            readLock.lock();
            return (C3201[]) ((HashMap) this.f12213).get(autoCloseable.getClass());
        } finally {
            readLock.unlock();
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public Object m7024(String str, InterfaceC2136 interfaceC2136) {
        return Boolean.valueOf(((C2448) this.f12218).f9409 == null);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public File m7025(String str, String str2) {
        File file = new File((File) this.f12215, str);
        file.mkdirs();
        return new File(file, str2);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m7026(String str) {
        File file = new File((File) this.f12218, str);
        if (file.exists() && m7018(file)) {
            String str2 = "Deleted previous Crashlytics file system: " + file.getPath();
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            }
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public void m7027(AutoCloseable autoCloseable, C3201[] c3201Arr) {
        HashMap hashMap = (HashMap) this.f12218;
        ReentrantReadWriteLock.WriteLock writeLock = ((ReentrantReadWriteLock) this.f12216).writeLock();
        try {
            writeLock.lock();
            C3201[] m7023 = m7023(autoCloseable);
            if (m7023 == null) {
                for (C3201 c3201 : c3201Arr) {
                    c3201.m7041(autoCloseable);
                    for (Class cls : ((C2209) c3201.f12249.ʾˋ).f8674) {
                        ArrayList arrayList = (ArrayList) hashMap.get(cls);
                        if (arrayList == null) {
                            arrayList = new ArrayList(8);
                            hashMap.put(cls, arrayList);
                        }
                        arrayList.add(c3201);
                    }
                }
                ((HashMap) this.f12213).put(autoCloseable.getClass(), c3201Arr);
            } else {
                for (C3201 c32012 : m7023) {
                    c32012.m7041(autoCloseable);
                }
            }
            writeLock.unlock();
        } catch (Throwable th) {
            writeLock.unlock();
            throw th;
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public Object m7028(String str, InterfaceC2136 interfaceC2136) {
        boolean m5562 = AbstractC2444.m5562(str, ((C2448) this.f12218).f9409);
        if (!m5562) {
            ((C2456) this.f12219).f9412 = !((ArrayList) this.f12216).isEmpty();
        }
        return Boolean.valueOf(m5562);
    }
}
