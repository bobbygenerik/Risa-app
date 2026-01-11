package p411;

import com.parse.ʼᐧ;
import java.io.IOException;
import p234.C3194;
import p234.C3196;

/* renamed from: ﹳˎ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4903 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C3196 f18285 = new C3196(2);

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final ʼᐧ f18286 = new ʼᐧ(14);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3194 f18289;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public String f18288 = null;

    /* renamed from: ʽ, reason: contains not printable characters */
    public String f18287 = null;

    public C4903(C3194 c3194) {
        this.f18289 = c3194;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m9707(C3194 c3194, String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        try {
            c3194.m7025(str, "aqs.".concat(str2)).createNewFile();
        } catch (IOException e) {
        }
    }
}
