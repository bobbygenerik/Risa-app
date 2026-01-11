package p234;

import java.io.File;
import java.io.FilenameFilter;

/* renamed from: ˑˋ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C3196 implements FilenameFilter {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f12229;

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        switch (this.f12229) {
            case 0:
                return str.startsWith("event");
            case 1:
                return str.startsWith("event") && !str.endsWith("_");
            case 2:
                return str.startsWith("aqs.");
            default:
                return str.startsWith(".ae");
        }
    }
}
