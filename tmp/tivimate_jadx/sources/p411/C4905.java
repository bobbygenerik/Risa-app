package p411;

import java.io.File;
import p122.C2096;

/* renamed from: ﹳˎ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4905 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final File f18305;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f18306;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2096 f18307;

    public C4905(C2096 c2096, String str, File file) {
        this.f18307 = c2096;
        if (str == null) {
            throw new NullPointerException("Null sessionId");
        }
        this.f18306 = str;
        this.f18305 = file;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C4905)) {
            return false;
        }
        C4905 c4905 = (C4905) obj;
        return this.f18307.equals(c4905.f18307) && this.f18306.equals(c4905.f18306) && this.f18305.equals(c4905.f18305);
    }

    public final int hashCode() {
        return ((((this.f18307.hashCode() ^ 1000003) * 1000003) ^ this.f18306.hashCode()) * 1000003) ^ this.f18305.hashCode();
    }

    public final String toString() {
        return "CrashlyticsReportWithSessionId{report=" + this.f18307 + ", sessionId=" + this.f18306 + ", reportFile=" + this.f18305 + "}";
    }
}
