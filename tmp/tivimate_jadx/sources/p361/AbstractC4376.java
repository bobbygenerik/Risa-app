package p361;

import android.support.v4.media.session.AbstractC0001;
import java.io.IOException;

/* renamed from: ᵔᐧ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4376 {
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static int m8854(int i, int i2, int i3) {
        if ((i2 & 8) != 0) {
            i--;
        }
        if (i3 <= i) {
            return i - i3;
        }
        throw new IOException(AbstractC0001.m14(i3, i, "PROTOCOL_ERROR padding ", " > remaining length "));
    }
}
