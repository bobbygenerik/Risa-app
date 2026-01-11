package p256;

import android.os.Build;
import com.parse.ˑ;
import j$.util.Objects;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import p404.AbstractC4804;

/* renamed from: יٴ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3373 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final ˑ f13187 = new ˑ(6);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static AlgorithmParameterSpec m7236(byte[] bArr, int i, int i2) {
        int i3 = AbstractC4804.f18064;
        Integer valueOf = !Objects.equals(System.getProperty("java.vendor"), "The Android Project") ? null : Integer.valueOf(Build.VERSION.SDK_INT);
        return (valueOf == null || valueOf.intValue() > 19) ? new GCMParameterSpec(128, bArr, i, i2) : new IvParameterSpec(bArr, i, i2);
    }
}
