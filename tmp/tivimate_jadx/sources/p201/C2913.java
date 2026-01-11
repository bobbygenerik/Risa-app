package p201;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* renamed from: ˎˊ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2913 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final HashMap f11001 = new HashMap();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Lock f11002;

    /* renamed from: ˈ, reason: contains not printable characters */
    public FileChannel f11003;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final File f11004;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean f11005;

    public C2913(String str, File file, boolean z) {
        Lock lock;
        this.f11005 = z;
        this.f11004 = file != null ? new File(file, str.concat(".lck")) : null;
        HashMap hashMap = f11001;
        synchronized (hashMap) {
            try {
                Object obj = hashMap.get(str);
                if (obj == null) {
                    obj = new ReentrantLock();
                    hashMap.put(str, obj);
                }
                lock = (Lock) obj;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f11002 = lock;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m6440() {
        try {
            FileChannel fileChannel = this.f11003;
            if (fileChannel != null) {
                fileChannel.close();
            }
        } catch (IOException unused) {
        }
        this.f11002.unlock();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m6441(boolean z) {
        this.f11002.lock();
        if (z) {
            File file = this.f11004;
            try {
                if (file == null) {
                    throw new IOException("No lock directory was provided.");
                }
                File parentFile = file.getParentFile();
                if (parentFile != null) {
                    parentFile.mkdirs();
                }
                FileChannel channel = new FileOutputStream(file).getChannel();
                channel.lock();
                this.f11003 = channel;
            } catch (IOException e) {
                this.f11003 = null;
            }
        }
    }
}
