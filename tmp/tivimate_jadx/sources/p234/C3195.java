package p234;

import com.parse.ʼᐧ;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.NavigableSet;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicInteger;
import p070.C1629;
import p122.AbstractC2120;
import p137.AbstractC2305;
import p187.C2841;
import p411.C4888;

/* renamed from: ˑˋ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3195 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C1629 f12225;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C4888 f12226;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3194 f12227;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AtomicInteger f12228 = new AtomicInteger(0);

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final Charset f12221 = Charset.forName("UTF-8");

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final int f12224 = 15;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final C2841 f12222 = new Object();

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final ʼᐧ f12223 = new ʼᐧ(5);

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final C3196 f12220 = new C3196(0);

    public C3195(C3194 c3194, C1629 c1629, C4888 c4888) {
        this.f12227 = c3194;
        this.f12225 = c1629;
        this.f12226 = c4888;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static String m7029(File file) {
        byte[] bArr = new byte[8192];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int read = fileInputStream.read(bArr);
                if (read <= 0) {
                    String str = new String(byteArrayOutputStream.toByteArray(), f12221);
                    fileInputStream.close();
                    return str;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m7030(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((File) it.next()).delete();
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static void m7031(File file, String str) {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), f12221);
        try {
            outputStreamWriter.write(str);
            outputStreamWriter.close();
        } catch (Throwable th) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final NavigableSet m7032() {
        return new TreeSet(C3194.m7019(((File) this.f12227.f12215).list())).descendingSet();
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m7033(AbstractC2120 abstractC2120, String str, boolean z) {
        C3194 c3194 = this.f12227;
        int i = this.f12225.m4410().f6494.ᴵˊ;
        f12222.getClass();
        try {
            m7031(c3194.m7025(str, AbstractC2305.m5378("event", String.format(Locale.US, "%010d", Integer.valueOf(this.f12228.getAndIncrement())), z ? "_" : "")), C2841.f10646.ﾞᴵ(abstractC2120));
        } catch (IOException e) {
            String str2 = "Could not persist event for session " + str;
        }
        C3196 c3196 = new C3196(1);
        c3194.getClass();
        File file = new File((File) c3194.f12215, str);
        file.mkdirs();
        List<File> m7019 = C3194.m7019(file.listFiles(c3196));
        Collections.sort(m7019, new ʼᐧ(6));
        int size = m7019.size();
        for (File file2 : m7019) {
            if (size <= i) {
                return;
            }
            C3194.m7018(file2);
            size--;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ArrayList m7034() {
        ArrayList arrayList = new ArrayList();
        C3194 c3194 = this.f12227;
        arrayList.addAll(C3194.m7019(((File) c3194.f12216).listFiles()));
        arrayList.addAll(C3194.m7019(((File) c3194.f12217).listFiles()));
        ʼᐧ r2 = f12223;
        Collections.sort(arrayList, r2);
        List m7019 = C3194.m7019(((File) c3194.f12219).listFiles());
        Collections.sort(m7019, r2);
        arrayList.addAll(m7019);
        return arrayList;
    }
}
