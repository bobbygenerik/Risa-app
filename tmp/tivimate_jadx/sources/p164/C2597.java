package p164;

import com.google.android.gms.internal.measurement.ˏʻ;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p035.C1233;

/* renamed from: ˊᐧ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2597 extends AbstractC2598 {
    public String toString() {
        return "JvmSystemFileSystem";
    }

    @Override // p164.AbstractC2598
    /* renamed from: ʽ */
    public void mo5789(C2575 c2575, C2575 c25752) {
        if (c2575.toFile().renameTo(c25752.toFile())) {
            return;
        }
        throw new IOException("failed to move " + c2575 + " to " + c25752);
    }

    @Override // p164.AbstractC2598
    /* renamed from: ʾˋ */
    public final C2593 mo5811(C2575 c2575) {
        return new C2593(false, new RandomAccessFile(c2575.toFile(), "r"));
    }

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final List m5820(C2575 c2575) {
        File file = c2575.toFile();
        String[] list = file.list();
        if (list == null) {
            if (file.exists()) {
                throw new IOException("failed to list " + c2575);
            }
            throw new FileNotFoundException("no such file: " + c2575);
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            arrayList.add(c2575.m5769(str));
        }
        if (arrayList.size() > 1) {
            Collections.sort(arrayList);
        }
        return arrayList;
    }

    @Override // p164.AbstractC2598
    /* renamed from: ˈٴ */
    public final C2593 mo5812(C2575 c2575) {
        return new C2593(true, new RandomAccessFile(c2575.toFile(), "rw"));
    }

    @Override // p164.AbstractC2598
    /* renamed from: ˉˆ */
    public final void mo5813(C2575 c2575) {
        if (Thread.interrupted()) {
            throw new InterruptedIOException("interrupted");
        }
        File file = c2575.toFile();
        if (file.delete() || !file.exists()) {
            return;
        }
        throw new IOException("failed to delete " + c2575);
    }

    @Override // p164.AbstractC2598
    /* renamed from: ـˆ */
    public C1233 mo5790(C2575 c2575) {
        File file = c2575.toFile();
        boolean isFile = file.isFile();
        boolean isDirectory = file.isDirectory();
        long lastModified = file.lastModified();
        long length = file.length();
        if (isFile || isDirectory || lastModified != 0 || length != 0 || file.exists()) {
            return new C1233(isFile, isDirectory, Long.valueOf(length), null, Long.valueOf(lastModified), null);
        }
        return null;
    }

    @Override // p164.AbstractC2598
    /* renamed from: ᵎˊ */
    public final InterfaceC2588 mo5814(C2575 c2575) {
        return ˏʻ.ʼˈ(c2575.toFile());
    }

    @Override // p164.AbstractC2598
    /* renamed from: ᵎﹶ */
    public final void mo5815(C2575 c2575) {
        if (c2575.toFile().mkdir()) {
            return;
        }
        C1233 mo5790 = mo5790(c2575);
        if (mo5790 == null || !mo5790.f4787) {
            throw new IOException("failed to create directory: " + c2575);
        }
    }
}
