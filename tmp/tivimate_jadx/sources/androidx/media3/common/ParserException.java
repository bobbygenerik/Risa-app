package androidx.media3.common;

import java.io.IOException;
import p035.AbstractC1220;

/* loaded from: classes.dex */
public class ParserException extends IOException {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final boolean f1134;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f1135;

    public ParserException(String str, Throwable th, boolean z, int i) {
        super(str, th);
        this.f1134 = z;
        this.f1135 = i;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static ParserException m739(String str) {
        return new ParserException(str, null, false, 1);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static ParserException m740(String str, Exception exc) {
        return new ParserException(str, exc, true, 4);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static ParserException m741(RuntimeException runtimeException, String str) {
        return new ParserException(str, runtimeException, true, 1);
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String message = super.getMessage();
        StringBuilder sb = new StringBuilder();
        sb.append(message != null ? message.concat(" ") : "");
        sb.append("{contentIsMalformed=");
        sb.append(this.f1134);
        sb.append(", dataType=");
        return AbstractC1220.m3782(sb, this.f1135, "}");
    }
}
