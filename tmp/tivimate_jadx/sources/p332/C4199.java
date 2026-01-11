package p332;

import java.io.File;
import java.io.FilenameFilter;

/* renamed from: ᴵﾞ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4199 implements FilenameFilter {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ String f15644;

    public C4199(String str) {
        this.f15644 = str;
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        return str.startsWith(this.f15644 + ".");
    }
}
