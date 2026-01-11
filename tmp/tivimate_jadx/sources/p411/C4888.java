package p411;

import j$.util.Objects;
import java.io.File;
import java.util.Collections;
import java.util.List;
import p027.C1102;
import p234.C3194;
import p234.C3196;

/* renamed from: ﹳˎ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4888 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C4903 f18231;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1102 f18232;

    public C4888(C1102 c1102, C3194 c3194) {
        this.f18232 = c1102;
        this.f18231 = new C4903(c3194);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m9679(String str) {
        C4903 c4903 = this.f18231;
        synchronized (c4903) {
            if (!Objects.equals(c4903.f18288, str)) {
                C4903.m9707(c4903.f18289, str, c4903.f18287);
                c4903.f18288 = str;
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String m9680(String str) {
        C4903 c4903 = this.f18231;
        synchronized (c4903) {
            if (Objects.equals(c4903.f18288, str)) {
                return c4903.f18287;
            }
            C3194 c3194 = c4903.f18289;
            C3196 c3196 = C4903.f18285;
            File file = new File((File) c3194.f12215, str);
            file.mkdirs();
            List m7019 = C3194.m7019(file.listFiles(c3196));
            return m7019.isEmpty() ? null : ((File) Collections.min(m7019, C4903.f18286)).getName().substring(4);
        }
    }
}
