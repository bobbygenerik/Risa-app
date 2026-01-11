package p090;

import android.os.ParcelFileDescriptor;
import androidx.datastore.core.NativeSharedCounter;
import java.io.File;
import java.io.IOException;
import p152.AbstractC2452;
import p329.InterfaceC4104;

/* renamed from: ʿᵢ.ـˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1808 extends AbstractC2452 implements InterfaceC4104 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C1818 f7298;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ int f7299;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1808(C1818 c1818, int i) {
        super(0);
        this.f7299 = i;
        this.f7298 = c1818;
    }

    @Override // p329.InterfaceC4104
    /* renamed from: ʽ */
    public final Object mo716() {
        ParcelFileDescriptor parcelFileDescriptor;
        switch (this.f7299) {
            case 0:
                System.loadLibrary("datastore_shared_counter");
                C1818 c1818 = this.f7298;
                File file = new File(c1818.f7338.getAbsolutePath() + c1818.f7335);
                C1818.m4757(c1818, file);
                try {
                    parcelFileDescriptor = ParcelFileDescriptor.open(file, 939524096);
                    try {
                        int fd = parcelFileDescriptor.getFd();
                        NativeSharedCounter nativeSharedCounter = C1816.f7326;
                        if (nativeSharedCounter.nativeTruncateFile(fd) != 0) {
                            throw new IOException("Failed to truncate counter file");
                        }
                        long nativeCreateSharedCounter = nativeSharedCounter.nativeCreateSharedCounter(fd);
                        if (nativeCreateSharedCounter < 0) {
                            throw new IOException("Failed to mmap counter file");
                        }
                        C1816 c1816 = new C1816(nativeCreateSharedCounter);
                        parcelFileDescriptor.close();
                        return c1816;
                    } catch (Throwable th) {
                        th = th;
                        if (parcelFileDescriptor != null) {
                            parcelFileDescriptor.close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    parcelFileDescriptor = null;
                }
            default:
                C1818 c18182 = this.f7298;
                File file2 = new File(c18182.f7338.getAbsolutePath() + c18182.f7334);
                C1818.m4757(c18182, file2);
                return file2;
        }
    }
}
