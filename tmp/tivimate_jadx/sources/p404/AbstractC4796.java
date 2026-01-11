package p404;

import com.parse.ˑ;
import java.security.SecureRandom;

/* renamed from: ﹳʽ.ٴᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4796 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final ˑ f18044 = new ˑ(8);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static byte[] m9578(int i) {
        byte[] bArr = new byte[i];
        ((SecureRandom) f18044.get()).nextBytes(bArr);
        return bArr;
    }
}
