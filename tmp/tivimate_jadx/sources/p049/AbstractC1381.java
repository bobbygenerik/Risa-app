package p049;

import android.security.keystore.KeyGenParameterSpec;

/* renamed from: ʽـ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1381 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Object f5426;

    static {
        new KeyGenParameterSpec.Builder("_androidx_security_master_key_", 3).setBlockModes("GCM").setEncryptionPaddings("NoPadding").setKeySize(256).build();
        f5426 = new Object();
    }
}
