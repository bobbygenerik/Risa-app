package p319;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.Callable;
import p296.AbstractC3659;
import p347.AbstractC4278;

/* renamed from: ᴵˈ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class CallableC3939 implements Callable {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ BinderC3928 f15233;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ String f15234;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ boolean f15235;

    public /* synthetic */ CallableC3939(boolean z, String str, BinderC3928 binderC3928) {
        this.f15235 = z;
        this.f15234 = str;
        this.f15233 = binderC3928;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        MessageDigest messageDigest;
        boolean z = this.f15235;
        String str = this.f15234;
        BinderC3928 binderC3928 = this.f15233;
        String str2 = (z || !AbstractC3935.m8108(str, binderC3928, true, false).f15204) ? "not allowed" : "debug cert rejected";
        int i = 0;
        while (true) {
            if (i >= 2) {
                messageDigest = null;
                break;
            }
            try {
                messageDigest = MessageDigest.getInstance("SHA-256");
            } catch (NoSuchAlgorithmException unused) {
            }
            if (messageDigest != null) {
                break;
            }
            i++;
        }
        AbstractC3659.m7687(messageDigest);
        byte[] digest = messageDigest.digest(binderC3928.f15200);
        int length = digest.length;
        char[] cArr = new char[length + length];
        int i2 = 0;
        for (byte b : digest) {
            char[] cArr2 = AbstractC4278.f15860;
            cArr[i2] = cArr2[(b & 255) >>> 4];
            cArr[i2 + 1] = cArr2[b & 15];
            i2 += 2;
        }
        return str2 + ": pkg=" + str + ", sha256=" + new String(cArr) + ", atk=" + z + ", ver=12451000.false";
    }
}
